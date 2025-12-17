.class final Lcom/tom_roush/pdfbox/pdmodel/graphics/image/SampledImageReader;
.super Ljava/lang/Object;
.source "SampledImageReader.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clipRegion(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 151
    new-instance p1, Landroid/graphics/Rect;

    invoke-interface {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getWidth()I

    move-result v1

    invoke-interface {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getHeight()I

    move-result p0

    invoke-direct {p1, v0, v0, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 155
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 156
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-interface {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-interface {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getHeight()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 159
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v1, v0, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method private static createBitmapFromRawStream(Ljava/io/InputStream;III)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    invoke-static {p0}, Lcom/tom_roush/pdfbox/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    .line 394
    array-length v0, p0

    div-int/2addr v0, p2

    div-int/2addr v0, p1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    mul-int p2, p1, v0

    mul-int/lit8 v2, p2, 0x4

    .line 397
    new-array v2, v2, [B

    sub-int/2addr p2, v1

    :goto_0
    if-ltz p2, :cond_0

    mul-int/lit8 v3, p2, 0x4

    add-int/lit8 v4, v3, 0x3

    .line 401
    aget-byte v5, p0, p2

    aput-byte v5, v2, v4

    .line 402
    aget-byte v4, p0, p2

    aput-byte v4, v2, v3

    add-int/lit8 v4, v3, 0x1

    .line 403
    aget-byte v5, p0, p2

    aput-byte v5, v2, v4

    add-int/lit8 v3, v3, 0x2

    .line 404
    aget-byte v4, p0, p2

    aput-byte v4, v2, v3

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    move-object p0, v2

    goto :goto_2

    :cond_1
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    mul-int p2, p1, v0

    mul-int/lit8 v2, p2, 0x4

    .line 410
    new-array v2, v2, [B

    sub-int/2addr p2, v1

    :goto_1
    if-ltz p2, :cond_0

    mul-int/lit8 v3, p2, 0x4

    mul-int/lit8 v4, p2, 0x3

    add-int/lit8 v5, v3, 0x3

    const/4 v6, -0x1

    .line 415
    aput-byte v6, v2, v5

    .line 416
    aget-byte v5, p0, v4

    aput-byte v5, v2, v3

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v4, 0x1

    .line 417
    aget-byte v6, p0, v6

    aput-byte v6, v2, v5

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v4, 0x2

    .line 418
    aget-byte v4, p0, v4

    aput-byte v4, v2, v3

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 422
    :cond_2
    :goto_2
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 423
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    if-le p3, v1, :cond_3

    .line 426
    div-int/2addr p1, p3

    .line 427
    div-int/2addr v0, p3

    .line 428
    invoke-static {p2, p1, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_3
    return-object p2
.end method

.method private static from1Bit(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p4

    .line 238
    invoke-interface/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v2

    .line 239
    invoke-static/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/SampledImageReader;->getDecodeArray(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;)[F

    move-result-object v3

    .line 240
    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    move/from16 v5, p3

    invoke-static {v5, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 241
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v6

    mul-int/2addr v6, v1

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 242
    invoke-virtual {v4, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 244
    new-instance v7, Lcom/tom_roush/pdfbox/filter/DecodeOptions;

    move/from16 v8, p2

    invoke-direct {v7, v8}, Lcom/tom_roush/pdfbox/filter/DecodeOptions;-><init>(I)V

    .line 245
    invoke-virtual {v7, v0}, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->setSourceRegion(Landroid/graphics/Rect;)V

    move-object/from16 v9, p0

    .line 251
    :try_start_0
    invoke-interface {v9, v7}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->createInputStream(Lcom/tom_roush/pdfbox/filter/DecodeOptions;)Ljava/io/InputStream;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 258
    :try_start_1
    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->isFilterSubsampled()Z

    move-result v7

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v7, :cond_0

    move v0, v1

    move v1, v5

    move v7, v11

    move v9, v7

    move v8, v12

    goto :goto_0

    .line 271
    :cond_0
    invoke-interface/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getWidth()I

    move-result v1

    .line 272
    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 273
    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 274
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 275
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    move/from16 v21, v7

    move v7, v5

    move v5, v9

    move/from16 v9, v21

    .line 277
    :goto_0
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    if-ne v8, v12, :cond_1

    move v14, v12

    goto :goto_1

    :cond_1
    move v14, v11

    :goto_1
    add-int/lit8 v1, v1, 0x7

    .line 283
    div-int/lit8 v1, v1, 0x8

    .line 284
    aget v15, v3, v11

    aget v3, v3, v12

    cmpg-float v3, v15, v3

    if-gez v3, :cond_2

    move v3, v11

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    :goto_2
    add-int/2addr v5, v7

    .line 286
    new-array v15, v1, [B

    move/from16 v16, v11

    :goto_3
    add-int v12, v9, v0

    if-ge v11, v12, :cond_9

    move-object/from16 p1, v13

    .line 289
    invoke-static {v10, v15}, Lcom/tom_roush/pdfbox/io/IOUtils;->populateBuffer(Ljava/io/InputStream;[B)J

    move-result-wide v12

    long-to-int v12, v12

    if-lt v11, v9, :cond_7

    .line 290
    rem-int v13, v11, v8

    if-nez v13, :cond_7

    .line 293
    div-int/lit8 v13, v7, 0x8

    move/from16 v17, v7

    :goto_4
    if-ge v13, v1, :cond_7

    if-ge v13, v12, :cond_7

    .line 295
    aget-byte v18, v15, v13

    xor-int v18, v18, v3

    and-int/lit8 v19, v17, 0x7

    add-int/lit8 v20, v19, 0x18

    shl-int v18, v18, v20

    move/from16 p2, v0

    rsub-int/lit8 v0, v19, 0x8

    move/from16 p3, v3

    sub-int v3, v5, v17

    .line 296
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_5
    if-lez v0, :cond_6

    if-nez v14, :cond_4

    .line 298
    rem-int v3, v17, v8

    if-nez v3, :cond_3

    goto :goto_6

    :cond_3
    const/4 v3, -0x1

    goto :goto_8

    :cond_4
    :goto_6
    if-gez v18, :cond_5

    const/4 v3, -0x1

    .line 302
    aput-byte v3, p1, v16

    goto :goto_7

    :cond_5
    const/4 v3, -0x1

    :goto_7
    add-int/lit8 v16, v16, 0x1

    :goto_8
    shl-int/lit8 v18, v18, 0x1

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_6
    const/4 v3, -0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, p2

    move/from16 v3, p3

    goto :goto_4

    :cond_7
    move/from16 p2, v0

    move/from16 p3, v3

    const/4 v3, -0x1

    if-eq v12, v1, :cond_8

    const-string v0, "PdfBox-Android"

    const-string v1, "premature EOF, image will be incomplete"

    .line 312
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_8
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v13, p1

    move/from16 v0, p2

    move/from16 v3, p3

    goto :goto_3

    .line 317
    :cond_9
    :goto_9
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 318
    invoke-virtual {v4, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 321
    invoke-virtual {v2, v4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->toRGBImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_a

    .line 327
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_a
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_a

    :catchall_1
    move-exception v0

    const/4 v10, 0x0

    :goto_a
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 329
    :cond_b
    throw v0
.end method

.method private static from8bit(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    new-instance v0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;

    invoke-direct {v0, p2}, Lcom/tom_roush/pdfbox/filter/DecodeOptions;-><init>(I)V

    .line 338
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->setSourceRegion(Landroid/graphics/Rect;)V

    .line 339
    invoke-interface {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->createInputStream(Lcom/tom_roush/pdfbox/filter/DecodeOptions;)Ljava/io/InputStream;

    move-result-object v1

    .line 347
    :try_start_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->isFilterSubsampled()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    move v4, p1

    move v3, p3

    move v5, v3

    move p2, p4

    move v0, v2

    goto :goto_0

    .line 360
    :cond_0
    invoke-interface {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getWidth()I

    move-result v0

    .line 361
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 362
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 363
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 364
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    move v6, p2

    move p2, p1

    move p1, v3

    move v3, v0

    move v0, v6

    .line 366
    :goto_0
    invoke-interface {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->getNumberOfComponents()I

    move-result p0

    if-nez p1, :cond_1

    if-nez v4, :cond_1

    if-ne v5, p3, :cond_1

    if-ne p2, p4, :cond_1

    .line 370
    invoke-static {v1, v3, p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/SampledImageReader;->createBitmapFromRawStream(Ljava/io/InputStream;III)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    .line 374
    :cond_1
    :try_start_1
    invoke-static {v1, v3, p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/SampledImageReader;->createBitmapFromRawStream(Ljava/io/InputStream;III)Landroid/graphics/Bitmap;

    move-result-object p0

    if-le v0, v2, :cond_2

    .line 378
    div-int/2addr p1, v0

    .line 379
    div-int/2addr v4, v0

    .line 381
    :cond_2
    invoke-static {p0, p1, v4, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 387
    throw p0
.end method

.method private static getDecodeArray(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;)[F
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    invoke-interface {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getDecode()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 448
    invoke-interface {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->getNumberOfComponents()I

    move-result v1

    .line 449
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    const/4 v3, 0x2

    mul-int/2addr v1, v3

    if-eq v2, v1, :cond_1

    .line 451
    invoke-interface {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->isStencil()Z

    move-result v1

    const-string v2, "decode array "

    const-string v4, "PdfBox-Android"

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    if-lt v1, v3, :cond_0

    const/4 v1, 0x0

    .line 452
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v5

    instance-of v5, v5, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    .line 453
    invoke-virtual {v0, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v6

    instance-of v6, v6, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v6, :cond_0

    .line 455
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v6

    check-cast v6, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v6

    .line 456
    invoke-virtual {v0, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v7

    check-cast v7, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v9, v6, v8

    if-ltz v9, :cond_0

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v10, v6, v9

    if-gtz v10, :cond_0

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_0

    cmpg-float v8, v7, v9

    if-gtz v8, :cond_0

    .line 459
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " not compatible with color space, using the first two entries"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v3, [F

    aput v6, p0, v1

    aput v7, p0, v5

    return-object p0

    .line 467
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not compatible with color space, using default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 472
    :cond_1
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->toFloatArray()[F

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 479
    invoke-interface {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v0

    invoke-interface {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getBitsPerComponent()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->getDefaultDecode(I)[F

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static getRGBImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;Landroid/graphics/Rect;ILcom/tom_roush/pdfbox/cos/COSArray;)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-interface {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 183
    invoke-static {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/SampledImageReader;->clipRegion(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 186
    invoke-interface {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->getNumberOfComponents()I

    move-result v0

    .line 188
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v1, p2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/2addr v2, p2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 190
    invoke-interface {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getBitsPerComponent()I

    move-result v3

    if-lez v1, :cond_3

    if-lez v2, :cond_3

    .line 192
    invoke-interface {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getWidth()I

    move-result v4

    if-lez v4, :cond_3

    invoke-interface {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getHeight()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    if-nez p3, :cond_0

    if-ne v0, v4, :cond_0

    .line 201
    :try_start_0
    invoke-static {p0, p1, p2, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/SampledImageReader;->from1Bit(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 209
    :cond_0
    invoke-interface {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v0

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->getDefaultDecode(I)[F

    move-result-object v0

    .line 210
    invoke-static {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/SampledImageReader;->getDecodeArray(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;)[F

    move-result-object v6

    .line 211
    invoke-interface {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getSuffix()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getSuffix()Ljava/lang/String;

    move-result-object v7

    const-string v8, "jpg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-ne p2, v4, :cond_1

    .line 213
    invoke-interface {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->createInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne v3, v5, :cond_2

    if-nez p3, :cond_2

    .line 215
    invoke-static {v6, v0}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 218
    invoke-static {p0, p1, p2, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/SampledImageReader;->from8bit(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p3, "PdfBox-Android"

    const-string v0, "Trying to create other-bit image not supported"

    .line 220
    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {p0, p1, p2, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/SampledImageReader;->from8bit(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 226
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 194
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "image width and height must be positive"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 181
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Image stream is empty"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getRGBImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;Lcom/tom_roush/pdfbox/cos/COSArray;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 144
    invoke-static {p0, v0, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/SampledImageReader;->getRGBImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;Landroid/graphics/Rect;ILcom/tom_roush/pdfbox/cos/COSArray;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getStencilImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;Landroid/graphics/Paint;)Landroid/graphics/Bitmap;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-interface/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getWidth()I

    move-result v0

    .line 60
    invoke-interface/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getHeight()I

    move-result v1

    .line 63
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 64
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v0

    int-to-float v7, v1

    move-object/from16 v8, p1

    .line 71
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    .line 81
    :try_start_0
    new-instance v4, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;

    invoke-interface/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->createInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 82
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/SampledImageReader;->getDecodeArray(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;)[F

    move-result-object v3

    const/4 v5, 0x0

    .line 83
    aget v6, v3, v5

    const/4 v7, 0x1

    aget v3, v3, v7

    cmpg-float v3, v6, v3

    if-gez v3, :cond_0

    move v3, v7

    goto :goto_0

    :cond_0
    move v3, v5

    .line 84
    :goto_0
    div-int/lit8 v6, v0, 0x8

    .line 85
    rem-int/lit8 v8, v0, 0x8

    if-lez v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    .line 89
    :cond_1
    new-array v8, v6, [B

    move v9, v5

    :goto_1
    if-ge v9, v1, :cond_7

    .line 93
    invoke-interface {v4, v8}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->read([B)I

    move-result v10

    move v11, v5

    move v12, v11

    :goto_2
    if-ge v11, v6, :cond_5

    if-ge v11, v10, :cond_5

    .line 96
    aget-byte v13, v8, v11

    const/16 v14, 0x80

    const/4 v15, 0x7

    :goto_3
    const/16 v7, 0x8

    if-ge v5, v7, :cond_4

    and-int v7, v13, v14

    shr-int/2addr v7, v15

    const/16 v16, 0x1

    shr-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, -0x1

    if-ne v7, v3, :cond_2

    const/4 v7, 0x0

    .line 106
    invoke-virtual {v2, v12, v9, v7}, Landroid/graphics/Bitmap;->setPixel(III)V

    goto :goto_4

    :cond_2
    const/4 v7, 0x0

    :goto_4
    add-int/lit8 v12, v12, 0x1

    if-ne v12, v0, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    const/16 v16, 0x1

    :goto_5
    add-int/lit8 v11, v11, 0x1

    move v5, v7

    move/from16 v7, v16

    goto :goto_2

    :cond_5
    move/from16 v16, v7

    move v7, v5

    if-eq v10, v6, :cond_6

    const-string v0, "PdfBox-Android"

    const-string v1, "premature EOF, image will be incomplete"

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :cond_6
    add-int/lit8 v9, v9, 0x1

    move v5, v7

    move/from16 v7, v16

    goto :goto_1

    .line 126
    :cond_7
    :goto_6
    invoke-interface {v4}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->close()V

    return-object v2

    :catchall_0
    move-exception v0

    move-object v3, v4

    goto :goto_7

    :catchall_1
    move-exception v0

    :goto_7
    if-eqz v3, :cond_8

    invoke-interface {v3}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->close()V

    .line 128
    :cond_8
    throw v0
.end method
