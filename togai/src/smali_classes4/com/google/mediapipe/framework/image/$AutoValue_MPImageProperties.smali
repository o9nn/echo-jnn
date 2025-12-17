.class abstract Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties;
.super Lcom/google/mediapipe/framework/image/MPImageProperties;
.source "$AutoValue_MPImageProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties$Builder;
    }
.end annotation


# instance fields
.field private final imageFormat:I

.field private final storageType:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageFormat",
            "storageType"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/google/mediapipe/framework/image/MPImageProperties;-><init>()V

    iput p1, p0, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties;->imageFormat:I

    iput p2, p0, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties;->storageType:I

    return-void
.end method


# virtual methods
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

    .line 42
    :cond_0
    instance-of v1, p1, Lcom/google/mediapipe/framework/image/MPImageProperties;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 43
    check-cast p1, Lcom/google/mediapipe/framework/image/MPImageProperties;

    iget v1, p0, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties;->imageFormat:I

    .line 44
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/image/MPImageProperties;->getImageFormat()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties;->storageType:I

    .line 45
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/image/MPImageProperties;->getStorageType()I

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

.method public getImageFormat()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties;->imageFormat:I

    return v0
.end method

.method public getStorageType()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties;->storageType:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties;->imageFormat:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties;->storageType:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MPImageProperties{imageFormat="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties;->imageFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", storageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties;->storageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
