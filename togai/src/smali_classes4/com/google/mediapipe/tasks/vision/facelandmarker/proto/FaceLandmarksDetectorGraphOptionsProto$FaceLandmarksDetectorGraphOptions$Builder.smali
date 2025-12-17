.class public final Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FaceLandmarksDetectorGraphOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;",
        "Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 471
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->access$000()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$1;)V
    .locals 0

    .line 464
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 464
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 464
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 464
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBaseOptions()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;
    .locals 1

    .line 547
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->copyOnWrite()V

    .line 548
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->access$300(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)V

    return-object p0
.end method

.method public clearFaceBlendshapesGraphOptions()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;
    .locals 1

    .line 748
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->copyOnWrite()V

    .line 749
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->access$1000(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)V

    return-object p0
.end method

.method public clearMinDetectionConfidence()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;
    .locals 1

    .line 603
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->copyOnWrite()V

    .line 604
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->access$500(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)V

    return-object p0
.end method

.method public clearSmoothLandmarks()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;
    .locals 1

    .line 671
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->copyOnWrite()V

    .line 672
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->access$700(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 464
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 464
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

    .line 464
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 464
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getFaceBlendshapesGraphOptions()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->getFaceBlendshapesGraphOptions()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    move-result-object v0

    return-object v0
.end method

.method public getMinDetectionConfidence()F
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->getMinDetectionConfidence()F

    move-result v0

    return v0
.end method

.method public getSmoothLandmarks()Z
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->getSmoothLandmarks()Z

    move-result v0

    return v0
.end method

.method public hasBaseOptions()Z
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->hasBaseOptions()Z

    move-result v0

    return v0
.end method

.method public hasFaceBlendshapesGraphOptions()Z
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->hasFaceBlendshapesGraphOptions()Z

    move-result v0

    return v0
.end method

.method public hasMinDetectionConfidence()Z
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->hasMinDetectionConfidence()Z

    move-result v0

    return v0
.end method

.method public hasSmoothLandmarks()Z
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->hasSmoothLandmarks()Z

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

    .line 464
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 535
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->copyOnWrite()V

    .line 536
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->access$200(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public mergeFaceBlendshapesGraphOptions(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 736
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->copyOnWrite()V

    .line 737
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->access$900(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;)V

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

    .line 464
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

    .line 464
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

    .line 464
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

    .line 464
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

    .line 464
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

    .line 464
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

    .line 464
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

    .line 464
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

    .line 464
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

    .line 464
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

    .line 464
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

    .line 464
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

    .line 464
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

    .line 464
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 522
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->copyOnWrite()V

    .line 523
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->access$100(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 508
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->copyOnWrite()V

    .line 509
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->access$100(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setFaceBlendshapesGraphOptions(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions$Builder;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 723
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->copyOnWrite()V

    .line 724
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->access$800(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;)V

    return-object p0
.end method

.method public setFaceBlendshapesGraphOptions(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 709
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->copyOnWrite()V

    .line 710
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->access$800(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;)V

    return-object p0
.end method

.method public setMinDetectionConfidence(F)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 589
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->copyOnWrite()V

    .line 590
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->access$400(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;F)V

    return-object p0
.end method

.method public setSmoothLandmarks(Z)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 654
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->copyOnWrite()V

    .line 655
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->access$600(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;Z)V

    return-object p0
.end method
