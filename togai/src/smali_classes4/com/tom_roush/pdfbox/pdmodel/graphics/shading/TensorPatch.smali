.class Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;
.super Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;
.source "TensorPatch.java"


# direct methods
.method protected constructor <init>([Landroid/graphics/PointF;[[F)V
    .locals 0

    .line 38
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;-><init>([[F)V

    .line 39
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->reshapeControlPoints([Landroid/graphics/PointF;)[[Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    .line 40
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->calcLevel()[I

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->level:[I

    .line 41
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->getTriangles()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->listOfTriangles:Ljava/util/List;

    return-void
.end method

.method private calcLevel()[I
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x4

    filled-new-array {v1, v1}, [I

    move-result-object v2

    new-array v3, v1, [Landroid/graphics/PointF;

    new-array v4, v1, [Landroid/graphics/PointF;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x3

    if-ge v6, v1, :cond_0

    .line 79
    iget-object v8, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v8, v8, v6

    aget-object v8, v8, v5

    aput-object v8, v3, v6

    .line 80
    iget-object v8, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v8, v8, v6

    aget-object v7, v8, v7

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->isEdgeALine([Landroid/graphics/PointF;)Z

    move-result v1

    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    const-wide/high16 v10, 0x4079000000000000L    # 400.0

    const-wide/high16 v12, 0x4089000000000000L    # 800.0

    const/4 v6, 0x2

    const/4 v14, 0x1

    if-eqz v1, :cond_7

    invoke-virtual {v0, v4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->isEdgeALine([Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 90
    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v1, v1, v14

    aget-object v1, v1, v14

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->isOnSameSideCC(Landroid/graphics/PointF;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v1, v1, v14

    aget-object v1, v1, v6

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->isOnSameSideCC(Landroid/graphics/PointF;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v1, v1, v6

    aget-object v1, v1, v14

    .line 91
    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->isOnSameSideCC(Landroid/graphics/PointF;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v1, v1, v6

    aget-object v1, v1, v6

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->isOnSameSideCC(Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    aget-object v1, v3, v5

    aget-object v3, v3, v7

    .line 98
    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->getLen(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v15

    aget-object v1, v4, v5

    aget-object v3, v4, v7

    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->getLen(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v3

    cmpl-double v1, v15, v12

    if-gtz v1, :cond_7

    cmpl-double v1, v3, v12

    if-lez v1, :cond_2

    goto :goto_3

    :cond_2
    cmpl-double v1, v15, v10

    if-gtz v1, :cond_6

    cmpl-double v1, v3, v10

    if-lez v1, :cond_3

    goto :goto_2

    :cond_3
    cmpl-double v1, v15, v8

    if-gtz v1, :cond_5

    cmpl-double v1, v3, v8

    if-lez v1, :cond_4

    goto :goto_1

    .line 113
    :cond_4
    aput v14, v2, v5

    goto :goto_3

    .line 109
    :cond_5
    :goto_1
    aput v6, v2, v5

    goto :goto_3

    .line 105
    :cond_6
    :goto_2
    aput v7, v2, v5

    .line 119
    :cond_7
    :goto_3
    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->isEdgeALine([Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->isEdgeALine([Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 121
    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v1, v1, v14

    aget-object v1, v1, v14

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->isOnSameSideDD(Landroid/graphics/PointF;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v1, v1, v14

    aget-object v1, v1, v6

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->isOnSameSideDD(Landroid/graphics/PointF;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v1, v1, v6

    aget-object v1, v1, v14

    .line 122
    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->isOnSameSideDD(Landroid/graphics/PointF;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v1, v1, v6

    aget-object v1, v1, v6

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->isOnSameSideDD(Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_6

    .line 128
    :cond_8
    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v3, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v3, v3, v5

    aget-object v3, v3, v7

    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->getLen(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v3

    .line 129
    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v1, v1, v7

    aget-object v1, v1, v5

    iget-object v5, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v5, v5, v7

    aget-object v5, v5, v7

    invoke-virtual {v0, v1, v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->getLen(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v15

    cmpl-double v1, v3, v12

    if-gtz v1, :cond_e

    cmpl-double v1, v15, v12

    if-lez v1, :cond_9

    goto :goto_6

    :cond_9
    cmpl-double v1, v3, v10

    if-gtz v1, :cond_d

    cmpl-double v1, v15, v10

    if-lez v1, :cond_a

    goto :goto_5

    :cond_a
    cmpl-double v1, v3, v8

    if-gtz v1, :cond_c

    cmpl-double v1, v15, v8

    if-lez v1, :cond_b

    goto :goto_4

    .line 144
    :cond_b
    aput v14, v2, v14

    goto :goto_6

    .line 140
    :cond_c
    :goto_4
    aput v6, v2, v14

    goto :goto_6

    .line 136
    :cond_d
    :goto_5
    aput v7, v2, v14

    :cond_e
    :goto_6
    return-object v2
.end method

.method private getBernsteinPolynomials(I)[[D
    .locals 18

    const/4 v0, 0x1

    shl-int v1, v0, p1

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x4

    filled-new-array {v3, v2}, [I

    move-result-object v3

    .line 262
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    int-to-double v4, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v4, v6, v4

    neg-double v8, v4

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-ge v10, v2, :cond_0

    add-double/2addr v8, v4

    .line 268
    aget-object v11, v3, v1

    sub-double v12, v6, v8

    mul-double v14, v12, v12

    mul-double/2addr v14, v12

    aput-wide v14, v11, v10

    .line 269
    aget-object v11, v3, v0

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    mul-double/2addr v14, v8

    mul-double v16, v14, v12

    mul-double v16, v16, v12

    aput-wide v16, v11, v10

    const/4 v11, 0x2

    .line 270
    aget-object v11, v3, v11

    mul-double/2addr v14, v8

    mul-double/2addr v14, v12

    aput-wide v14, v11, v10

    const/4 v11, 0x3

    .line 271
    aget-object v11, v3, v11

    mul-double v12, v8, v8

    mul-double/2addr v12, v8

    aput-wide v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private getPatchCoordinatesColor()[[Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoordinateColorPair;
    .locals 32

    move-object/from16 v0, p0

    .line 215
    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->cornerColor:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    .line 216
    iget-object v3, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->level:[I

    aget v3, v3, v2

    invoke-direct {v0, v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->getBernsteinPolynomials(I)[[D

    move-result-object v3

    .line 217
    aget-object v4, v3, v2

    array-length v4, v4

    .line 218
    iget-object v5, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->level:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-direct {v0, v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->getBernsteinPolynomials(I)[[D

    move-result-object v5

    .line 219
    aget-object v7, v5, v2

    array-length v7, v7

    filled-new-array {v7, v4}, [I

    move-result-object v8

    .line 220
    const-class v9, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoordinateColorPair;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoordinateColorPair;

    add-int/lit8 v9, v4, -0x1

    int-to-double v9, v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double v9, v11, v9

    add-int/lit8 v13, v7, -0x1

    int-to-double v13, v13

    div-double v13, v11, v13

    neg-double v11, v13

    move v15, v2

    :goto_0
    if-ge v15, v7, :cond_4

    add-double/2addr v11, v13

    move/from16 v18, v7

    neg-double v6, v9

    :goto_1
    if-ge v2, v4, :cond_3

    const-wide/16 v20, 0x0

    move/from16 v24, v4

    move-object/from16 v25, v8

    move-wide/from16 v22, v13

    move-wide/from16 v13, v20

    const/4 v4, 0x0

    move-wide/from16 v20, v11

    move-wide v11, v13

    :goto_2
    const/4 v8, 0x4

    if-ge v4, v8, :cond_1

    move/from16 v26, v1

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v8, :cond_0

    .line 239
    iget-object v8, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v8, v8, v4

    aget-object v8, v8, v1

    iget v8, v8, Landroid/graphics/PointF;->x:F

    move-wide/from16 v28, v6

    float-to-double v6, v8

    aget-object v8, v3, v4

    aget-wide v30, v8, v2

    mul-double v6, v6, v30

    aget-object v8, v5, v1

    aget-wide v30, v8, v15

    mul-double v6, v6, v30

    add-double/2addr v13, v6

    .line 240
    iget-object v6, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v6, v6, v4

    aget-object v6, v6, v1

    iget v6, v6, Landroid/graphics/PointF;->y:F

    float-to-double v6, v6

    aget-object v8, v3, v4

    aget-wide v30, v8, v2

    mul-double v6, v6, v30

    aget-object v8, v5, v1

    aget-wide v30, v8, v15

    mul-double v6, v6, v30

    add-double/2addr v11, v6

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v6, v28

    const/4 v8, 0x4

    goto :goto_3

    :cond_0
    move-wide/from16 v28, v6

    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v26

    goto :goto_2

    :cond_1
    move/from16 v26, v1

    move-wide/from16 v28, v6

    .line 243
    new-instance v1, Landroid/graphics/PointF;

    double-to-float v4, v13

    double-to-float v6, v11

    invoke-direct {v1, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    add-double v6, v28, v9

    move/from16 v4, v26

    .line 246
    new-array v8, v4, [F

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v4, :cond_2

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v16, v12, v20

    sub-double v26, v12, v6

    .line 249
    iget-object v14, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->cornerColor:[[F

    const/16 v19, 0x0

    aget-object v14, v14, v19

    aget v14, v14, v11

    float-to-double v12, v14

    mul-double v12, v12, v26

    iget-object v14, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->cornerColor:[[F

    const/16 v30, 0x3

    aget-object v14, v14, v30

    aget v14, v14, v11

    move-object/from16 v30, v3

    move/from16 v31, v4

    float-to-double v3, v14

    mul-double/2addr v3, v6

    add-double/2addr v12, v3

    mul-double v16, v16, v12

    iget-object v3, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->cornerColor:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    aget v3, v3, v11

    float-to-double v12, v3

    mul-double v26, v26, v12

    iget-object v3, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->cornerColor:[[F

    const/4 v12, 0x2

    aget-object v3, v3, v12

    aget v3, v3, v11

    float-to-double v12, v3

    mul-double/2addr v12, v6

    add-double v26, v26, v12

    mul-double v12, v20, v26

    add-double v12, v16, v12

    double-to-float v3, v12

    aput v3, v8, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v30

    move/from16 v4, v31

    goto :goto_4

    :cond_2
    move-object/from16 v30, v3

    move/from16 v31, v4

    const/4 v4, 0x1

    const/16 v19, 0x0

    .line 252
    aget-object v3, v25, v15

    new-instance v11, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoordinateColorPair;

    invoke-direct {v11, v1, v8}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoordinateColorPair;-><init>(Landroid/graphics/PointF;[F)V

    aput-object v11, v3, v2

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v11, v20

    move-wide/from16 v13, v22

    move/from16 v4, v24

    move-object/from16 v8, v25

    move-object/from16 v3, v30

    move/from16 v1, v31

    goto/16 :goto_1

    :cond_3
    move/from16 v31, v1

    move-object/from16 v30, v3

    move/from16 v24, v4

    move-object/from16 v25, v8

    move-wide/from16 v20, v11

    move-wide/from16 v22, v13

    const/4 v4, 0x1

    const/16 v19, 0x0

    add-int/lit8 v15, v15, 0x1

    move v6, v4

    move/from16 v7, v18

    move/from16 v2, v19

    move/from16 v4, v24

    goto/16 :goto_0

    :cond_4
    move-object/from16 v25, v8

    return-object v25
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

    .line 170
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->getPatchCoordinatesColor()[[Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoordinateColorPair;

    move-result-object v0

    .line 171
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->getShadedTriangles([[Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoordinateColorPair;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private isOnSameSideCC(Landroid/graphics/PointF;)Z
    .locals 6

    .line 154
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    aget-object v2, v2, v1

    invoke-virtual {p0, p1, v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->edgeEquationValue(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v2, v2, v3

    aget-object v2, v2, v3

    .line 155
    invoke-virtual {p0, p1, v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->edgeEquationValue(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v2

    mul-double/2addr v4, v2

    const-wide/16 v2, 0x0

    cmpl-double p1, v4, v2

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isOnSameSideDD(Landroid/graphics/PointF;)Z
    .locals 6

    .line 162
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v2, v2, v1

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {p0, p1, v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->edgeEquationValue(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v0, v0, v3

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v2, v2, v3

    aget-object v2, v2, v3

    .line 163
    invoke-virtual {p0, p1, v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->edgeEquationValue(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v2

    mul-double/2addr v4, v2

    const-wide/16 v2, 0x0

    cmpl-double p1, v4, v2

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private reshapeControlPoints([Landroid/graphics/PointF;)[[Landroid/graphics/PointF;
    .locals 8

    const/4 v0, 0x4

    filled-new-array {v0, v0}, [I

    move-result-object v0

    .line 50
    const-class v1, Landroid/graphics/PointF;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/graphics/PointF;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    .line 53
    aget-object v4, v0, v1

    aget-object v5, p1, v2

    aput-object v5, v4, v2

    .line 54
    aget-object v3, v0, v3

    rsub-int/lit8 v4, v2, 0x9

    aget-object v4, p1, v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    move v4, v2

    :goto_1
    const/4 v5, 0x2

    if-gt v4, v5, :cond_1

    .line 58
    aget-object v6, v0, v4

    rsub-int/lit8 v7, v4, 0xc

    aget-object v7, p1, v7

    aput-object v7, v6, v1

    .line 59
    aget-object v6, v0, v4

    add-int/lit8 v7, v4, 0xc

    aget-object v7, p1, v7

    aput-object v7, v6, v5

    .line 60
    aget-object v5, v0, v4

    add-int/lit8 v6, v4, 0x3

    aget-object v6, p1, v6

    aput-object v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 62
    :cond_1
    aget-object v1, v0, v2

    const/16 v3, 0xc

    aget-object v3, p1, v3

    aput-object v3, v1, v2

    .line 63
    aget-object v1, v0, v5

    const/16 v3, 0xf

    aget-object p1, p1, v3

    aput-object p1, v1, v2

    return-object v0
.end method


# virtual methods
.method protected getFlag1Edge()[Landroid/graphics/PointF;
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/PointF;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 180
    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    aget-object v3, v3, v2

    const/4 v4, 0x3

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected getFlag2Edge()[Landroid/graphics/PointF;
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/PointF;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 191
    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    rsub-int/lit8 v4, v2, 0x3

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected getFlag3Edge()[Landroid/graphics/PointF;
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/PointF;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 202
    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/TensorPatch;->controlPoints:[[Landroid/graphics/PointF;

    rsub-int/lit8 v5, v3, 0x3

    aget-object v4, v4, v5

    aget-object v4, v4, v2

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
