.class public abstract Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;
.super Lcom/google/mediapipe/tasks/core/TaskOptions;
.source "ImageSegmenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ImageSegmenterOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 790
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/TaskOptions;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;
    .locals 2

    .line 871
    new-instance v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;-><init>()V

    sget-object v1, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->IMAGE:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    .line 872
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;->setRunningMode(Lcom/google/mediapipe/tasks/vision/core/RunningMode;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;

    move-result-object v0

    const-string v1, "en"

    .line 873
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;->setDisplayNamesLocale(Ljava/lang/String;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 874
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;->setOutputConfidenceMasks(Z)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 875
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;->setOutputCategoryMask(Z)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract baseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;
.end method

.method public convertToCalculatorOptionsProto()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;
    .locals 4

    .line 884
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->newBuilder()Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;

    move-result-object v0

    .line 886
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->newBuilder()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    move-result-object v1

    .line 887
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->runningMode()Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    move-result-object v2

    sget-object v3, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->IMAGE:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->setUseStreamMode(Z)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    move-result-object v1

    .line 888
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->baseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->convertBaseOptionsToProto(Lcom/google/mediapipe/tasks/core/BaseOptions;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    .line 889
    invoke-virtual {v1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 885
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;

    move-result-object v0

    .line 890
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->displayNamesLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->setDisplayNamesLocale(Ljava/lang/String;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;

    move-result-object v0

    .line 893
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;->newBuilder()Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions$Builder;

    move-result-object v1

    .line 894
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->setSegmenterOptions(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions$Builder;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;

    .line 895
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->newBuilder()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 898
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    .line 896
    invoke-virtual {v1, v2, v0}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;->setExtension(Lcom/google/protobuf/ExtensionLite;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;

    .line 899
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    return-object v0
.end method

.method abstract displayNamesLocale()Ljava/lang/String;
.end method

.method abstract errorListener()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/ErrorListener;",
            ">;"
        }
    .end annotation
.end method

.method abstract outputCategoryMask()Z
.end method

.method abstract outputConfidenceMasks()Z
.end method

.method abstract resultListener()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener<",
            "Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;>;"
        }
    .end annotation
.end method

.method abstract runningMode()Lcom/google/mediapipe/tasks/vision/core/RunningMode;
.end method
