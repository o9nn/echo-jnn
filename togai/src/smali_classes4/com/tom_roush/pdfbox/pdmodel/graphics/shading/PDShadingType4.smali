.class public Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType4;
.super Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;
.source "PDShadingType4.java"


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method collectTriangles(Lcom/tom_roush/harmony/awt/geom/AffineTransform;Lcom/tom_roush/pdfbox/util/Matrix;)Ljava/util/List;
    .locals 31
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

    const-string v13, "PdfBox-Android"

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType4;->getBitsPerFlag()I

    move-result v14

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType4;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 88
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-nez v1, :cond_0

    .line 90
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v15, 0x0

    .line 92
    invoke-virtual {v12, v15}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType4;->getDecodeForParameter(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    move-result-object v16

    const/4 v11, 0x1

    .line 93
    invoke-virtual {v12, v11}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType4;->getDecodeForParameter(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    move-result-object v17

    if-eqz v16, :cond_c

    if-eqz v17, :cond_c

    .line 95
    invoke-virtual/range {v16 .. v16}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v1

    invoke-virtual/range {v16 .. v16}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_c

    .line 96
    invoke-virtual/range {v17 .. v17}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v1

    invoke-virtual/range {v17 .. v17}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_f

    .line 100
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType4;->getNumberOfColorComponents()I

    move-result v1

    new-array v10, v1, [Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    move v2, v15

    :goto_0
    if-ge v2, v1, :cond_3

    add-int/lit8 v3, v2, 0x2

    .line 103
    invoke-virtual {v12, v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType4;->getDecodeForParameter(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    move-result-object v3

    aput-object v3, v10, v2

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Range missing in shading /Decode entry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType4;->getBitsPerCoordinate()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-long v1, v1

    const-wide/16 v5, 0x1

    sub-long v18, v1, v5

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType4;->getBitsPerComponent()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-long v1, v1

    sub-long v20, v1, v5

    .line 112
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 114
    new-instance v8, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v22, 0x3

    .line 120
    :try_start_0
    invoke-interface {v8, v14}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->readBits(I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-long v0, v0, v22

    long-to-int v0, v0

    int-to-byte v0, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v12, v8

    goto/16 :goto_e

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 124
    :try_start_1
    invoke-virtual {v1}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v15

    :goto_1
    move/from16 v24, v15

    :goto_2
    if-nez v24, :cond_b

    const/4 v7, 0x3

    const/4 v5, 0x2

    if-eqz v0, :cond_8

    if-eq v0, v11, :cond_4

    if-eq v0, v5, :cond_4

    .line 185
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_1
    move-object v12, v8

    move-object v2, v9

    move-object/from16 v28, v10

    goto/16 :goto_8

    .line 164
    :cond_4
    :try_start_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    sub-int/2addr v1, v11

    if-gez v1, :cond_5

    .line 167
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broken data stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    move-object v12, v8

    move-object v2, v9

    move-object/from16 v28, v10

    move/from16 v27, v11

    move v5, v15

    goto/16 :goto_9

    .line 171
    :cond_5
    :try_start_5
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object/from16 v1, p0

    move-object v2, v8

    move-wide/from16 v3, v18

    move/from16 v25, v5

    move-object v15, v6

    move-wide/from16 v5, v20

    move v12, v7

    move-object/from16 v7, v16

    move-object/from16 v26, v8

    move-object/from16 v8, v17

    move-object/from16 v27, v9

    move-object v9, v10

    move-object/from16 v28, v10

    move-object/from16 v10, p2

    move-object/from16 v11, p1

    .line 172
    :try_start_6
    invoke-virtual/range {v1 .. v11}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType4;->readVertex(Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;JJLcom/tom_roush/pdfbox/pdmodel/common/PDRange;Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;[Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/harmony/awt/geom/AffineTransform;)Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;

    move-result-object v1

    new-array v2, v12, [Landroid/graphics/PointF;
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v11, 0x1

    if-ne v0, v11, :cond_6

    .line 174
    :try_start_7
    iget-object v3, v15, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    aget-object v3, v3, v11
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v4, 0x0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v12, v26

    goto/16 :goto_e

    :cond_6
    :try_start_8
    iget-object v3, v15, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const/4 v4, 0x0

    :try_start_9
    aget-object v3, v3, v4

    :goto_4
    aput-object v3, v2, v4
    :try_end_9
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    iget-object v3, v15, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    aget-object v3, v3, v25

    aput-object v3, v2, v11

    iget-object v3, v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;->point:Landroid/graphics/PointF;

    aput-object v3, v2, v25

    new-array v3, v12, [[F
    :try_end_a
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-ne v0, v11, :cond_7

    .line 177
    :try_start_b
    iget-object v4, v15, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->color:[[F

    aget-object v4, v4, v11
    :try_end_b
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const/4 v5, 0x0

    goto :goto_5

    :cond_7
    :try_start_c
    iget-object v4, v15, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->color:[[F
    :try_end_c
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    const/4 v5, 0x0

    :try_start_d
    aget-object v4, v4, v5

    :goto_5
    aput-object v4, v3, v5
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    iget-object v4, v15, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->color:[[F

    aget-object v4, v4, v25

    aput-object v4, v3, v11

    iget-object v1, v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;->color:[F

    aput-object v1, v3, v25

    .line 180
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;

    invoke-direct {v1, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;-><init>([Landroid/graphics/PointF;[[F)V
    :try_end_e
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-object/from16 v15, v27

    :try_start_f
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-object/from16 v10, v26

    .line 181
    :try_start_10
    invoke-interface {v10, v14}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->readBits(I)J

    move-result-wide v0
    :try_end_10
    .catch Ljava/io/EOFException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    and-long v0, v0, v22

    long-to-int v0, v0

    int-to-byte v0, v0

    move-object v12, v10

    move/from16 v27, v11

    move-object v2, v15

    const/4 v5, 0x0

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_2
    move-object v12, v10

    move/from16 v27, v11

    goto/16 :goto_a

    :catch_3
    move/from16 v27, v11

    move-object v2, v15

    move-object/from16 v12, v26

    goto/16 :goto_b

    :catch_4
    move v5, v4

    :catch_5
    move-object/from16 v12, v26

    move-object/from16 v2, v27

    goto :goto_6

    :catch_6
    move-object/from16 v12, v26

    move-object/from16 v2, v27

    const/4 v5, 0x0

    :goto_6
    move/from16 v27, v11

    goto/16 :goto_c

    :catchall_3
    move-exception v0

    move-object/from16 v10, v26

    goto :goto_7

    :catch_7
    move-object/from16 v12, v26

    move-object/from16 v2, v27

    const/4 v5, 0x0

    const/16 v27, 0x1

    goto/16 :goto_c

    :catchall_4
    move-exception v0

    move-object v10, v8

    :goto_7
    move-object v12, v10

    goto/16 :goto_e

    :catch_8
    move-object/from16 v28, v10

    move-object v12, v8

    move-object v2, v9

    :goto_8
    move/from16 v27, v11

    move v5, v15

    goto/16 :goto_c

    :cond_8
    move/from16 v25, v5

    move v12, v7

    move-object v15, v9

    move-object/from16 v28, v10

    move-object v10, v8

    move-object/from16 v1, p0

    move-object v2, v10

    move-wide/from16 v3, v18

    move-wide/from16 v5, v20

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v28

    move-object v12, v10

    move-object/from16 v10, p2

    move/from16 v27, v11

    move-object/from16 v11, p1

    .line 141
    :try_start_11
    invoke-virtual/range {v1 .. v11}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType4;->readVertex(Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;JJLcom/tom_roush/pdfbox/pdmodel/common/PDRange;Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;[Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/harmony/awt/geom/AffineTransform;)Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;

    move-result-object v11

    .line 143
    invoke-interface {v12, v14}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->readBits(I)J

    move-result-wide v0
    :try_end_11
    .catch Ljava/io/EOFException; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    and-long v0, v0, v22

    long-to-int v0, v0

    int-to-byte v0, v0

    const-string v10, "bad triangle: "

    if-eqz v0, :cond_9

    .line 146
    :try_start_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/io/EOFException; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :cond_9
    move-object/from16 v1, p0

    move-object v2, v12

    move-wide/from16 v3, v18

    move-wide/from16 v5, v20

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v28

    move-object/from16 v29, v15

    move-object v15, v10

    move-object/from16 v10, p2

    move-object/from16 v30, v11

    move-object/from16 v11, p1

    .line 148
    :try_start_13
    invoke-virtual/range {v1 .. v11}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType4;->readVertex(Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;JJLcom/tom_roush/pdfbox/pdmodel/common/PDRange;Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;[Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/harmony/awt/geom/AffineTransform;)Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;

    move-result-object v11

    .line 150
    invoke-interface {v12, v14}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->readBits(I)J

    if-eqz v0, :cond_a

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v1, p0

    move-object v2, v12

    move-wide/from16 v3, v18

    move-wide/from16 v5, v20

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v28

    move-object/from16 v10, p2

    move-object v15, v11

    move-object/from16 v11, p1

    .line 155
    invoke-virtual/range {v1 .. v11}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType4;->readVertex(Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;JJLcom/tom_roush/pdfbox/pdmodel/common/PDRange;Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;[Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/harmony/awt/geom/AffineTransform;)Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Landroid/graphics/PointF;

    move-object/from16 v2, v30

    .line 157
    iget-object v4, v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;->point:Landroid/graphics/PointF;
    :try_end_13
    .catch Ljava/io/EOFException; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    const/4 v5, 0x0

    :try_start_14
    aput-object v4, v3, v5
    :try_end_14
    .catch Ljava/io/EOFException; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    :try_start_15
    iget-object v4, v15, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;->point:Landroid/graphics/PointF;

    aput-object v4, v3, v27

    iget-object v4, v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;->point:Landroid/graphics/PointF;

    aput-object v4, v3, v25

    const/4 v4, 0x3

    new-array v4, v4, [[F

    .line 158
    iget-object v2, v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;->color:[F
    :try_end_15
    .catch Ljava/io/EOFException; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    const/4 v5, 0x0

    :try_start_16
    aput-object v2, v4, v5

    iget-object v2, v15, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;->color:[F

    aput-object v2, v4, v27

    iget-object v1, v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;->color:[F

    aput-object v1, v4, v25

    .line 159
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;

    invoke-direct {v1, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;-><init>([Landroid/graphics/PointF;[[F)V
    :try_end_16
    .catch Ljava/io/EOFException; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    move-object/from16 v2, v29

    :try_start_17
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-interface {v12, v14}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->readBits(I)J

    move-result-wide v0
    :try_end_17
    .catch Ljava/io/EOFException; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    and-long v0, v0, v22

    long-to-int v0, v0

    int-to-byte v0, v0

    :goto_9
    move-object v9, v2

    move v15, v5

    move-object v8, v12

    move/from16 v11, v27

    goto :goto_d

    :catch_9
    move-object/from16 v2, v29

    goto :goto_c

    :catch_a
    move-object/from16 v2, v29

    goto :goto_b

    :catchall_5
    move-exception v0

    goto :goto_e

    :catch_b
    :goto_a
    move-object v2, v15

    :goto_b
    const/4 v5, 0x0

    :catch_c
    :goto_c
    move-object v9, v2

    move v15, v5

    move-object v8, v12

    move/from16 v11, v27

    move/from16 v24, v11

    :goto_d
    move-object/from16 v10, v28

    move-object/from16 v12, p0

    goto/16 :goto_2

    :cond_b
    move-object v12, v8

    move-object v2, v9

    .line 197
    invoke-interface {v12}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->close()V

    return-object v2

    :goto_e
    invoke-interface {v12}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->close()V

    .line 198
    throw v0

    .line 98
    :cond_c
    :goto_f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBitsPerComponent()I
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->getBitsPerComponent()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBitsPerCoordinate()I
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->getBitsPerCoordinate()I

    move-result v0

    return v0
.end method

.method public getBitsPerFlag()I
    .locals 3

    .line 66
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType4;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BITS_PER_FLAG:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

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

    .line 40
    invoke-super {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->getBounds(Lcom/tom_roush/harmony/awt/geom/AffineTransform;Lcom/tom_roush/pdfbox/util/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDecodeForParameter(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;
    .locals 0

    .line 40
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

    .line 40
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->getNumberOfColorComponents()I

    move-result v0

    return v0
.end method

.method public getShadingType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public bridge synthetic setBitsPerComponent(I)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->setBitsPerComponent(I)V

    return-void
.end method

.method public bridge synthetic setBitsPerCoordinate(I)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->setBitsPerCoordinate(I)V

    return-void
.end method

.method public setBitsPerFlag(I)V
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType4;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BITS_PER_FLAG:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public bridge synthetic setDecodeValues(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->setDecodeValues(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    return-void
.end method
