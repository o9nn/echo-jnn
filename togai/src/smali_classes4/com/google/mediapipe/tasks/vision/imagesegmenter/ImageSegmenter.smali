.class public final Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;
.super Lcom/google/mediapipe/tasks/vision/core/BaseVisionTaskApi;
.source "ImageSegmenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;,
        Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;
    }
.end annotation


# static fields
.field private static final IMAGE_IN_STREAM_NAME:Ljava/lang/String; = "image_in"

.field private static final INPUT_STREAMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NORM_RECT_IN_STREAM_NAME:Ljava/lang/String; = "norm_rect_in"

.field private static final OUTPUT_SIZE_IN_STREAM_NAME:Ljava/lang/String; = "output_size_in"

.field private static final TAG:Ljava/lang/String; = "ImageSegmenter"

.field private static final TASK_GRAPH_NAME:Ljava/lang/String; = "mediapipe.tasks.vision.image_segmenter.ImageSegmenterGraph"

.field private static final TENSORS_TO_SEGMENTATION_CALCULATOR_NAME:Ljava/lang/String; = "mediapipe.tasks.TensorsToSegmentationCalculator"


# instance fields
.field private hasResultListener:Z

.field private labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$bTzzxlNNnDNE8kvLH2xiwBEMrc4(Lcom/google/mediapipe/tasks/core/OutputHandler;Lcom/google/mediapipe/tasks/core/ErrorListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/tasks/core/OutputHandler;->setErrorListener(Lcom/google/mediapipe/tasks/core/ErrorListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xPKCpvdxqjL652oAuGEq-p_J6qU(Lcom/google/mediapipe/tasks/core/OutputHandler;Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/tasks/core/OutputHandler;->setResultListener(Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string v0, "NORM_RECT:norm_rect_in"

    const-string v1, "OUTPUT_SIZE:output_size_in"

    const-string v2, "IMAGE:image_in"

    .line 83
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 84
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->INPUT_STREAMS:Ljava/util/List;

    const-string v0, "mediapipe_tasks_vision_jni"

    .line 97
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/mediapipe/tasks/core/TaskRunner;Lcom/google/mediapipe/tasks/vision/core/RunningMode;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "taskRunner",
            "runningMode",
            "hasResultListener"
        }
    .end annotation

    const-string v0, "image_in"

    const-string v1, "norm_rect_in"

    .line 247
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/mediapipe/tasks/vision/core/BaseVisionTaskApi;-><init>(Lcom/google/mediapipe/tasks/core/TaskRunner;Lcom/google/mediapipe/tasks/vision/core/RunningMode;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->hasResultListener:Z

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->labels:Ljava/util/List;

    iput-boolean p3, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->hasResultListener:Z

    .line 249
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->populateLabels()V

    return-void
.end method

.method private buildInputPackets(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "image",
            "segmentationOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            "Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;"
        }
    .end annotation

    .line 905
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 906
    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->imageStreamName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->runner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    invoke-virtual {v2}, Lcom/google/mediapipe/tasks/core/TaskRunner;->getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createImage(Lcom/google/mediapipe/framework/image/MPImage;)Lcom/google/mediapipe/framework/Packet;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->runner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    .line 910
    invoke-virtual {v1}, Lcom/google/mediapipe/tasks/core/TaskRunner;->getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-result-object v1

    .line 912
    invoke-virtual {p2}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;->outputWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;->outputHeight()I

    move-result v3

    .line 911
    invoke-virtual {v1, v2, v3}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createInt32Pair(II)Lcom/google/mediapipe/framework/Packet;

    move-result-object v1

    const-string v2, "output_size_in"

    .line 907
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->normRectStreamName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 914
    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->normRectStreamName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->runner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    .line 917
    invoke-virtual {v2}, Lcom/google/mediapipe/tasks/core/TaskRunner;->getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-result-object v2

    .line 919
    invoke-virtual {p2}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;->imageProcessingOptions()Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->convertToNormalizedRect(Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;Lcom/google/mediapipe/framework/image/MPImage;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    move-result-object p1

    .line 918
    invoke-virtual {v2, p1}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createProto(Lcom/google/protobuf/MessageLite;)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    .line 914
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static createFromOptions(Landroid/content/Context;Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "segmenterOptions"
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->outputConfidenceMasks()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->outputCategoryMask()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "At least one of `outputConfidenceMasks` and `outputCategoryMask` must be set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 113
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    new-instance v1, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$$ExternalSyntheticLambda0;-><init>()V

    .line 121
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->outputConfidenceMasks()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    const-string v2, "CONFIDENCE_MASKS:confidence_masks"

    .line 122
    invoke-interface {v1, v0, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v7, v2

    goto :goto_1

    :cond_2
    move v7, v3

    .line 125
    :goto_1
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->outputCategoryMask()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "CATEGORY_MASK:category_mask"

    .line 126
    invoke-interface {v1, v0, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_3
    move v8, v3

    const-string v2, "QUALITY_SCORES:quality_scores"

    .line 129
    invoke-interface {v1, v0, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v2, "IMAGE:image_out"

    .line 130
    invoke-interface {v1, v0, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 133
    new-instance v1, Lcom/google/mediapipe/tasks/core/OutputHandler;

    invoke-direct {v1}, Lcom/google/mediapipe/tasks/core/OutputHandler;-><init>()V

    .line 134
    new-instance v2, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;

    move-object v4, v2

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;-><init>(ILcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;III)V

    invoke-virtual {v1, v2}, Lcom/google/mediapipe/tasks/core/OutputHandler;->setOutputPacketConverter(Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter;)V

    .line 219
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->resultListener()Ljava/util/Optional;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$$ExternalSyntheticLambda1;-><init>(Lcom/google/mediapipe/tasks/core/OutputHandler;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 220
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->errorListener()Ljava/util/Optional;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$$ExternalSyntheticLambda2;-><init>(Lcom/google/mediapipe/tasks/core/OutputHandler;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 224
    invoke-static {}, Lcom/google/mediapipe/tasks/core/TaskInfo;->builder()Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object v2

    const-string v3, "ImageSegmenter"

    .line 225
    invoke-virtual {v2, v3}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->setTaskName(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object v2

    .line 226
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->runningMode()Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->setTaskRunningModeName(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object v2

    const-string v3, "mediapipe.tasks.vision.image_segmenter.ImageSegmenterGraph"

    .line 227
    invoke-virtual {v2, v3}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->setTaskGraphName(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->INPUT_STREAMS:Ljava/util/List;

    .line 228
    invoke-virtual {v2, v3}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->setInputStreams(Ljava/util/List;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object v2

    .line 229
    invoke-virtual {v2, v0}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->setOutputStreams(Ljava/util/List;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object v0

    .line 230
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->setTaskOptions(Lcom/google/mediapipe/tasks/core/TaskOptions;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object v0

    .line 231
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->runningMode()Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    move-result-object v2

    sget-object v3, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->LIVE_STREAM:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->setEnableFlowLimiting(Z)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->build()Lcom/google/mediapipe/tasks/core/TaskInfo;

    move-result-object v0

    .line 222
    invoke-static {p0, v0, v1}, Lcom/google/mediapipe/tasks/core/TaskRunner;->create(Landroid/content/Context;Lcom/google/mediapipe/tasks/core/TaskInfo;Lcom/google/mediapipe/tasks/core/OutputHandler;)Lcom/google/mediapipe/tasks/core/TaskRunner;

    move-result-object p0

    .line 234
    new-instance v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;

    .line 235
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->runningMode()Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->resultListener()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;-><init>(Lcom/google/mediapipe/tasks/core/TaskRunner;Lcom/google/mediapipe/tasks/vision/core/RunningMode;Z)V

    return-object v0
.end method

.method static synthetic lambda$createFromOptions$0(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 117
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private populateLabels()V
    .locals 7

    .line 258
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->runner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/TaskRunner;->getCalculatorGraphConfig()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getNodeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 262
    invoke-virtual {v3}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mediapipe.tasks.TensorsToSegmentationCalculator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v2, :cond_3

    .line 270
    invoke-virtual {v3}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getOptions()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    move-result-object v2

    sget-object v3, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 271
    invoke-virtual {v2, v3}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->getExtension(Lcom/google/protobuf/ExtensionLite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    move v3, v1

    .line 274
    :goto_1
    invoke-virtual {v2}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->getLabelItemsMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    int-to-long v4, v3

    .line 275
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 276
    invoke-virtual {v2}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->getLabelItemsMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->labels:Ljava/util/List;

    .line 281
    invoke-virtual {v2}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->getLabelItemsMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-virtual {v4}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 277
    :cond_1
    new-instance v0, Lcom/google/mediapipe/framework/MediaPipeException;

    sget-object v1, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->INTERNAL:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 278
    invoke-virtual {v1}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->ordinal()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The lablemap have no expected key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/mediapipe/framework/MediaPipeException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 264
    :cond_3
    new-instance v0, Lcom/google/mediapipe/framework/MediaPipeException;

    sget-object v1, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->INTERNAL:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 265
    invoke-virtual {v1}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->ordinal()I

    move-result v1

    const-string v2, "The graph has more than one mediapipe.tasks.TensorsToSegmentationCalculator."

    invoke-direct {v0, v1, v2}, Lcom/google/mediapipe/framework/MediaPipeException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method


# virtual methods
.method public getLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->labels:Ljava/util/List;

    return-object v0
.end method

.method public segment(Lcom/google/mediapipe/framework/image/MPImage;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .line 304
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;->builder()Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->segment(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;

    move-result-object p1

    return-object p1
.end method

.method public segment(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "image",
            "imageProcessingOptions"
        }
    .end annotation

    .line 332
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;->builder()Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;

    move-result-object v0

    .line 333
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/image/MPImage;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;->setOutputWidth(I)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;

    move-result-object v0

    .line 334
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/image/MPImage;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;->setOutputHeight(I)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;

    move-result-object v0

    .line 335
    invoke-virtual {v0, p2}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;->setImageProcessingOptions(Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;

    move-result-object p2

    .line 336
    invoke-virtual {p2}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;

    move-result-object p2

    .line 330
    invoke-virtual {p0, p1, p2}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->segment(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;

    move-result-object p1

    return-object p1
.end method

.method public segment(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "image",
            "segmentationOptions"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->hasResultListener:Z

    if-nez v0, :cond_0

    .line 363
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->buildInputPackets(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->processImageData(Ljava/util/Map;)Lcom/google/mediapipe/tasks/core/TaskResult;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;

    return-object p1

    .line 358
    :cond_0
    new-instance p1, Lcom/google/mediapipe/framework/MediaPipeException;

    sget-object p2, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->FAILED_PRECONDITION:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 359
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->ordinal()I

    move-result p2

    const-string v0, "ResultListener is provided in the ImageSegmenterOptions, but this method will return an ImageSegmentationResult."

    invoke-direct {p1, p2, v0}, Lcom/google/mediapipe/framework/MediaPipeException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public segmentAsync(Lcom/google/mediapipe/framework/image/MPImage;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "image",
            "timestampMs"
        }
    .end annotation

    .line 662
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;->builder()Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->segmentAsync(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;J)V

    return-void
.end method

.method public segmentAsync(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "image",
            "imageProcessingOptions",
            "timestampMs"
        }
    .end annotation

    .line 694
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;->builder()Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;

    move-result-object v0

    .line 695
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/image/MPImage;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;->setOutputWidth(I)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;

    move-result-object v0

    .line 696
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/image/MPImage;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;->setOutputHeight(I)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;

    move-result-object v0

    .line 697
    invoke-virtual {v0, p2}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;->setImageProcessingOptions(Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;

    move-result-object p2

    .line 698
    invoke-virtual {p2}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;

    move-result-object p2

    .line 692
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->segmentAsync(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;J)V

    return-void
.end method

.method public segmentAsync(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "image",
            "segmentationOptions",
            "timestampMs"
        }
    .end annotation

    .line 724
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->buildInputPackets(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->sendLiveStreamData(Ljava/util/Map;J)V

    return-void
.end method

.method public segmentForVideo(Lcom/google/mediapipe/framework/image/MPImage;J)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "image",
            "timestampMs"
        }
    .end annotation

    .line 477
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;->builder()Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->segmentForVideo(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;J)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;

    move-result-object p1

    return-object p1
.end method

.method public segmentForVideo(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;J)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "image",
            "imageProcessingOptions",
            "timestampMs"
        }
    .end annotation

    .line 509
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;->builder()Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;

    move-result-object v0

    .line 510
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/image/MPImage;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;->setOutputWidth(I)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;

    move-result-object v0

    .line 511
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/image/MPImage;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;->setOutputHeight(I)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;

    move-result-object v0

    .line 512
    invoke-virtual {v0, p2}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;->setImageProcessingOptions(Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;

    move-result-object p2

    .line 513
    invoke-virtual {p2}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;

    move-result-object p2

    .line 507
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->segmentForVideo(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;J)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;

    move-result-object p1

    return-object p1
.end method

.method public segmentForVideo(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;J)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "image",
            "segmentationOptions",
            "timestampMs"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->hasResultListener:Z

    if-nez v0, :cond_0

    .line 546
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->buildInputPackets(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->processVideoData(Ljava/util/Map;J)Lcom/google/mediapipe/tasks/core/TaskResult;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;

    return-object p1

    .line 540
    :cond_0
    new-instance p1, Lcom/google/mediapipe/framework/MediaPipeException;

    sget-object p2, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->FAILED_PRECONDITION:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 541
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->ordinal()I

    move-result p2

    const-string p3, "ResultListener is provided in the ImageSegmenterOptions, but this method will return an ImageSegmentationResult."

    invoke-direct {p1, p2, p3}, Lcom/google/mediapipe/framework/MediaPipeException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public segmentForVideoWithResultListener(Lcom/google/mediapipe/framework/image/MPImage;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "image",
            "timestampMs"
        }
    .end annotation

    .line 570
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;->builder()Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->segmentForVideoWithResultListener(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;J)V

    return-void
.end method

.method public segmentForVideoWithResultListener(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "image",
            "imageProcessingOptions",
            "timestampMs"
        }
    .end annotation

    .line 599
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;->builder()Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;

    move-result-object v0

    .line 600
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/image/MPImage;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;->setOutputWidth(I)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;

    move-result-object v0

    .line 601
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/image/MPImage;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;->setOutputHeight(I)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;

    move-result-object v0

    .line 602
    invoke-virtual {v0, p2}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;->setImageProcessingOptions(Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;

    move-result-object p2

    .line 603
    invoke-virtual {p2}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;

    move-result-object p2

    .line 597
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->segmentForVideoWithResultListener(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;J)V

    return-void
.end method

.method public segmentForVideoWithResultListener(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "image",
            "segmentationOptions",
            "timestampMs"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->hasResultListener:Z

    if-eqz v0, :cond_0

    .line 638
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->buildInputPackets(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->processVideoData(Ljava/util/Map;J)Lcom/google/mediapipe/tasks/core/TaskResult;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;

    return-void

    .line 631
    :cond_0
    new-instance p1, Lcom/google/mediapipe/framework/MediaPipeException;

    sget-object p2, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->FAILED_PRECONDITION:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 632
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->ordinal()I

    move-result p2

    const-string p3, "ResultListener is not set in the ImageSegmenterOptions, but this method expects a ResultListener to process ImageSegmentationResult."

    invoke-direct {p1, p2, p3}, Lcom/google/mediapipe/framework/MediaPipeException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public segmentWithResultListener(Lcom/google/mediapipe/framework/image/MPImage;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .line 385
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;->builder()Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->segmentWithResultListener(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;)V

    return-void
.end method

.method public segmentWithResultListener(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "image",
            "imageProcessingOptions"
        }
    .end annotation

    .line 416
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;->builder()Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;

    move-result-object v0

    .line 417
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/image/MPImage;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;->setOutputWidth(I)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;

    move-result-object v0

    .line 418
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/image/MPImage;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;->setOutputHeight(I)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;

    move-result-object v0

    .line 419
    invoke-virtual {v0, p2}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;->setImageProcessingOptions(Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;

    move-result-object p2

    .line 420
    invoke-virtual {p2}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;

    move-result-object p2

    .line 414
    invoke-virtual {p0, p1, p2}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->segmentWithResultListener(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;)V

    return-void
.end method

.method public segmentWithResultListener(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "image",
            "segmentationOptions"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->hasResultListener:Z

    if-eqz v0, :cond_0

    .line 454
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->buildInputPackets(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->processImageData(Ljava/util/Map;)Lcom/google/mediapipe/tasks/core/TaskResult;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;

    return-void

    .line 448
    :cond_0
    new-instance p1, Lcom/google/mediapipe/framework/MediaPipeException;

    sget-object p2, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->FAILED_PRECONDITION:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 449
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->ordinal()I

    move-result p2

    const-string v0, "ResultListener is not set in the ImageSegmenterOptions, but this method expects a ResultListener to process ImageSegmentationResult."

    invoke-direct {p1, p2, v0}, Lcom/google/mediapipe/framework/MediaPipeException;-><init>(ILjava/lang/String;)V

    throw p1
.end method
