.class public Lcom/google/mediapipe/framework/AndroidPacketCreator;
.super Lcom/google/mediapipe/framework/PacketCreator;
.source "AndroidPacketCreator.java"


# direct methods
.method public constructor <init>(Lcom/google/mediapipe/framework/Graph;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lcom/google/mediapipe/framework/PacketCreator;-><init>(Lcom/google/mediapipe/framework/Graph;)V

    return-void
.end method

.method private native nativeCreateRgbImageFrame(JLandroid/graphics/Bitmap;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "bitmap"
        }
    .end annotation
.end method

.method private native nativeCreateRgbaImage(JLandroid/graphics/Bitmap;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "bitmap"
        }
    .end annotation
.end method

.method private native nativeCreateRgbaImageFrame(JLandroid/graphics/Bitmap;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "bitmap"
        }
    .end annotation
.end method


# virtual methods
.method public createImage(Lcom/google/mediapipe/framework/image/MPImage;)Lcom/google/mediapipe/framework/Packet;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/image/MPImage;->getContainedImageProperties()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/framework/image/MPImageProperties;

    .line 73
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/image/MPImageProperties;->getStorageType()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    .line 74
    invoke-static {p1}, Lcom/google/mediapipe/framework/image/ByteBufferExtractor;->extract(Lcom/google/mediapipe/framework/image/MPImage;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 76
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/image/MPImageProperties;->getImageFormat()I

    move-result v7

    if-eq v7, v5, :cond_2

    if-eq v7, v6, :cond_1

    const/16 v3, 0x8

    if-eq v7, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-eqz v1, :cond_3

    .line 92
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/image/MPImage;->getWidth()I

    move-result v0

    .line 93
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/image/MPImage;->getHeight()I

    move-result p1

    .line 94
    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createImage(Ljava/nio/ByteBuffer;III)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1

    .line 89
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported MediaPipe Image image format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/image/MPImageProperties;->getImageFormat()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_4
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/image/MPImageProperties;->getStorageType()I

    move-result v2

    if-ne v2, v5, :cond_6

    .line 97
    invoke-static {p1}, Lcom/google/mediapipe/framework/image/BitmapExtractor;->extract(Lcom/google/mediapipe/framework/image/MPImage;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_5

    .line 101
    iget-object v0, p0, Lcom/google/mediapipe/framework/AndroidPacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->nativeCreateRgbaImage(JLandroid/graphics/Bitmap;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1

    .line 99
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "bitmap must use ARGB_8888 config."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_6
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/image/MPImageProperties;->getStorageType()I

    move-result v2

    if-ne v2, v4, :cond_8

    .line 104
    invoke-static {p1}, Lcom/google/mediapipe/framework/image/MediaImageExtractor;->extract(Lcom/google/mediapipe/framework/image/MPImage;)Landroid/media/Image;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    if-ne v0, v5, :cond_7

    .line 109
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v1

    .line 111
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result p1

    .line 108
    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createImage(Ljava/nio/ByteBuffer;III)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1

    .line 106
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Android media image must use RGBA_8888 config."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported Image container type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/image/MPImageProperties;->getStorageType()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createRgbImageFrame(Landroid/graphics/Bitmap;)Lcom/google/mediapipe/framework/Packet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/google/mediapipe/framework/AndroidPacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->nativeCreateRgbImageFrame(JLandroid/graphics/Bitmap;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "bitmap must use ARGB_8888 config."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createRgbaImage(Landroid/graphics/Bitmap;)Lcom/google/mediapipe/framework/Packet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/mediapipe/framework/AndroidPacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->nativeCreateRgbaImage(JLandroid/graphics/Bitmap;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "bitmap must use ARGB_8888 config."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createRgbaImageFrame(Landroid/graphics/Bitmap;)Lcom/google/mediapipe/framework/Packet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/google/mediapipe/framework/AndroidPacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->nativeCreateRgbaImageFrame(JLandroid/graphics/Bitmap;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "bitmap must use ARGB_8888 config."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
