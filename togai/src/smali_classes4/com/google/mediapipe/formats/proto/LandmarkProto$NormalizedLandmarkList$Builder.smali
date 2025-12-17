.class public final Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LandmarkProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkListOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2411
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->access$4000()Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/proto/LandmarkProto$1;)V
    .locals 0

    .line 2404
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllLandmark(Ljava/lang/Iterable;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;
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
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;",
            ">;)",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;"
        }
    .end annotation

    .line 2496
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->copyOnWrite()V

    .line 2497
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->access$4400(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addLandmark(ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;
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

    .line 2486
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->copyOnWrite()V

    .line 2487
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 2488
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    .line 2487
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->access$4300(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V

    return-object p0
.end method

.method public addLandmark(ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;
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

    .line 2468
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->copyOnWrite()V

    .line 2469
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->access$4300(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V

    return-object p0
.end method

.method public addLandmark(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2477
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->copyOnWrite()V

    .line 2478
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->access$4200(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V

    return-object p0
.end method

.method public addLandmark(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2459
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->copyOnWrite()V

    .line 2460
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->access$4200(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2404
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2404
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2404
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearLandmark()Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;
    .locals 1

    .line 2504
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->copyOnWrite()V

    .line 2505
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->access$4500(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2404
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2404
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

    .line 2404
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2404
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getLandmark(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2434
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->getLandmark(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    move-result-object p1

    return-object p1
.end method

.method public getLandmarkCount()I
    .locals 1

    .line 2428
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->getLandmarkCount()I

    move-result v0

    return v0
.end method

.method public getLandmarkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;",
            ">;"
        }
    .end annotation

    .line 2420
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 2421
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->getLandmarkList()Ljava/util/List;

    move-result-object v0

    .line 2420
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
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

    .line 2404
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

    .line 2404
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

    .line 2404
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

    .line 2404
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

    .line 2404
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

    .line 2404
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

    .line 2404
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

    .line 2404
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

    .line 2404
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

    .line 2404
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

    .line 2404
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

    .line 2404
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

    .line 2404
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

    .line 2404
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

    .line 2404
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeLandmark(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2512
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->copyOnWrite()V

    .line 2513
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->access$4600(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;I)V

    return-object p0
.end method

.method public setLandmark(ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;
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

    .line 2450
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->copyOnWrite()V

    .line 2451
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 2452
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    .line 2451
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->access$4100(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V

    return-object p0
.end method

.method public setLandmark(ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;
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

    .line 2441
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->copyOnWrite()V

    .line 2442
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->access$4100(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V

    return-object p0
.end method
