.class public final Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
.super Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;
.source "PDImageXObject.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;


# instance fields
.field private cachedImage:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private cachedImageSubsampling:I

.field private colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

.field private final resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSBase;IIILcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-static {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->createRawStream(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;)Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->IMAGE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;Lcom/tom_roush/pdfbox/cos/COSName;)V

    const p1, 0x7fffffff

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->cachedImageSubsampling:I

    .line 109
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2, p3}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    .line 112
    invoke-virtual {p0, p6}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->setBitsPerComponent(I)V

    .line 113
    invoke-virtual {p0, p4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->setWidth(I)V

    .line 114
    invoke-virtual {p0, p5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->setHeight(I)V

    .line 115
    invoke-virtual {p0, p7}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->setColorSpace(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->IMAGE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/cos/COSName;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->cachedImageSubsampling:I

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 131
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getFilters()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 133
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->JPX_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    new-array p2, p2, [Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v0, 0x0

    .line 136
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->WIDTH:Lcom/tom_roush/pdfbox/cos/COSName;

    aput-object v1, p2, v0

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->HEIGHT:Lcom/tom_roush/pdfbox/cos/COSName;

    aput-object v0, p2, v2

    const/4 v0, 0x2

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->COLORSPACE:Lcom/tom_roush/pdfbox/cos/COSName;

    aput-object v1, p2, v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 138
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    .line 139
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 141
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    :try_start_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 155
    :try_start_1
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSInputStream;->getDecodeResult()Lcom/tom_roush/pdfbox/filter/DecodeResult;

    move-result-object v0

    .line 156
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/filter/DecodeResult;->getParameters()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->addAll(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 158
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/filter/DecodeResult;->getJPXColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDJPXColorSpace;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    invoke-static {p2}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 163
    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method private applyMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZZ[F)Landroid/graphics/Bitmap;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    return-object v1

    .line 597
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 598
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-lt v5, v3, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v5, v4, :cond_2

    :cond_1
    move/from16 v5, p3

    .line 605
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->scaleImage(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 607
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v13, 0x1

    if-ne v5, v6, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 609
    :cond_3
    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v5, v13}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 612
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-lt v5, v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v5, v4, :cond_6

    .line 614
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getInterpolate()Z

    move-result v5

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->scaleImage(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 616
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v5, v6, :cond_7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v5

    if-nez v5, :cond_8

    .line 618
    :cond_7
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v5, v13}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 620
    :cond_8
    new-array v14, v3, [I

    .line 621
    new-array v15, v3, [I

    const/high16 v16, -0x1000000

    const v17, 0xffffff

    const/16 v18, 0x0

    if-nez p4, :cond_a

    .line 627
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    if-ne v5, v6, :cond_a

    move/from16 v12, v18

    :goto_0
    if-ge v12, v4, :cond_10

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v19, 0x1

    move-object v5, v1

    move-object v6, v14

    move v8, v3

    move v10, v12

    move v11, v3

    move/from16 v20, v12

    move/from16 v12, v19

    .line 631
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v12, 0x1

    move-object v5, v2

    move-object v6, v15

    move/from16 v10, v20

    .line 632
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v5, v3

    move/from16 v6, v18

    :goto_1
    if-lez v5, :cond_9

    .line 635
    aget v7, v14, v6

    and-int v7, v7, v17

    aget v8, v15, v6

    not-int v8, v8

    and-int v8, v8, v16

    or-int/2addr v7, v8

    aput v7, v14, v6

    add-int/2addr v6, v13

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_9
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x1

    move-object v5, v1

    move-object v6, v14

    move v8, v3

    move/from16 v10, v20

    move v11, v3

    .line 637
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    add-int/lit8 v12, v20, 0x1

    goto :goto_0

    :cond_a
    if-nez p5, :cond_d

    move/from16 v13, v18

    :goto_2
    if-ge v13, v4, :cond_10

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x1

    move-object v5, v1

    move-object v6, v14

    move v8, v3

    move v10, v13

    move v11, v3

    .line 644
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move-object v5, v2

    move-object v6, v15

    .line 645
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move/from16 v5, v18

    :goto_3
    if-ge v5, v3, :cond_c

    if-nez p4, :cond_b

    .line 650
    aget v6, v15, v5

    not-int v6, v6

    aput v6, v15, v5

    .line 652
    :cond_b
    aget v6, v14, v5

    and-int v6, v6, v17

    aget v7, v15, v5

    and-int v7, v7, v16

    or-int/2addr v6, v7

    aput v6, v14, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_c
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x1

    move-object v5, v1

    move-object v6, v14

    move v8, v3

    move v10, v13

    move v11, v3

    .line 654
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 671
    :cond_d
    aget v5, p5, v18

    const/high16 v6, 0x4aff0000    # 8355840.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    mul-int/lit16 v12, v5, 0xff

    .line 672
    aget v5, p5, v13

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    mul-int/lit16 v13, v5, 0xff

    const/4 v5, 0x2

    .line 673
    aget v5, p5, v5

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    mul-int/lit16 v11, v5, 0xff

    .line 674
    div-int/lit16 v5, v12, 0xff

    add-int/lit16 v10, v5, 0x4000

    .line 675
    div-int/lit16 v5, v13, 0xff

    add-int/lit16 v9, v5, 0x4000

    .line 676
    div-int/lit16 v5, v11, 0xff

    add-int/lit16 v8, v5, 0x4000

    move/from16 v7, v18

    :goto_4
    if-ge v7, v4, :cond_10

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v5, v1

    move-object v6, v14

    move/from16 v21, v7

    move/from16 v7, v16

    move/from16 v16, v8

    move v8, v3

    move/from16 v22, v9

    move/from16 v9, v19

    move/from16 v19, v10

    move/from16 v10, v21

    move/from16 v23, v11

    move v11, v3

    move/from16 v24, v12

    move/from16 v12, v20

    .line 679
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x1

    move-object v5, v2

    move-object v6, v15

    .line 680
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move/from16 v5, v18

    :goto_5
    if-ge v5, v3, :cond_f

    .line 683
    aget v6, v15, v5

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    if-nez v6, :cond_e

    .line 686
    aget v6, v14, v5

    and-int v6, v6, v17

    aput v6, v14, v5

    goto :goto_6

    .line 689
    :cond_e
    aget v7, v14, v5

    .line 690
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 691
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v9

    .line 692
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    const v10, 0x7f8000

    mul-int/2addr v8, v10

    sub-int v8, v8, v24

    .line 693
    div-int/2addr v8, v6

    add-int v8, v8, v19

    shr-int/lit8 v8, v8, 0xf

    invoke-static {v8}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->clampColor(I)I

    move-result v8

    mul-int/2addr v9, v10

    sub-int/2addr v9, v13

    .line 694
    div-int/2addr v9, v6

    add-int v9, v9, v22

    shr-int/lit8 v9, v9, 0xf

    invoke-static {v9}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->clampColor(I)I

    move-result v9

    mul-int/2addr v7, v10

    sub-int v7, v7, v23

    .line 695
    div-int/2addr v7, v6

    add-int v7, v7, v16

    shr-int/lit8 v7, v7, 0xf

    invoke-static {v7}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->clampColor(I)I

    move-result v7

    .line 696
    invoke-static {v6, v8, v9, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, v14, v5

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_f
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x1

    move-object v5, v1

    move-object v6, v14

    move v8, v3

    move/from16 v10, v21

    move v11, v3

    .line 698
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    add-int/lit8 v7, v21, 0x1

    move/from16 v8, v16

    move/from16 v10, v19

    move/from16 v9, v22

    move/from16 v11, v23

    move/from16 v12, v24

    goto/16 :goto_4

    :cond_10
    return-object v1
.end method

.method private static clampColor(I)I
    .locals 1

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    if-le p0, v0, :cond_1

    move p0, v0

    :cond_1
    :goto_0
    return p0
.end method

.method public static createFromByteArray(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;[BLjava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    :try_start_0
    invoke-static {p1}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileTypeDetector;->detectFileType([B)Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_4

    .line 398
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->JPEG:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    invoke-static {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory;->createFromByteArray(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;[B)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0

    return-object p0

    .line 403
    :cond_0
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->TIFF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    :try_start_1
    invoke-static {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/CCITTFactory;->createFromByteArray(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;[B)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "PdfBox-Android"

    const-string v2, "Reading as TIFF failed, setting fileType to PNG"

    .line 411
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    sget-object v0, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->PNG:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    .line 418
    :cond_1
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->BMP:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->GIF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->PNG:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 424
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Image type "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " not supported: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 420
    :cond_3
    :goto_0
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 421
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 422
    invoke-static {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory;->createFromImage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Landroid/graphics/Bitmap;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0

    return-object p0

    .line 395
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Image type not supported: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    .line 391
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not determine file type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static createFromFile(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->createFromFileByExtension(Ljava/io/File;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0

    return-object p0
.end method

.method public static createFromFileByContent(Ljava/io/File;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Could not determine file type: "

    const/4 v1, 0x0

    .line 312
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 313
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 314
    :try_start_2
    invoke-static {v3}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileTypeDetector;->detectFileType(Ljava/io/BufferedInputStream;)Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 322
    invoke-static {v2}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 323
    invoke-static {v3}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v0, :cond_4

    .line 330
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->JPEG:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 333
    invoke-static {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory;->createFromStream(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0

    .line 334
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p0

    .line 337
    :cond_0
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->TIFF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    :try_start_3
    invoke-static {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/CCITTFactory;->createFromFile(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/File;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "PdfBox-Android"

    const-string v2, "Reading as TIFF failed, setting fileType to PNG"

    .line 345
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    sget-object v0, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->PNG:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    .line 352
    :cond_1
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->BMP:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->GIF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->PNG:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 357
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Image type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 354
    :cond_3
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 355
    invoke-static {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory;->createFromImage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Landroid/graphics/Bitmap;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0

    return-object p0

    .line 327
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Image type not supported: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v3, v1

    :goto_1
    move-object v1, v2

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v3, v1

    :goto_2
    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v3, v1

    goto :goto_4

    :catch_3
    move-exception p1

    move-object v3, v1

    .line 318
    :goto_3
    :try_start_4
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p0

    .line 322
    :goto_4
    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 323
    invoke-static {v3}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 324
    throw p0
.end method

.method public static createFromFileByExtension(Ljava/io/File;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const-string v3, "Image type not supported: "

    if-eq v1, v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jpg"

    .line 248
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "jpeg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "tif"

    .line 261
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "png"

    if-nez v2, :cond_1

    const-string v2, "tiff"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    :cond_1
    :try_start_0
    invoke-static {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/CCITTFactory;->createFromFile(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/File;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    const-string v2, "PdfBox-Android"

    const-string v5, "Reading as TIFF failed, setting fileType to PNG"

    .line 269
    invoke-static {v2, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    :cond_2
    const-string v2, "gif"

    .line 276
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "bmp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 281
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 278
    :cond_4
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 279
    invoke-static {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory;->createFromImage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Landroid/graphics/Bitmap;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    const/4 v0, 0x0

    .line 253
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    :try_start_2
    invoke-static {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory;->createFromStream(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_2
    invoke-static {v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 259
    throw p0

    .line 245
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createRawStream(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;)Lcom/tom_roush/pdfbox/cos/COSStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->createCOSStream()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p0

    .line 190
    :try_start_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSStream;->createRawOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 191
    :try_start_1
    invoke-static {p1, v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 199
    :cond_1
    throw p0
.end method

.method public static createThumbnail(Lcom/tom_roush/pdfbox/cos/COSStream;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    .line 177
    new-instance p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    return-object p0
.end method

.method private extractMatte(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;)[F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->MATTE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 537
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 541
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->toFloatArray()[F

    move-result-object p1

    .line 543
    array-length v0, p1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->getNumberOfComponents()I

    move-result v2

    if-ge v0, v2, :cond_0

    const-string p1, "PdfBox-Android"

    const-string v0, "Image /Matte entry not long enough for colorspace, skipped"

    .line 545
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 548
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->toRGB([F)[F

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private scaleImage(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 0

    xor-int/lit8 p4, p4, 0x1

    .line 714
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 835
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v0

    return-object v0
.end method

.method public createInputStream(Lcom/tom_roush/pdfbox/filter/DecodeOptions;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 841
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->createInputStream(Lcom/tom_roush/pdfbox/filter/DecodeOptions;)Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object p1

    return-object p1
.end method

.method public createInputStream(Ljava/util/List;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 847
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->createInputStream(Ljava/util/List;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getBitsPerComponent()I
    .locals 3

    .line 775
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->isStencil()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 781
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BITS_PER_COMPONENT:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->BPC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v0

    return v0
.end method

.method public getColorKeyMask()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 2

    .line 748
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MASK:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 749
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_0

    .line 751
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    if-nez v0, :cond_4

    .line 796
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->COLORSPACE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->CS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 800
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    if-eqz v1, :cond_0

    .line 801
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getResourceCache()Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 805
    move-object v1, v0

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSObject;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 806
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getResourceCache()Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;->getColorSpace(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v2

    iput-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    if-eqz v2, :cond_1

    return-object v2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 812
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->create(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 815
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getResourceCache()Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    move-result-object v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    invoke-interface {v0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;->put(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    goto :goto_0

    .line 818
    :cond_2
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->isStencil()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 821
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    return-object v0

    .line 826
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "could not determine color space"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    return-object v0
.end method

.method public getDecode()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 2

    .line 909
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 910
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_0

    .line 912
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .line 867
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->HEIGHT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v0

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 476
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getImage(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->cachedImageSubsampling:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->cachedImage:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    .line 496
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getSoftMask()Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object v0

    .line 497
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getMask()Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 501
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getColorKeyMask()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v1

    invoke-static {p0, p1, p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/SampledImageReader;->getRGBImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;Landroid/graphics/Rect;ILcom/tom_roush/pdfbox/cos/COSArray;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 502
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getOpaqueImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getInterpolate()Z

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->extractMatte(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;)[F

    move-result-object v7

    move-object v2, p0

    .line 501
    invoke-direct/range {v2 .. v7}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->applyMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZZ[F)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 505
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->isStencil()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getColorKeyMask()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/SampledImageReader;->getRGBImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;Landroid/graphics/Rect;ILcom/tom_roush/pdfbox/cos/COSArray;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 508
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getOpaqueImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getInterpolate()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 507
    invoke-direct/range {v2 .. v7}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->applyMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZZ[F)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 512
    :cond_2
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getColorKeyMask()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/SampledImageReader;->getRGBImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;Landroid/graphics/Rect;ILcom/tom_roush/pdfbox/cos/COSArray;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_3

    iget p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->cachedImageSubsampling:I

    if-gt p2, p1, :cond_3

    iput p2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->cachedImageSubsampling:I

    .line 520
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->cachedImage:Ljava/lang/ref/SoftReference;

    :cond_3
    return-object v0
.end method

.method public getInterpolate()Z
    .locals 3

    .line 891
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->INTERPOLATE:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public getMask()Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 724
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MASK:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 725
    instance-of v0, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 732
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->MASK:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->getCOSStream(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 736
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    invoke-direct {v3, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    invoke-direct {v2, v3, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    return-object v2

    :cond_1
    return-object v1
.end method

.method public getMetadata()Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;
    .locals 2

    .line 433
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->METADATA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getCOSStream(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOpaqueImage()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 575
    invoke-static {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/SampledImageReader;->getRGBImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;Lcom/tom_roush/pdfbox/cos/COSArray;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getOptionalContent()Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;
    .locals 2

    .line 979
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 980
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 982
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;->create(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSoftMask()Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 763
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SMASK:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getCOSStream(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 767
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    invoke-direct {v3, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    invoke-direct {v2, v3, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    return-object v2

    :cond_0
    return-object v1
.end method

.method public getStencilImage(Landroid/graphics/Paint;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 560
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->isStencil()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    invoke-static {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/SampledImageReader;->getStencilImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;Landroid/graphics/Paint;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 562
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Image is not a stencil"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStructParent()I
    .locals 2

    .line 457
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STRUCT_PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v0

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 3

    .line 936
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getFilters()Ljava/util/List;

    move-result-object v0

    const-string v1, "png"

    if-nez v0, :cond_0

    return-object v1

    .line 942
    :cond_0
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->DCT_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "jpg"

    return-object v0

    .line 946
    :cond_1
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->JPX_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "jpx"

    return-object v0

    .line 950
    :cond_2
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->CCITTFAX_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "tiff"

    return-object v0

    .line 954
    :cond_3
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->FLATE_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->LZW_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 955
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->RUN_LENGTH_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 956
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 960
    :cond_4
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->JBIG2_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "jb2"

    return-object v0

    .line 966
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSuffix() returns null, filters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PdfBox-Android"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_6
    :goto_0
    return-object v1
.end method

.method public getWidth()I
    .locals 2

    .line 879
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->WIDTH:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 4

    .line 853
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->getLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStencil()Z
    .locals 3

    .line 920
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->IMAGE_MASK:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public setBitsPerComponent(I)V
    .locals 2

    .line 788
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BITS_PER_COMPONENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setColorSpace(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V
    .locals 3

    .line 859
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->COLORSPACE:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iput-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    iput-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->cachedImage:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public setDecode(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 2

    .line 903
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setHeight(I)V
    .locals 2

    .line 873
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->HEIGHT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setInterpolate(Z)V
    .locals 2

    .line 897
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->INTERPOLATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setMetadata(Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;)V
    .locals 2

    .line 447
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->METADATA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setOptionalContent(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;)V
    .locals 2

    .line 994
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setStencil(Z)V
    .locals 2

    .line 926
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->IMAGE_MASK:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setStructParent(I)V
    .locals 2

    .line 466
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STRUCT_PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setWidth(I)V
    .locals 2

    .line 885
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->WIDTH:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method
