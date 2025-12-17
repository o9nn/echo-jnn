.class final Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;
.super Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;
.source "AutoValue_ImageGenerator_ImageGeneratorOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions$Builder;
    }
.end annotation


# instance fields
.field private final errorListener:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/ErrorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final imageGeneratorModelDirectory:Ljava/lang/String;

.field private final loraWeightsFilePath:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final modelType:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Optional;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageGeneratorModelDirectory",
            "loraWeightsFilePath",
            "modelType",
            "errorListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/ErrorListener;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;->imageGeneratorModelDirectory:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;->loraWeightsFilePath:Ljava/util/Optional;

    iput-object p3, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;->modelType:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;

    iput-object p4, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;->errorListener:Ljava/util/Optional;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Optional;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;Ljava/util/Optional;Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;-><init>(Ljava/lang/String;Ljava/util/Optional;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;Ljava/util/Optional;)V

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

    .line 63
    :cond_0
    instance-of v1, p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 64
    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;->imageGeneratorModelDirectory:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;->imageGeneratorModelDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;->loraWeightsFilePath:Ljava/util/Optional;

    .line 66
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;->loraWeightsFilePath()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;->modelType:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;

    .line 67
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;->modelType()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;->errorListener:Ljava/util/Optional;

    .line 68
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;->errorListener()Ljava/util/Optional;

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

.method errorListener()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/ErrorListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;->errorListener:Ljava/util/Optional;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;->imageGeneratorModelDirectory:Ljava/lang/String;

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;->loraWeightsFilePath:Ljava/util/Optional;

    .line 79
    invoke-virtual {v2}, Ljava/util/Optional;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;->modelType:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;

    .line 81
    invoke-virtual {v2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;->errorListener:Ljava/util/Optional;

    .line 83
    invoke-virtual {v1}, Ljava/util/Optional;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method imageGeneratorModelDirectory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;->imageGeneratorModelDirectory:Ljava/lang/String;

    return-object v0
.end method

.method loraWeightsFilePath()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;->loraWeightsFilePath:Ljava/util/Optional;

    return-object v0
.end method

.method modelType()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;->modelType:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageGeneratorOptions{imageGeneratorModelDirectory="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;->imageGeneratorModelDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loraWeightsFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;->loraWeightsFilePath:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modelType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;->modelType:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;->errorListener:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
