.class final Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions$Builder;
.super Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;
.source "AutoValue_ImageGenerator_ImageGeneratorOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private errorListener:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/ErrorListener;",
            ">;"
        }
    .end annotation
.end field

.field private imageGeneratorModelDirectory:Ljava/lang/String;

.field private loraWeightsFilePath:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private modelType:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;-><init>()V

    .line 89
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions$Builder;->loraWeightsFilePath:Ljava/util/Optional;

    .line 91
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions$Builder;->errorListener:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method autoBuild()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;
    .locals 8

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions$Builder;->imageGeneratorModelDirectory:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " imageGeneratorModelDirectory"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions$Builder;->modelType:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;

    if-nez v1, :cond_1

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " modelType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    new-instance v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;

    iget-object v3, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions$Builder;->imageGeneratorModelDirectory:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions$Builder;->loraWeightsFilePath:Ljava/util/Optional;

    iget-object v5, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions$Builder;->modelType:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;

    iget-object v6, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions$Builder;->errorListener:Ljava/util/Optional;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions;-><init>(Ljava/lang/String;Ljava/util/Optional;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;Ljava/util/Optional;Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions$1;)V

    return-object v0

    .line 130
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing required properties:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setErrorListener(Lcom/google/mediapipe/tasks/core/ErrorListener;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorListener"
        }
    .end annotation

    .line 117
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions$Builder;->errorListener:Ljava/util/Optional;

    return-object p0
.end method

.method public setImageGeneratorModelDirectory(Ljava/lang/String;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageGeneratorModelDirectory"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions$Builder;->imageGeneratorModelDirectory:Ljava/lang/String;

    return-object p0

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null imageGeneratorModelDirectory"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLoraWeightsFilePath(Ljava/lang/String;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loraWeightsFilePath"
        }
    .end annotation

    .line 104
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions$Builder;->loraWeightsFilePath:Ljava/util/Optional;

    return-object p0
.end method

.method public setModelType(Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelType"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions$Builder;->modelType:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;

    return-object p0

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null modelType"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
