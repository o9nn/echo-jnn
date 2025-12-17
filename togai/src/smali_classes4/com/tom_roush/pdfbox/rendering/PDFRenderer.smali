.class public Lcom/tom_roush/pdfbox/rendering/PDFRenderer;
.super Ljava/lang/Object;
.source "PDFRenderer.java"


# instance fields
.field private annotationFilter:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/AnnotationFilter;

.field private defaultDestination:Lcom/tom_roush/pdfbox/rendering/RenderDestination;

.field protected final document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

.field private imageDownscalingOptimizationThreshold:F

.field private pageImage:Landroid/graphics/Bitmap;

.field private final pageTree:Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

.field private subsamplingAllowed:Z


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/tom_roush/pdfbox/rendering/PDFRenderer$1;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/rendering/PDFRenderer$1;-><init>(Lcom/tom_roush/pdfbox/rendering/PDFRenderer;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->annotationFilter:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/AnnotationFilter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->subsamplingAllowed:Z

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->imageDownscalingOptimizationThreshold:F

    iput-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 79
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getPages()Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->pageTree:Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    return-void
.end method

.method private hasBlendMode(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)Z
    .locals 4

    .line 471
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 476
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getExtGStateNames()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 478
    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getExtGState(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 483
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getBlendMode()Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;

    move-result-object v2

    .line 484
    sget-object v3, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->NORMAL:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    if-eq v2, v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method private transform(Landroid/graphics/Canvas;ILcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;FF)V
    .locals 1

    .line 431
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Canvas;->scale(FF)V

    if-eqz p2, :cond_3

    const/16 p4, 0x5a

    const/4 p5, 0x0

    if-eq p2, p4, :cond_2

    const/16 p4, 0xb4

    if-eq p2, p4, :cond_1

    const/16 p4, 0x10e

    if-eq p2, p4, :cond_0

    move p3, p5

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result p3

    goto :goto_0

    .line 447
    :cond_1
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result p5

    .line 448
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p3

    goto :goto_0

    .line 441
    :cond_2
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p3

    move v0, p5

    move p5, p3

    move p3, v0

    .line 453
    :goto_0
    invoke-virtual {p1, p5, p3}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float p2, p2

    .line 454
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected createPageDrawer(Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;)Lcom/tom_roush/pdfbox/rendering/PageDrawer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    new-instance v0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;-><init>(Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->annotationFilter:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/AnnotationFilter;

    .line 464
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->setAnnotationFilter(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/AnnotationFilter;)V

    return-object v0
.end method

.method public getAnnotationsFilter()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/AnnotationFilter;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->annotationFilter:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/AnnotationFilter;

    return-object v0
.end method

.method public getDefaultDestination()Lcom/tom_roush/pdfbox/rendering/RenderDestination;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->defaultDestination:Lcom/tom_roush/pdfbox/rendering/RenderDestination;

    return-object v0
.end method

.method public getImageDownscalingOptimizationThreshold()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->imageDownscalingOptimizationThreshold:F

    return v0
.end method

.method getPageImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->pageImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isGroupEnabled(Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;)Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 424
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getOCProperties()Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 425
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->isGroupEnabled(Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isSubsamplingAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->subsamplingAllowed:Z

    return v0
.end method

.method public renderImage(I)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 179
    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->renderImage(IF)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public renderImage(IF)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    sget-object v0, Lcom/tom_roush/pdfbox/rendering/ImageType;->RGB:Lcom/tom_roush/pdfbox/rendering/ImageType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->renderImage(IFLcom/tom_roush/pdfbox/rendering/ImageType;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public renderImage(IFLcom/tom_roush/pdfbox/rendering/ImageType;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->defaultDestination:Lcom/tom_roush/pdfbox/rendering/RenderDestination;

    if-nez v0, :cond_0

    .line 233
    sget-object v0, Lcom/tom_roush/pdfbox/rendering/RenderDestination;->EXPORT:Lcom/tom_roush/pdfbox/rendering/RenderDestination;

    .line 232
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->renderImage(IFLcom/tom_roush/pdfbox/rendering/ImageType;Lcom/tom_roush/pdfbox/rendering/RenderDestination;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public renderImage(IFLcom/tom_roush/pdfbox/rendering/ImageType;Lcom/tom_roush/pdfbox/rendering/RenderDestination;)Landroid/graphics/Bitmap;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v5, p2

    move-object/from16 v7, p3

    iget-object v0, v6, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->pageTree:Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    move/from16 v1, p1

    .line 248
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->get(I)Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object v8

    .line 250
    invoke-virtual {v8}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCropBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v9

    .line 251
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v0

    .line 252
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result v1

    mul-float v2, v0, v5

    float-to-double v2, v2

    .line 255
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v2, v2

    mul-float v3, v1, v5

    float-to-double v3, v3

    .line 256
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-long v10, v2

    int-to-long v12, v3

    mul-long/2addr v10, v12

    const-wide/32 v12, 0x7fffffff

    cmp-long v4, v10, v12

    if-gtz v4, :cond_5

    .line 265
    invoke-virtual {v8}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getRotation()I

    move-result v0

    .line 268
    sget-object v1, Lcom/tom_roush/pdfbox/rendering/ImageType;->ARGB:Lcom/tom_roush/pdfbox/rendering/ImageType;

    if-eq v7, v1, :cond_0

    invoke-direct {v6, v8}, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->hasBlendMode(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/tom_roush/pdfbox/rendering/ImageType;->toBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    :goto_0
    const/16 v4, 0x5a

    if-eq v0, v4, :cond_2

    const/16 v4, 0x10e

    if-ne v0, v4, :cond_1

    goto :goto_1

    .line 289
    :cond_1
    invoke-static {v2, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 285
    :cond_2
    :goto_1
    invoke-static {v3, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    move-object v10, v0

    iput-object v10, v6, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->pageImage:Landroid/graphics/Bitmap;

    .line 295
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 296
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 297
    sget-object v0, Lcom/tom_roush/pdfbox/rendering/ImageType;->ARGB:Lcom/tom_roush/pdfbox/rendering/ImageType;

    const/4 v2, -0x1

    if-ne v7, v0, :cond_3

    const/4 v0, 0x0

    .line 299
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 303
    :cond_3
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 305
    :goto_3
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 306
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v14, v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v15, v0

    move-object v11, v3

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 307
    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    .line 309
    invoke-virtual {v8}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getRotation()I

    move-result v11

    move-object/from16 v0, p0

    move-object v1, v3

    move v12, v2

    move v2, v11

    move-object v11, v3

    move-object v3, v9

    move-object v13, v4

    move/from16 v4, p2

    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->transform(Landroid/graphics/Canvas;ILcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;FF)V

    .line 312
    new-instance v14, Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;

    iget-boolean v3, v6, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->subsamplingAllowed:Z

    iget v5, v6, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->imageDownscalingOptimizationThreshold:F

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v8

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;-><init>(Lcom/tom_roush/pdfbox/rendering/PDFRenderer;Lcom/tom_roush/pdfbox/pdmodel/PDPage;ZLcom/tom_roush/pdfbox/rendering/RenderDestination;F)V

    .line 315
    invoke-virtual {v6, v14}, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->createPageDrawer(Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;)Lcom/tom_roush/pdfbox/rendering/PageDrawer;

    move-result-object v0

    .line 316
    invoke-virtual {v0, v13, v11, v9}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->drawPage(Landroid/graphics/Paint;Landroid/graphics/Canvas;Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 318
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lcom/tom_roush/pdfbox/rendering/ImageType;->toBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 322
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Lcom/tom_roush/pdfbox/rendering/ImageType;->toBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 323
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 324
    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 325
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 326
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, v8

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 327
    invoke-virtual {v8, v10, v0, v0, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v10, v7

    :cond_4
    return-object v10

    .line 261
    :cond_5
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Maximum size of image exceeded (w * h * scale ^ 2) = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " * "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ^ 2 > 2147483647"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public renderImageWithDPI(IF)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x42900000    # 72.0f

    div-float/2addr p2, v0

    .line 204
    sget-object v0, Lcom/tom_roush/pdfbox/rendering/ImageType;->RGB:Lcom/tom_roush/pdfbox/rendering/ImageType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->renderImage(IFLcom/tom_roush/pdfbox/rendering/ImageType;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public renderImageWithDPI(IFLcom/tom_roush/pdfbox/rendering/ImageType;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x42900000    # 72.0f

    div-float/2addr p2, v0

    .line 218
    invoke-virtual {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->renderImage(IFLcom/tom_roush/pdfbox/rendering/ImageType;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public renderPageToGraphics(ILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 347
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->renderPageToGraphics(ILandroid/graphics/Paint;Landroid/graphics/Canvas;F)V

    return-void
.end method

.method public renderPageToGraphics(ILandroid/graphics/Paint;Landroid/graphics/Canvas;F)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p4

    .line 365
    invoke-virtual/range {v0 .. v5}, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->renderPageToGraphics(ILandroid/graphics/Paint;Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method public renderPageToGraphics(ILandroid/graphics/Paint;Landroid/graphics/Canvas;FF)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->defaultDestination:Lcom/tom_roush/pdfbox/rendering/RenderDestination;

    if-nez v0, :cond_0

    .line 385
    sget-object v0, Lcom/tom_roush/pdfbox/rendering/RenderDestination;->VIEW:Lcom/tom_roush/pdfbox/rendering/RenderDestination;

    :cond_0
    move-object v7, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 384
    invoke-virtual/range {v1 .. v7}, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->renderPageToGraphics(ILandroid/graphics/Paint;Landroid/graphics/Canvas;FFLcom/tom_roush/pdfbox/rendering/RenderDestination;)V

    return-void
.end method

.method public renderPageToGraphics(ILandroid/graphics/Paint;Landroid/graphics/Canvas;FFLcom/tom_roush/pdfbox/rendering/RenderDestination;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v6, p0

    iget-object v0, v6, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->pageTree:Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    move/from16 v1, p1

    .line 402
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->get(I)Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object v7

    .line 405
    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCropBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v8

    .line 406
    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getRotation()I

    move-result v2

    move-object v0, p0

    move-object/from16 v1, p3

    move-object v3, v8

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->transform(Landroid/graphics/Canvas;ILcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;FF)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 407
    invoke-virtual {v8}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v12

    invoke-virtual {v8}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result v13

    move-object/from16 v9, p3

    move-object/from16 v14, p2

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 410
    new-instance v9, Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;

    iget-boolean v3, v6, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->subsamplingAllowed:Z

    iget v5, v6, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->imageDownscalingOptimizationThreshold:F

    move-object v0, v9

    move-object v1, p0

    move-object v2, v7

    move-object/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;-><init>(Lcom/tom_roush/pdfbox/rendering/PDFRenderer;Lcom/tom_roush/pdfbox/pdmodel/PDPage;ZLcom/tom_roush/pdfbox/rendering/RenderDestination;F)V

    .line 413
    invoke-virtual {p0, v9}, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->createPageDrawer(Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;)Lcom/tom_roush/pdfbox/rendering/PageDrawer;

    move-result-object v0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 414
    invoke-virtual {v0, v1, v2, v8}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->drawPage(Landroid/graphics/Paint;Landroid/graphics/Canvas;Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    return-void
.end method

.method public setAnnotationsFilter(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/AnnotationFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->annotationFilter:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/AnnotationFilter;

    return-void
.end method

.method public setDefaultDestination(Lcom/tom_roush/pdfbox/rendering/RenderDestination;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->defaultDestination:Lcom/tom_roush/pdfbox/rendering/RenderDestination;

    return-void
.end method

.method public setImageDownscalingOptimizationThreshold(F)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->imageDownscalingOptimizationThreshold:F

    return-void
.end method

.method public setSubsamplingAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->subsamplingAllowed:Z

    return-void
.end method
