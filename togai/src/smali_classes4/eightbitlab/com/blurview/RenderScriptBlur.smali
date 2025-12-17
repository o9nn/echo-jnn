.class public Leightbitlab/com/blurview/RenderScriptBlur;
.super Ljava/lang/Object;
.source "RenderScriptBlur.java"

# interfaces
.implements Leightbitlab/com/blurview/BlurAlgorithm;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

.field private lastBitmapHeight:I

.field private lastBitmapWidth:I

.field private outAllocation:Landroid/renderscript/Allocation;

.field private final paint:Landroid/graphics/Paint;

.field private final renderScript:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Leightbitlab/com/blurview/RenderScriptBlur;->paint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    iput v0, p0, Leightbitlab/com/blurview/RenderScriptBlur;->lastBitmapWidth:I

    iput v0, p0, Leightbitlab/com/blurview/RenderScriptBlur;->lastBitmapHeight:I

    .line 40
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    iput-object p1, p0, Leightbitlab/com/blurview/RenderScriptBlur;->renderScript:Landroid/renderscript/RenderScript;

    .line 41
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    iput-object p1, p0, Leightbitlab/com/blurview/RenderScriptBlur;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    return-void
.end method

.method private canReuseAllocation(Landroid/graphics/Bitmap;)Z
    .locals 2

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Leightbitlab/com/blurview/RenderScriptBlur;->lastBitmapHeight:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget v0, p0, Leightbitlab/com/blurview/RenderScriptBlur;->lastBitmapWidth:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Leightbitlab/com/blurview/RenderScriptBlur;->renderScript:Landroid/renderscript/RenderScript;

    .line 57
    invoke-static {v0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 59
    invoke-direct {p0, p1}, Leightbitlab/com/blurview/RenderScriptBlur;->canReuseAllocation(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Leightbitlab/com/blurview/RenderScriptBlur;->outAllocation:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    :cond_0
    iget-object v1, p0, Leightbitlab/com/blurview/RenderScriptBlur;->renderScript:Landroid/renderscript/RenderScript;

    .line 63
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Leightbitlab/com/blurview/RenderScriptBlur;->outAllocation:Landroid/renderscript/Allocation;

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Leightbitlab/com/blurview/RenderScriptBlur;->lastBitmapWidth:I

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Leightbitlab/com/blurview/RenderScriptBlur;->lastBitmapHeight:I

    :cond_1
    iget-object v1, p0, Leightbitlab/com/blurview/RenderScriptBlur;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 68
    invoke-virtual {v1, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    iget-object p2, p0, Leightbitlab/com/blurview/RenderScriptBlur;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 69
    invoke-virtual {p2, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    iget-object p2, p0, Leightbitlab/com/blurview/RenderScriptBlur;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Leightbitlab/com/blurview/RenderScriptBlur;->outAllocation:Landroid/renderscript/Allocation;

    .line 71
    invoke-virtual {p2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    iget-object p2, p0, Leightbitlab/com/blurview/RenderScriptBlur;->outAllocation:Landroid/renderscript/Allocation;

    .line 72
    invoke-virtual {p2, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 74
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    return-object p1
.end method

.method public canModifyBitmap()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final destroy()V
    .locals 1

    iget-object v0, p0, Leightbitlab/com/blurview/RenderScriptBlur;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 80
    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    iget-object v0, p0, Leightbitlab/com/blurview/RenderScriptBlur;->renderScript:Landroid/renderscript/RenderScript;

    .line 81
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    iget-object v0, p0, Leightbitlab/com/blurview/RenderScriptBlur;->outAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    :cond_0
    return-void
.end method

.method public getSupportedBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 95
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public render(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Leightbitlab/com/blurview/RenderScriptBlur;->paint:Landroid/graphics/Paint;

    .line 105
    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public scaleFactor()F
    .locals 1

    const/high16 v0, 0x40c00000    # 6.0f

    return v0
.end method
