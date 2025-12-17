.class public abstract Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;
.super Ljava/lang/Object;
.source "ImageGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract autoBuild()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;
.end method

.method public final build()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;
    .locals 1

    .line 877
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;->autoBuild()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;

    move-result-object v0

    return-object v0
.end method

.method public abstract setApertureSize(I)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apertureSize"
        }
    .end annotation
.end method

.method public abstract setL2Gradient(Z)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l2Gradient"
        }
    .end annotation
.end method

.method public abstract setPluginModelBaseOptions(Lcom/google/mediapipe/tasks/core/BaseOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseOptions"
        }
    .end annotation
.end method

.method public abstract setThreshold1(F)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "threshold1"
        }
    .end annotation
.end method

.method public abstract setThreshold2(F)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "threshold2"
        }
    .end annotation
.end method
