.class public Lcom/google/mediapipe/framework/image/ByteBufferExtractor;
.super Ljava/lang/Object;
.source "ByteBufferExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/framework/image/ByteBufferExtractor$Result;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adviseImageFormat(Landroid/graphics/Bitmap;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 173
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Extracting ByteBuffer from a MPImage created by a Bitmap in config %s is not supported"

    .line 170
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static convertByteBuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "sourceFormat",
            "targetFormat"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    if-ne p2, v0, :cond_1

    .line 218
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 221
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    new-array p2, p2, [B

    .line 222
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, p2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 223
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 224
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    .line 225
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    :goto_0
    if-eq p0, v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    const/4 v3, -0x1

    .line 227
    aput-byte v3, p2, v2

    add-int/lit8 v2, v0, -0x2

    add-int/lit8 v3, p0, -0x1

    .line 228
    aget-byte v3, p2, v3

    aput-byte v3, p2, v2

    add-int/lit8 v2, v0, -0x3

    add-int/lit8 v3, p0, -0x2

    .line 229
    aget-byte v3, p2, v3

    aput-byte v3, p2, v2

    add-int/lit8 v0, v0, -0x4

    add-int/lit8 p0, p0, -0x3

    .line 230
    aget-byte v2, p2, p0

    aput-byte v2, p2, v0

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    invoke-virtual {p1, p2, v1, p0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 233
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object p1

    :cond_1
    if-ne p1, v0, :cond_3

    if-ne p2, v2, :cond_3

    .line 237
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    mul-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 240
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    new-array v0, p2, [B

    .line 241
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 242
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move p0, v1

    move v2, p0

    :goto_1
    if-ge p0, p2, :cond_2

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, p0, 0x1

    .line 246
    aget-byte v5, v0, p0

    aput-byte v5, v0, v2

    add-int/lit8 v5, v2, 0x2

    add-int/lit8 v6, p0, 0x2

    .line 247
    aget-byte v4, v0, v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x3

    .line 248
    aget-byte v3, v0, v6

    aput-byte v3, v0, v5

    add-int/lit8 p0, p0, 0x4

    goto :goto_1

    .line 251
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 252
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object p1

    .line 255
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 259
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 260
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Convert bytebuffer image format from %d to %d is not supported"

    .line 256
    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extract(Lcom/google/mediapipe/framework/image/MPImage;)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/image/MPImage;->getContainer()Lcom/google/mediapipe/framework/image/MPImageContainer;

    move-result-object p0

    .line 50
    invoke-interface {p0}, Lcom/google/mediapipe/framework/image/MPImageContainer;->getImageProperties()Lcom/google/mediapipe/framework/image/MPImageProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/image/MPImageProperties;->getStorageType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 52
    check-cast p0, Lcom/google/mediapipe/framework/image/ByteBufferImageContainer;

    .line 54
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/image/ByteBufferImageContainer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 56
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 58
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Extract ByteBuffer from a MPImage created by objects other than Bytebuffer is not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extract(Lcom/google/mediapipe/framework/image/MPImage;I)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "image",
            "targetFormat"
        }
    .end annotation

    .line 83
    invoke-static {}, Lcom/google/mediapipe/framework/image/MPImageProperties;->builder()Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 84
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;->setStorageType(I)Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;->setImageFormat(I)Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;->build()Lcom/google/mediapipe/framework/image/MPImageProperties;

    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Lcom/google/mediapipe/framework/image/MPImage;->getContainer(Lcom/google/mediapipe/framework/image/MPImageProperties;)Lcom/google/mediapipe/framework/image/MPImageContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    check-cast v0, Lcom/google/mediapipe/framework/image/ByteBufferImageContainer;

    .line 90
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/image/ByteBufferImageContainer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 91
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 92
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 93
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/mediapipe/framework/image/MPImage;->getContainer(I)Lcom/google/mediapipe/framework/image/MPImageContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    check-cast v0, Lcom/google/mediapipe/framework/image/ByteBufferImageContainer;

    .line 95
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/image/ByteBufferImageContainer;->getImageFormat()I

    move-result p0

    .line 96
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/image/ByteBufferImageContainer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/framework/image/ByteBufferExtractor;->convertByteBuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 97
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 98
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0, v0}, Lcom/google/mediapipe/framework/image/MPImage;->getContainer(I)Lcom/google/mediapipe/framework/image/MPImageContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 100
    check-cast v0, Lcom/google/mediapipe/framework/image/BitmapImageContainer;

    .line 102
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/image/BitmapImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/mediapipe/framework/image/ByteBufferExtractor;->extractByteBufferFromBitmap(Landroid/graphics/Bitmap;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/google/mediapipe/framework/image/ByteBufferImageContainer;

    invoke-direct {v1, v0, p1}, Lcom/google/mediapipe/framework/image/ByteBufferImageContainer;-><init>(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {p0, v1}, Lcom/google/mediapipe/framework/image/MPImage;->addContainer(Lcom/google/mediapipe/framework/image/MPImageContainer;)Z

    return-object v0

    .line 107
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Extracting ByteBuffer from a MPImage created by objects other than Bitmap or Bytebuffer is not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static extractByteBufferFromBitmap(Landroid/graphics/Bitmap;I)Ljava/nio/ByteBuffer;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "imageFormat"
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v0

    if-nez v0, :cond_3

    .line 184
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 186
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 187
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 188
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 192
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 193
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int p1, v7, v8

    .line 194
    new-array v0, p1, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    move v4, v7

    .line 195
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int/lit8 p0, p1, 0x3

    .line 196
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 197
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 198
    aget v2, v0, v1

    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 200
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 201
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 202
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object p0

    .line 208
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 212
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Extracting ByteBuffer from a MPImage created by Bitmap and convert from %s to format %d is not supported"

    .line 209
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Extracting ByteBuffer from a MPImage created by a premultiplied Bitmap is not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static extractInRecommendedFormat(Lcom/google/mediapipe/framework/image/MPImage;)Lcom/google/mediapipe/framework/image/ByteBufferExtractor$Result;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    const/4 v0, 0x1

    .line 143
    invoke-virtual {p0, v0}, Lcom/google/mediapipe/framework/image/MPImage;->getContainer(I)Lcom/google/mediapipe/framework/image/MPImageContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    check-cast v0, Lcom/google/mediapipe/framework/image/BitmapImageContainer;

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/image/BitmapImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 145
    invoke-static {v0}, Lcom/google/mediapipe/framework/image/ByteBufferExtractor;->adviseImageFormat(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 147
    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/image/ByteBufferExtractor;->extractByteBufferFromBitmap(Landroid/graphics/Bitmap;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/image/ByteBufferExtractor$Result;->create(Ljava/nio/ByteBuffer;I)Lcom/google/mediapipe/framework/image/ByteBufferExtractor$Result;

    move-result-object v0

    .line 149
    new-instance v1, Lcom/google/mediapipe/framework/image/ByteBufferImageContainer;

    .line 150
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/image/ByteBufferExtractor$Result;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/image/ByteBufferExtractor$Result;->format()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/mediapipe/framework/image/ByteBufferImageContainer;-><init>(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {p0, v1}, Lcom/google/mediapipe/framework/image/MPImage;->addContainer(Lcom/google/mediapipe/framework/image/MPImageContainer;)Z

    return-object v0

    :cond_0
    const/4 v0, 0x2

    .line 152
    invoke-virtual {p0, v0}, Lcom/google/mediapipe/framework/image/MPImage;->getContainer(I)Lcom/google/mediapipe/framework/image/MPImageContainer;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 153
    check-cast p0, Lcom/google/mediapipe/framework/image/ByteBufferImageContainer;

    .line 155
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/image/ByteBufferImageContainer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/image/ByteBufferImageContainer;->getImageFormat()I

    move-result p0

    .line 154
    invoke-static {v0, p0}, Lcom/google/mediapipe/framework/image/ByteBufferExtractor$Result;->create(Ljava/nio/ByteBuffer;I)Lcom/google/mediapipe/framework/image/ByteBufferExtractor$Result;

    move-result-object p0

    return-object p0

    .line 158
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Extract ByteBuffer from a MPImage created by objects other than Bitmap or Bytebuffer is not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
