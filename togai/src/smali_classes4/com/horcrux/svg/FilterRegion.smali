.class public Lcom/horcrux/svg/FilterRegion;
.super Ljava/lang/Object;
.source "FilterRegion.java"


# instance fields
.field mH:Lcom/horcrux/svg/SVGLength;

.field mW:Lcom/horcrux/svg/SVGLength;

.field mX:Lcom/horcrux/svg/SVGLength;

.field mY:Lcom/horcrux/svg/SVGLength;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getRelativeOrDefault(Lcom/horcrux/svg/VirtualView;Lcom/horcrux/svg/SVGLength;FD)D
    .locals 2

    if-eqz p2, :cond_1

    .line 31
    iget-object v0, p2, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLength$UnitType;

    sget-object v1, Lcom/horcrux/svg/SVGLength$UnitType;->UNKNOWN:Lcom/horcrux/svg/SVGLength$UnitType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/horcrux/svg/VirtualView;->relativeOn(Lcom/horcrux/svg/SVGLength;F)D

    move-result-wide p1

    return-wide p1

    :cond_1
    :goto_0
    return-wide p4
.end method


# virtual methods
.method public getCropRect(Lcom/horcrux/svg/VirtualView;Lcom/horcrux/svg/FilterProperties$Units;Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    if-nez v8, :cond_0

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 42
    :cond_0
    sget-object v0, Lcom/horcrux/svg/FilterProperties$Units;->OBJECT_BOUNDING_BOX:Lcom/horcrux/svg/FilterProperties$Units;

    move-object/from16 v1, p2

    if-ne v1, v0, :cond_1

    .line 43
    iget v0, v8, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    iget-object v2, v6, Lcom/horcrux/svg/FilterRegion;->mX:Lcom/horcrux/svg/SVGLength;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v7, v2, v3}, Lcom/horcrux/svg/VirtualView;->relativeOnFraction(Lcom/horcrux/svg/SVGLength;F)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 44
    iget v2, v8, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    iget-object v4, v6, Lcom/horcrux/svg/FilterRegion;->mY:Lcom/horcrux/svg/SVGLength;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v7, v4, v5}, Lcom/horcrux/svg/VirtualView;->relativeOnFraction(Lcom/horcrux/svg/SVGLength;F)D

    move-result-wide v4

    add-double/2addr v2, v4

    iget-object v4, v6, Lcom/horcrux/svg/FilterRegion;->mW:Lcom/horcrux/svg/SVGLength;

    .line 45
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v7, v4, v5}, Lcom/horcrux/svg/VirtualView;->relativeOnFraction(Lcom/horcrux/svg/SVGLength;F)D

    move-result-wide v4

    iget-object v9, v6, Lcom/horcrux/svg/FilterRegion;->mH:Lcom/horcrux/svg/SVGLength;

    .line 46
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {v7, v9, v8}, Lcom/horcrux/svg/VirtualView;->relativeOnFraction(Lcom/horcrux/svg/SVGLength;F)D

    move-result-wide v7

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/horcrux/svg/VirtualView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/horcrux/svg/SvgView;->getCanvasWidth()F

    move-result v9

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/horcrux/svg/VirtualView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/horcrux/svg/SvgView;->getCanvasHeight()F

    move-result v10

    iget-object v2, v6, Lcom/horcrux/svg/FilterRegion;->mX:Lcom/horcrux/svg/SVGLength;

    .line 50
    iget v0, v8, Landroid/graphics/RectF;->left:F

    float-to-double v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/FilterRegion;->getRelativeOrDefault(Lcom/horcrux/svg/VirtualView;Lcom/horcrux/svg/SVGLength;FD)D

    move-result-wide v11

    iget-object v2, v6, Lcom/horcrux/svg/FilterRegion;->mY:Lcom/horcrux/svg/SVGLength;

    .line 51
    iget v0, v8, Landroid/graphics/RectF;->top:F

    float-to-double v4, v0

    move-object/from16 v0, p0

    move v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/FilterRegion;->getRelativeOrDefault(Lcom/horcrux/svg/VirtualView;Lcom/horcrux/svg/SVGLength;FD)D

    move-result-wide v13

    iget-object v2, v6, Lcom/horcrux/svg/FilterRegion;->mW:Lcom/horcrux/svg/SVGLength;

    .line 52
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-double v4, v0

    move-object/from16 v0, p0

    move v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/FilterRegion;->getRelativeOrDefault(Lcom/horcrux/svg/VirtualView;Lcom/horcrux/svg/SVGLength;FD)D

    move-result-wide v15

    iget-object v2, v6, Lcom/horcrux/svg/FilterRegion;->mH:Lcom/horcrux/svg/SVGLength;

    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-double v4, v0

    move-object/from16 v0, p0

    move v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/FilterRegion;->getRelativeOrDefault(Lcom/horcrux/svg/VirtualView;Lcom/horcrux/svg/SVGLength;FD)D

    move-result-wide v7

    move-wide v0, v11

    move-wide v2, v13

    move-wide v4, v15

    .line 55
    :goto_0
    new-instance v9, Landroid/graphics/Rect;

    double-to-int v10, v0

    double-to-int v11, v2

    add-double/2addr v0, v4

    double-to-int v0, v0

    add-double/2addr v2, v7

    double-to-int v1, v2

    invoke-direct {v9, v10, v11, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v9
.end method

.method public setHeight(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 26
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/FilterRegion;->mH:Lcom/horcrux/svg/SVGLength;

    return-void
.end method

.method public setWidth(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 22
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/FilterRegion;->mW:Lcom/horcrux/svg/SVGLength;

    return-void
.end method

.method public setX(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 14
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/FilterRegion;->mX:Lcom/horcrux/svg/SVGLength;

    return-void
.end method

.method public setY(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 18
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/FilterRegion;->mY:Lcom/horcrux/svg/SVGLength;

    return-void
.end method
