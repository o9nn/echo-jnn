.class public abstract Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;
.super Lcom/google/mediapipe/tasks/core/TaskOptions;
.source "ImageGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ConditionOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;,
        Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions;,
        Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;,
        Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$Builder;,
        Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 635
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/TaskOptions;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$Builder;
    .locals 1

    .line 676
    new-instance v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions$Builder;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public convertToAnyProto()Lcom/google/protobuf/Any;
    .locals 4

    .line 685
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->newBuilder()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;

    move-result-object v0

    .line 686
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;->faceConditionOptions()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;->newBuilder()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions$Builder;

    move-result-object v1

    .line 691
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;->faceConditionOptions()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;

    invoke-virtual {v2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;->pluginModelBaseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;

    move-result-object v2

    .line 690
    invoke-virtual {p0, v2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;->convertBaseOptionsToProto(Lcom/google/mediapipe/tasks/core/BaseOptions;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v2

    .line 689
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions$Builder;->setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions$Builder;

    move-result-object v1

    .line 693
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;->newBuilder()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;

    move-result-object v2

    .line 694
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;->faceConditionOptions()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;

    invoke-virtual {v3}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;->convertToProto()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$FaceConditionTypeOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->setFaceConditionTypeOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$FaceConditionTypeOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;

    move-result-object v2

    .line 695
    invoke-virtual {v2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;

    .line 692
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions$Builder;->setConditionedImageGraphOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions$Builder;

    move-result-object v1

    .line 696
    invoke-virtual {v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;

    .line 687
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->addControlPluginGraphsOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;

    .line 698
    :cond_0
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;->edgeConditionOptions()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 700
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;->newBuilder()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions$Builder;

    move-result-object v1

    .line 703
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;->edgeConditionOptions()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;

    invoke-virtual {v2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;->pluginModelBaseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;

    move-result-object v2

    .line 702
    invoke-virtual {p0, v2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;->convertBaseOptionsToProto(Lcom/google/mediapipe/tasks/core/BaseOptions;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v2

    .line 701
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions$Builder;->setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions$Builder;

    move-result-object v1

    .line 705
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;->newBuilder()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;

    move-result-object v2

    .line 706
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;->edgeConditionOptions()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;

    invoke-virtual {v3}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;->convertToProto()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->setEdgeConditionTypeOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;

    move-result-object v2

    .line 707
    invoke-virtual {v2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;

    .line 704
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions$Builder;->setConditionedImageGraphOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions$Builder;

    move-result-object v1

    .line 708
    invoke-virtual {v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;

    .line 699
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->addControlPluginGraphsOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;

    .line 710
    :cond_1
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;->depthConditionOptions()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 712
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;->newBuilder()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions$Builder;

    move-result-object v1

    .line 715
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;->depthConditionOptions()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions;

    invoke-virtual {v2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions;->pluginModelBaseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;

    move-result-object v2

    .line 714
    invoke-virtual {p0, v2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;->convertBaseOptionsToProto(Lcom/google/mediapipe/tasks/core/BaseOptions;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v2

    .line 713
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions$Builder;->setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions$Builder;

    move-result-object v1

    .line 717
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;->newBuilder()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;

    move-result-object v2

    .line 719
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;->depthConditionOptions()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions;

    invoke-virtual {v3}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions;->convertToProto()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$DepthConditionTypeOptions;

    move-result-object v3

    .line 718
    invoke-virtual {v2, v3}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->setDepthConditionTypeOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$DepthConditionTypeOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;

    move-result-object v2

    .line 720
    invoke-virtual {v2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;

    .line 716
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions$Builder;->setConditionedImageGraphOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions$Builder;

    move-result-object v1

    .line 721
    invoke-virtual {v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;

    .line 711
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->addControlPluginGraphsOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;

    .line 723
    :cond_2
    invoke-static {}, Lcom/google/protobuf/Any;->newBuilder()Lcom/google/protobuf/Any$Builder;

    move-result-object v1

    const-string v2, "type.googleapis.com/mediapipe.tasks.vision.image_generator.proto.ImageGeneratorGraphOptions"

    .line 724
    invoke-virtual {v1, v2}, Lcom/google/protobuf/Any$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/protobuf/Any$Builder;

    move-result-object v1

    .line 726
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/protobuf/Any$Builder;->setValue(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Any$Builder;

    move-result-object v0

    .line 727
    invoke-virtual {v0}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Any;

    return-object v0
.end method

.method abstract depthConditionOptions()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions;",
            ">;"
        }
    .end annotation
.end method

.method abstract edgeConditionOptions()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;",
            ">;"
        }
    .end annotation
.end method

.method abstract faceConditionOptions()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;",
            ">;"
        }
    .end annotation
.end method
