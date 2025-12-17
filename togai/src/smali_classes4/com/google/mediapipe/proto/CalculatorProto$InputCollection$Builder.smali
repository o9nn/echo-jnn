.class public final Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CalculatorProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;",
        "Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1818
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->access$1100()Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/proto/CalculatorProto$1;)V
    .locals 0

    .line 1811
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllExternalInputName(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;
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
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;"
        }
    .end annotation

    .line 2123
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->copyOnWrite()V

    .line 2124
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->access$2200(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllSidePacketName(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;
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
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;"
        }
    .end annotation

    .line 1993
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->copyOnWrite()V

    .line 1994
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->access$1700(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addExternalInputName(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2108
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->copyOnWrite()V

    .line 2109
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->access$2100(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;Ljava/lang/String;)V

    return-object p0
.end method

.method public addExternalInputNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2151
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->copyOnWrite()V

    .line 2152
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->access$2400(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addSidePacketName(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1977
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->copyOnWrite()V

    .line 1978
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->access$1600(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;Ljava/lang/String;)V

    return-object p0
.end method

.method public addSidePacketNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2023
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->copyOnWrite()V

    .line 2024
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->access$1900(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1811
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1811
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1811
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearExternalInputName()Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;
    .locals 1

    .line 2136
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->copyOnWrite()V

    .line 2137
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->access$2300(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;)V

    return-object p0
.end method

.method public clearFileName()Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;
    .locals 1

    .line 2284
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->copyOnWrite()V

    .line 2285
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->access$2900(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;)V

    return-object p0
.end method

.method public clearInputType()Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;
    .locals 1

    .line 2222
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->copyOnWrite()V

    .line 2223
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->access$2700(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;)V

    return-object p0
.end method

.method public clearName()Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;
    .locals 1

    .line 1871
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->copyOnWrite()V

    .line 1872
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->access$1300(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;)V

    return-object p0
.end method

.method public clearSidePacketName()Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;
    .locals 1

    .line 2007
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->copyOnWrite()V

    .line 2008
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->access$1800(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1811
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1811
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

    .line 1811
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1811
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getExternalInputName(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2065
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->getExternalInputName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExternalInputNameBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2079
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->getExternalInputNameBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getExternalInputNameCount()I
    .locals 1

    .line 2052
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->getExternalInputNameCount()I

    move-result v0

    return v0
.end method

.method public getExternalInputNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2039
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    .line 2040
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->getExternalInputNameList()Ljava/util/List;

    move-result-object v0

    .line 2039
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 2239
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2254
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->getFileNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getInputType()Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;
    .locals 1

    .line 2195
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->getInputType()Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    move-result-object v0

    return-object v0
.end method

.method public getInputTypeValue()I
    .locals 1

    .line 2167
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->getInputTypeValue()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1832
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1845
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSidePacketName(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1931
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->getSidePacketName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSidePacketNameBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1946
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->getSidePacketNameBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getSidePacketNameCount()I
    .locals 1

    .line 1917
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->getSidePacketNameCount()I

    move-result v0

    return v0
.end method

.method public getSidePacketNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1903
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    .line 1904
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->getSidePacketNameList()Ljava/util/List;

    move-result-object v0

    .line 1903
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

    .line 1811
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

    .line 1811
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

    .line 1811
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

    .line 1811
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

    .line 1811
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

    .line 1811
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

    .line 1811
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

    .line 1811
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

    .line 1811
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

    .line 1811
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

    .line 1811
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

    .line 1811
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

    .line 1811
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

    .line 1811
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

    .line 1811
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setExternalInputName(ILjava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;
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

    .line 2093
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->copyOnWrite()V

    .line 2094
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->access$2000(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;ILjava/lang/String;)V

    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2269
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->copyOnWrite()V

    .line 2270
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->access$2800(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFileNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2301
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->copyOnWrite()V

    .line 2302
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->access$3000(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setInputType(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2208
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->copyOnWrite()V

    .line 2209
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->access$2600(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;)V

    return-object p0
.end method

.method public setInputTypeValue(I)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2180
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->copyOnWrite()V

    .line 2181
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->access$2500(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;I)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1858
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->copyOnWrite()V

    .line 1859
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->access$1200(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1886
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->copyOnWrite()V

    .line 1887
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->access$1400(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSidePacketName(ILjava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;
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

    .line 1961
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->copyOnWrite()V

    .line 1962
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->access$1500(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;ILjava/lang/String;)V

    return-object p0
.end method
