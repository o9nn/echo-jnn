.class abstract Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;
.super Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;
.source "PDTriangleBasedShadingType.java"


# instance fields
.field private bitsPerColorComponent:I

.field private bitsPerCoordinate:I

.field private decode:Lcom/tom_roush/pdfbox/cos/COSArray;

.field private numberOfColorComponents:I


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->decode:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 p1, -0x1

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->bitsPerCoordinate:I

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->bitsPerColorComponent:I

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->numberOfColorComponents:I

    return-void
.end method

.method private getDecodeValues()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->decode:Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->decode:Lcom/tom_roush/pdfbox/cos/COSArray;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->decode:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method


# virtual methods
.method abstract collectTriangles(Lcom/tom_roush/harmony/awt/geom/AffineTransform;Lcom/tom_roush/pdfbox/util/Matrix;)Ljava/util/List;
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
.end method

.method public getBitsPerComponent()I
    .locals 3

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->bitsPerColorComponent:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->BITS_PER_COMPONENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v2, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->bitsPerColorComponent:I

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bitsPerColorComponent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->bitsPerColorComponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PdfBox-Android"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->bitsPerColorComponent:I

    return v0
.end method

.method public getBitsPerCoordinate()I
    .locals 5

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->bitsPerCoordinate:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->BITS_PER_COORDINATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v2, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->bitsPerCoordinate:I

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bitsPerCoordinate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->bitsPerCoordinate:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PdfBox-Android"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->bitsPerCoordinate:I

    return v0
.end method

.method public getBounds(Lcom/tom_roush/harmony/awt/geom/AffineTransform;Lcom/tom_roush/pdfbox/util/Matrix;)Landroid/graphics/RectF;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->collectTriangles(Lcom/tom_roush/harmony/awt/geom/AffineTransform;Lcom/tom_roush/pdfbox/util/Matrix;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 234
    new-instance p2, Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x0

    invoke-direct {p2, v2, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 237
    :cond_0
    iget-object v2, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    aget-object v1, v3, v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v2, v1}, Landroid/graphics/RectF;->union(FF)V

    .line 238
    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    aget-object v2, v3, v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/RectF;->union(FF)V

    .line 239
    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v0, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    aget-object v0, v0, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v1, v0}, Landroid/graphics/RectF;->union(FF)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 244
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    return-object p1

    :cond_2
    return-object p2
.end method

.method public getDecodeForParameter(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;
    .locals 3

    .line 155
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->getDecodeValues()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    if-lt v1, v2, :cond_0

    .line 158
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    invoke-direct {v1, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getNumberOfColorComponents()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->numberOfColorComponents:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->getFunction()Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->getNumberOfComponents()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->numberOfColorComponents:I

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "numberOfColorComponents: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->numberOfColorComponents:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PdfBox-Android"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->numberOfColorComponents:I

    return v0
.end method

.method protected interpolate(FJFF)F
    .locals 0

    sub-float/2addr p5, p4

    mul-float/2addr p1, p5

    long-to-float p2, p2

    div-float/2addr p1, p2

    add-float/2addr p4, p1

    return p4
.end method

.method protected readVertex(Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;JJLcom/tom_roush/pdfbox/pdmodel/common/PDRange;Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;[Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/harmony/awt/geom/AffineTransform;)Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v6, p0

    move-object v7, p1

    iget v0, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->numberOfColorComponents:I

    .line 194
    new-array v8, v0, [F

    iget v0, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->bitsPerCoordinate:I

    .line 195
    invoke-interface {p1, v0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->readBits(I)J

    move-result-wide v9

    iget v0, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->bitsPerCoordinate:I

    .line 196
    invoke-interface {p1, v0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->readBits(I)J

    move-result-wide v11

    long-to-float v1, v9

    .line 197
    invoke-virtual/range {p6 .. p6}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v4

    invoke-virtual/range {p6 .. p6}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v5

    move-object v0, p0

    move-wide/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->interpolate(FJFF)F

    move-result v13

    long-to-float v1, v11

    .line 198
    invoke-virtual/range {p7 .. p7}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v4

    invoke-virtual/range {p7 .. p7}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->interpolate(FJFF)F

    move-result v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "coord: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "[%06X,%06X] -> [%f,%f]"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "PdfBox-Android"

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p9

    .line 200
    invoke-virtual {v1, v13, v0}, Lcom/tom_roush/pdfbox/util/Matrix;->transformPoint(FF)Landroid/graphics/PointF;

    move-result-object v10

    move-object/from16 v0, p10

    .line 201
    invoke-virtual {v0, v10, v10}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->transform(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    const/4 v0, 0x0

    move v11, v0

    :goto_0
    iget v0, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->numberOfColorComponents:I

    if-ge v11, v0, :cond_0

    iget v0, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->bitsPerColorComponent:I

    .line 205
    invoke-interface {p1, v0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->readBits(I)J

    move-result-wide v0

    long-to-int v12, v0

    int-to-float v1, v12

    .line 206
    aget-object v0, p8, v11

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v4

    aget-object v0, p8, v11

    .line 207
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v5

    move-object v0, p0

    move-wide/from16 v2, p4

    .line 206
    invoke-virtual/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->interpolate(FJFF)F

    move-result v0

    aput v0, v8, v11

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "color["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-> color["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, v8, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 215
    :cond_0
    invoke-interface {p1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->getBitOffset()I

    move-result v0

    if-eqz v0, :cond_1

    rsub-int/lit8 v0, v0, 0x8

    .line 218
    invoke-interface {p1, v0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->readBits(I)J

    .line 221
    :cond_1
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;

    invoke-direct {v0, v10, v8}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Vertex;-><init>(Landroid/graphics/PointF;[F)V

    return-object v0
.end method

.method public setBitsPerComponent(I)V
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BITS_PER_COMPONENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->bitsPerColorComponent:I

    return-void
.end method

.method public setBitsPerCoordinate(I)V
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BITS_PER_COORDINATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->bitsPerCoordinate:I

    return-void
.end method

.method public setDecodeValues(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 2

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->decode:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 143
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDTriangleBasedShadingType;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method
