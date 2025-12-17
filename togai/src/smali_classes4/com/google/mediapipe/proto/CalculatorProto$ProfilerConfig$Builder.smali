.class public final Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CalculatorProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;",
        "Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfigOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4649
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$4700()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/proto/CalculatorProto$1;)V
    .locals 0

    .line 4642
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllTraceEventTypesDisabled(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
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
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;"
        }
    .end annotation

    .line 5051
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5052
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$6400(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addTraceEventTypesDisabled(I)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5036
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5037
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$6300(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;I)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4642
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4642
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4642
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCalculatorFilter()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1

    .line 5542
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5543
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$8600(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-object p0
.end method

.method public clearEnableInputOutputLatency()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4789
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 4790
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$5300(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-object p0
.end method

.method public clearEnableProfiler()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1

    .line 4829
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 4830
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$5500(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-object p0
.end method

.method public clearEnableStreamLatency()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1

    .line 4875
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 4876
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$5700(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-object p0
.end method

.method public clearHistogramIntervalSizeUsec()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1

    .line 4694
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 4695
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$4900(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-object p0
.end method

.method public clearNumHistogramIntervals()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1

    .line 4737
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 4738
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$5100(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-object p0
.end method

.method public clearTraceEnabled()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1

    .line 5445
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5446
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$8200(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-object p0
.end method

.method public clearTraceEventTypesDisabled()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1

    .line 5064
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5065
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$6500(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-object p0
.end method

.method public clearTraceLogCapacity()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1

    .line 4967
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 4968
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$6100(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-object p0
.end method

.method public clearTraceLogCount()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1

    .line 5184
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5185
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$7000(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-object p0
.end method

.method public clearTraceLogDisabled()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1

    .line 5405
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5406
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$8000(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-object p0
.end method

.method public clearTraceLogDurationEvents()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5316
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5317
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$7600(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-object p0
.end method

.method public clearTraceLogInstantEvents()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1

    .line 5488
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5489
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$8400(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-object p0
.end method

.method public clearTraceLogIntervalCount()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1

    .line 5362
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5363
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$7800(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-object p0
.end method

.method public clearTraceLogIntervalUsec()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1

    .line 5227
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5228
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$7200(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-object p0
.end method

.method public clearTraceLogMarginUsec()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1

    .line 5273
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5274
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$7400(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-object p0
.end method

.method public clearTraceLogPath()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1

    .line 5122
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5123
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$6700(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-object p0
.end method

.method public clearUsePacketTimestampForAddedPacket()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1

    .line 4924
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 4925
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$5900(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 4642
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4642
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

    .line 4642
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCalculatorFilter()Ljava/lang/String;
    .locals 1

    .line 5503
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getCalculatorFilter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCalculatorFilterBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5516
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getCalculatorFilterBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4642
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getEnableInputOutputLatency()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4756
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getEnableInputOutputLatency()Z

    move-result v0

    return v0
.end method

.method public getEnableProfiler()Z
    .locals 1

    .line 4804
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getEnableProfiler()Z

    move-result v0

    return v0
.end method

.method public getEnableStreamLatency()Z
    .locals 1

    .line 4846
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getEnableStreamLatency()Z

    move-result v0

    return v0
.end method

.method public getHistogramIntervalSizeUsec()J
    .locals 2

    .line 4665
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getHistogramIntervalSizeUsec()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumHistogramIntervals()J
    .locals 2

    .line 4710
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getNumHistogramIntervals()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTraceEnabled()Z
    .locals 1

    .line 5420
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getTraceEnabled()Z

    move-result v0

    return v0
.end method

.method public getTraceEventTypesDisabled(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 5009
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getTraceEventTypesDisabled(I)I

    move-result p1

    return p1
.end method

.method public getTraceEventTypesDisabledCount()I
    .locals 1

    .line 4996
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getTraceEventTypesDisabledCount()I

    move-result v0

    return v0
.end method

.method public getTraceEventTypesDisabledList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4983
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    .line 4984
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getTraceEventTypesDisabledList()Ljava/util/List;

    move-result-object v0

    .line 4983
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTraceLogCapacity()J
    .locals 2

    .line 4940
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getTraceLogCapacity()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTraceLogCount()I
    .locals 1

    .line 5155
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getTraceLogCount()I

    move-result v0

    return v0
.end method

.method public getTraceLogDisabled()Z
    .locals 1

    .line 5378
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getTraceLogDisabled()Z

    move-result v0

    return v0
.end method

.method public getTraceLogDurationEvents()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5289
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getTraceLogDurationEvents()Z

    move-result v0

    return v0
.end method

.method public getTraceLogInstantEvents()Z
    .locals 1

    .line 5461
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getTraceLogInstantEvents()Z

    move-result v0

    return v0
.end method

.method public getTraceLogIntervalCount()I
    .locals 1

    .line 5333
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getTraceLogIntervalCount()I

    move-result v0

    return v0
.end method

.method public getTraceLogIntervalUsec()J
    .locals 2

    .line 5200
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getTraceLogIntervalUsec()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTraceLogMarginUsec()J
    .locals 2

    .line 5244
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getTraceLogMarginUsec()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTraceLogPath()Ljava/lang/String;
    .locals 1

    .line 5080
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getTraceLogPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTraceLogPathBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5094
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getTraceLogPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUsePacketTimestampForAddedPacket()Z
    .locals 1

    .line 4893
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getUsePacketTimestampForAddedPacket()Z

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

    .line 4642
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

    .line 4642
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

    .line 4642
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

    .line 4642
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

    .line 4642
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

    .line 4642
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

    .line 4642
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

    .line 4642
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

    .line 4642
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

    .line 4642
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

    .line 4642
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

    .line 4642
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

    .line 4642
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

    .line 4642
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

    .line 4642
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCalculatorFilter(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5529
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5530
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$8500(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCalculatorFilterBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5557
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5558
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$8700(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setEnableInputOutputLatency(Z)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
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

    .line 4772
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 4773
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$5200(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Z)V

    return-object p0
.end method

.method public setEnableProfiler(Z)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4816
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 4817
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$5400(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Z)V

    return-object p0
.end method

.method public setEnableStreamLatency(Z)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4860
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 4861
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$5600(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Z)V

    return-object p0
.end method

.method public setHistogramIntervalSizeUsec(J)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4679
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 4680
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$4800(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;J)V

    return-object p0
.end method

.method public setNumHistogramIntervals(J)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4723
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 4724
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$5000(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;J)V

    return-object p0
.end method

.method public setTraceEnabled(Z)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5432
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5433
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$8100(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Z)V

    return-object p0
.end method

.method public setTraceEventTypesDisabled(II)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
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

    .line 5022
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5023
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$6200(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;II)V

    return-object p0
.end method

.method public setTraceLogCapacity(J)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4953
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 4954
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$6000(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;J)V

    return-object p0
.end method

.method public setTraceLogCount(I)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5169
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5170
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$6900(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;I)V

    return-object p0
.end method

.method public setTraceLogDisabled(Z)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5391
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5392
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$7900(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Z)V

    return-object p0
.end method

.method public setTraceLogDurationEvents(Z)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
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

    .line 5302
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5303
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$7500(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Z)V

    return-object p0
.end method

.method public setTraceLogInstantEvents(Z)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5474
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5475
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$8300(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Z)V

    return-object p0
.end method

.method public setTraceLogIntervalCount(I)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5347
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5348
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$7700(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;I)V

    return-object p0
.end method

.method public setTraceLogIntervalUsec(J)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5213
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5214
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$7100(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;J)V

    return-object p0
.end method

.method public setTraceLogMarginUsec(J)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5258
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5259
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$7300(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;J)V

    return-object p0
.end method

.method public setTraceLogPath(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5108
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5109
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$6600(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTraceLogPathBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5138
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 5139
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$6800(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUsePacketTimestampForAddedPacket(Z)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4908
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->copyOnWrite()V

    .line 4909
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->access$5800(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Z)V

    return-object p0
.end method
