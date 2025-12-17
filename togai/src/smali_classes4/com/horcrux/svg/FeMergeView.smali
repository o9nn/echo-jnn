.class Lcom/horcrux/svg/FeMergeView;
.super Lcom/horcrux/svg/FilterPrimitiveView;
.source "FeMergeView.java"


# instance fields
.field private mNodes:Lcom/facebook/react/bridge/ReadableArray;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/horcrux/svg/FilterPrimitiveView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method public applyFilter(Ljava/util/HashMap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
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

    .line 27
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 28
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/horcrux/svg/FeMergeView;->mNodes:Lcom/facebook/react/bridge/ReadableArray;

    .line 29
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/horcrux/svg/FeMergeView;->mNodes:Lcom/facebook/react/bridge/ReadableArray;

    .line 31
    invoke-interface {v4, v3}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 32
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v4, p2

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    :goto_1
    if-eqz v4, :cond_1

    .line 35
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public setNodes(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    iput-object p1, p0, Lcom/horcrux/svg/FeMergeView;->mNodes:Lcom/facebook/react/bridge/ReadableArray;

    .line 21
    invoke-virtual {p0}, Lcom/horcrux/svg/FeMergeView;->invalidate()V

    return-void
.end method
