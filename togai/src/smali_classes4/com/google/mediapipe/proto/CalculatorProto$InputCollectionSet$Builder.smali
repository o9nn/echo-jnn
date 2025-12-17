.class public final Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CalculatorProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;",
        "Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2607
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;->access$3200()Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/proto/CalculatorProto$1;)V
    .locals 0

    .line 2600
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllInputCollection(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;
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
            "Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;",
            ">;)",
            "Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;"
        }
    .end annotation

    .line 2692
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;->copyOnWrite()V

    .line 2693
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;->access$3600(Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addInputCollection(ILcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;
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

    .line 2682
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;->copyOnWrite()V

    .line 2683
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;

    .line 2684
    invoke-virtual {p2}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    .line 2683
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;->access$3500(Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;ILcom/google/mediapipe/proto/CalculatorProto$InputCollection;)V

    return-object p0
.end method

.method public addInputCollection(ILcom/google/mediapipe/proto/CalculatorProto$InputCollection;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;
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

    .line 2664
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;->copyOnWrite()V

    .line 2665
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;->access$3500(Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;ILcom/google/mediapipe/proto/CalculatorProto$InputCollection;)V

    return-object p0
.end method

.method public addInputCollection(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2673
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;->copyOnWrite()V

    .line 2674
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;->access$3400(Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;)V

    return-object p0
.end method

.method public addInputCollection(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2655
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;->copyOnWrite()V

    .line 2656
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;->access$3400(Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2600
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2600
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2600
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearInputCollection()Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;
    .locals 1

    .line 2700
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;->copyOnWrite()V

    .line 2701
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;->access$3700(Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2600
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2600
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

    .line 2600
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2600
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getInputCollection(I)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2630
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;->getInputCollection(I)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    move-result-object p1

    return-object p1
.end method

.method public getInputCollectionCount()I
    .locals 1

    .line 2624
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;->getInputCollectionCount()I

    move-result v0

    return v0
.end method

.method public getInputCollectionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;",
            ">;"
        }
    .end annotation

    .line 2616
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;

    .line 2617
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;->getInputCollectionList()Ljava/util/List;

    move-result-object v0

    .line 2616
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

    .line 2600
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

    .line 2600
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

    .line 2600
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

    .line 2600
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

    .line 2600
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

    .line 2600
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

    .line 2600
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

    .line 2600
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

    .line 2600
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

    .line 2600
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

    .line 2600
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

    .line 2600
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

    .line 2600
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

    .line 2600
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

    .line 2600
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeInputCollection(I)Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2708
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;->copyOnWrite()V

    .line 2709
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;->access$3800(Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;I)V

    return-object p0
.end method

.method public setInputCollection(ILcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;
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

    .line 2646
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;->copyOnWrite()V

    .line 2647
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;

    .line 2648
    invoke-virtual {p2}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    .line 2647
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;->access$3300(Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;ILcom/google/mediapipe/proto/CalculatorProto$InputCollection;)V

    return-object p0
.end method

.method public setInputCollection(ILcom/google/mediapipe/proto/CalculatorProto$InputCollection;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;
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

    .line 2637
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;->copyOnWrite()V

    .line 2638
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;->access$3300(Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSet;ILcom/google/mediapipe/proto/CalculatorProto$InputCollection;)V

    return-object p0
.end method
