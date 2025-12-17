.class public final Lcom/tom_roush/pdfbox/filter/JPXFilter;
.super Lcom/tom_roush/pdfbox/filter/Filter;
.source "JPXFilter.java"


# static fields
.field private static final CACHE_SIZE:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/Filter;-><init>()V

    return-void
.end method

.method private readJPX(Ljava/io/InputStream;Lcom/tom_roush/pdfbox/filter/DecodeOptions;Lcom/tom_roush/pdfbox/filter/DecodeResult;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string p2, "com.gemalto.jp2.JP2Decoder"

    .line 98
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    new-instance p2, Lcom/gemalto/jp2/JP2Decoder;

    invoke-direct {p2, p1}, Lcom/gemalto/jp2/JP2Decoder;-><init>(Ljava/io/InputStream;)V

    .line 110
    invoke-virtual {p2}, Lcom/gemalto/jp2/JP2Decoder;->decode()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 112
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/filter/DecodeResult;->getParameters()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p2

    .line 122
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->IMAGE_MASK:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 128
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->WIDTH:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    .line 129
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->HEIGHT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    .line 132
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->COLORSPACE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 134
    new-instance p2, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDJPXColorSpace;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDJPXColorSpace;-><init>(Landroid/graphics/ColorSpace;)V

    invoke-virtual {p3, p2}, Lcom/tom_roush/pdfbox/filter/DecodeResult;->setColorSpace(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDJPXColorSpace;)V

    :cond_1
    return-object p1

    .line 102
    :catch_0
    new-instance p1, Lcom/tom_roush/pdfbox/filter/MissingImageReaderException;

    const-string p2, "Cannot read JPX image: JP2Android is not installed."

    invoke-direct {p1, p2}, Lcom/tom_roush/pdfbox/filter/MissingImageReaderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/filter/DecodeResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    sget-object v5, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->DEFAULT:Lcom/tom_roush/pdfbox/filter/DecodeOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tom_roush/pdfbox/filter/JPXFilter;->decode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;ILcom/tom_roush/pdfbox/filter/DecodeOptions;)Lcom/tom_roush/pdfbox/filter/DecodeResult;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;ILcom/tom_roush/pdfbox/filter/DecodeOptions;)Lcom/tom_roush/pdfbox/filter/DecodeResult;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    new-instance p4, Lcom/tom_roush/pdfbox/filter/DecodeResult;

    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    invoke-direct {p4, v0}, Lcom/tom_roush/pdfbox/filter/DecodeResult;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 58
    invoke-virtual {p4}, Lcom/tom_roush/pdfbox/filter/DecodeResult;->getParameters()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->addAll(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 59
    invoke-direct {p0, p1, p5, p4}, Lcom/tom_roush/pdfbox/filter/JPXFilter;->readJPX(Ljava/io/InputStream;Lcom/tom_roush/pdfbox/filter/DecodeOptions;Lcom/tom_roush/pdfbox/filter/DecodeResult;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    mul-int/2addr p1, p3

    .line 62
    new-array p3, p1, [I

    const/4 v3, 0x0

    .line 63
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object v2, p3

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/16 p5, 0xc00

    new-array v0, p5, [B

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_1

    add-int/lit8 v4, v3, 0x3

    if-lt v4, p5, :cond_0

    .line 73
    invoke-virtual {p2, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    move v3, v1

    .line 76
    :cond_0
    aget v4, p3, v2

    .line 77
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v5, v3, 0x1

    .line 78
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v5, v3, 0x2

    .line 79
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v5

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p2, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    return-object p4
.end method

.method protected encode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 148
    new-instance p3, Lcom/gemalto/jp2/JP2Encoder;

    invoke-direct {p3, p1}, Lcom/gemalto/jp2/JP2Encoder;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p3}, Lcom/gemalto/jp2/JP2Encoder;->encode()[B

    move-result-object p1

    .line 149
    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-direct {p3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p3, p2}, Lcom/tom_roush/pdfbox/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 150
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
