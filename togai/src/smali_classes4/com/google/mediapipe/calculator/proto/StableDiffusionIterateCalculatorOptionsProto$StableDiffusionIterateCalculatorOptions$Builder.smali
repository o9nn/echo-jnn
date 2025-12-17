.class public final Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StableDiffusionIterateCalculatorOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;",
        "Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1377
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$000()Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$1;)V
    .locals 0

    .line 1370
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1370
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1370
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1370
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBaseSeed()Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1

    .line 1432
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 1433
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$200(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)V

    return-object p0
.end method

.method public clearClPriorityHint()Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1

    .line 2064
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 2065
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$2100(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)V

    return-object p0
.end method

.method public clearEmitEmptyPacket()Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1

    .line 2008
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 2009
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$1900(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)V

    return-object p0
.end method

.method public clearFileFolder()Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1

    .line 1586
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 1587
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$800(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)V

    return-object p0
.end method

.method public clearLoraFileFolder()Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1

    .line 1677
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 1678
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$1100(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)V

    return-object p0
.end method

.method public clearLoraRank()Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1

    .line 1872
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 1873
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$1500(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)V

    return-object p0
.end method

.method public clearLoraWeightsLayerMapping()Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1

    .line 1720
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 1721
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$1300(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public clearModelType()Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1

    .line 2116
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 2117
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$2300(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)V

    return-object p0
.end method

.method public clearOutputImageHeight()Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1

    .line 1520
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 1521
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$600(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)V

    return-object p0
.end method

.method public clearOutputImageWidth()Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1

    .line 1484
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 1485
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$400(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)V

    return-object p0
.end method

.method public clearPluginsStrength()Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1

    .line 2168
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 2169
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$2500(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)V

    return-object p0
.end method

.method public clearShowEveryNIteration()Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1

    .line 1944
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 1945
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$1700(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1370
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1370
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

    .line 1370
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public containsLoraWeightsLayerMapping(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1715
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1716
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->getLoraWeightsLayerMappingMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBaseSeed()I
    .locals 1

    .line 1405
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->getBaseSeed()I

    move-result v0

    return v0
.end method

.method public getClPriorityHint()Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$ClPriorityHint;
    .locals 1

    .line 2037
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->getClPriorityHint()Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$ClPriorityHint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1370
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getEmitEmptyPacket()Z
    .locals 1

    .line 1977
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->getEmitEmptyPacket()Z

    move-result v0

    return v0
.end method

.method public getFileFolder()Ljava/lang/String;
    .locals 1

    .line 1547
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->getFileFolder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileFolderBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1560
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->getFileFolderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLoraFileFolder()Ljava/lang/String;
    .locals 1

    .line 1632
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->getLoraFileFolder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoraFileFolderBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1647
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->getLoraFileFolderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLoraRank()I
    .locals 1

    .line 1847
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->getLoraRank()I

    move-result v0

    return v0
.end method

.method public getLoraWeightsLayerMapping()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1745
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->getLoraWeightsLayerMappingMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLoraWeightsLayerMappingCount()I
    .locals 1

    .line 1702
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->getLoraWeightsLayerMappingMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getLoraWeightsLayerMappingMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1756
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    .line 1757
    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->getLoraWeightsLayerMappingMap()Ljava/util/Map;

    move-result-object v0

    .line 1756
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLoraWeightsLayerMappingOrDefault(Ljava/lang/String;J)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 1771
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1772
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    .line 1773
    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->getLoraWeightsLayerMappingMap()Ljava/util/Map;

    move-result-object v0

    .line 1774
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public getLoraWeightsLayerMappingOrThrow(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1787
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1788
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    .line 1789
    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->getLoraWeightsLayerMappingMap()Ljava/util/Map;

    move-result-object v0

    .line 1790
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1793
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 1791
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getModelType()Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$ModelType;
    .locals 1

    .line 2091
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->getModelType()Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$ModelType;

    move-result-object v0

    return-object v0
.end method

.method public getOutputImageHeight()I
    .locals 1

    .line 1503
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->getOutputImageHeight()I

    move-result v0

    return v0
.end method

.method public getOutputImageWidth()I
    .locals 1

    .line 1459
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->getOutputImageWidth()I

    move-result v0

    return v0
.end method

.method public getPluginsStrength()F
    .locals 1

    .line 2143
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->getPluginsStrength()F

    move-result v0

    return v0
.end method

.method public getShowEveryNIteration()I
    .locals 1

    .line 1909
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->getShowEveryNIteration()I

    move-result v0

    return v0
.end method

.method public hasBaseSeed()Z
    .locals 1

    .line 1392
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->hasBaseSeed()Z

    move-result v0

    return v0
.end method

.method public hasClPriorityHint()Z
    .locals 1

    .line 2024
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->hasClPriorityHint()Z

    move-result v0

    return v0
.end method

.method public hasEmitEmptyPacket()Z
    .locals 1

    .line 1962
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->hasEmitEmptyPacket()Z

    move-result v0

    return v0
.end method

.method public hasFileFolder()Z
    .locals 1

    .line 1535
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->hasFileFolder()Z

    move-result v0

    return v0
.end method

.method public hasLoraFileFolder()Z
    .locals 1

    .line 1618
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->hasLoraFileFolder()Z

    move-result v0

    return v0
.end method

.method public hasLoraRank()Z
    .locals 1

    .line 1835
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->hasLoraRank()Z

    move-result v0

    return v0
.end method

.method public hasModelType()Z
    .locals 1

    .line 2079
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->hasModelType()Z

    move-result v0

    return v0
.end method

.method public hasOutputImageHeight()Z
    .locals 1

    .line 1495
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->hasOutputImageHeight()Z

    move-result v0

    return v0
.end method

.method public hasOutputImageWidth()Z
    .locals 1

    .line 1447
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->hasOutputImageWidth()Z

    move-result v0

    return v0
.end method

.method public hasPluginsStrength()Z
    .locals 1

    .line 2131
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->hasPluginsStrength()Z

    move-result v0

    return v0
.end method

.method public hasShowEveryNIteration()Z
    .locals 1

    .line 1892
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->hasShowEveryNIteration()Z

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

    .line 1370
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

    .line 1370
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

    .line 1370
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

    .line 1370
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

    .line 1370
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

    .line 1370
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

    .line 1370
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

    .line 1370
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

    .line 1370
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

    .line 1370
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

    .line 1370
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

    .line 1370
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

    .line 1370
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

    .line 1370
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

    .line 1370
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAllLoraWeightsLayerMapping(Ljava/util/Map;)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;"
        }
    .end annotation

    .line 1820
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 1821
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$1300(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putLoraWeightsLayerMapping(Ljava/lang/String;J)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 1805
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1807
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 1808
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$1300(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeLoraWeightsLayerMapping(Ljava/lang/String;)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1734
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1735
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 1736
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$1300(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setBaseSeed(I)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1418
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 1419
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$100(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;I)V

    return-object p0
.end method

.method public setClPriorityHint(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$ClPriorityHint;)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2050
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 2051
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$2000(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$ClPriorityHint;)V

    return-object p0
.end method

.method public setEmitEmptyPacket(Z)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1992
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 1993
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$1800(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;Z)V

    return-object p0
.end method

.method public setFileFolder(Ljava/lang/String;)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1573
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 1574
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$700(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFileFolderBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1601
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 1602
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$900(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setLoraFileFolder(Ljava/lang/String;)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1662
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 1663
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$1000(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLoraFileFolderBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1694
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 1695
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$1200(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setLoraRank(I)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1859
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 1860
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$1400(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;I)V

    return-object p0
.end method

.method public setModelType(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$ModelType;)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2103
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 2104
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$2200(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$ModelType;)V

    return-object p0
.end method

.method public setOutputImageHeight(I)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1511
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 1512
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$500(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;I)V

    return-object p0
.end method

.method public setOutputImageWidth(I)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1471
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 1472
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$300(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;I)V

    return-object p0
.end method

.method public setPluginsStrength(F)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2155
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 2156
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$2400(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;F)V

    return-object p0
.end method

.method public setShowEveryNIteration(I)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1926
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->copyOnWrite()V

    .line 1927
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->access$1600(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;I)V

    return-object p0
.end method
