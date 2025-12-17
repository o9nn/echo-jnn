.class public abstract Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;
.super Ljava/lang/Object;
.source "ImageGeneratorResult.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/core/TaskResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/google/mediapipe/framework/image/MPImage;J)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "generatedImage",
            "timestampMs"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGeneratorResult;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGeneratorResult;-><init>(Lcom/google/mediapipe/framework/image/MPImage;Ljava/util/Optional;J)V

    return-object v0
.end method

.method public static create(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/framework/image/MPImage;J)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "generatedImage",
            "conditionImage",
            "timestampMs"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGeneratorResult;

    .line 30
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGeneratorResult;-><init>(Lcom/google/mediapipe/framework/image/MPImage;Ljava/util/Optional;J)V

    return-object v0
.end method


# virtual methods
.method public abstract conditionImage()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract generatedImage()Lcom/google/mediapipe/framework/image/MPImage;
.end method

.method public abstract timestampMs()J
.end method
