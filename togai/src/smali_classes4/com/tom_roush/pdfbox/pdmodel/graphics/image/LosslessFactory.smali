.class public final Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory;
.super Ljava/lang/Object;
.source "LosslessFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;
    }
.end annotation


# static fields
.field static usePredictorEncoder:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFromGrayImage(Landroid/graphics/Bitmap;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 126
    new-array v10, v9, [I

    const/16 v11, 0x8

    .line 128
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    mul-int/lit8 v1, v9, 0x8

    div-int/lit8 v2, v1, 0x8

    rem-int/lit8 v1, v1, 0x8

    const/4 v13, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v13

    :goto_0
    add-int/2addr v2, v1

    mul-int/2addr v2, v0

    invoke-direct {v12, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 129
    new-instance v14, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;

    invoke-direct {v14, v12}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;-><init>(Ljava/io/OutputStream;)V

    move v15, v13

    :goto_1
    if-ge v15, v0, :cond_3

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object v2, v10

    move v4, v9

    move v6, v15

    move v7, v9

    .line 132
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v1, v13

    :goto_2
    if-ge v1, v9, :cond_1

    .line 133
    aget v2, v10, v1

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    .line 135
    invoke-virtual {v14, v2, v3, v11}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->writeBits(JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 138
    :cond_1
    invoke-virtual {v14}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->getBitOffset()I

    move-result v1

    if-eqz v1, :cond_2

    rsub-int/lit8 v1, v1, 0x8

    const-wide/16 v2, 0x0

    .line 141
    invoke-virtual {v14, v2, v3, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->writeBits(JI)V

    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 144
    :cond_3
    invoke-virtual {v14}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->flush()V

    .line 145
    invoke-virtual {v14}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->close()V

    .line 146
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    move-object/from16 v1, p1

    move v5, v11

    .line 146
    invoke-static/range {v1 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory;->prepareImageXObject(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;[BIIILcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object v0

    return-object v0
.end method

.method public static createFromImage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Landroid/graphics/Bitmap;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory;->isGrayImage(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory;->createFromGrayImage(Landroid/graphics/Bitmap;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0

    return-object p0

    :cond_0
    sget-boolean v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory;->usePredictorEncoder:Z

    if-eqz v0, :cond_3

    .line 85
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;

    invoke-direct {v0, p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory$PredictorEncoder;->encode()Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 88
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    if-ne v1, v2, :cond_2

    .line 89
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getBitsPerComponent()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    const/16 v2, 0x9c4

    if-gt v1, v2, :cond_2

    .line 93
    invoke-static {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory;->createFromRGBImage(Landroid/graphics/Bitmap;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0

    .line 94
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getLength()J

    move-result-wide v1

    .line 95
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getLength()J

    move-result-wide v3

    cmp-long p1, v1, v3

    const-string v1, "PdfBox-Android"

    if-gez p1, :cond_1

    const-string p1, "Return classic"

    .line 97
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->close()V

    return-object p0

    :cond_1
    const-string p1, "Return predictor"

    .line 103
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSStream;->close()V

    :cond_2
    return-object v0

    .line 112
    :cond_3
    invoke-static {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory;->createFromRGBImage(Landroid/graphics/Bitmap;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0

    return-object p0
.end method

.method private static createFromRGBImage(Landroid/graphics/Bitmap;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 153
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 154
    new-array v10, v9, [I

    const/16 v11, 0x8

    .line 156
    sget-object v12, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    mul-int v1, v9, v0

    mul-int/lit8 v1, v1, 0x3

    .line 157
    new-array v13, v1, [B

    const/16 v14, 0x8

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    const/4 v15, 0x0

    if-eqz v1, :cond_1

    mul-int/lit8 v1, v9, 0x8

    .line 165
    div-int/lit8 v2, v1, 0x8

    rem-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v15

    :goto_0
    add-int/2addr v2, v1

    mul-int/2addr v2, v0

    new-array v1, v2, [B

    goto :goto_1

    :cond_1
    new-array v1, v15, [B

    :goto_1
    move-object/from16 v16, v1

    move v8, v15

    move/from16 v17, v8

    move/from16 v18, v17

    :goto_2
    if-ge v8, v0, :cond_4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v19, 0x1

    move-object/from16 v1, p0

    move-object v2, v10

    move v4, v9

    move v6, v8

    move v7, v9

    move/from16 v20, v8

    move/from16 v8, v19

    .line 173
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v1, v15

    :goto_3
    if-ge v1, v9, :cond_3

    .line 174
    aget v2, v10, v1

    add-int/lit8 v3, v17, 0x1

    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 176
    aput-byte v4, v13, v17

    add-int/lit8 v4, v17, 0x2

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 177
    aput-byte v5, v13, v3

    add-int/lit8 v17, v17, 0x3

    and-int/lit16 v3, v2, 0xff

    int-to-byte v3, v3

    .line 178
    aput-byte v3, v13, v4

    .line 179
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v18, 0x1

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 183
    aput-byte v2, v16, v18

    move/from16 v18, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v20, 0x1

    goto :goto_2

    .line 189
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v1, p1

    move-object v2, v13

    move v5, v11

    move-object v6, v12

    .line 188
    invoke-static/range {v1 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory;->prepareImageXObject(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;[BIIILcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object v0

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move v5, v14

    .line 192
    invoke-static/range {v1 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory;->prepareImageXObject(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;[BIIILcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object v1

    .line 194
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v2

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->SMASK:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v3, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    :cond_5
    return-object v0
.end method

.method private static isGrayImage(Landroid/graphics/Bitmap;)Z
    .locals 1

    .line 117
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static prepareImageXObject(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;[BIIILcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    .line 216
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 218
    sget-object v2, Lcom/tom_roush/pdfbox/filter/FilterFactory;->INSTANCE:Lcom/tom_roush/pdfbox/filter/FilterFactory;

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->FLATE_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/filter/FilterFactory;->getFilter(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/filter/Filter;

    move-result-object v2

    .line 219
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/tom_roush/pdfbox/filter/Filter;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;I)V

    .line 221
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 222
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    sget-object v8, Lcom/tom_roush/pdfbox/cos/COSName;->FLATE_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    move-object v5, v0

    move-object v6, p0

    move v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    invoke-direct/range {v5 .. v12}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSBase;IIILcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    return-object v0
.end method
