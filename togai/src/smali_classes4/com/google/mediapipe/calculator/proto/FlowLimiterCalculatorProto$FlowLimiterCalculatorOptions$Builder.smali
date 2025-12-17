.class public final Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FlowLimiterCalculatorProto.java"

# interfaces
.implements Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;",
        "Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 344
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->access$000()Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$1;)V
    .locals 0

    .line 337
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 337
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 337
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 337
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearInFlightTimeout()Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;->copyOnWrite()V

    .line 512
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->access$600(Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;)V

    return-object p0
.end method

.method public clearMaxInFlight()Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;
    .locals 1

    .line 399
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;->copyOnWrite()V

    .line 400
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->access$200(Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;)V

    return-object p0
.end method

.method public clearMaxInQueue()Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;
    .locals 1

    .line 455
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;->copyOnWrite()V

    .line 456
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->access$400(Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 337
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 337
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

    .line 337
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 337
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getInFlightTimeout()J
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->getInFlightTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxInFlight()I
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->getMaxInFlight()I

    move-result v0

    return v0
.end method

.method public getMaxInQueue()I
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->getMaxInQueue()I

    move-result v0

    return v0
.end method

.method public hasInFlightTimeout()Z
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->hasInFlightTimeout()Z

    move-result v0

    return v0
.end method

.method public hasMaxInFlight()Z
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->hasMaxInFlight()Z

    move-result v0

    return v0
.end method

.method public hasMaxInQueue()Z
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->hasMaxInQueue()Z

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

    .line 337
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

    .line 337
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

    .line 337
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

    .line 337
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

    .line 337
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

    .line 337
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

    .line 337
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

    .line 337
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

    .line 337
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

    .line 337
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

    .line 337
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

    .line 337
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

    .line 337
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

    .line 337
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

    .line 337
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setInFlightTimeout(J)Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 497
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;->copyOnWrite()V

    .line 498
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->access$500(Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;J)V

    return-object p0
.end method

.method public setMaxInFlight(I)Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 385
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;->copyOnWrite()V

    .line 386
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->access$100(Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;I)V

    return-object p0
.end method

.method public setMaxInQueue(I)Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 441
    invoke-virtual {p0}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;->copyOnWrite()V

    .line 442
    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->access$300(Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;I)V

    return-object p0
.end method
