.class final Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions$Builder;
.super Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions$Builder;
.source "AutoValue_ImageProcessingOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private regionOfInterest:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private rotationDegrees:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions$Builder;-><init>()V

    .line 62
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions$Builder;->regionOfInterest:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method autoBuild()Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;
    .locals 4

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions$Builder;->rotationDegrees:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string v0, " rotationDegrees"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 82
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    new-instance v0, Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions$Builder;->regionOfInterest:Ljava/util/Optional;

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions$Builder;->rotationDegrees:Ljava/lang/Integer;

    .line 87
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions;-><init>(Ljava/util/Optional;ILcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions$1;)V

    return-object v0

    .line 83
    :cond_1
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

.method public setRegionOfInterest(Landroid/graphics/RectF;)Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "regionOfInterest"
        }
    .end annotation

    .line 68
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions$Builder;->regionOfInterest:Ljava/util/Optional;

    return-object p0
.end method

.method public setRotationDegrees(I)Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotationDegrees"
        }
    .end annotation

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions$Builder;->rotationDegrees:Ljava/lang/Integer;

    return-object p0
.end method
