.class public final Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PoseDetectorGraphOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;",
        "Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 431
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->access$000()Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$1;)V
    .locals 0

    .line 424
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 424
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 424
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 424
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBaseOptions()Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;
    .locals 1

    .line 507
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->copyOnWrite()V

    .line 508
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->access$300(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)V

    return-object p0
.end method

.method public clearMinDetectionConfidence()Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;
    .locals 1

    .line 563
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->copyOnWrite()V

    .line 564
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->access$500(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)V

    return-object p0
.end method

.method public clearMinSuppressionThreshold()Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;
    .locals 1

    .line 619
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->copyOnWrite()V

    .line 620
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->access$700(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)V

    return-object p0
.end method

.method public clearNumPoses()Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;
    .locals 1

    .line 671
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->copyOnWrite()V

    .line 672
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->access$900(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 424
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 424
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

    .line 424
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 424
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getMinDetectionConfidence()F
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->getMinDetectionConfidence()F

    move-result v0

    return v0
.end method

.method public getMinSuppressionThreshold()F
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->getMinSuppressionThreshold()F

    move-result v0

    return v0
.end method

.method public getNumPoses()I
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->getNumPoses()I

    move-result v0

    return v0
.end method

.method public hasBaseOptions()Z
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->hasBaseOptions()Z

    move-result v0

    return v0
.end method

.method public hasMinDetectionConfidence()Z
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->hasMinDetectionConfidence()Z

    move-result v0

    return v0
.end method

.method public hasMinSuppressionThreshold()Z
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->hasMinSuppressionThreshold()Z

    move-result v0

    return v0
.end method

.method public hasNumPoses()Z
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->hasNumPoses()Z

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

    .line 424
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 495
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->copyOnWrite()V

    .line 496
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->access$200(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

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

    .line 424
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

    .line 424
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

    .line 424
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

    .line 424
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

    .line 424
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

    .line 424
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

    .line 424
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

    .line 424
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

    .line 424
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

    .line 424
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

    .line 424
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

    .line 424
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

    .line 424
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

    .line 424
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;)Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 482
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->copyOnWrite()V

    .line 483
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->access$100(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 468
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->copyOnWrite()V

    .line 469
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->access$100(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setMinDetectionConfidence(F)Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 549
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->copyOnWrite()V

    .line 550
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->access$400(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;F)V

    return-object p0
.end method

.method public setMinSuppressionThreshold(F)Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 605
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->copyOnWrite()V

    .line 606
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->access$600(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;F)V

    return-object p0
.end method

.method public setNumPoses(I)Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 658
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->copyOnWrite()V

    .line 659
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->access$800(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;I)V

    return-object p0
.end method
