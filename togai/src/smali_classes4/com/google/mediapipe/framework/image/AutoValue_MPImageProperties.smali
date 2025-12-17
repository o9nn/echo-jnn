.class final Lcom/google/mediapipe/framework/image/AutoValue_MPImageProperties;
.super Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties;
.source "AutoValue_MPImageProperties.java"


# instance fields
.field private volatile transient hashCode:I

.field private volatile transient hashCode$Memoized:Z


# direct methods
.method constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageFormat$",
            "storageType$"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties;-><init>(II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "that"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 33
    :cond_0
    instance-of v1, p1, Lcom/google/mediapipe/framework/image/AutoValue_MPImageProperties;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/mediapipe/framework/image/AutoValue_MPImageProperties;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-super {p0, p1}, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/mediapipe/framework/image/AutoValue_MPImageProperties;->hashCode$Memoized:Z

    if-nez v0, :cond_1

    .line 18
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/image/AutoValue_MPImageProperties;->hashCode$Memoized:Z

    if-nez v0, :cond_0

    .line 20
    invoke-super {p0}, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/mediapipe/framework/image/AutoValue_MPImageProperties;->hashCode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mediapipe/framework/image/AutoValue_MPImageProperties;->hashCode$Memoized:Z

    .line 23
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/mediapipe/framework/image/AutoValue_MPImageProperties;->hashCode:I

    return v0
.end method
