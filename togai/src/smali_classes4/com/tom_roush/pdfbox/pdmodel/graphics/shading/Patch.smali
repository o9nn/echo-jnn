.class abstract Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;
.super Ljava/lang/Object;
.source "Patch.java"


# instance fields
.field protected controlPoints:[[Landroid/graphics/PointF;

.field protected cornerColor:[[F

.field protected level:[I

.field protected listOfTriangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([[F)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, [[F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[F

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;->cornerColor:[[F

    return-void
.end method

.method private overlaps(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 4

    .line 231
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    cmpg-double p1, p1, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected edgeEquationValue(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 3

    .line 165
    iget v0, p3, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget p3, p3, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p3, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    mul-float/2addr p3, p1

    sub-float/2addr v0, p3

    float-to-double p1, v0

    return-wide p1
.end method

.method protected getFlag1Color()[[F
    .locals 9

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;->cornerColor:[[F

    const/4 v1, 0x0

    .line 80
    aget-object v0, v0, v1

    array-length v0, v0

    const/4 v2, 0x2

    filled-new-array {v2, v0}, [I

    move-result-object v3

    .line 81
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_0

    .line 84
    aget-object v5, v3, v1

    iget-object v6, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;->cornerColor:[[F

    const/4 v7, 0x1

    aget-object v8, v6, v7

    aget v8, v8, v4

    aput v8, v5, v4

    .line 85
    aget-object v5, v3, v7

    aget-object v6, v6, v2

    aget v6, v6, v4

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method protected abstract getFlag1Edge()[Landroid/graphics/PointF;
.end method

.method protected getFlag2Color()[[F
    .locals 8

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;->cornerColor:[[F

    const/4 v1, 0x0

    .line 97
    aget-object v0, v0, v1

    array-length v0, v0

    const/4 v2, 0x2

    filled-new-array {v2, v0}, [I

    move-result-object v3

    .line 98
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_0

    .line 101
    aget-object v5, v3, v1

    iget-object v6, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;->cornerColor:[[F

    aget-object v7, v6, v2

    aget v7, v7, v4

    aput v7, v5, v4

    const/4 v5, 0x1

    .line 102
    aget-object v5, v3, v5

    const/4 v7, 0x3

    aget-object v6, v6, v7

    aget v6, v6, v4

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method protected abstract getFlag2Edge()[Landroid/graphics/PointF;
.end method

.method protected getFlag3Color()[[F
    .locals 7

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;->cornerColor:[[F

    const/4 v1, 0x0

    .line 114
    aget-object v0, v0, v1

    array-length v0, v0

    const/4 v2, 0x2

    filled-new-array {v2, v0}, [I

    move-result-object v2

    .line 115
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    .line 118
    aget-object v4, v2, v1

    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;->cornerColor:[[F

    const/4 v6, 0x3

    aget-object v6, v5, v6

    aget v6, v6, v3

    aput v6, v4, v3

    const/4 v4, 0x1

    .line 119
    aget-object v4, v2, v4

    aget-object v5, v5, v1

    aget v5, v5, v3

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method protected abstract getFlag3Edge()[Landroid/graphics/PointF;
.end method

.method protected getLen(Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 2

    .line 133
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 134
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    float-to-double p1, p2

    mul-double/2addr v0, v0

    mul-double/2addr p1, p1

    add-double/2addr v0, p1

    .line 135
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method protected getShadedTriangles([[Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoordinateColorPair;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoordinateColorPair;",
            ")",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    array-length v3, v1

    const/4 v4, 0x0

    .line 178
    aget-object v5, v1, v4

    array-length v5, v5

    const/4 v7, 0x1

    :goto_0
    if-ge v7, v3, :cond_4

    const/4 v8, 0x1

    :goto_1
    if-ge v8, v5, :cond_3

    add-int/lit8 v9, v7, -0x1

    .line 183
    aget-object v10, v1, v9

    add-int/lit8 v11, v8, -0x1

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoordinateColorPair;->coordinate:Landroid/graphics/PointF;

    .line 184
    aget-object v12, v1, v9

    aget-object v12, v12, v8

    iget-object v12, v12, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoordinateColorPair;->coordinate:Landroid/graphics/PointF;

    .line 185
    aget-object v13, v1, v7

    aget-object v13, v13, v8

    iget-object v13, v13, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoordinateColorPair;->coordinate:Landroid/graphics/PointF;

    .line 186
    aget-object v14, v1, v7

    aget-object v14, v14, v11

    iget-object v14, v14, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoordinateColorPair;->coordinate:Landroid/graphics/PointF;

    .line 188
    invoke-direct {v0, v10, v12}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;->overlaps(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v15

    const/16 v16, 0x2

    const/4 v6, 0x3

    if-nez v15, :cond_2

    invoke-direct {v0, v10, v14}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;->overlaps(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v15

    if-eqz v15, :cond_0

    goto :goto_2

    :cond_0
    new-array v15, v6, [Landroid/graphics/PointF;

    aput-object v10, v15, v4

    const/4 v10, 0x1

    aput-object v12, v15, v10

    aput-object v14, v15, v16

    new-array v10, v6, [[F

    .line 199
    aget-object v18, v1, v9

    aget-object v6, v18, v11

    iget-object v6, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoordinateColorPair;->color:[F

    aput-object v6, v10, v4

    aget-object v6, v1, v9

    aget-object v6, v6, v8

    iget-object v6, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoordinateColorPair;->color:[F

    const/16 v17, 0x1

    aput-object v6, v10, v17

    aget-object v6, v1, v7

    aget-object v6, v6, v11

    iget-object v6, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoordinateColorPair;->color:[F

    aput-object v6, v10, v16

    .line 203
    new-instance v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;

    invoke-direct {v6, v15, v10}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;-><init>([Landroid/graphics/PointF;[[F)V

    .line 204
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-direct {v0, v13, v12}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;->overlaps(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {v0, v13, v14}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;->overlaps(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const/4 v14, 0x1

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v6, 0x3

    new-array v10, v6, [Landroid/graphics/PointF;

    aput-object v14, v10, v4

    const/4 v14, 0x1

    aput-object v12, v10, v14

    aput-object v13, v10, v16

    new-array v6, v6, [[F

    .line 216
    aget-object v12, v1, v7

    aget-object v11, v12, v11

    iget-object v11, v11, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoordinateColorPair;->color:[F

    aput-object v11, v6, v4

    aget-object v9, v1, v9

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoordinateColorPair;->color:[F

    aput-object v9, v6, v14

    aget-object v9, v1, v7

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoordinateColorPair;->color:[F

    aput-object v9, v6, v16

    .line 220
    new-instance v9, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;

    invoke-direct {v9, v10, v6}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;-><init>([Landroid/graphics/PointF;[[F)V

    .line 221
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_3
    const/4 v14, 0x1

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v2
.end method

.method protected isEdgeALine([Landroid/graphics/PointF;)Z
    .locals 11

    const/4 v0, 0x1

    .line 146
    aget-object v1, p1, v0

    const/4 v2, 0x0

    aget-object v3, p1, v2

    const/4 v4, 0x3

    aget-object v5, p1, v4

    invoke-virtual {p0, v1, v3, v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;->edgeEquationValue(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const/4 v1, 0x2

    .line 147
    aget-object v1, p1, v1

    aget-object v3, p1, v2

    aget-object v7, p1, v4

    invoke-virtual {p0, v1, v3, v7}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;->edgeEquationValue(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    .line 148
    aget-object v1, p1, v2

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aget-object v3, p1, v4

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v9, v1

    .line 149
    aget-object v1, p1, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aget-object p1, p1, v4

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v3, p1

    cmpg-double p1, v5, v9

    if-gtz p1, :cond_0

    cmpg-double p1, v7, v9

    if-lez p1, :cond_2

    :cond_0
    cmpg-double p1, v5, v3

    if-gtz p1, :cond_1

    cmpg-double p1, v7, v3

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    return v0
.end method
