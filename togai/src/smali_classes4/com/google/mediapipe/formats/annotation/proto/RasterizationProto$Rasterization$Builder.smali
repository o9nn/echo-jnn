.class public final Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RasterizationProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$RasterizationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;",
        "Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$RasterizationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 770
    invoke-static {}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->access$800()Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$1;)V
    .locals 0

    .line 763
    invoke-direct {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllInterval(Ljava/lang/Iterable;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;
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
            "Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;",
            ">;)",
            "Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;"
        }
    .end annotation

    .line 925
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;->copyOnWrite()V

    .line 926
    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->access$1200(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addInterval(ILcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;
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

    .line 908
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;->copyOnWrite()V

    .line 909
    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    .line 910
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    .line 909
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->access$1100(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;ILcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)V

    return-object p0
.end method

.method public addInterval(ILcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;
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

    .line 876
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;->copyOnWrite()V

    .line 877
    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->access$1100(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;ILcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)V

    return-object p0
.end method

.method public addInterval(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 892
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;->copyOnWrite()V

    .line 893
    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->access$1000(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)V

    return-object p0
.end method

.method public addInterval(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 860
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;->copyOnWrite()V

    .line 861
    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->access$1000(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 763
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 763
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 763
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearInterval()Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;
    .locals 1

    .line 940
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;->copyOnWrite()V

    .line 941
    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    invoke-static {v0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->access$1300(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 763
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 763
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

    .line 763
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 763
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getInterval(I)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 814
    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->getInterval(I)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    move-result-object p1

    return-object p1
.end method

.method public getIntervalCount()I
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->getIntervalCount()I

    move-result v0

    return v0
.end method

.method public getIntervalList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;",
            ">;"
        }
    .end annotation

    .line 786
    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    .line 787
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->getIntervalList()Ljava/util/List;

    move-result-object v0

    .line 786
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

    .line 763
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

    .line 763
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

    .line 763
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

    .line 763
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

    .line 763
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

    .line 763
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

    .line 763
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

    .line 763
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

    .line 763
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

    .line 763
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

    .line 763
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

    .line 763
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

    .line 763
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

    .line 763
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

    .line 763
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeInterval(I)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 955
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;->copyOnWrite()V

    .line 956
    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->access$1400(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;I)V

    return-object p0
.end method

.method public setInterval(ILcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;
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

    .line 844
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;->copyOnWrite()V

    .line 845
    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    .line 846
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    .line 845
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->access$900(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;ILcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)V

    return-object p0
.end method

.method public setInterval(ILcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;
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

    .line 828
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;->copyOnWrite()V

    .line 829
    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->access$900(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;ILcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)V

    return-object p0
.end method
