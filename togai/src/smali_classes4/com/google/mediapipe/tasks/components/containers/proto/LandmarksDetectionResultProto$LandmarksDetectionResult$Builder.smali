.class public final Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LandmarksDetectionResultProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResultOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 345
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->access$000()Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$1;)V
    .locals 0

    .line 338
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 338
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 338
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 338
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClassifications()Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;
    .locals 1

    .line 438
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 439
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->access$600(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;)V

    return-object p0
.end method

.method public clearLandmarks()Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 392
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->access$300(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;)V

    return-object p0
.end method

.method public clearRect()Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;
    .locals 1

    .line 532
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 533
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->access$1200(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;)V

    return-object p0
.end method

.method public clearWorldLandmarks()Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;
    .locals 1

    .line 485
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 486
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->access$900(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 338
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 338
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

    .line 338
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClassifications()Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->getClassifications()Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 338
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getLandmarks()Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->getLandmarks()Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    move-result-object v0

    return-object v0
.end method

.method public getRect()Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->getRect()Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    move-result-object v0

    return-object v0
.end method

.method public getWorldLandmarks()Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->getWorldLandmarks()Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object v0

    return-object v0
.end method

.method public hasClassifications()Z
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->hasClassifications()Z

    move-result v0

    return v0
.end method

.method public hasLandmarks()Z
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->hasLandmarks()Z

    move-result v0

    return v0
.end method

.method public hasRect()Z
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->hasRect()Z

    move-result v0

    return v0
.end method

.method public hasWorldLandmarks()Z
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->hasWorldLandmarks()Z

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

    .line 338
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeClassifications(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 431
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 432
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->access$500(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

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

    .line 338
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

    .line 338
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

    .line 338
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

    .line 338
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

    .line 338
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

    .line 338
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

    .line 338
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

    .line 338
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

    .line 338
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

    .line 338
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

    .line 338
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

    .line 338
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

    .line 338
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

    .line 338
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeLandmarks(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 384
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 385
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->access$200(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V

    return-object p0
.end method

.method public mergeRect(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 526
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->access$1100(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V

    return-object p0
.end method

.method public mergeWorldLandmarks(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 478
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 479
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->access$800(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-object p0
.end method

.method public setClassifications(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 423
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 424
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->access$400(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

    return-object p0
.end method

.method public setClassifications(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 415
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->access$400(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

    return-object p0
.end method

.method public setLandmarks(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 376
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 377
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->access$100(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V

    return-object p0
.end method

.method public setLandmarks(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 367
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 368
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->access$100(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V

    return-object p0
.end method

.method public setRect(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 517
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 518
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->access$1000(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V

    return-object p0
.end method

.method public setRect(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;
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
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 509
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->access$1000(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V

    return-object p0
.end method

.method public setWorldLandmarks(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 470
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 471
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->access$700(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-object p0
.end method

.method public setWorldLandmarks(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 461
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 462
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->access$700(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-object p0
.end method
