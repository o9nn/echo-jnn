.class Lcom/horcrux/svg/FeGaussianBlurView;
.super Lcom/horcrux/svg/FilterPrimitiveView;
.source "FeGaussianBlurView.java"


# instance fields
.field mEdgeMode:Lcom/horcrux/svg/FilterProperties$EdgeMode;

.field mIn1:Ljava/lang/String;

.field mStdDeviationX:F

.field mStdDeviationY:F


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/horcrux/svg/FilterPrimitiveView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method

.method private blur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    iget v0, p0, Lcom/horcrux/svg/FeGaussianBlurView;->mStdDeviationX:F

    iget v1, p0, Lcom/horcrux/svg/FeGaussianBlurView;->mStdDeviationY:F

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    return-object p2

    :cond_0
    const/high16 v1, 0x41c80000    # 25.0f

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 57
    invoke-static {p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 60
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    .line 61
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    .line 64
    invoke-static {p1, p2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 65
    invoke-static {p1, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v4

    .line 68
    invoke-virtual {v2, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 69
    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 70
    invoke-virtual {v2, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 73
    invoke-virtual {v4, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 74
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    .line 75
    invoke-virtual {v4}, Landroid/renderscript/Allocation;->destroy()V

    .line 76
    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->destroy()V

    .line 78
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    const/4 v0, 0x0

    invoke-static {v1, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public applyFilter(Ljava/util/HashMap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    iget-object v0, p0, Lcom/horcrux/svg/FeGaussianBlurView;->mIn1:Ljava/lang/String;

    .line 46
    invoke-static {p1, p2, v0}, Lcom/horcrux/svg/FeGaussianBlurView;->getSource(Ljava/util/HashMap;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 47
    invoke-virtual {p0}, Lcom/horcrux/svg/FeGaussianBlurView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/horcrux/svg/FeGaussianBlurView;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public setEdgeMode(Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-static {p1}, Lcom/horcrux/svg/FilterProperties$EdgeMode;->getEnum(Ljava/lang/String;)Lcom/horcrux/svg/FilterProperties$EdgeMode;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/FeGaussianBlurView;->mEdgeMode:Lcom/horcrux/svg/FilterProperties$EdgeMode;

    .line 41
    invoke-virtual {p0}, Lcom/horcrux/svg/FeGaussianBlurView;->invalidate()V

    return-void
.end method

.method public setIn1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/horcrux/svg/FeGaussianBlurView;->mIn1:Ljava/lang/String;

    .line 26
    invoke-virtual {p0}, Lcom/horcrux/svg/FeGaussianBlurView;->invalidate()V

    return-void
.end method

.method public setStdDeviationX(F)V
    .locals 0

    iput p1, p0, Lcom/horcrux/svg/FeGaussianBlurView;->mStdDeviationX:F

    .line 31
    invoke-virtual {p0}, Lcom/horcrux/svg/FeGaussianBlurView;->invalidate()V

    return-void
.end method

.method public setStdDeviationY(F)V
    .locals 0

    iput p1, p0, Lcom/horcrux/svg/FeGaussianBlurView;->mStdDeviationY:F

    .line 36
    invoke-virtual {p0}, Lcom/horcrux/svg/FeGaussianBlurView;->invalidate()V

    return-void
.end method
