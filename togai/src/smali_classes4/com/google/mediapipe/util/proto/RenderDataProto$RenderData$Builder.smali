.class public final Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RenderDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/util/proto/RenderDataProto$RenderDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;",
        ">;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 454
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->access$000()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/util/proto/RenderDataProto$1;)V
    .locals 0

    .line 447
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllRenderAnnotations(Ljava/lang/Iterable;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;",
            ">;)",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;"
        }
    .end annotation

    .line 539
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->copyOnWrite()V

    .line 540
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->access$400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addRenderAnnotations(ILcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 529
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->copyOnWrite()V

    .line 530
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    .line 531
    invoke-virtual {p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    .line 530
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->access$300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;ILcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-object p0
.end method

.method public addRenderAnnotations(ILcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 511
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->copyOnWrite()V

    .line 512
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->access$300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;ILcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-object p0
.end method

.method public addRenderAnnotations(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 520
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->copyOnWrite()V

    .line 521
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->access$200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-object p0
.end method

.method public addRenderAnnotations(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 502
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->copyOnWrite()V

    .line 503
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->access$200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 447
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 447
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 447
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearRenderAnnotations()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;
    .locals 1

    .line 547
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->copyOnWrite()V

    .line 548
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->access$500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;)V

    return-object p0
.end method

.method public clearSceneClass()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;
    .locals 1

    .line 621
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->copyOnWrite()V

    .line 622
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->access$800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;)V

    return-object p0
.end method

.method public clearSceneViewport()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;
    .locals 1

    .line 725
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->copyOnWrite()V

    .line 726
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->access$1200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 447
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 447
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

    .line 447
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 447
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getRenderAnnotations(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->getRenderAnnotations(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public getRenderAnnotationsCount()I
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->getRenderAnnotationsCount()I

    move-result v0

    return v0
.end method

.method public getRenderAnnotationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;",
            ">;"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    .line 464
    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->getRenderAnnotationsList()Ljava/util/List;

    move-result-object v0

    .line 463
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSceneClass()Ljava/lang/String;
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->getSceneClass()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSceneClassBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->getSceneClassBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSceneViewport()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->getSceneViewport()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    move-result-object v0

    return-object v0
.end method

.method public hasSceneClass()Z
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->hasSceneClass()Z

    move-result v0

    return v0
.end method

.method public hasSceneViewport()Z
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->hasSceneViewport()Z

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

    .line 447
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
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

    .line 447
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

    .line 447
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

    .line 447
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

    .line 447
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

    .line 447
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

    .line 447
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

    .line 447
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

    .line 447
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

    .line 447
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

    .line 447
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

    .line 447
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

    .line 447
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

    .line 447
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

    .line 447
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeSceneViewport(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 711
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->copyOnWrite()V

    .line 712
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->access$1100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;)V

    return-object p0
.end method

.method public removeRenderAnnotations(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 555
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->copyOnWrite()V

    .line 556
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->access$600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;I)V

    return-object p0
.end method

.method public setRenderAnnotations(ILcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 493
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->copyOnWrite()V

    .line 494
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    .line 495
    invoke-virtual {p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    .line 494
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->access$100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;ILcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-object p0
.end method

.method public setRenderAnnotations(ILcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 484
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->copyOnWrite()V

    .line 485
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->access$100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;ILcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-object p0
.end method

.method public setSceneClass(Ljava/lang/String;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 608
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->copyOnWrite()V

    .line 609
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->access$700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSceneClassBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 636
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->copyOnWrite()V

    .line 637
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->access$900(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSceneViewport(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 696
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->copyOnWrite()V

    .line 697
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->access$1000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;)V

    return-object p0
.end method

.method public setSceneViewport(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 680
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->copyOnWrite()V

    .line 681
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->access$1000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;)V

    return-object p0
.end method
