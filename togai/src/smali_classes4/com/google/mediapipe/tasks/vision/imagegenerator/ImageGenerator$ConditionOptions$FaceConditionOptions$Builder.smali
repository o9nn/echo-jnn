.class public abstract Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions$Builder;
.super Ljava/lang/Object;
.source "ImageGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract autoBuild()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;
.end method

.method public final build()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;
    .locals 1

    .line 753
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions$Builder;->autoBuild()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;

    move-result-object v0

    return-object v0
.end method

.method public abstract setFaceModelBaseOptions(Lcom/google/mediapipe/tasks/core/BaseOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseOptions"
        }
    .end annotation
.end method

.method public abstract setMinFaceDetectionConfidence(F)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minFaceDetectionConfidence"
        }
    .end annotation
.end method

.method public abstract setMinFacePresenceConfidence(F)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minFacePresenceConfidence"
        }
    .end annotation
.end method

.method public abstract setPluginModelBaseOptions(Lcom/google/mediapipe/tasks/core/BaseOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseOptions"
        }
    .end annotation
.end method
