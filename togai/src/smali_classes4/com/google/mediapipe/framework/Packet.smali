.class public Lcom/google/mediapipe/framework/Packet;
.super Ljava/lang/Object;
.source "Packet.java"


# instance fields
.field private nativePacketHandle:J


# direct methods
.method private constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/mediapipe/framework/Packet;->nativePacketHandle:J

    return-void
.end method

.method public static create(J)Lcom/google/mediapipe/framework/Packet;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/google/mediapipe/framework/Packet;

    invoke-direct {v0, p0, p1}, Lcom/google/mediapipe/framework/Packet;-><init>(J)V

    return-object v0
.end method

.method private native nativeCopyPacket(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packetHandle"
        }
    .end annotation
.end method

.method private native nativeGetTimestamp(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packetHandle"
        }
    .end annotation
.end method

.method private native nativeIsEmpty(J)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packetHandle"
        }
    .end annotation
.end method

.method private native nativeReleasePacket(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packetHandle"
        }
    .end annotation
.end method


# virtual methods
.method public copy()Lcom/google/mediapipe/framework/Packet;
    .locals 3

    .line 63
    new-instance v0, Lcom/google/mediapipe/framework/Packet;

    iget-wide v1, p0, Lcom/google/mediapipe/framework/Packet;->nativePacketHandle:J

    invoke-direct {p0, v1, v2}, Lcom/google/mediapipe/framework/Packet;->nativeCopyPacket(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/mediapipe/framework/Packet;-><init>(J)V

    return-object v0
.end method

.method public getNativeHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/framework/Packet;->nativePacketHandle:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/framework/Packet;->nativePacketHandle:J

    .line 49
    invoke-direct {p0, v0, v1}, Lcom/google/mediapipe/framework/Packet;->nativeGetTimestamp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/framework/Packet;->nativePacketHandle:J

    .line 54
    invoke-direct {p0, v0, v1}, Lcom/google/mediapipe/framework/Packet;->nativeIsEmpty(J)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 5

    iget-wide v0, p0, Lcom/google/mediapipe/framework/Packet;->nativePacketHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 74
    invoke-direct {p0, v0, v1}, Lcom/google/mediapipe/framework/Packet;->nativeReleasePacket(J)V

    iput-wide v2, p0, Lcom/google/mediapipe/framework/Packet;->nativePacketHandle:J

    :cond_0
    return-void
.end method
