.class Lcom/horcrux/svg/FilterView;
.super Lcom/horcrux/svg/DefinitionView;
.source "FilterView.java"


# instance fields
.field private final mFilterRegion:Lcom/horcrux/svg/FilterRegion;

.field private mFilterUnits:Lcom/horcrux/svg/FilterProperties$Units;

.field private mPrimitiveUnits:Lcom/horcrux/svg/FilterProperties$Units;

.field private final mResultsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/horcrux/svg/DefinitionView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 17
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/horcrux/svg/FilterView;->mResultsMap:Ljava/util/HashMap;

    .line 25
    new-instance p1, Lcom/horcrux/svg/FilterRegion;

    invoke-direct {p1}, Lcom/horcrux/svg/FilterRegion;-><init>()V

    iput-object p1, p0, Lcom/horcrux/svg/FilterView;->mFilterRegion:Lcom/horcrux/svg/FilterRegion;

    return-void
.end method


# virtual methods
.method public applyFilter(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 9

    iget-object v0, p0, Lcom/horcrux/svg/FilterView;->mResultsMap:Ljava/util/HashMap;

    .line 73
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/horcrux/svg/FilterView;->mResultsMap:Ljava/util/HashMap;

    const-string v1, "SourceGraphic"

    .line 74
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/horcrux/svg/FilterView;->mResultsMap:Ljava/util/HashMap;

    const-string v1, "SourceAlpha"

    .line 75
    invoke-static {p1}, Lcom/horcrux/svg/FilterUtils;->applySourceAlphaFilter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/horcrux/svg/FilterView;->mResultsMap:Ljava/util/HashMap;

    const-string v1, "BackgroundImage"

    .line 76
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/horcrux/svg/FilterView;->mResultsMap:Ljava/util/HashMap;

    const-string v1, "BackgroundAlpha"

    .line 77
    invoke-static {p2}, Lcom/horcrux/svg/FilterUtils;->applySourceAlphaFilter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 81
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/horcrux/svg/FilterView;->mFilterRegion:Lcom/horcrux/svg/FilterRegion;

    iget-object v2, p0, Lcom/horcrux/svg/FilterView;->mFilterUnits:Lcom/horcrux/svg/FilterProperties$Units;

    .line 83
    invoke-virtual {v1, p0, v2, p3}, Lcom/horcrux/svg/FilterRegion;->getCropRect(Lcom/horcrux/svg/VirtualView;Lcom/horcrux/svg/FilterProperties$Units;Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/FilterView;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_3

    .line 87
    invoke-virtual {p0, v3}, Lcom/horcrux/svg/FilterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 88
    instance-of v6, v4, Lcom/horcrux/svg/FilterPrimitiveView;

    if-eqz v6, :cond_1

    .line 89
    check-cast v4, Lcom/horcrux/svg/FilterPrimitiveView;

    .line 90
    invoke-virtual {p2, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 91
    iget-object v6, v4, Lcom/horcrux/svg/FilterPrimitiveView;->mFilterSubregion:Lcom/horcrux/svg/FilterRegion;

    iget-object v7, p0, Lcom/horcrux/svg/FilterView;->mPrimitiveUnits:Lcom/horcrux/svg/FilterProperties$Units;

    .line 95
    sget-object v8, Lcom/horcrux/svg/FilterProperties$Units;->USER_SPACE_ON_USE:Lcom/horcrux/svg/FilterProperties$Units;

    if-ne v7, v8, :cond_0

    .line 96
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_0
    move-object v8, p3

    .line 92
    :goto_1
    invoke-virtual {v6, v4, v7, v8}, Lcom/horcrux/svg/FilterRegion;->getCropRect(Lcom/horcrux/svg/VirtualView;Lcom/horcrux/svg/FilterProperties$Units;Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lcom/horcrux/svg/FilterView;->mResultsMap:Ljava/util/HashMap;

    .line 98
    invoke-virtual {v4, v7, p1}, Lcom/horcrux/svg/FilterPrimitiveView;->applyFilter(Ljava/util/HashMap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 99
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {p2, p1, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 100
    invoke-virtual {v4}, Lcom/horcrux/svg/FilterPrimitiveView;->getResult()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/horcrux/svg/FilterView;->mResultsMap:Ljava/util/HashMap;

    .line 102
    invoke-virtual {v5, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    const-string v4, "RNSVG"

    const-string v5, "Invalid `Filter` child: Filter children can only be `Fe...` components"

    .line 105
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {p2, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 111
    invoke-virtual {v0, p1, v1, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object p2
.end method

.method public getFilterRegion()Lcom/horcrux/svg/FilterRegion;
    .locals 1

    iget-object v0, p0, Lcom/horcrux/svg/FilterView;->mFilterRegion:Lcom/horcrux/svg/FilterRegion;

    return-object v0
.end method

.method saveDefinition()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/horcrux/svg/FilterView;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/horcrux/svg/FilterView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/horcrux/svg/FilterView;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/horcrux/svg/SvgView;->defineFilter(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setFilterUnits(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-static {p1}, Lcom/horcrux/svg/FilterProperties$Units;->getEnum(Ljava/lang/String;)Lcom/horcrux/svg/FilterProperties$Units;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/FilterView;->mFilterUnits:Lcom/horcrux/svg/FilterProperties$Units;

    .line 50
    invoke-virtual {p0}, Lcom/horcrux/svg/FilterView;->invalidate()V

    return-void
.end method

.method public setHeight(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1

    iget-object v0, p0, Lcom/horcrux/svg/FilterView;->mFilterRegion:Lcom/horcrux/svg/FilterRegion;

    .line 44
    invoke-virtual {v0, p1}, Lcom/horcrux/svg/FilterRegion;->setHeight(Lcom/facebook/react/bridge/Dynamic;)V

    .line 45
    invoke-virtual {p0}, Lcom/horcrux/svg/FilterView;->invalidate()V

    return-void
.end method

.method public setPrimitiveUnits(Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-static {p1}, Lcom/horcrux/svg/FilterProperties$Units;->getEnum(Ljava/lang/String;)Lcom/horcrux/svg/FilterProperties$Units;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/FilterView;->mPrimitiveUnits:Lcom/horcrux/svg/FilterProperties$Units;

    .line 55
    invoke-virtual {p0}, Lcom/horcrux/svg/FilterView;->invalidate()V

    return-void
.end method

.method public setWidth(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1

    iget-object v0, p0, Lcom/horcrux/svg/FilterView;->mFilterRegion:Lcom/horcrux/svg/FilterRegion;

    .line 39
    invoke-virtual {v0, p1}, Lcom/horcrux/svg/FilterRegion;->setWidth(Lcom/facebook/react/bridge/Dynamic;)V

    .line 40
    invoke-virtual {p0}, Lcom/horcrux/svg/FilterView;->invalidate()V

    return-void
.end method

.method public setX(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1

    iget-object v0, p0, Lcom/horcrux/svg/FilterView;->mFilterRegion:Lcom/horcrux/svg/FilterRegion;

    .line 29
    invoke-virtual {v0, p1}, Lcom/horcrux/svg/FilterRegion;->setX(Lcom/facebook/react/bridge/Dynamic;)V

    .line 30
    invoke-virtual {p0}, Lcom/horcrux/svg/FilterView;->invalidate()V

    return-void
.end method

.method public setY(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1

    iget-object v0, p0, Lcom/horcrux/svg/FilterView;->mFilterRegion:Lcom/horcrux/svg/FilterRegion;

    .line 34
    invoke-virtual {v0, p1}, Lcom/horcrux/svg/FilterRegion;->setY(Lcom/facebook/react/bridge/Dynamic;)V

    .line 35
    invoke-virtual {p0}, Lcom/horcrux/svg/FilterView;->invalidate()V

    return-void
.end method
