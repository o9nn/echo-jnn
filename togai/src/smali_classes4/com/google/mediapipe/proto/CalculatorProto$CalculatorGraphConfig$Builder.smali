.class public final Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CalculatorProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;",
        "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfigOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 13702
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$16600()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/proto/CalculatorProto$1;)V
    .locals 0

    .line 13695
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllExecutor(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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
            "Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;",
            ">;)",
            "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;"
        }
    .end annotation

    .line 15706
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15707
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$22900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllGraphOptions(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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
            "Lcom/google/protobuf/Any;",
            ">;)",
            "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;"
        }
    .end annotation

    .line 16179
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 16180
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$24700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllInputSidePacket(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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
            "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;"
        }
    .end annotation

    .line 14976
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14977
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$20500(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllInputStream(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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
            "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;"
        }
    .end annotation

    .line 14714
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14715
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$19500(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllNode(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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
            "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;",
            ">;)",
            "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;"
        }
    .end annotation

    .line 13827
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 13828
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$17000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOutputSidePacket(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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
            "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;"
        }
    .end annotation

    .line 15104
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15105
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$21000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOutputStream(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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
            "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;"
        }
    .end annotation

    .line 14848
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14849
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$20000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllPacketFactory(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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
            "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;",
            ">;)",
            "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;"
        }
    .end annotation

    .line 14007
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14008
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$17600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllPacketGenerator(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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
            "Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;",
            ">;)",
            "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14263
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14264
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$18200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllStatusHandler(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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
            "Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;",
            ">;)",
            "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;"
        }
    .end annotation

    .line 14555
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14556
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$19000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addExecutor(ILcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .line 15687
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15688
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    .line 15689
    invoke-virtual {p2}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    .line 15688
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$22800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;)V

    return-object p0
.end method

.method public addExecutor(ILcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .line 15651
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15652
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$22800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;)V

    return-object p0
.end method

.method public addExecutor(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 15669
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15670
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$22700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;)V

    return-object p0
.end method

.method public addExecutor(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15633
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15634
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$22700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;)V

    return-object p0
.end method

.method public addGraphOptions(ILcom/google/protobuf/Any$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .line 16165
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 16166
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    .line 16167
    invoke-virtual {p2}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Any;

    .line 16166
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$24600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public addGraphOptions(ILcom/google/protobuf/Any;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .line 16139
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 16140
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$24600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public addGraphOptions(Lcom/google/protobuf/Any$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 16152
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 16153
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {p1}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Any;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$24500(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public addGraphOptions(Lcom/google/protobuf/Any;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16126
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 16127
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$24500(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public addInputSidePacket(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14961
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14962
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$20400(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public addInputSidePacketBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15004
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15005
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$20700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addInputStream(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14696
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14697
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$19400(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public addInputStreamBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14748
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14749
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$19700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addNode(ILcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .line 13813
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 13814
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    .line 13815
    invoke-virtual {p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 13814
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$16900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V

    return-object p0
.end method

.method public addNode(ILcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .line 13787
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 13788
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$16900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V

    return-object p0
.end method

.method public addNode(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 13800
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 13801
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$16800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V

    return-object p0
.end method

.method public addNode(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13774
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 13775
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$16800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V

    return-object p0
.end method

.method public addOutputSidePacket(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15089
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15090
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$20900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public addOutputSidePacketBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15132
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15133
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$21200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addOutputStream(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14833
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14834
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$19900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public addOutputStreamBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14876
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14877
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$20200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addPacketFactory(ILcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .line 13990
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 13991
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    .line 13992
    invoke-virtual {p2}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    .line 13991
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$17500(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V

    return-object p0
.end method

.method public addPacketFactory(ILcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .line 13958
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 13959
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$17500(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V

    return-object p0
.end method

.method public addPacketFactory(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 13974
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 13975
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$17400(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V

    return-object p0
.end method

.method public addPacketFactory(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13942
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 13943
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$17400(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V

    return-object p0
.end method

.method public addPacketGenerator(ILcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14239
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14240
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    .line 14241
    invoke-virtual {p2}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    .line 14240
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$18100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;)V

    return-object p0
.end method

.method public addPacketGenerator(ILcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14193
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14194
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$18100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;)V

    return-object p0
.end method

.method public addPacketGenerator(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14216
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14217
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$18000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;)V

    return-object p0
.end method

.method public addPacketGenerator(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14170
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14171
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$18000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;)V

    return-object p0
.end method

.method public addStatusHandler(ILcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .line 14534
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14535
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    .line 14536
    invoke-virtual {p2}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    .line 14535
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$18900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;)V

    return-object p0
.end method

.method public addStatusHandler(ILcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .line 14494
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14495
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$18900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;)V

    return-object p0
.end method

.method public addStatusHandler(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 14514
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14515
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$18800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;)V

    return-object p0
.end method

.method public addStatusHandler(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14474
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14475
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$18800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 13695
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 13695
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 13695
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearExecutor()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1

    .line 15723
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15724
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$23000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    return-object p0
.end method

.method public clearGraphOptions()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1

    .line 16191
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 16192
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$24800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    return-object p0
.end method

.method public clearInputSidePacket()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1

    .line 14989
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14990
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$20600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    return-object p0
.end method

.method public clearInputStream()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1

    .line 14730
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14731
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$19600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    return-object p0
.end method

.method public clearInputStreamHandler()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1

    .line 15447
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15448
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$22200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    return-object p0
.end method

.method public clearMaxQueueSize()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1

    .line 15205
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15206
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$21400(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    return-object p0
.end method

.method public clearNode()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1

    .line 13839
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 13840
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$17100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    return-object p0
.end method

.method public clearNumThreads()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1

    .line 14359
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14360
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$18600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    return-object p0
.end method

.method public clearOptions()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1

    .line 16053
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 16054
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$24300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    return-object p0
.end method

.method public clearOutputSidePacket()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1

    .line 15117
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15118
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$21100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    return-object p0
.end method

.method public clearOutputStream()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1

    .line 14861
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14862
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$20100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    return-object p0
.end method

.method public clearOutputStreamHandler()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1

    .line 15530
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15531
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$22500(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    return-object p0
.end method

.method public clearPackage()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1

    .line 15891
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15892
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$23600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    return-object p0
.end method

.method public clearPacketFactory()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1

    .line 14022
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14023
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$17700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    return-object p0
.end method

.method public clearPacketGenerator()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14285
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14286
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$18300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    return-object p0
.end method

.method public clearProfilerConfig()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1

    .line 15829
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15830
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$23400(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    return-object p0
.end method

.method public clearReportDeadlock()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1

    .line 15251
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15252
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$21600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    return-object p0
.end method

.method public clearRuntimeInfo()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1

    .line 15328
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15329
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$21900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    return-object p0
.end method

.method public clearStatusHandler()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1

    .line 14574
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14575
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$19100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    return-object p0
.end method

.method public clearType()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1

    .line 15966
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15967
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$23900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 13695
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 13695
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

    .line 13695
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 13695
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getExecutor(I)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 15581
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getExecutor(I)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    move-result-object p1

    return-object p1
.end method

.method public getExecutorCount()I
    .locals 1

    .line 15566
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getExecutorCount()I

    move-result v0

    return v0
.end method

.method public getExecutorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;",
            ">;"
        }
    .end annotation

    .line 15549
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    .line 15550
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getExecutorList()Ljava/util/List;

    move-result-object v0

    .line 15549
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGraphOptions(I)Lcom/google/protobuf/Any;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 16089
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getGraphOptions(I)Lcom/google/protobuf/Any;

    move-result-object p1

    return-object p1
.end method

.method public getGraphOptionsCount()I
    .locals 1

    .line 16079
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getGraphOptionsCount()I

    move-result v0

    return v0
.end method

.method public getGraphOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 16067
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    .line 16068
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getGraphOptionsList()Ljava/util/List;

    move-result-object v0

    .line 16067
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

    .line 14918
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getInputSidePacket(I)Ljava/lang/String;

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

    .line 14932
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getInputSidePacketBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getInputSidePacketCount()I
    .locals 1

    .line 14905
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getInputSidePacketCount()I

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

    .line 14892
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    .line 14893
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getInputSidePacketList()Ljava/util/List;

    move-result-object v0

    .line 14892
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 14644
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getInputStream(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInputStreamBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 14661
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getInputStreamBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getInputStreamCount()I
    .locals 1

    .line 14628
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getInputStreamCount()I

    move-result v0

    return v0
.end method

.method public getInputStreamHandler()Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;
    .locals 1

    .line 15369
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getInputStreamHandler()Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    move-result-object v0

    return-object v0
.end method

.method public getInputStreamList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14612
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    .line 14613
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getInputStreamList()Ljava/util/List;

    move-result-object v0

    .line 14612
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaxQueueSize()I
    .locals 1

    .line 15158
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getMaxQueueSize()I

    move-result v0

    return v0
.end method

.method public getNode(I)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 13737
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getNode(I)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    move-result-object p1

    return-object p1
.end method

.method public getNodeCount()I
    .locals 1

    .line 13727
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getNodeCount()I

    move-result v0

    return v0
.end method

.method public getNodeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;",
            ">;"
        }
    .end annotation

    .line 13715
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    .line 13716
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getNodeList()Ljava/util/List;

    move-result-object v0

    .line 13715
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNumThreads()I
    .locals 1

    .line 14326
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getNumThreads()I

    move-result v0

    return v0
.end method

.method public getOptions()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
    .locals 1

    .line 16007
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getOptions()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

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

    .line 15046
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getOutputSidePacket(I)Ljava/lang/String;

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

    .line 15060
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getOutputSidePacketBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getOutputSidePacketCount()I
    .locals 1

    .line 15033
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getOutputSidePacketCount()I

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

    .line 15020
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    .line 15021
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getOutputSidePacketList()Ljava/util/List;

    move-result-object v0

    .line 15020
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 14790
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getOutputStream(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOutputStreamBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 14804
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getOutputStreamBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getOutputStreamCount()I
    .locals 1

    .line 14777
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getOutputStreamCount()I

    move-result v0

    return v0
.end method

.method public getOutputStreamHandler()Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;
    .locals 1

    .line 15476
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getOutputStreamHandler()Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStreamList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14764
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    .line 14765
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getOutputStreamList()Ljava/util/List;

    move-result-object v0

    .line 14764
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .line 15846
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 15861
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPacketFactory(I)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 13896
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getPacketFactory(I)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    move-result-object p1

    return-object p1
.end method

.method public getPacketFactoryCount()I
    .locals 1

    .line 13883
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getPacketFactoryCount()I

    move-result v0

    return v0
.end method

.method public getPacketFactoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;",
            ">;"
        }
    .end annotation

    .line 13868
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    .line 13869
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getPacketFactoryList()Ljava/util/List;

    move-result-object v0

    .line 13868
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPacketGenerator(I)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14103
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getPacketGenerator(I)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    move-result-object p1

    return-object p1
.end method

.method public getPacketGeneratorCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14083
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getPacketGeneratorCount()I

    move-result v0

    return v0
.end method

.method public getPacketGeneratorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14061
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    .line 14062
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getPacketGeneratorList()Ljava/util/List;

    move-result-object v0

    .line 14061
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProfilerConfig()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;
    .locals 1

    .line 15771
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getProfilerConfig()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    move-result-object v0

    return-object v0
.end method

.method public getReportDeadlock()Z
    .locals 1

    .line 15222
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getReportDeadlock()Z

    move-result v0

    return v0
.end method

.method public getRuntimeInfo()Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;
    .locals 1

    .line 15278
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getRuntimeInfo()Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    move-result-object v0

    return-object v0
.end method

.method public getStatusHandler(I)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 14416
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getStatusHandler(I)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    move-result-object p1

    return-object p1
.end method

.method public getStatusHandlerCount()I
    .locals 1

    .line 14399
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getStatusHandlerCount()I

    move-result v0

    return v0
.end method

.method public getStatusHandlerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;",
            ">;"
        }
    .end annotation

    .line 14380
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    .line 14381
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getStatusHandlerList()Ljava/util/List;

    move-result-object v0

    .line 14380
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 15924
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 15938
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasInputStreamHandler()Z
    .locals 1

    .line 15350
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->hasInputStreamHandler()Z

    move-result v0

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .line 15996
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->hasOptions()Z

    move-result v0

    return v0
.end method

.method public hasOutputStreamHandler()Z
    .locals 1

    .line 15463
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->hasOutputStreamHandler()Z

    move-result v0

    return v0
.end method

.method public hasProfilerConfig()Z
    .locals 1

    .line 15757
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->hasProfilerConfig()Z

    move-result v0

    return v0
.end method

.method public hasRuntimeInfo()Z
    .locals 1

    .line 15266
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->hasRuntimeInfo()Z

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

    .line 13695
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

    .line 13695
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

    .line 13695
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

    .line 13695
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

    .line 13695
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

    .line 13695
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

    .line 13695
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

    .line 13695
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

    .line 13695
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

    .line 13695
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

    .line 13695
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

    .line 13695
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

    .line 13695
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

    .line 13695
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

    .line 13695
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeInputStreamHandler(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15428
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15429
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$22100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;)V

    return-object p0
.end method

.method public mergeOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16042
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 16043
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$24200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V

    return-object p0
.end method

.method public mergeOutputStreamHandler(Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15517
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15518
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$22400(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;)V

    return-object p0
.end method

.method public mergeProfilerConfig(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15815
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15816
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$23300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-object p0
.end method

.method public mergeRuntimeInfo(Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15316
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15317
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$21800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;)V

    return-object p0
.end method

.method public removeExecutor(I)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 15740
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15741
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$23100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;I)V

    return-object p0
.end method

.method public removeGraphOptions(I)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 16203
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 16204
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$24900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;I)V

    return-object p0
.end method

.method public removeNode(I)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 13851
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 13852
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$17200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;I)V

    return-object p0
.end method

.method public removePacketFactory(I)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 14037
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14038
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$17800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;I)V

    return-object p0
.end method

.method public removePacketGenerator(I)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14307
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14308
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$18400(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;I)V

    return-object p0
.end method

.method public removeStatusHandler(I)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 14593
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14594
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$19200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;I)V

    return-object p0
.end method

.method public setExecutor(ILcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .line 15615
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15616
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    .line 15617
    invoke-virtual {p2}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    .line 15616
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$22600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;)V

    return-object p0
.end method

.method public setExecutor(ILcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .line 15597
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15598
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$22600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;)V

    return-object p0
.end method

.method public setGraphOptions(ILcom/google/protobuf/Any$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .line 16113
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 16114
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    .line 16115
    invoke-virtual {p2}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Any;

    .line 16114
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$24400(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public setGraphOptions(ILcom/google/protobuf/Any;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .line 16100
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 16101
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$24400(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public setInputSidePacket(ILjava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .line 14946
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14947
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$20300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILjava/lang/String;)V

    return-object p0
.end method

.method public setInputStream(ILjava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .line 14678
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14679
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$19300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILjava/lang/String;)V

    return-object p0
.end method

.method public setInputStreamHandler(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 15408
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15409
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$22000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;)V

    return-object p0
.end method

.method public setInputStreamHandler(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15387
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15388
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$22000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;)V

    return-object p0
.end method

.method public setMaxQueueSize(I)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15181
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15182
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$21300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;I)V

    return-object p0
.end method

.method public setNode(ILcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .line 13761
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 13762
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    .line 13763
    invoke-virtual {p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 13762
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$16700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V

    return-object p0
.end method

.method public setNode(ILcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .line 13748
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 13749
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$16700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V

    return-object p0
.end method

.method public setNumThreads(I)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14342
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14343
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$18500(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;I)V

    return-object p0
.end method

.method public setOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 16030
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 16031
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$24100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V

    return-object p0
.end method

.method public setOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16017
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 16018
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$24100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V

    return-object p0
.end method

.method public setOutputSidePacket(ILjava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .line 15074
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15075
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$20800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILjava/lang/String;)V

    return-object p0
.end method

.method public setOutputStream(ILjava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .line 14818
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14819
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$19800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILjava/lang/String;)V

    return-object p0
.end method

.method public setOutputStreamHandler(Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 15503
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15504
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$22300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;)V

    return-object p0
.end method

.method public setOutputStreamHandler(Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15488
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15489
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$22300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;)V

    return-object p0
.end method

.method public setPackage(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15876
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15877
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$23500(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPackageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15908
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15909
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$23700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPacketFactory(ILcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .line 13926
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 13927
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    .line 13928
    invoke-virtual {p2}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    .line 13927
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$17300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V

    return-object p0
.end method

.method public setPacketFactory(ILcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .line 13910
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 13911
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$17300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V

    return-object p0
.end method

.method public setPacketGenerator(ILcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14147
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14148
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    .line 14149
    invoke-virtual {p2}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    .line 14148
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$17900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;)V

    return-object p0
.end method

.method public setPacketGenerator(ILcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14124
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14125
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$17900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;)V

    return-object p0
.end method

.method public setProfilerConfig(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 15800
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15801
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$23200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-object p0
.end method

.method public setProfilerConfig(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15784
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15785
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$23200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-object p0
.end method

.method public setReportDeadlock(Z)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15236
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15237
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$21500(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Z)V

    return-object p0
.end method

.method public setRuntimeInfo(Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 15303
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15304
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$21700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;)V

    return-object p0
.end method

.method public setRuntimeInfo(Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15289
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15290
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$21700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;)V

    return-object p0
.end method

.method public setStatusHandler(ILcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .line 14454
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14455
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    .line 14456
    invoke-virtual {p2}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    .line 14455
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$18700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;)V

    return-object p0
.end method

.method public setStatusHandler(ILcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
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

    .line 14434
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 14435
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$18700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;ILcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;)V

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15952
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15953
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$23800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15982
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->copyOnWrite()V

    .line 15983
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->access$24000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
