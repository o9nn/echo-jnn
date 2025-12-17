.class public Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType5;
.super Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;
.source "PDShadingType5.java"


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method

.method private createShadedTriangleList(II[[Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[[",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;",
            ")",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/PointF;

    new-array v0, v0, [[F

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    add-int/lit8 v6, p1, -0x1

    if-ge v4, v6, :cond_1

    move v6, v3

    :goto_1
    add-int/lit8 v7, p2, -0x1

    if-ge v6, v7, :cond_0

    .line 161
    aget-object v7, p3, v4

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;->point:Landroid/graphics/PointF;

    aput-object v7, v1, v3

    .line 162
    aget-object v7, p3, v4

    add-int/lit8 v8, v6, 0x1

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;->point:Landroid/graphics/PointF;

    aput-object v7, v1, v5

    add-int/lit8 v7, v4, 0x1

    .line 163
    aget-object v9, p3, v7

    aget-object v9, v9, v6

    iget-object v9, v9, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;->point:Landroid/graphics/PointF;

    const/4 v10, 0x2

    aput-object v9, v1, v10

    .line 165
    aget-object v9, p3, v4

    aget-object v9, v9, v6

    iget-object v9, v9, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;->color:[F

    aput-object v9, v0, v3

    .line 166
    aget-object v9, p3, v4

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;->color:[F

    aput-object v9, v0, v5

    .line 167
    aget-object v9, p3, v7

    aget-object v9, v9, v6

    iget-object v9, v9, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;->color:[F

    aput-object v9, v0, v10

    .line 169
    new-instance v9, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;

    invoke-direct {v9, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;-><init>([Landroid/graphics/PointF;[[F)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    aget-object v9, p3, v4

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;->point:Landroid/graphics/PointF;

    aput-object v9, v1, v3

    .line 172
    aget-object v9, p3, v7

    aget-object v9, v9, v6

    iget-object v9, v9, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;->point:Landroid/graphics/PointF;

    aput-object v9, v1, v5

    .line 173
    aget-object v9, p3, v7

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;->point:Landroid/graphics/PointF;

    aput-object v9, v1, v10

    .line 175
    aget-object v9, p3, v4

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;->color:[F

    aput-object v9, v0, v3

    .line 176
    aget-object v9, p3, v7

    aget-object v6, v9, v6

    iget-object v6, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;->color:[F

    aput-object v6, v0, v5

    .line 177
    aget-object v6, p3, v7

    aget-object v6, v6, v8

    iget-object v6, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;->color:[F

    aput-object v6, v0, v10

    .line 179
    new-instance v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;

    invoke-direct {v6, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;-><init>([Landroid/graphics/PointF;[[F)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method collectTriangles(Lcom/tom_roush/harmony/awt/geom/AffineTransform;Lcom/tom_roush/pdfbox/util/Matrix;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/harmony/awt/geom/AffineTransform;",
            "Lcom/tom_roush/pdfbox/util/Matrix;",
            ")",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v12, p0

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType5;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 85
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-nez v1, :cond_0

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v13, 0x0

    .line 89
    invoke-virtual {v12, v13}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType5;->getDecodeForParameter(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    move-result-object v14

    const/4 v15, 0x1

    .line 90
    invoke-virtual {v12, v15}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType5;->getDecodeForParameter(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    move-result-object v16

    if-eqz v14, :cond_8

    if-eqz v16, :cond_8

    .line 92
    invoke-virtual {v14}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v1

    invoke-virtual {v14}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_8

    .line 93
    invoke-virtual/range {v16 .. v16}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v1

    invoke-virtual/range {v16 .. v16}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_5

    .line 97
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType5;->getVerticesPerRow()I

    move-result v11

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType5;->getNumberOfColorComponents()I

    move-result v1

    new-array v10, v1, [Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    move v2, v13

    :goto_0
    if-ge v2, v1, :cond_3

    add-int/lit8 v3, v2, 0x2

    .line 101
    invoke-virtual {v12, v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType5;->getDecodeForParameter(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    move-result-object v3

    aput-object v3, v10, v2

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Range missing in shading /Decode entry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType5;->getBitsPerCoordinate()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-long v1, v1

    const-wide/16 v5, 0x1

    sub-long v17, v1, v5

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType5;->getBitsPerComponent()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-long v1, v1

    sub-long v19, v1, v5

    .line 110
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 112
    new-instance v8, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;-><init>(Ljava/io/InputStream;)V

    move v0, v13

    :goto_1
    if-nez v0, :cond_4

    move-object/from16 v1, p0

    move-object v2, v8

    move-wide/from16 v3, v17

    move-wide/from16 v5, v19

    move-object v7, v14

    move-object/from16 v21, v8

    move-object/from16 v8, v16

    move-object v13, v9

    move-object v9, v10

    move-object/from16 v22, v10

    move-object/from16 v10, p2

    move v15, v11

    move-object/from16 v11, p1

    .line 121
    :try_start_0
    invoke-virtual/range {v1 .. v11}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType5;->readVertex(Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;JJLcom/tom_roush/pdfbox/pdmodel/common/PDRange;Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;[Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/harmony/awt/geom/AffineTransform;)Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;

    move-result-object v1

    .line 122
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v13

    move v11, v15

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 132
    invoke-interface/range {v21 .. v21}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->close()V

    .line 133
    throw v0

    :catch_0
    move-object v9, v13

    move v11, v15

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    const/4 v0, 0x1

    :goto_2
    const/4 v13, 0x0

    const/4 v15, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v21, v8

    move-object v13, v9

    move v15, v11

    .line 132
    invoke-interface/range {v21 .. v21}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->close()V

    .line 134
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v0, v15

    const/4 v1, 0x2

    if-ge v0, v1, :cond_5

    .line 138
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_5
    filled-new-array {v0, v15}, [I

    move-result-object v1

    .line 140
    const-class v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_7

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v15, :cond_6

    .line 145
    aget-object v4, v1, v2

    mul-int v11, v2, v15

    add-int/2addr v11, v3

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 149
    :cond_7
    invoke-direct {v12, v0, v15, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType5;->createShadedTriangleList(II[[Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 95
    :cond_8
    :goto_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBitsPerComponent()I
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->getBitsPerComponent()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBitsPerCoordinate()I
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->getBitsPerCoordinate()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBounds(Lcom/tom_roush/harmony/awt/geom/AffineTransform;Lcom/tom_roush/pdfbox/util/Matrix;)Landroid/graphics/RectF;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-super {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->getBounds(Lcom/tom_roush/harmony/awt/geom/AffineTransform;Lcom/tom_roush/pdfbox/util/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDecodeForParameter(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->getDecodeForParameter(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getNumberOfColorComponents()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->getNumberOfColorComponents()I

    move-result v0

    return v0
.end method

.method public getShadingType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getVerticesPerRow()I
    .locals 3

    .line 65
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType5;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VERTICES_PER_ROW:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic setBitsPerComponent(I)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->setBitsPerComponent(I)V

    return-void
.end method

.method public bridge synthetic setBitsPerCoordinate(I)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->setBitsPerCoordinate(I)V

    return-void
.end method

.method public bridge synthetic setDecodeValues(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->setDecodeValues(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    return-void
.end method

.method public setVerticesPerRow(I)V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType5;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VERTICES_PER_ROW:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method
