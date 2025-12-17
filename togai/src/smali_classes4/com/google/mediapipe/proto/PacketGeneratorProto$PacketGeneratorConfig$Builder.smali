.class public final Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PacketGeneratorProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;",
        "Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfigOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1366
    invoke-static {}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$400()Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/proto/PacketGeneratorProto$1;)V
    .locals 0

    .line 1359
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllExternalInput(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
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
            "Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;"
        }
    .end annotation

    .line 1683
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 1684
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$1500(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllExternalOutput(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
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
            "Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;"
        }
    .end annotation

    .line 1957
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 1958
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$2500(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllInputSidePacket(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
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
            "Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;"
        }
    .end annotation

    .line 1553
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 1554
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$1000(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOutputSidePacket(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
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
            "Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;"
        }
    .end annotation

    .line 1825
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 1826
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$2000(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addExternalInput(Ljava/lang/String;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1668
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 1669
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$1400(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public addExternalInputBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1711
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 1712
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$1700(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addExternalOutput(Ljava/lang/String;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1942
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 1943
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$2400(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public addExternalOutputBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1985
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 1986
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$2700(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addInputSidePacket(Ljava/lang/String;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1537
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 1538
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$900(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public addInputSidePacketBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1583
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 1584
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$1200(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addOutputSidePacket(Ljava/lang/String;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1808
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 1809
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$1900(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public addOutputSidePacketBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1857
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 1858
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$2200(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1359
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1359
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1359
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearExternalInput()Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
    .locals 1

    .line 1696
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 1697
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$1600(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;)V

    return-object p0
.end method

.method public clearExternalOutput()Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
    .locals 1

    .line 1970
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 1971
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$2600(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;)V

    return-object p0
.end method

.method public clearInputSidePacket()Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
    .locals 1

    .line 1567
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 1568
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$1100(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;)V

    return-object p0
.end method

.method public clearOptions()Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
    .locals 1

    .line 2056
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 2057
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$3000(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;)V

    return-object p0
.end method

.method public clearOutputSidePacket()Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
    .locals 1

    .line 1840
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 1841
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$2100(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;)V

    return-object p0
.end method

.method public clearPacketGenerator()Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
    .locals 1

    .line 1431
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 1432
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$600(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1359
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1359
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

    .line 1359
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1359
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getExternalInput(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1625
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->getExternalInput(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExternalInputBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1639
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->getExternalInputBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getExternalInputCount()I
    .locals 1

    .line 1612
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->getExternalInputCount()I

    move-result v0

    return v0
.end method

.method public getExternalInputList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1599
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    .line 1600
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->getExternalInputList()Ljava/util/List;

    move-result-object v0

    .line 1599
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExternalOutput(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1899
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->getExternalOutput(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExternalOutputBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1913
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->getExternalOutputBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getExternalOutputCount()I
    .locals 1

    .line 1886
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->getExternalOutputCount()I

    move-result v0

    return v0
.end method

.method public getExternalOutputList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1873
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    .line 1874
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->getExternalOutputList()Ljava/util/List;

    move-result-object v0

    .line 1873
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputSidePacket(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1491
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->getInputSidePacket(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInputSidePacketBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1506
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->getInputSidePacketBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getInputSidePacketCount()I
    .locals 1

    .line 1477
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->getInputSidePacketCount()I

    move-result v0

    return v0
.end method

.method public getInputSidePacketList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1463
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    .line 1464
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->getInputSidePacketList()Ljava/util/List;

    move-result-object v0

    .line 1463
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;
    .locals 1

    .line 2010
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->getOptions()Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    move-result-object v0

    return-object v0
.end method

.method public getOutputSidePacket(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1759
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->getOutputSidePacket(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOutputSidePacketBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1775
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->getOutputSidePacketBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getOutputSidePacketCount()I
    .locals 1

    .line 1744
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->getOutputSidePacketCount()I

    move-result v0

    return v0
.end method

.method public getOutputSidePacketList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1729
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    .line 1730
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->getOutputSidePacketList()Ljava/util/List;

    move-result-object v0

    .line 1729
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPacketGenerator()Ljava/lang/String;
    .locals 1

    .line 1392
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->getPacketGenerator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPacketGeneratorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1405
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->getPacketGeneratorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasOptions()Z
    .locals 1

    .line 1999
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->hasOptions()Z

    move-result v0

    return v0
.end method

.method public hasPacketGenerator()Z
    .locals 1

    .line 1380
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->hasPacketGenerator()Z

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

    .line 1359
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

    .line 1359
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

    .line 1359
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

    .line 1359
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

    .line 1359
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

    .line 1359
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

    .line 1359
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

    .line 1359
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

    .line 1359
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

    .line 1359
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

    .line 1359
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

    .line 1359
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

    .line 1359
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

    .line 1359
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

    .line 1359
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeOptions(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2045
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 2046
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$2900(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;)V

    return-object p0
.end method

.method public setExternalInput(ILjava/lang/String;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
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

    .line 1653
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 1654
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$1300(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;ILjava/lang/String;)V

    return-object p0
.end method

.method public setExternalOutput(ILjava/lang/String;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
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

    .line 1927
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 1928
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$2300(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;ILjava/lang/String;)V

    return-object p0
.end method

.method public setInputSidePacket(ILjava/lang/String;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
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

    .line 1521
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 1522
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$800(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;ILjava/lang/String;)V

    return-object p0
.end method

.method public setOptions(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions$Builder;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2033
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 2034
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$2800(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;)V

    return-object p0
.end method

.method public setOptions(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2020
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 2021
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$2800(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;)V

    return-object p0
.end method

.method public setOutputSidePacket(ILjava/lang/String;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
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

    .line 1791
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 1792
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$1800(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;ILjava/lang/String;)V

    return-object p0
.end method

.method public setPacketGenerator(Ljava/lang/String;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
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
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 1419
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$500(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPacketGeneratorBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1446
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->copyOnWrite()V

    .line 1447
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->access$700(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
