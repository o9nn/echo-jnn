.class final Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions;
.super Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;
.source "AutoValue_ImageProcessingOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions$Builder;
    }
.end annotation


# instance fields
.field private final regionOfInterest:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotationDegrees:I


# direct methods
.method private constructor <init>(Ljava/util/Optional;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "regionOfInterest",
            "rotationDegrees"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Landroid/graphics/RectF;",
            ">;I)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions;->regionOfInterest:Ljava/util/Optional;

    iput p2, p0, Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions;->rotationDegrees:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Optional;ILcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions;-><init>(Ljava/util/Optional;I)V

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

    .line 43
    :cond_0
    instance-of v1, p1, Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 44
    check-cast p1, Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions;->regionOfInterest:Ljava/util/Optional;

    .line 45
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;->regionOfInterest()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions;->rotationDegrees:I

    .line 46
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;->rotationDegrees()I

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

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions;->regionOfInterest:Ljava/util/Optional;

    .line 55
    invoke-virtual {v0}, Ljava/util/Optional;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions;->rotationDegrees:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public regionOfInterest()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions;->regionOfInterest:Ljava/util/Optional;

    return-object v0
.end method

.method public rotationDegrees()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions;->rotationDegrees:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageProcessingOptions{regionOfInterest="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions;->regionOfInterest:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rotationDegrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions;->rotationDegrees:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
