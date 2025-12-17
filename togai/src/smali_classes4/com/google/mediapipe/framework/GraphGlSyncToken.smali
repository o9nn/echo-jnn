.class public final Lcom/google/mediapipe/framework/GraphGlSyncToken;
.super Ljava/lang/Object;
.source "GraphGlSyncToken.java"

# interfaces
.implements Lcom/google/mediapipe/framework/GlSyncToken;


# instance fields
.field private token:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/mediapipe/framework/GraphGlSyncToken;->token:J

    return-void
.end method

.method private static native nativeRelease(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation
.end method

.method private static native nativeWaitOnCpu(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation
.end method

.method private static native nativeWaitOnGpu(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation
.end method


# virtual methods
.method public nativeToken()J
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/framework/GraphGlSyncToken;->token:J

    return-wide v0
.end method

.method public release()V
    .locals 5

    iget-wide v0, p0, Lcom/google/mediapipe/framework/GraphGlSyncToken;->token:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 42
    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/GraphGlSyncToken;->nativeRelease(J)V

    iput-wide v2, p0, Lcom/google/mediapipe/framework/GraphGlSyncToken;->token:J

    :cond_0
    return-void
.end method

.method public waitOnCpu()V
    .locals 4

    iget-wide v0, p0, Lcom/google/mediapipe/framework/GraphGlSyncToken;->token:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 28
    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/GraphGlSyncToken;->nativeWaitOnCpu(J)V

    :cond_0
    return-void
.end method

.method public waitOnGpu()V
    .locals 4

    iget-wide v0, p0, Lcom/google/mediapipe/framework/GraphGlSyncToken;->token:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 35
    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/GraphGlSyncToken;->nativeWaitOnGpu(J)V

    :cond_0
    return-void
.end method
