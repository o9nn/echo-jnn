.class Lcom/horcrux/svg/FeOffsetView;
.super Lcom/horcrux/svg/FilterPrimitiveView;
.source "FeOffsetView.java"


# instance fields
.field mDx:Lcom/horcrux/svg/SVGLength;

.field mDy:Lcom/horcrux/svg/SVGLength;

.field mIn1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/horcrux/svg/FilterPrimitiveView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method public applyFilter(Ljava/util/HashMap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
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

    iget-object v0, p0, Lcom/horcrux/svg/FeOffsetView;->mIn1:Ljava/lang/String;

    .line 38
    invoke-static {p1, p2, v0}, Lcom/horcrux/svg/FeOffsetView;->getSource(Ljava/util/HashMap;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 40
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 41
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/horcrux/svg/FeOffsetView;->mDx:Lcom/horcrux/svg/SVGLength;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p0, v1}, Lcom/horcrux/svg/FeOffsetView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v3

    double-to-float v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/horcrux/svg/FeOffsetView;->mDy:Lcom/horcrux/svg/SVGLength;

    if-eqz v3, :cond_1

    .line 44
    invoke-virtual {p0, v3}, Lcom/horcrux/svg/FeOffsetView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v3

    double-to-float v3, v3

    goto :goto_1

    :cond_1
    move v3, v2

    .line 45
    :goto_1
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v2, v2, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 46
    invoke-virtual {p0}, Lcom/horcrux/svg/FeOffsetView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/horcrux/svg/SvgView;->getCtm()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 47
    iget v1, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget v1, v4, Landroid/graphics/RectF;->left:F

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 48
    :goto_2
    iget v3, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_3

    iget v2, v4, Landroid/graphics/RectF;->top:F

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    :goto_3
    const/4 v3, 0x0

    .line 50
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object p2
.end method

.method public setDx(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 27
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/FeOffsetView;->mDx:Lcom/horcrux/svg/SVGLength;

    .line 28
    invoke-virtual {p0}, Lcom/horcrux/svg/FeOffsetView;->invalidate()V

    return-void
.end method

.method public setDy(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 32
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/FeOffsetView;->mDy:Lcom/horcrux/svg/SVGLength;

    .line 33
    invoke-virtual {p0}, Lcom/horcrux/svg/FeOffsetView;->invalidate()V

    return-void
.end method

.method public setIn1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/horcrux/svg/FeOffsetView;->mIn1:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Lcom/horcrux/svg/FeOffsetView;->invalidate()V

    return-void
.end method
