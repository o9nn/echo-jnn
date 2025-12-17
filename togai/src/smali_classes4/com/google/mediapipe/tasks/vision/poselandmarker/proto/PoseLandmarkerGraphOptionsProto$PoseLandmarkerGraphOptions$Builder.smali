.class public final Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PoseLandmarkerGraphOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;",
        "Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 456
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->access$000()Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$1;)V
    .locals 0

    .line 449
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 449
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 449
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 449
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBaseOptions()Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;
    .locals 1

    .line 532
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 533
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->access$300(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;)V

    return-object p0
.end method

.method public clearMinTrackingConfidence()Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;
    .locals 1

    .line 730
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 731
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->access$1100(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;)V

    return-object p0
.end method

.method public clearPoseDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;
    .locals 1

    .line 603
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 604
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->access$600(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;)V

    return-object p0
.end method

.method public clearPoseLandmarksDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;
    .locals 1

    .line 674
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 675
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->access$900(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 449
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 449
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 449
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 449
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getMinTrackingConfidence()F
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->getMinTrackingConfidence()F

    move-result v0

    return v0
.end method

.method public getPoseDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->getPoseDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    move-result-object v0

    return-object v0
.end method

.method public getPoseLandmarksDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->getPoseLandmarksDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

    move-result-object v0

    return-object v0
.end method

.method public hasBaseOptions()Z
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->hasBaseOptions()Z

    move-result v0

    return v0
.end method

.method public hasMinTrackingConfidence()Z
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->hasMinTrackingConfidence()Z

    move-result v0

    return v0
.end method

.method public hasPoseDetectorGraphOptions()Z
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->hasPoseDetectorGraphOptions()Z

    move-result v0

    return v0
.end method

.method public hasPoseLandmarksDetectorGraphOptions()Z
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->hasPoseLandmarksDetectorGraphOptions()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalMergeFrom(Lcom/google/protobuf/AbstractMessageLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "message"
        }
    .end annotation

    .line 449
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 520
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 521
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->access$200(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "input",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 449
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "input",
            "offset",
            "length",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 449
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 449
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 449
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 449
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 449
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "input",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 449
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "input",
            "offset",
            "length",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 449
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 449
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergePoseDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 592
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 593
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->access$500(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)V

    return-object p0
.end method

.method public mergePoseLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 663
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 664
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->access$800(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;)V

    return-object p0
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 507
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 508
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->access$100(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 493
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 494
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->access$100(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setMinTrackingConfidence(F)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 716
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 717
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->access$1000(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;F)V

    return-object p0
.end method

.method public setPoseDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 580
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 581
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->access$400(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)V

    return-object p0
.end method

.method public setPoseDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 567
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 568
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->access$400(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)V

    return-object p0
.end method

.method public setPoseLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions$Builder;)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 651
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 652
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->access$700(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;)V

    return-object p0
.end method

.method public setPoseLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 638
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 639
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->access$700(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;)V

    return-object p0
.end method
