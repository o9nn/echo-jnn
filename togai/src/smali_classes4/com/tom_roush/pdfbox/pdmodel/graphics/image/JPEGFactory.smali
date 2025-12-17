.class public final Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory;
.super Ljava/lang/Object;
.source "JPEGFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$Dimensions;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAlphaFromARGBImage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Landroid/graphics/Bitmap;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 235
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v9, v0, [I

    const/4 v3, 0x0

    .line 236
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object v1, p1

    move-object v2, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 238
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v6, 0x8

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 241
    aget v3, v9, v2

    .line 243
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 248
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v7, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    move-object v2, p0

    .line 247
    invoke-static/range {v2 .. v7}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory;->prepareImageXObject(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;[BIIILcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0

    return-object p0
.end method

.method public static createFromByteArray(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;[B)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 82
    invoke-static {v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory;->retrieveDimensions(Ljava/io/ByteArrayInputStream;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$Dimensions;

    move-result-object p1

    .line 84
    sget-object v7, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    .line 87
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->DCT_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 88
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$Dimensions;->access$000(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$Dimensions;)I

    move-result v4

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$Dimensions;->access$100(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$Dimensions;)I

    move-result v5

    const/16 v6, 0x8

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSBase;IIILcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    return-object v8
.end method

.method public static createFromImage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Landroid/graphics/Bitmap;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x3f400000    # 0.75f

    .line 129
    invoke-static {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory;->createFromImage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Landroid/graphics/Bitmap;F)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0

    return-object p0
.end method

.method public static createFromImage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Landroid/graphics/Bitmap;F)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x48

    .line 151
    invoke-static {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory;->createFromImage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Landroid/graphics/Bitmap;FI)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0

    return-object p0
.end method

.method public static createFromImage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Landroid/graphics/Bitmap;FI)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-static {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory;->createJPEG(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Landroid/graphics/Bitmap;FI)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0

    return-object p0
.end method

.method public static createFromStream(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-static {p1}, Lcom/tom_roush/pdfbox/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory;->createFromByteArray(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;[B)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0

    return-object p0
.end method

.method private static createJPEG(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Landroid/graphics/Bitmap;FI)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-static {p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory;->encodeImageToJPEGStream(Landroid/graphics/Bitmap;FI)[B

    move-result-object p2

    .line 193
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 195
    new-instance p2, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->DCT_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/16 v6, 0x8

    sget-object v7, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSBase;IIILcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 204
    invoke-static {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory;->createAlphaFromARGBImage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Landroid/graphics/Bitmap;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p0

    .line 205
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    sget-object p3, Lcom/tom_roush/pdfbox/cos/COSName;->SMASK:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p3, p0}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    :cond_0
    return-object p2
.end method

.method private static encodeImageToJPEGStream(Landroid/graphics/Bitmap;FI)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 281
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 282
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static getAlphaImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .line 180
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 184
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getColorImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 291
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 296
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RGB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 308
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x0

    .line 309
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 310
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 311
    invoke-virtual {v2, p0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0

    .line 298
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "only RGB color spaces are implemented"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static prepareImageXObject(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;[BIIILcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 270
    sget-object v1, Lcom/tom_roush/pdfbox/filter/FilterFactory;->INSTANCE:Lcom/tom_roush/pdfbox/filter/FilterFactory;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->FLATE_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/filter/FilterFactory;->getFilter(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/filter/Filter;

    move-result-object v1

    .line 271
    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object v3, p1

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/tom_roush/pdfbox/filter/Filter;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;I)V

    .line 273
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 274
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

.method private static retrieveDimensions(Ljava/io/ByteArrayInputStream;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$Dimensions;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 103
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    .line 104
    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 105
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 107
    new-instance p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$Dimensions;

    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$Dimensions;-><init>(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$1;)V

    .line 108
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$Dimensions;->access$002(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$Dimensions;I)I

    .line 109
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$Dimensions;->access$102(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$Dimensions;I)I

    return-object p0
.end method
