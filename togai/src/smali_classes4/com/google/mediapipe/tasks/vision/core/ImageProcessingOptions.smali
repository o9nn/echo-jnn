.class public abstract Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;
.super Ljava/lang/Object;
.source "ImageProcessingOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions$Builder;
    .locals 2

    .line 90
    new-instance v0, Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions$Builder;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/core/AutoValue_ImageProcessingOptions$Builder;->setRotationDegrees(I)Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract regionOfInterest()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end method

.method public abstract rotationDegrees()I
.end method
