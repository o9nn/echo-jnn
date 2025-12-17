.class public abstract Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;
.super Ljava/lang/Object;
.source "ImageGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EdgeConditionOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;
    .locals 2

    .line 892
    new-instance v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions$Builder;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions$Builder;-><init>()V

    const/high16 v1, 0x42c80000    # 100.0f

    .line 893
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions$Builder;->setThreshold1(F)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;

    move-result-object v0

    const/high16 v1, 0x43480000    # 200.0f

    .line 894
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;->setThreshold2(F)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 895
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;->setApertureSize(I)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 896
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;->setL2Gradient(Z)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract apertureSize()I
.end method

.method convertToProto()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions;
    .locals 2

    .line 900
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions;->newBuilder()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions$Builder;

    move-result-object v0

    .line 901
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;->threshold1()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions$Builder;->setThreshold1(F)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions$Builder;

    move-result-object v0

    .line 902
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;->threshold2()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions$Builder;->setThreshold2(F)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions$Builder;

    move-result-object v0

    .line 903
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;->apertureSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions$Builder;->setApertureSize(I)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions$Builder;

    move-result-object v0

    .line 904
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;->l2Gradient()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions$Builder;->setL2Gradient(Z)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions$Builder;

    move-result-object v0

    .line 905
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions;

    return-object v0
.end method

.method abstract l2Gradient()Z
.end method

.method abstract pluginModelBaseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;
.end method

.method abstract threshold1()F
.end method

.method abstract threshold2()F
.end method
