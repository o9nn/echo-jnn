.class public final Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FaceStylizerGraphOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;",
        "Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 365
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->access$000()Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$1;)V
    .locals 0

    .line 358
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 358
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 358
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 358
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBaseOptions()Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;
    .locals 1

    .line 441
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->copyOnWrite()V

    .line 442
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->access$300(Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;)V

    return-object p0
.end method

.method public clearFaceAlignmentSize()Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->copyOnWrite()V

    .line 565
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->access$800(Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;)V

    return-object p0
.end method

.method public clearFaceLandmarkerGraphOptions()Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;
    .locals 1

    .line 512
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->copyOnWrite()V

    .line 513
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->access$600(Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 358
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 358
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

    .line 358
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 358
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getFaceAlignmentSize()I
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->getFaceAlignmentSize()I

    move-result v0

    return v0
.end method

.method public getFaceLandmarkerGraphOptions()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->getFaceLandmarkerGraphOptions()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    move-result-object v0

    return-object v0
.end method

.method public hasBaseOptions()Z
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->hasBaseOptions()Z

    move-result v0

    return v0
.end method

.method public hasFaceAlignmentSize()Z
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->hasFaceAlignmentSize()Z

    move-result v0

    return v0
.end method

.method public hasFaceLandmarkerGraphOptions()Z
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->hasFaceLandmarkerGraphOptions()Z

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

    .line 358
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 429
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->copyOnWrite()V

    .line 430
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->access$200(Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public mergeFaceLandmarkerGraphOptions(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;)Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 501
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->copyOnWrite()V

    .line 502
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->access$500(Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;)V

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

    .line 358
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

    .line 358
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

    .line 358
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

    .line 358
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

    .line 358
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

    .line 358
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

    .line 358
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

    .line 358
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

    .line 358
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

    .line 358
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

    .line 358
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

    .line 358
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

    .line 358
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

    .line 358
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;)Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 416
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->copyOnWrite()V

    .line 417
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->access$100(Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 402
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->copyOnWrite()V

    .line 403
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->access$100(Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setFaceAlignmentSize(I)Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 551
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->copyOnWrite()V

    .line 552
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->access$700(Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;I)V

    return-object p0
.end method

.method public setFaceLandmarkerGraphOptions(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;)Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 489
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->copyOnWrite()V

    .line 490
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->access$400(Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;)V

    return-object p0
.end method

.method public setFaceLandmarkerGraphOptions(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;)Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 476
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->copyOnWrite()V

    .line 477
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->access$400(Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;)V

    return-object p0
.end method
