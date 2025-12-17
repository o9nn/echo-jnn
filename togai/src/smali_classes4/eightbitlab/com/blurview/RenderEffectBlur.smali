.class public Leightbitlab/com/blurview/RenderEffectBlur;
.super Ljava/lang/Object;
.source "RenderEffectBlur.java"

# interfaces
.implements Leightbitlab/com/blurview/BlurAlgorithm;


# instance fields
.field private context:Landroid/content/Context;

.field public fallbackAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

.field private height:I

.field private lastBlurRadius:F

.field private final node:Landroid/graphics/RenderNode;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "BlurViewNode"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->node:Landroid/graphics/RenderNode;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->lastBlurRadius:F

    return-void
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 4

    iput p2, p0, Leightbitlab/com/blurview/RenderEffectBlur;->lastBlurRadius:F

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Leightbitlab/com/blurview/RenderEffectBlur;->height:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Leightbitlab/com/blurview/RenderEffectBlur;->width:I

    if-eq v0, v1, :cond_1

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->height:I

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->width:I

    iget-object v1, p0, Leightbitlab/com/blurview/RenderEffectBlur;->node:Landroid/graphics/RenderNode;

    iget v2, p0, Leightbitlab/com/blurview/RenderEffectBlur;->height:I

    const/4 v3, 0x0

    .line 44
    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    :cond_1
    iget-object v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->node:Landroid/graphics/RenderNode;

    .line 46
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 47
    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->node:Landroid/graphics/RenderNode;

    .line 48
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    iget-object v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->node:Landroid/graphics/RenderNode;

    .line 49
    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-static {p2, p2, v1}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/RenderNode;->setRenderEffect(Landroid/graphics/RenderEffect;)Z

    return-object p1
.end method

.method public canModifyBitmap()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->node:Landroid/graphics/RenderNode;

    .line 56
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->discardDisplayList()V

    iget-object v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->fallbackAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0}, Leightbitlab/com/blurview/BlurAlgorithm;->destroy()V

    :cond_0
    return-void
.end method

.method public getSupportedBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 70
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public render(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Leightbitlab/com/blurview/RenderEffectBlur;->node:Landroid/graphics/RenderNode;

    .line 81
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->fallbackAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Leightbitlab/com/blurview/RenderScriptBlur;

    iget-object v1, p0, Leightbitlab/com/blurview/RenderEffectBlur;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->fallbackAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    :cond_1
    iget-object v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->fallbackAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    iget v1, p0, Leightbitlab/com/blurview/RenderEffectBlur;->lastBlurRadius:F

    .line 86
    invoke-interface {v0, p2, v1}, Leightbitlab/com/blurview/BlurAlgorithm;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    iget-object v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->fallbackAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    .line 87
    invoke-interface {v0, p1, p2}, Leightbitlab/com/blurview/BlurAlgorithm;->render(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public scaleFactor()F
    .locals 1

    const/high16 v0, 0x40c00000    # 6.0f

    return v0
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Leightbitlab/com/blurview/RenderEffectBlur;->context:Landroid/content/Context;

    return-void
.end method
