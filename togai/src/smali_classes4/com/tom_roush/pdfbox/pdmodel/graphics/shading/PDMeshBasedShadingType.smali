.class abstract Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDMeshBasedShadingType;
.super Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType4;
.source "PDMeshBasedShadingType.java"


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType4;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method final collectPatches(Lcom/tom_roush/harmony/awt/geom/AffineTransform;Lcom/tom_roush/pdfbox/util/Matrix;I)Ljava/util/List;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/harmony/awt/geom/AffineTransform;",
            "Lcom/tom_roush/pdfbox/util/Matrix;",
            "I)",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    const-string v14, "PdfBox-Android"

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDMeshBasedShadingType;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 63
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-nez v1, :cond_0

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v13, 0x0

    .line 67
    invoke-virtual {v15, v13}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDMeshBasedShadingType;->getDecodeForParameter(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    move-result-object v16

    const/4 v12, 0x1

    .line 68
    invoke-virtual {v15, v12}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDMeshBasedShadingType;->getDecodeForParameter(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    move-result-object v17

    .line 69
    invoke-virtual/range {v16 .. v16}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v1

    invoke-virtual/range {v16 .. v16}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_b

    .line 70
    invoke-virtual/range {v17 .. v17}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v1

    invoke-virtual/range {v17 .. v17}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_a

    .line 74
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDMeshBasedShadingType;->getBitsPerFlag()I

    move-result v11

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDMeshBasedShadingType;->getNumberOfColorComponents()I

    move-result v1

    new-array v10, v1, [Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    move v2, v13

    :goto_0
    if-ge v2, v1, :cond_3

    add-int/lit8 v3, v2, 0x2

    .line 78
    invoke-virtual {v15, v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDMeshBasedShadingType;->getDecodeForParameter(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    move-result-object v3

    aput-object v3, v10, v2

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Range missing in shading /Decode entry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDMeshBasedShadingType;->getBitsPerCoordinate()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/16 v6, 0x1

    sub-long v18, v2, v6

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDMeshBasedShadingType;->getBitsPerComponent()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    sub-long v20, v2, v6

    .line 87
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 89
    new-instance v9, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [Landroid/graphics/PointF;

    const/4 v6, 0x2

    filled-new-array {v6, v1}, [I

    move-result-object v1

    .line 93
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 98
    :try_start_1
    invoke-interface {v9, v11}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->readBits(I)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-wide/16 v22, 0x3

    and-long v2, v2, v22

    long-to-int v2, v2

    int-to-byte v2, v2

    move-object/from16 v24, v1

    move/from16 v25, v2

    move/from16 v26, v13

    :goto_1
    if-nez v26, :cond_a

    if-nez v25, :cond_4

    move v3, v12

    goto :goto_2

    :cond_4
    move v3, v13

    :goto_2
    move-object/from16 v1, p0

    move-object v2, v9

    move-object v4, v0

    move-object/from16 v5, v24

    move-object/from16 v27, v0

    move v0, v6

    move-wide/from16 v6, v18

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-wide/from16 v8, v20

    move-object/from16 v30, v10

    move-object/from16 v10, v16

    move v0, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v30

    move/from16 v31, v13

    move-object/from16 v13, p2

    move-object/from16 v32, v14

    move-object/from16 v14, p1

    move/from16 v15, p3

    .line 112
    :try_start_2
    invoke-virtual/range {v1 .. v15}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDMeshBasedShadingType;->readPatch(Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;Z[Landroid/graphics/PointF;[[FJJLcom/tom_roush/pdfbox/pdmodel/common/PDRange;Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;[Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/harmony/awt/geom/AffineTransform;I)Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_5

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    goto/16 :goto_8

    :cond_5
    move-object/from16 v2, v28

    .line 119
    :try_start_3
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v3, v29

    .line 120
    :try_start_4
    invoke-interface {v3, v0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->readBits(I)J

    move-result-wide v4
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    and-long v4, v4, v22

    long-to-int v4, v4

    int-to-byte v4, v4

    if-eqz v4, :cond_9

    const/4 v5, 0x1

    if-eq v4, v5, :cond_8

    const/4 v6, 0x2

    if-eq v4, v6, :cond_7

    const/4 v7, 0x3

    if-eq v4, v7, :cond_6

    .line 138
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad flag: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v7, v32

    :try_start_6
    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_0
    move-object/from16 v7, v32

    goto :goto_4

    :cond_6
    move-object/from16 v7, v32

    .line 134
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;->getFlag3Edge()[Landroid/graphics/PointF;

    move-result-object v8
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 135
    :try_start_7
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;->getFlag3Color()[[F

    move-result-object v1
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :cond_7
    move-object/from16 v7, v32

    .line 130
    :try_start_8
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;->getFlag2Edge()[Landroid/graphics/PointF;

    move-result-object v8
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 131
    :try_start_9
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;->getFlag2Color()[[F

    move-result-object v1
    :try_end_9
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    :cond_8
    move-object/from16 v7, v32

    const/4 v6, 0x2

    .line 126
    :try_start_a
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;->getFlag1Edge()[Landroid/graphics/PointF;

    move-result-object v8
    :try_end_a
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 127
    :try_start_b
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;->getFlag1Color()[[F

    move-result-object v1
    :try_end_b
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :goto_3
    move-object/from16 v24, v1

    goto :goto_6

    :catch_1
    move/from16 v25, v4

    move-object/from16 v27, v8

    goto :goto_7

    :catch_2
    :goto_4
    move/from16 v25, v4

    goto :goto_7

    :cond_9
    move-object/from16 v7, v32

    const/4 v5, 0x1

    const/4 v6, 0x2

    :goto_5
    move-object/from16 v8, v27

    :goto_6
    move-object/from16 v15, p0

    move v11, v0

    move-object v9, v3

    move/from16 v25, v4

    move v12, v5

    move-object v14, v7

    move-object v0, v8

    move-object/from16 v10, v30

    move/from16 v13, v31

    move-object v8, v2

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v3, v29

    goto :goto_9

    :catch_3
    move-object/from16 v2, v28

    :catch_4
    move-object/from16 v3, v29

    :catch_5
    move-object/from16 v7, v32

    const/4 v5, 0x1

    const/4 v6, 0x2

    :goto_7
    move-object/from16 v15, p0

    move v11, v0

    move-object v8, v2

    move-object v9, v3

    move v12, v5

    move/from16 v26, v12

    move-object v14, v7

    move-object/from16 v0, v27

    move-object/from16 v10, v30

    move/from16 v13, v31

    goto/16 :goto_1

    :cond_a
    move-object v2, v8

    move-object v3, v9

    .line 150
    :goto_8
    invoke-interface {v3}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->close()V

    return-object v2

    :catch_6
    move-exception v0

    move-object v2, v8

    move-object v3, v9

    move-object v7, v14

    move-object v1, v0

    .line 102
    :try_start_c
    invoke-virtual {v1}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 150
    invoke-interface {v3}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->close()V

    return-object v2

    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v3, v9

    :goto_9
    invoke-interface {v3}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->close()V

    .line 151
    throw v0

    .line 72
    :cond_b
    :goto_a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method abstract generatePatch([Landroid/graphics/PointF;[[F)Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;
.end method

.method public abstract getBounds(Lcom/tom_roush/harmony/awt/geom/AffineTransform;Lcom/tom_roush/pdfbox/util/Matrix;)Landroid/graphics/RectF;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method getBounds(Lcom/tom_roush/harmony/awt/geom/AffineTransform;Lcom/tom_roush/pdfbox/util/Matrix;I)Landroid/graphics/RectF;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-virtual {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDMeshBasedShadingType;->collectPatches(Lcom/tom_roush/harmony/awt/geom/AffineTransform;Lcom/tom_roush/pdfbox/util/Matrix;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;

    .line 251
    iget-object p3, p3, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;->listOfTriangles:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 255
    new-instance p2, Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x0

    invoke-direct {p2, v2, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 258
    :cond_1
    iget-object v2, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    aget-object v1, v3, v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v2, v1}, Landroid/graphics/RectF;->union(FF)V

    .line 259
    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    aget-object v2, v3, v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/RectF;->union(FF)V

    .line 260
    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v0, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    aget-object v0, v0, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v1, v0}, Landroid/graphics/RectF;->union(FF)V

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method protected readPatch(Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;Z[Landroid/graphics/PointF;[[FJJLcom/tom_roush/pdfbox/pdmodel/common/PDRange;Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;[Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/harmony/awt/geom/AffineTransform;I)Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p14

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDMeshBasedShadingType;->getNumberOfColorComponents()I

    move-result v2

    const/4 v3, 0x4

    filled-new-array {v3, v2}, [I

    move-result-object v4

    .line 179
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    .line 180
    new-array v5, v1, [Landroid/graphics/PointF;

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    move v7, v6

    move v8, v7

    goto :goto_1

    .line 190
    :cond_0
    aget-object v7, p3, v6

    aput-object v7, v5, v6

    const/4 v7, 0x1

    .line 191
    aget-object v8, p3, v7

    aput-object v8, v5, v7

    const/4 v8, 0x2

    .line 192
    aget-object v9, p3, v8

    aput-object v9, v5, v8

    const/4 v9, 0x3

    .line 193
    aget-object v10, p3, v9

    aput-object v10, v5, v9

    move v9, v6

    :goto_0
    if-ge v9, v2, :cond_1

    .line 197
    aget-object v10, v4, v6

    aget-object v11, p4, v6

    aget v11, v11, v9

    aput v11, v10, v9

    .line 198
    aget-object v10, v4, v7

    aget-object v11, p4, v7

    aget v11, v11, v9

    aput v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    move v7, v3

    :goto_1
    if-ge v7, v1, :cond_2

    .line 206
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDMeshBasedShadingType;->getBitsPerCoordinate()I

    move-result v9

    invoke-interface {v0, v9}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->readBits(I)J

    move-result-wide v9

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDMeshBasedShadingType;->getBitsPerCoordinate()I

    move-result v11

    invoke-interface {v0, v11}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->readBits(I)J

    move-result-wide v11

    long-to-float v14, v9

    .line 208
    invoke-virtual/range {p9 .. p9}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v17

    invoke-virtual/range {p9 .. p9}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v18

    move-object/from16 v13, p0

    move-wide/from16 v15, p5

    invoke-virtual/range {v13 .. v18}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDMeshBasedShadingType;->interpolate(FJFF)F

    move-result v9

    long-to-float v14, v11

    .line 209
    invoke-virtual/range {p10 .. p10}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v17

    invoke-virtual/range {p10 .. p10}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v18

    move-object/from16 v13, p0

    move-wide/from16 v15, p5

    invoke-virtual/range {v13 .. v18}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDMeshBasedShadingType;->interpolate(FJFF)F

    move-result v10

    move-object/from16 v11, p12

    .line 210
    invoke-virtual {v11, v9, v10}, Lcom/tom_roush/pdfbox/util/Matrix;->transformPoint(FF)Landroid/graphics/PointF;

    move-result-object v9

    move-object/from16 v10, p13

    .line 211
    invoke-virtual {v10, v9, v9}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->transform(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 212
    aput-object v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_2
    if-ge v8, v3, :cond_4

    move v1, v6

    :goto_3
    if-ge v1, v2, :cond_3

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDMeshBasedShadingType;->getBitsPerComponent()I

    move-result v7

    invoke-interface {v0, v7}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->readBits(I)J

    move-result-wide v9

    .line 219
    aget-object v7, v4, v8

    long-to-float v12, v9

    aget-object v9, p11, v1

    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v15

    aget-object v9, p11, v1

    .line 220
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v16

    move-object/from16 v11, p0

    move-wide/from16 v13, p7

    .line 219
    invoke-virtual/range {v11 .. v16}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDMeshBasedShadingType;->interpolate(FJFF)F

    move-result v9

    aput v9, v7, v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :goto_4
    const-string v1, "PdfBox-Android"

    const-string v2, "EOF"

    .line 226
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v1, p0

    .line 229
    invoke-virtual {v1, v5, v4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDMeshBasedShadingType;->generatePatch([Landroid/graphics/PointF;[[F)Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;

    move-result-object v0

    return-object v0
.end method
