.class public final Lcom/tom_roush/pdfbox/pdmodel/graphics/image/CCITTFactory;
.super Ljava/lang/Object;
.source "CCITTFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromByteArray(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;[B)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 114
    invoke-static {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/CCITTFactory;->createFromByteArray(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;[BI)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0

    return-object p0
.end method

.method public static createFromByteArray(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;[BI)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    new-instance v0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;-><init>([B)V

    .line 138
    :try_start_0
    invoke-static {p0, v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/CCITTFactory;->createFromRandomAccessImpl(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/io/RandomAccess;I)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccess;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccess;->close()V

    .line 143
    throw p0
.end method

.method public static createFromFile(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/File;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 219
    invoke-static {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/CCITTFactory;->createFromFile(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/File;I)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0

    return-object p0
.end method

.method public static createFromFile(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/File;I)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    new-instance v0, Lcom/tom_roush/pdfbox/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    :try_start_0
    invoke-static {p0, v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/CCITTFactory;->createFromRandomAccessImpl(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/io/RandomAccess;I)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->close()V

    .line 247
    throw p0
.end method

.method public static createFromImage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Landroid/graphics/Bitmap;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_3

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 72
    new-array v10, v9, [I

    .line 74
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    new-instance v12, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;

    invoke-direct {v12, v11}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v13, 0x0

    move v14, v13

    :goto_0
    if-ge v14, v0, :cond_2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p1

    move-object v2, v10

    move v4, v9

    move v6, v14

    move v7, v9

    .line 79
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v1, v13

    :goto_1
    if-ge v1, v9, :cond_0

    .line 83
    aget v2, v10, v1

    const/4 v3, 0x1

    and-int/2addr v2, v3

    not-int v2, v2

    int-to-long v4, v2

    invoke-virtual {v12, v4, v5, v3}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->writeBits(JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 85
    :cond_0
    invoke-virtual {v12}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->getBitOffset()I

    move-result v1

    if-eqz v1, :cond_1

    rsub-int/lit8 v1, v1, 0x8

    const-wide/16 v2, 0x0

    .line 88
    invoke-virtual {v12, v2, v3, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->writeBits(JI)V

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {v12}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->flush()V

    .line 92
    invoke-virtual {v12}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->close()V

    .line 94
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    move-object v3, p0

    invoke-static {p0, v1, v9, v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/CCITTFactory;->prepareImageXObject(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;[BIILcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object v0

    return-object v0

    .line 67
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only 1-bit b/w images supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createFromRandomAccess(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/io/RandomAccess;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 181
    invoke-static {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/CCITTFactory;->createFromRandomAccessImpl(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/io/RandomAccess;I)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0

    return-object p0
.end method

.method public static createFromRandomAccess(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/io/RandomAccess;I)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    invoke-static {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/CCITTFactory;->createFromRandomAccessImpl(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/io/RandomAccess;I)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0

    return-object p0
.end method

.method private static createFromRandomAccessImpl(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/io/RandomAccess;I)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 265
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 266
    invoke-static {p1, v1, v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/CCITTFactory;->extractFromTiff(Lcom/tom_roush/pdfbox/io/RandomAccess;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;I)V

    .line 267
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 271
    :cond_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 272
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->CCITTFAX_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->COLUMNS:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 275
    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v5

    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->ROWS:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 276
    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v6

    const/4 v7, 0x1

    sget-object v8, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSBase;IIILcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    .line 280
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p0

    .line 281
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->DECODE_PARMS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-object p1
.end method

.method private static extractFromTiff(Lcom/tom_roush/pdfbox/io/RandomAccess;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    .line 292
    :try_start_0
    invoke-interface {v0, v2, v3}, Lcom/tom_roush/pdfbox/io/RandomAccess;->seek(J)V

    .line 293
    invoke-interface/range {p0 .. p0}, Lcom/tom_roush/pdfbox/io/RandomAccess;->read()I

    move-result v4

    int-to-char v4, v4

    .line 294
    invoke-interface/range {p0 .. p0}, Lcom/tom_roush/pdfbox/io/RandomAccess;->read()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    int-to-char v5, v5

    const-string v6, "Not a valid tiff file"

    if-ne v5, v4, :cond_1f

    const/16 v5, 0x4d

    if-eq v4, v5, :cond_1

    const/16 v5, 0x49

    if-ne v4, v5, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_1
    :goto_0
    invoke-static {v4, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/CCITTFactory;->readshort(CLcom/tom_roush/pdfbox/io/RandomAccess;)I

    move-result v5

    const/16 v7, 0x2a

    if-ne v5, v7, :cond_1e

    .line 310
    invoke-static {v4, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/CCITTFactory;->readlong(CLcom/tom_roush/pdfbox/io/RandomAccess;)I

    move-result v5

    int-to-long v7, v5

    .line 311
    invoke-interface {v0, v7, v8}, Lcom/tom_roush/pdfbox/io/RandomAccess;->seek(J)V

    const/4 v5, 0x0

    move v9, v5

    :goto_1
    const/16 v10, 0x32

    move/from16 v11, p3

    if-ge v9, v11, :cond_4

    .line 317
    invoke-static {v4, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/CCITTFactory;->readshort(CLcom/tom_roush/pdfbox/io/RandomAccess;)I

    move-result v12

    if-gt v12, v10, :cond_3

    const-wide/16 v13, 0x2

    add-long/2addr v7, v13

    int-to-long v12, v12

    const-wide/16 v14, 0xc

    mul-long/2addr v12, v14

    add-long/2addr v7, v12

    .line 322
    invoke-interface {v0, v7, v8}, Lcom/tom_roush/pdfbox/io/RandomAccess;->seek(J)V

    .line 323
    invoke-static {v4, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/CCITTFactory;->readlong(CLcom/tom_roush/pdfbox/io/RandomAccess;)I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-long v7, v7

    cmp-long v10, v7, v2

    if-nez v10, :cond_2

    .line 507
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->close()V

    return-void

    .line 328
    :cond_2
    :try_start_2
    invoke-interface {v0, v7, v8}, Lcom/tom_roush/pdfbox/io/RandomAccess;->seek(J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 320
    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_4
    invoke-static {v4, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/CCITTFactory;->readshort(CLcom/tom_roush/pdfbox/io/RandomAccess;)I

    move-result v2

    if-gt v2, v10, :cond_1d

    const/16 v3, -0x3e8

    move v7, v3

    move v6, v5

    move v8, v6

    move v9, v8

    :goto_2
    if-ge v6, v2, :cond_19

    .line 353
    invoke-static {v4, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/CCITTFactory;->readshort(CLcom/tom_roush/pdfbox/io/RandomAccess;)I

    move-result v11

    .line 354
    invoke-static {v4, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/CCITTFactory;->readshort(CLcom/tom_roush/pdfbox/io/RandomAccess;)I

    move-result v12

    .line 355
    invoke-static {v4, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/CCITTFactory;->readlong(CLcom/tom_roush/pdfbox/io/RandomAccess;)I

    move-result v13

    const/4 v14, 0x3

    const/4 v15, 0x1

    if-eq v12, v15, :cond_6

    if-eq v12, v14, :cond_5

    .line 374
    invoke-static {v4, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/CCITTFactory;->readlong(CLcom/tom_roush/pdfbox/io/RandomAccess;)I

    move-result v12

    goto :goto_3

    .line 369
    :cond_5
    invoke-static {v4, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/CCITTFactory;->readshort(CLcom/tom_roush/pdfbox/io/RandomAccess;)I

    move-result v12

    .line 370
    invoke-interface/range {p0 .. p0}, Lcom/tom_roush/pdfbox/io/RandomAccess;->read()I

    .line 371
    invoke-interface/range {p0 .. p0}, Lcom/tom_roush/pdfbox/io/RandomAccess;->read()I

    goto :goto_3

    .line 363
    :cond_6
    invoke-interface/range {p0 .. p0}, Lcom/tom_roush/pdfbox/io/RandomAccess;->read()I

    move-result v12

    .line 364
    invoke-interface/range {p0 .. p0}, Lcom/tom_roush/pdfbox/io/RandomAccess;->read()I

    .line 365
    invoke-interface/range {p0 .. p0}, Lcom/tom_roush/pdfbox/io/RandomAccess;->read()I

    .line 366
    invoke-interface/range {p0 .. p0}, Lcom/tom_roush/pdfbox/io/RandomAccess;->read()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    const/16 v10, 0x100

    if-eq v11, v10, :cond_17

    const/16 v10, 0x101

    if-eq v11, v10, :cond_16

    const/16 v10, 0x103

    if-eq v11, v10, :cond_14

    const/16 v10, 0x106

    if-eq v11, v10, :cond_13

    const/16 v10, 0x10a

    const-string v14, " is not supported"

    if-eq v11, v10, :cond_11

    const/16 v10, 0x117

    if-eq v11, v10, :cond_10

    const/16 v10, 0x124

    if-eq v11, v10, :cond_c

    const/16 v10, 0x111

    if-eq v11, v10, :cond_b

    const/16 v10, 0x112

    if-eq v11, v10, :cond_9

    const/16 v10, 0x144

    if-eq v11, v10, :cond_8

    const/16 v10, 0x145

    if-eq v11, v10, :cond_7

    goto/16 :goto_6

    :cond_7
    if-ne v13, v15, :cond_18

    goto :goto_5

    :cond_8
    if-ne v13, v15, :cond_18

    goto :goto_4

    :cond_9
    if-ne v12, v15, :cond_a

    goto/16 :goto_6

    .line 430
    :cond_a
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-ne v13, v15, :cond_18

    :goto_4
    move v8, v12

    goto :goto_6

    :cond_c
    and-int/lit8 v10, v12, 0x1

    if-eqz v10, :cond_d

    const/16 v7, 0x32

    :cond_d
    and-int/lit8 v10, v12, 0x4

    if-nez v10, :cond_f

    and-int/lit8 v10, v12, 0x2

    if-nez v10, :cond_e

    goto :goto_6

    .line 456
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "CCITT Group 3 \'fill bits before EOL\' is not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "CCITT Group 3 \'uncompressed mode\' is not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    if-ne v13, v15, :cond_18

    :goto_5
    move v9, v12

    goto :goto_6

    :cond_11
    if-ne v12, v15, :cond_12

    goto :goto_6

    .line 413
    :cond_12
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FillOrder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    if-ne v12, v15, :cond_18

    .line 405
    sget-object v10, Lcom/tom_roush/pdfbox/cos/COSName;->BLACK_IS_1:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v10, v15}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    goto :goto_6

    :cond_14
    const/4 v10, 0x4

    if-ne v12, v10, :cond_15

    const/4 v7, -0x1

    :cond_15
    if-ne v12, v14, :cond_18

    move v7, v5

    goto :goto_6

    .line 386
    :cond_16
    sget-object v10, Lcom/tom_roush/pdfbox/cos/COSName;->ROWS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v10, v12}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    goto :goto_6

    .line 381
    :cond_17
    sget-object v10, Lcom/tom_roush/pdfbox/cos/COSName;->COLUMNS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v10, v12}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    :cond_18
    :goto_6
    add-int/lit8 v6, v6, 0x1

    const/16 v10, 0x32

    goto/16 :goto_2

    :cond_19
    if-eq v7, v3, :cond_1c

    if-eqz v8, :cond_1b

    .line 492
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->K:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v7}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    int-to-long v1, v8

    .line 494
    invoke-interface {v0, v1, v2}, Lcom/tom_roush/pdfbox/io/RandomAccess;->seek(J)V

    const/16 v1, 0x2000

    new-array v2, v1, [B

    .line 498
    :goto_7
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v0, v2, v5, v3}, Lcom/tom_roush/pdfbox/io/RandomAccess;->read([BII)I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-lez v3, :cond_1a

    sub-int/2addr v9, v3

    move-object/from16 v4, p1

    .line 501
    :try_start_4
    invoke-virtual {v4, v2, v5, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :cond_1a
    move-object/from16 v4, p1

    .line 507
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->close()V

    return-void

    :cond_1b
    move-object/from16 v4, p1

    .line 489
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "First image in tiff is not a single tile/strip"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    move-object/from16 v4, p1

    .line 485
    new-instance v0, Ljava/io/IOException;

    const-string v1, "First image in tiff is not CCITT T4 or T6 compressed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    move-object/from16 v4, p1

    .line 337
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    move-object/from16 v4, p1

    .line 306
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    move-object/from16 v4, p1

    .line 296
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v4, p1

    .line 507
    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->close()V

    .line 508
    throw v0
.end method

.method private static prepareImageXObject(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;[BIILcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 152
    sget-object v1, Lcom/tom_roush/pdfbox/filter/FilterFactory;->INSTANCE:Lcom/tom_roush/pdfbox/filter/FilterFactory;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->CCITTFAX_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/filter/FilterFactory;->getFilter(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/filter/Filter;

    move-result-object v1

    .line 153
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 154
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->COLUMNS:Lcom/tom_roush/pdfbox/cos/COSName;

    move v8, p2

    invoke-virtual {v2, v3, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    .line 155
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->ROWS:Lcom/tom_roush/pdfbox/cos/COSName;

    move v9, p3

    invoke-virtual {v2, v3, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    .line 156
    new-instance v3, Ljava/io/ByteArrayInputStream;

    move-object v4, p1

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v2, v4}, Lcom/tom_roush/pdfbox/filter/Filter;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;I)V

    .line 158
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 159
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    sget-object v7, Lcom/tom_roush/pdfbox/cos/COSName;->CCITTFAX_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v10, 0x1

    move-object v4, v0

    move-object v5, p0

    move-object/from16 v11, p4

    invoke-direct/range {v4 .. v11}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSBase;IIILcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    .line 161
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->K:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    .line 162
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v1

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->DECODE_PARMS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v3, v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-object v0
.end method

.method private static readlong(CLcom/tom_roush/pdfbox/io/RandomAccess;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x49

    if-ne p0, v0, :cond_0

    .line 524
    invoke-interface {p1}, Lcom/tom_roush/pdfbox/io/RandomAccess;->read()I

    move-result p0

    invoke-interface {p1}, Lcom/tom_roush/pdfbox/io/RandomAccess;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    invoke-interface {p1}, Lcom/tom_roush/pdfbox/io/RandomAccess;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    invoke-interface {p1}, Lcom/tom_roush/pdfbox/io/RandomAccess;->read()I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    :goto_0
    or-int/2addr p0, p1

    return p0

    .line 526
    :cond_0
    invoke-interface {p1}, Lcom/tom_roush/pdfbox/io/RandomAccess;->read()I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    invoke-interface {p1}, Lcom/tom_roush/pdfbox/io/RandomAccess;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    invoke-interface {p1}, Lcom/tom_roush/pdfbox/io/RandomAccess;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    invoke-interface {p1}, Lcom/tom_roush/pdfbox/io/RandomAccess;->read()I

    move-result p1

    goto :goto_0
.end method

.method private static readshort(CLcom/tom_roush/pdfbox/io/RandomAccess;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x49

    if-ne p0, v0, :cond_0

    .line 515
    invoke-interface {p1}, Lcom/tom_roush/pdfbox/io/RandomAccess;->read()I

    move-result p0

    invoke-interface {p1}, Lcom/tom_roush/pdfbox/io/RandomAccess;->read()I

    move-result p1

    shl-int/lit8 p1, p1, 0x8

    :goto_0
    or-int/2addr p0, p1

    return p0

    .line 517
    :cond_0
    invoke-interface {p1}, Lcom/tom_roush/pdfbox/io/RandomAccess;->read()I

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    invoke-interface {p1}, Lcom/tom_roush/pdfbox/io/RandomAccess;->read()I

    move-result p1

    goto :goto_0
.end method
