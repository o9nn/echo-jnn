.class final Lcom/google/mediapipe/tasks/components/containers/AutoValue_Connection;
.super Lcom/google/mediapipe/tasks/components/containers/Connection;
.source "AutoValue_Connection.java"


# instance fields
.field private final end:I

.field private final start:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/Connection;-><init>()V

    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Connection;->start:I

    iput p2, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Connection;->end:I

    return-void
.end method


# virtual methods
.method public end()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Connection;->end:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 40
    :cond_0
    instance-of v1, p1, Lcom/google/mediapipe/tasks/components/containers/Connection;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 41
    check-cast p1, Lcom/google/mediapipe/tasks/components/containers/Connection;

    iget v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Connection;->start:I

    .line 42
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Connection;->start()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Connection;->end:I

    .line 43
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Connection;->end()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Connection;->start:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Connection;->end:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public start()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Connection;->start:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection{start="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Connection;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Connection;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
