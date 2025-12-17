.class Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;
.super Ljava/lang/Object;
.source "LosslessFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PredictorEncoder"
.end annotation


# instance fields
.field final aValues:[B

.field final alphaImageData:[B

.field final bValues:[B

.field private final bytesPerComponent:I

.field private final bytesPerPixel:I

.field final cValues:[B

.field private final dataRawRowAverage:[B

.field private final dataRawRowNone:[B

.field private final dataRawRowPaeth:[B

.field private final dataRawRowSub:[B

.field private final dataRawRowUp:[B

.field private final document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

.field final hasAlpha:Z

.field private final height:I

.field private final image:Landroid/graphics/Bitmap;

.field final imageType:Landroid/graphics/Bitmap$Config;

.field final tmpResultValues:[B

.field private final width:I

.field final xValues:[B


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Landroid/graphics/Bitmap;)V
    .locals 6

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->image:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->bytesPerComponent:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->bytesPerPixel:I

    .line 266
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->height:I

    .line 267
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->width:I

    .line 268
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    iput-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->imageType:Landroid/graphics/Bitmap$Config;

    .line 269
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result p2

    iput-boolean p2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->hasAlpha:Z

    if-eqz p2, :cond_0

    mul-int/2addr v1, v2

    .line 270
    new-array p2, v1, [B

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->alphaImageData:[B

    mul-int/2addr v2, v0

    add-int/2addr v2, p1

    .line 274
    new-array p2, v2, [B

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->dataRawRowNone:[B

    .line 275
    new-array v1, v2, [B

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->dataRawRowSub:[B

    .line 276
    new-array v3, v2, [B

    iput-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->dataRawRowUp:[B

    .line 277
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->dataRawRowAverage:[B

    .line 278
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->dataRawRowPaeth:[B

    const/4 v5, 0x0

    .line 281
    aput-byte v5, p2, v5

    .line 282
    aput-byte p1, v1, v5

    const/4 p1, 0x2

    .line 283
    aput-byte p1, v3, v5

    .line 284
    aput-byte v0, v4, v5

    const/4 p1, 0x4

    .line 285
    aput-byte p1, v2, v5

    new-array p1, v0, [B

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->aValues:[B

    new-array p1, v0, [B

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->cValues:[B

    new-array p1, v0, [B

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->bValues:[B

    new-array p1, v0, [B

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->xValues:[B

    new-array p1, v0, [B

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->tmpResultValues:[B

    return-void
.end method

.method private chooseDataRowToWrite()[B
    .locals 12

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->dataRawRowNone:[B

    .line 488
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->estCompressSum([B)J

    move-result-wide v1

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->dataRawRowSub:[B

    .line 489
    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->estCompressSum([B)J

    move-result-wide v3

    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->dataRawRowUp:[B

    .line 490
    invoke-static {v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->estCompressSum([B)J

    move-result-wide v5

    iget-object v7, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->dataRawRowAverage:[B

    .line 491
    invoke-static {v7}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->estCompressSum([B)J

    move-result-wide v7

    iget-object v9, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->dataRawRowPaeth:[B

    .line 492
    invoke-static {v9}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->estCompressSum([B)J

    move-result-wide v9

    cmp-long v11, v1, v3

    if-lez v11, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->dataRawRowSub:[B

    move-wide v1, v3

    :cond_0
    cmp-long v3, v1, v5

    if-lez v3, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->dataRawRowUp:[B

    goto :goto_0

    :cond_1
    move-wide v5, v1

    :goto_0
    cmp-long v1, v5, v7

    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->dataRawRowAverage:[B

    goto :goto_1

    :cond_2
    move-wide v7, v5

    :goto_1
    cmp-long v1, v7, v9

    if-lez v1, :cond_3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->dataRawRowPaeth:[B

    :cond_3
    return-object v0
.end method

.method private copyIntToBytes([II[B[BI)V
    .locals 6

    .line 407
    aget p1, p1, p2

    .line 408
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    int-to-byte p2, p2

    .line 409
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-byte v0, v0

    .line 410
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-byte v1, v1

    .line 412
    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->imageType:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    aput-byte v1, p3, v3

    .line 426
    aput-byte v0, p3, v5

    .line 427
    aput-byte p2, p3, v4

    goto :goto_0

    .line 415
    :cond_1
    aput-byte v1, p3, v3

    .line 416
    aput-byte v0, p3, v5

    .line 417
    aput-byte p2, p3, v4

    if-eqz p4, :cond_2

    .line 420
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-byte p1, p1

    .line 421
    aput-byte p1, p4, p5

    :cond_2
    :goto_0
    return-void
.end method

.method private static estCompressSum([B)J
    .locals 6

    .line 561
    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-byte v4, p0, v3

    .line 564
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private static pngFilterAverage(III)B
    .locals 0

    add-int/2addr p2, p1

    .line 531
    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p0, p2

    int-to-byte p0, p0

    return p0
.end method

.method private static pngFilterPaeth(IIII)B
    .locals 3

    add-int v0, p1, p2

    sub-int/2addr v0, p3

    sub-int v1, v0, p1

    .line 537
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v2, v0, p2

    .line 538
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v0, p3

    .line 539
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v1, v2, :cond_0

    if-gt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-gt v2, v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p3

    :goto_0
    sub-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method private static pngFilterSub(II)B
    .locals 0

    and-int/lit16 p0, p0, 0xff

    and-int/lit16 p1, p1, 0xff

    sub-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method private static pngFilterUp(II)B
    .locals 0

    .line 526
    invoke-static {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->pngFilterSub(II)B

    move-result p0

    return p0
.end method

.method private preparePredictorPDImage(Ljava/io/ByteArrayOutputStream;I)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->image:Landroid/graphics/Bitmap;

    .line 443
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->image:Landroid/graphics/Bitmap;

    .line 444
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 452
    sget-object v8, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    .line 457
    new-instance v9, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 458
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->FLATE_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    move-object v1, v9

    move v5, v0

    move v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSBase;IIILcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    .line 461
    new-instance p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 462
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BITS_PER_COMPONENT:Lcom/tom_roush/pdfbox/cos/COSName;

    int-to-long v2, p2

    invoke-static {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 463
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->PREDICTOR:Lcom/tom_roush/pdfbox/cos/COSName;

    const-wide/16 v1, 0xf

    invoke-static {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 464
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->COLUMNS:Lcom/tom_roush/pdfbox/cos/COSName;

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 465
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->COLORS:Lcom/tom_roush/pdfbox/cos/COSName;

    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 466
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p2

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DECODE_PARMS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v0, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-boolean p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->hasAlpha:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->alphaImageData:[B

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->image:Landroid/graphics/Bitmap;

    .line 470
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->bytesPerComponent:I

    mul-int/lit8 v4, p1, 0x8

    sget-object v5, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    .line 469
    invoke-static/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory;->prepareImageXObject(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;[BIIILcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p1

    .line 471
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p2

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->SMASK:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v0, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    :cond_0
    return-object v9
.end method


# virtual methods
.method encode()Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 314
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    iget-object v1, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->imageType:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v7, 0x1

    if-eq v0, v7, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v8, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->width:I

    .line 320
    new-array v0, v8, [I

    .line 321
    new-array v2, v8, [I

    .line 333
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    iget v3, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->height:I

    iget v4, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->width:I

    mul-int/2addr v3, v4

    iget v4, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->bytesPerPixel:I

    mul-int/2addr v3, v4

    div-int/2addr v3, v1

    invoke-direct {v9, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 335
    new-instance v10, Ljava/util/zip/Deflater;

    invoke-static {}, Lcom/tom_roush/pdfbox/filter/Filter;->getCompressionLevel()I

    move-result v1

    invoke-direct {v10, v1}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 336
    new-instance v11, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v11, v9, v10}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    const/4 v12, 0x0

    move-object/from16 v22, v0

    move-object/from16 v21, v2

    move v0, v12

    move v5, v0

    :goto_0
    iget v1, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->height:I

    if-ge v5, v1, :cond_3

    iget-object v13, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->image:Landroid/graphics/Bitmap;

    const/4 v15, 0x0

    iget v1, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->width:I

    const/16 v17, 0x0

    const/16 v20, 0x1

    move-object/from16 v14, v21

    move/from16 v16, v1

    move/from16 v18, v5

    move/from16 v19, v1

    .line 342
    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget-object v1, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->aValues:[B

    .line 346
    invoke-static {v1, v12}, Ljava/util/Arrays;->fill([BB)V

    iget-object v1, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->cValues:[B

    .line 347
    invoke-static {v1, v12}, Ljava/util/Arrays;->fill([BB)V

    move v13, v0

    move v15, v7

    move v14, v12

    :goto_1
    if-ge v14, v8, :cond_2

    iget-object v3, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->xValues:[B

    iget-object v4, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->alphaImageData:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move v2, v14

    move/from16 v16, v5

    move v5, v13

    .line 362
    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->copyIntToBytes([II[B[BI)V

    iget-object v3, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->bValues:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, v22

    .line 364
    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->copyIntToBytes([II[B[BI)V

    iget-object v0, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->xValues:[B

    .line 368
    array-length v0, v0

    move v1, v12

    :goto_2
    if-ge v1, v0, :cond_1

    iget-object v2, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->xValues:[B

    .line 371
    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    iget-object v3, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->aValues:[B

    .line 372
    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    iget-object v4, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->bValues:[B

    .line 373
    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    iget-object v5, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->cValues:[B

    .line 374
    aget-byte v5, v5, v1

    and-int/lit16 v5, v5, 0xff

    iget-object v7, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->dataRawRowNone:[B

    int-to-byte v12, v2

    .line 375
    aput-byte v12, v7, v15

    iget-object v7, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->dataRawRowSub:[B

    .line 376
    invoke-static {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->pngFilterSub(II)B

    move-result v12

    aput-byte v12, v7, v15

    iget-object v7, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->dataRawRowUp:[B

    .line 377
    invoke-static {v2, v4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->pngFilterUp(II)B

    move-result v12

    aput-byte v12, v7, v15

    iget-object v7, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->dataRawRowAverage:[B

    .line 378
    invoke-static {v2, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->pngFilterAverage(III)B

    move-result v12

    aput-byte v12, v7, v15

    iget-object v7, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->dataRawRowPaeth:[B

    .line 379
    invoke-static {v2, v3, v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->pngFilterPaeth(IIII)B

    move-result v2

    aput-byte v2, v7, v15

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v1, v1, 0x1

    const/4 v7, 0x1

    const/4 v12, 0x0

    goto :goto_2

    :cond_1
    iget-object v0, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->xValues:[B

    iget-object v1, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->aValues:[B

    iget v2, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->bytesPerPixel:I

    const/4 v3, 0x0

    .line 384
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->bValues:[B

    iget-object v1, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->cValues:[B

    iget v2, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->bytesPerPixel:I

    .line 385
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v14, v14, 0x1

    iget v0, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->bytesPerComponent:I

    add-int/2addr v13, v0

    move v12, v3

    move/from16 v5, v16

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_2
    move/from16 v16, v5

    move v3, v12

    .line 388
    invoke-direct/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->chooseDataRowToWrite()[B

    move-result-object v0

    .line 391
    array-length v1, v0

    invoke-virtual {v11, v0, v3, v1}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    add-int/lit8 v5, v16, 0x1

    move v0, v13

    const/4 v7, 0x1

    move-object/from16 v23, v22

    move-object/from16 v22, v21

    move-object/from16 v21, v23

    goto/16 :goto_0

    .line 398
    :cond_3
    invoke-virtual {v11}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 399
    invoke-virtual {v10}, Ljava/util/zip/Deflater;->end()V

    iget v0, v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->bytesPerComponent:I

    mul-int/lit8 v0, v0, 0x8

    .line 401
    invoke-direct {v6, v9, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->preparePredictorPDImage(Ljava/io/ByteArrayOutputStream;I)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object v0

    return-object v0
.end method
