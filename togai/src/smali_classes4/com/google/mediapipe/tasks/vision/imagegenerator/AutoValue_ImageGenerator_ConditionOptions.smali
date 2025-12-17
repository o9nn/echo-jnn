.class final Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions;
.super Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;
.source "AutoValue_ImageGenerator_ConditionOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions$Builder;
    }
.end annotation


# instance fields
.field private final depthConditionOptions:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions;",
            ">;"
        }
    .end annotation
.end field

.field private final edgeConditionOptions:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;",
            ">;"
        }
    .end annotation
.end field

.field private final faceConditionOptions:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "faceConditionOptions",
            "depthConditionOptions",
            "edgeConditionOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions;->faceConditionOptions:Ljava/util/Optional;

    iput-object p2, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions;->depthConditionOptions:Ljava/util/Optional;

    iput-object p3, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions;->edgeConditionOptions:Ljava/util/Optional;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions;-><init>(Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)V

    return-void
.end method


# virtual methods
.method depthConditionOptions()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions;->depthConditionOptions:Ljava/util/Optional;

    return-object v0
.end method

.method edgeConditionOptions()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions;->edgeConditionOptions:Ljava/util/Optional;

    return-object v0
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

    .line 52
    :cond_0
    instance-of v1, p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 53
    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions;->faceConditionOptions:Ljava/util/Optional;

    .line 54
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;->faceConditionOptions()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions;->depthConditionOptions:Ljava/util/Optional;

    .line 55
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;->depthConditionOptions()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions;->edgeConditionOptions:Ljava/util/Optional;

    .line 56
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;->edgeConditionOptions()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method faceConditionOptions()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions;->faceConditionOptions:Ljava/util/Optional;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions;->faceConditionOptions:Ljava/util/Optional;

    .line 65
    invoke-virtual {v0}, Ljava/util/Optional;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions;->depthConditionOptions:Ljava/util/Optional;

    .line 67
    invoke-virtual {v2}, Ljava/util/Optional;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions;->edgeConditionOptions:Ljava/util/Optional;

    .line 69
    invoke-virtual {v1}, Ljava/util/Optional;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConditionOptions{faceConditionOptions="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions;->faceConditionOptions:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", depthConditionOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions;->depthConditionOptions:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", edgeConditionOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions;->edgeConditionOptions:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
