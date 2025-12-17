.class public Lcom/google/mediapipe/framework/AppTextureFrame;
.super Ljava/lang/Object;
.source "AppTextureFrame.java"

# interfaces
.implements Lcom/google/mediapipe/framework/TextureFrame;


# instance fields
.field private height:I

.field private inUse:Z

.field private legacyInUse:Z

.field private releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

.field private textureName:I

.field private timestamp:J

.field private width:I


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureName",
            "width",
            "height"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->timestamp:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->inUse:Z

    iput-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->legacyInUse:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    iput p1, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->textureName:I

    iput p2, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->width:I

    iput p3, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->height:I

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0}, Lcom/google/mediapipe/framework/GlSyncToken;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->height:I

    return v0
.end method

.method public getInUse()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->legacyInUse:Z

    .line 131
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 132
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTextureName()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->textureName:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->timestamp:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->width:I

    return v0
.end method

.method public isNotYetReleased()Z
    .locals 1

    .line 69
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->inUse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 71
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 1

    .line 156
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->inUse:Z

    iput-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->legacyInUse:Z

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 160
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release(Lcom/google/mediapipe/framework/GlSyncToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "syncToken"
        }
    .end annotation

    .line 170
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0}, Lcom/google/mediapipe/framework/GlSyncToken;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->legacyInUse:Z

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 180
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setInUse()V
    .locals 1

    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0}, Lcom/google/mediapipe/framework/GlSyncToken;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->inUse:Z

    iput-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->legacyInUse:Z

    .line 147
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimestamp(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    iput-wide p1, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->timestamp:J

    return-void
.end method

.method public waitUntilReleased()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 82
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->inUse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->inUse:Z

    iput-object v1, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 91
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 93
    invoke-interface {v0}, Lcom/google/mediapipe/framework/GlSyncToken;->waitOnCpu()V

    .line 94
    invoke-interface {v0}, Lcom/google/mediapipe/framework/GlSyncToken;->release()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 91
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public waitUntilReleasedWithGpuSync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 106
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->inUse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->inUse:Z

    iput-object v1, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 115
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 117
    invoke-interface {v0}, Lcom/google/mediapipe/framework/GlSyncToken;->waitOnGpu()V

    .line 118
    invoke-interface {v0}, Lcom/google/mediapipe/framework/GlSyncToken;->release()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 115
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
