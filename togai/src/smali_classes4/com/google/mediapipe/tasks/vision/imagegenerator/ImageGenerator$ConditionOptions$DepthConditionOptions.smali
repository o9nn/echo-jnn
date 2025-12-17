.class public abstract Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions;
.super Lcom/google/mediapipe/tasks/core/TaskOptions;
.source "ImageGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DepthConditionOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 793
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/TaskOptions;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions$Builder;
    .locals 1

    .line 819
    new-instance v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions$Builder;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method convertToProto()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$DepthConditionTypeOptions;
    .locals 3

    .line 824
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->builder()Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;

    move-result-object v0

    .line 825
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions;->depthModelBaseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;->setBaseOptions(Lcom/google/mediapipe/tasks/core/BaseOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 826
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;->setOutputConfidenceMasks(Z)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 827
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;->setOutputCategoryMask(Z)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->IMAGE:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    .line 828
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;->setRunningMode(Lcom/google/mediapipe/tasks/vision/core/RunningMode;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;

    move-result-object v0

    .line 829
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;

    move-result-object v0

    .line 830
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$DepthConditionTypeOptions;->newBuilder()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$DepthConditionTypeOptions$Builder;

    move-result-object v1

    .line 833
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->convertToCalculatorOptionsProto()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    move-result-object v0

    sget-object v2, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 834
    invoke-virtual {v0, v2}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->getExtension(Lcom/google/protobuf/ExtensionLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    .line 831
    invoke-virtual {v1, v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$DepthConditionTypeOptions$Builder;->setImageSegmenterGraphOptions(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$DepthConditionTypeOptions$Builder;

    move-result-object v0

    .line 835
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$DepthConditionTypeOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$DepthConditionTypeOptions;

    return-object v0
.end method

.method abstract depthModelBaseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;
.end method

.method abstract pluginModelBaseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;
.end method
