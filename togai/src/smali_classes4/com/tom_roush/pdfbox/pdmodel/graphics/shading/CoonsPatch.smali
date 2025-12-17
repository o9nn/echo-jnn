.class Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;
.super Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;
.source "CoonsPatch.java"


# direct methods
.method protected constructor <init>([Landroid/graphics/PointF;[[F)V
    .locals 0

    .line 38
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;-><init>([[F)V

    .line 39
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->reshapeControlPoints([Landroid/graphics/PointF;)[[Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->controlPoints:[[Landroid/graphics/PointF;

    .line 40
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->calcLevel()[I

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->level:[I

    .line 41
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->getTriangles()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->listOfTriangles:Ljava/util/List;

    return-void
.end method

.method private calcLevel()[I
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x4

    filled-new-array {v1, v1}, [I

    move-result-object v1

    .line 75
    iget-object v2, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->controlPoints:[[Landroid/graphics/PointF;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->isEdgeALine([Landroid/graphics/PointF;)Z

    move-result v2

    const-wide/high16 v4, 0x4069000000000000L    # 200.0

    const-wide/high16 v6, 0x4079000000000000L    # 400.0

    const-wide/high16 v8, 0x4089000000000000L    # 800.0

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x3

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v2, v2, v11

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->isEdgeALine([Landroid/graphics/PointF;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 77
    iget-object v2, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v2, v2, v3

    aget-object v2, v2, v3

    iget-object v13, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v13, v13, v3

    aget-object v13, v13, v12

    invoke-virtual {v0, v2, v13}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->getLen(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v13

    .line 78
    iget-object v2, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v2, v2, v11

    aget-object v2, v2, v3

    iget-object v15, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v15, v15, v11

    aget-object v15, v15, v12

    invoke-virtual {v0, v2, v15}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->getLen(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v15

    cmpl-double v2, v13, v8

    if-gtz v2, :cond_5

    cmpl-double v2, v15, v8

    if-lez v2, :cond_0

    goto :goto_2

    :cond_0
    cmpl-double v2, v13, v6

    if-gtz v2, :cond_4

    cmpl-double v2, v15, v6

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    cmpl-double v2, v13, v4

    if-gtz v2, :cond_3

    cmpl-double v2, v15, v4

    if-lez v2, :cond_2

    goto :goto_0

    .line 94
    :cond_2
    aput v11, v1, v3

    goto :goto_2

    .line 90
    :cond_3
    :goto_0
    aput v10, v1, v3

    goto :goto_2

    .line 86
    :cond_4
    :goto_1
    aput v12, v1, v3

    .line 99
    :cond_5
    :goto_2
    iget-object v2, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v2, v2, v10

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->isEdgeALine([Landroid/graphics/PointF;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v2, v2, v12

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->isEdgeALine([Landroid/graphics/PointF;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 101
    iget-object v2, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v2, v2, v10

    aget-object v2, v2, v3

    iget-object v13, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v13, v13, v10

    aget-object v13, v13, v12

    invoke-virtual {v0, v2, v13}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->getLen(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v13

    .line 102
    iget-object v2, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v2, v2, v12

    aget-object v2, v2, v3

    iget-object v3, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v3, v3, v12

    aget-object v3, v3, v12

    invoke-virtual {v0, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->getLen(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v2

    cmpl-double v15, v13, v8

    if-gtz v15, :cond_b

    cmpl-double v8, v2, v8

    if-lez v8, :cond_6

    goto :goto_5

    :cond_6
    cmpl-double v8, v13, v6

    if-gtz v8, :cond_a

    cmpl-double v6, v2, v6

    if-lez v6, :cond_7

    goto :goto_4

    :cond_7
    cmpl-double v6, v13, v4

    if-gtz v6, :cond_9

    cmpl-double v2, v2, v4

    if-lez v2, :cond_8

    goto :goto_3

    .line 117
    :cond_8
    aput v11, v1, v11

    goto :goto_5

    .line 113
    :cond_9
    :goto_3
    aput v10, v1, v11

    goto :goto_5

    .line 109
    :cond_a
    :goto_4
    aput v12, v1, v11

    :cond_b
    :goto_5
    return-object v1
.end method

.method private getTriangles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [[Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoordinateColorPair;

    .line 128
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->getShadedTriangles([[Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoordinateColorPair;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private reshapeControlPoints([Landroid/graphics/PointF;)[[Landroid/graphics/PointF;
    .locals 10

    const/4 v0, 0x4

    filled-new-array {v0, v0}, [I

    move-result-object v1

    .line 47
    const-class v2, Landroid/graphics/PointF;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Landroid/graphics/PointF;

    new-array v2, v0, [Landroid/graphics/PointF;

    const/4 v3, 0x0

    .line 48
    aget-object v4, p1, v3

    aput-object v4, v2, v3

    const/4 v4, 0x1

    aget-object v5, p1, v4

    aput-object v5, v2, v4

    const/4 v5, 0x2

    aget-object v6, p1, v5

    aput-object v6, v2, v5

    const/4 v6, 0x3

    aget-object v7, p1, v6

    aput-object v7, v2, v6

    aput-object v2, v1, v5

    new-array v2, v0, [Landroid/graphics/PointF;

    .line 52
    aget-object v7, p1, v6

    aput-object v7, v2, v3

    aget-object v7, p1, v0

    aput-object v7, v2, v4

    const/4 v7, 0x5

    aget-object v7, p1, v7

    aput-object v7, v2, v5

    const/4 v7, 0x6

    aget-object v7, p1, v7

    aput-object v7, v2, v6

    aput-object v2, v1, v4

    new-array v2, v0, [Landroid/graphics/PointF;

    const/16 v8, 0x9

    .line 56
    aget-object v8, p1, v8

    aput-object v8, v2, v3

    const/16 v9, 0x8

    aget-object v9, p1, v9

    aput-object v9, v2, v4

    const/4 v9, 0x7

    aget-object v9, p1, v9

    aput-object v9, v2, v5

    aput-object v7, v2, v6

    aput-object v2, v1, v6

    new-array v0, v0, [Landroid/graphics/PointF;

    .line 60
    aget-object v2, p1, v3

    aput-object v2, v0, v3

    const/16 v2, 0xb

    aget-object v2, p1, v2

    aput-object v2, v0, v4

    const/16 v2, 0xa

    aget-object p1, p1, v2

    aput-object p1, v0, v5

    aput-object v8, v0, v6

    aput-object v0, v1, v3

    return-object v1
.end method


# virtual methods
.method protected getFlag1Edge()[Landroid/graphics/PointF;
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->controlPoints:[[Landroid/graphics/PointF;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, [Landroid/graphics/PointF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/PointF;

    return-object v0
.end method

.method protected getFlag2Edge()[Landroid/graphics/PointF;
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/PointF;

    .line 141
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->controlPoints:[[Landroid/graphics/PointF;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    aget-object v1, v1, v2

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 142
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v1, v1, v2

    const/4 v4, 0x2

    aget-object v1, v1, v4

    const/4 v5, 0x1

    aput-object v1, v0, v5

    .line 143
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v1, v1, v2

    aget-object v1, v1, v5

    aput-object v1, v0, v4

    .line 144
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v1, v1, v2

    aget-object v1, v1, v3

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected getFlag3Edge()[Landroid/graphics/PointF;
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/PointF;

    .line 152
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->controlPoints:[[Landroid/graphics/PointF;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v3, 0x3

    aget-object v1, v1, v3

    aput-object v1, v0, v2

    .line 153
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v1, v1, v2

    const/4 v4, 0x2

    aget-object v1, v1, v4

    const/4 v5, 0x1

    aput-object v1, v0, v5

    .line 154
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v1, v1, v2

    aget-object v1, v1, v5

    aput-object v1, v0, v4

    .line 155
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v1, v1, v2

    aget-object v1, v1, v2

    aput-object v1, v0, v3

    return-object v0
.end method
