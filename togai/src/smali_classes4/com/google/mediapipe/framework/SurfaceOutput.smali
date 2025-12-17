.class public Lcom/google/mediapipe/framework/SurfaceOutput;
.super Ljava/lang/Object;
.source "SurfaceOutput.java"


# instance fields
.field private mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

.field private surfaceHolderPacket:Lcom/google/mediapipe/framework/Packet;


# direct methods
.method constructor <init>(Lcom/google/mediapipe/framework/Graph;Lcom/google/mediapipe/framework/Packet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "holderPacket"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/framework/SurfaceOutput;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    iput-object p2, p0, Lcom/google/mediapipe/framework/SurfaceOutput;->surfaceHolderPacket:Lcom/google/mediapipe/framework/Packet;

    return-void
.end method

.method private native nativeSetEglSurface(JJJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeContext",
            "nativePacket",
            "nativeEglSurface"
        }
    .end annotation
.end method

.method private native nativeSetFlipY(JZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativePacket",
            "flip"
        }
    .end annotation
.end method

.method private native nativeSetSurface(JJLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeContext",
            "nativePacket",
            "surface"
        }
    .end annotation
.end method

.method private native nativeSetUpdatePresentationTime(JZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativePacket",
            "updateTimestamp"
        }
    .end annotation
.end method


# virtual methods
.method public setEglSurface(J)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeEglSurface"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/SurfaceOutput;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 94
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/mediapipe/framework/SurfaceOutput;->surfaceHolderPacket:Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v4

    move-object v1, p0

    move-wide v6, p1

    .line 93
    invoke-direct/range {v1 .. v7}, Lcom/google/mediapipe/framework/SurfaceOutput;->nativeSetEglSurface(JJJ)V

    return-void
.end method

.method public setFlipY(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flip"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/SurfaceOutput;->surfaceHolderPacket:Lcom/google/mediapipe/framework/Packet;

    .line 39
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/SurfaceOutput;->nativeSetFlipY(JZ)V

    return-void
.end method

.method public setSurface(Ljava/lang/Object;)V
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/SurfaceOutput;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 79
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/mediapipe/framework/SurfaceOutput;->surfaceHolderPacket:Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v4

    move-object v1, p0

    move-object v6, p1

    .line 78
    invoke-direct/range {v1 .. v6}, Lcom/google/mediapipe/framework/SurfaceOutput;->nativeSetSurface(JJLjava/lang/Object;)V

    return-void
.end method

.method public setUpdatePresentationTime(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateTimestamp"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/SurfaceOutput;->surfaceHolderPacket:Lcom/google/mediapipe/framework/Packet;

    .line 63
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/SurfaceOutput;->nativeSetUpdatePresentationTime(JZ)V

    return-void
.end method
