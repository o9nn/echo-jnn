.class public final Lcom/google/mediapipe/framework/AndroidPacketGetter;
.super Ljava/lang/Object;
.source "AndroidPacketGetter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyRgbToBitmap(Lcom/google/mediapipe/framework/Packet;Landroid/graphics/Bitmap;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packet",
            "inBitmap"
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    const-string v1, "Input bitmap should be mutable."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v1, "Input bitmap should be of type ARGB_8888."

    .line 56
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 58
    invoke-static {p0}, Lcom/google/mediapipe/framework/PacketGetter;->getImageWidth(Lcom/google/mediapipe/framework/Packet;)I

    move-result v0

    .line 59
    invoke-static {p0}, Lcom/google/mediapipe/framework/PacketGetter;->getImageHeight(Lcom/google/mediapipe/framework/Packet;)I

    move-result v1

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    mul-int v5, v0, v1

    mul-int/lit8 v5, v5, 0x4

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string v3, "Input bitmap size mismatch."

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 61
    invoke-static {p0, p1, v0, v1}, Lcom/google/mediapipe/framework/AndroidPacketGetter;->copyRgbToBitmap(Lcom/google/mediapipe/framework/Packet;Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method private static copyRgbToBitmap(Lcom/google/mediapipe/framework/Packet;Landroid/graphics/Bitmap;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packet",
            "mutableBitmap",
            "width",
            "height"
        }
    .end annotation

    mul-int/2addr p2, p3

    mul-int/lit8 p2, p2, 0x4

    .line 66
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 67
    invoke-static {p0, p2}, Lcom/google/mediapipe/framework/PacketGetter;->getRgbaFromRgb(Lcom/google/mediapipe/framework/Packet;Ljava/nio/ByteBuffer;)Z

    .line 68
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-void
.end method

.method public static copyRgbaToBitmap(Lcom/google/mediapipe/framework/Packet;Landroid/graphics/Bitmap;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packet",
            "inBitmap"
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    const-string v1, "Input bitmap should be mutable."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v1, "Input bitmap should be of type ARGB_8888."

    .line 95
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 97
    invoke-static {p0}, Lcom/google/mediapipe/framework/PacketGetter;->getImageWidth(Lcom/google/mediapipe/framework/Packet;)I

    move-result v0

    .line 98
    invoke-static {p0}, Lcom/google/mediapipe/framework/PacketGetter;->getImageHeight(Lcom/google/mediapipe/framework/Packet;)I

    move-result v1

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    mul-int v5, v0, v1

    mul-int/lit8 v5, v5, 0x4

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string v3, "Input bitmap size mismatch."

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 100
    invoke-static {p0, p1, v0, v1}, Lcom/google/mediapipe/framework/AndroidPacketGetter;->copyRgbaToBitmap(Lcom/google/mediapipe/framework/Packet;Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method private static copyRgbaToBitmap(Lcom/google/mediapipe/framework/Packet;Landroid/graphics/Bitmap;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packet",
            "mutableBitmap",
            "width",
            "height"
        }
    .end annotation

    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x4

    .line 106
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 107
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 110
    invoke-static {p0, v0}, Lcom/google/mediapipe/framework/PacketGetter;->getImageData(Lcom/google/mediapipe/framework/Packet;Ljava/nio/ByteBuffer;)Z

    move-result p0

    .line 115
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Got error from getImageData, returning null Bitmap. Image width %d, height %d"

    .line 113
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 111
    invoke-static {p0, p2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 116
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-void
.end method

.method public static getBitmapFromRgb(Lcom/google/mediapipe/framework/Packet;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packet"
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lcom/google/mediapipe/framework/PacketGetter;->getImageWidth(Lcom/google/mediapipe/framework/Packet;)I

    move-result v0

    .line 41
    invoke-static {p0}, Lcom/google/mediapipe/framework/PacketGetter;->getImageHeight(Lcom/google/mediapipe/framework/Packet;)I

    move-result v1

    .line 42
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 43
    invoke-static {p0, v2, v0, v1}, Lcom/google/mediapipe/framework/AndroidPacketGetter;->copyRgbToBitmap(Lcom/google/mediapipe/framework/Packet;Landroid/graphics/Bitmap;II)V

    return-object v2
.end method

.method public static getBitmapFromRgba(Lcom/google/mediapipe/framework/Packet;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packet"
        }
    .end annotation

    .line 79
    invoke-static {p0}, Lcom/google/mediapipe/framework/PacketGetter;->getImageWidth(Lcom/google/mediapipe/framework/Packet;)I

    move-result v0

    .line 80
    invoke-static {p0}, Lcom/google/mediapipe/framework/PacketGetter;->getImageHeight(Lcom/google/mediapipe/framework/Packet;)I

    move-result v1

    .line 81
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 82
    invoke-static {p0, v2, v0, v1}, Lcom/google/mediapipe/framework/AndroidPacketGetter;->copyRgbaToBitmap(Lcom/google/mediapipe/framework/Packet;Landroid/graphics/Bitmap;II)V

    return-object v2
.end method
