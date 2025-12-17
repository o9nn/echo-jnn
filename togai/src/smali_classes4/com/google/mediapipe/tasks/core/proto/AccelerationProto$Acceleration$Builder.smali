.class public final Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AccelerationProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$AccelerationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;",
        "Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$AccelerationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 418
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->access$000()Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$1;)V
    .locals 0

    .line 411
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 411
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 411
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 411
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDelegate()Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;
    .locals 1

    .line 428
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->copyOnWrite()V

    .line 429
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->access$100(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)V

    return-object p0
.end method

.method public clearGpu()Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;
    .locals 1

    .line 525
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->copyOnWrite()V

    .line 526
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->access$700(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)V

    return-object p0
.end method

.method public clearNnapi()Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;
    .locals 1

    .line 621
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->copyOnWrite()V

    .line 622
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->access$1300(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)V

    return-object p0
.end method

.method public clearTflite()Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;
    .locals 1

    .line 573
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->copyOnWrite()V

    .line 574
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->access$1000(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)V

    return-object p0
.end method

.method public clearXnnpack()Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;
    .locals 1

    .line 477
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->copyOnWrite()V

    .line 478
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->access$400(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 411
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 411
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

    .line 411
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 411
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getDelegateCase()Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->getDelegateCase()Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

    move-result-object v0

    return-object v0
.end method

.method public getGpu()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->getGpu()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    move-result-object v0

    return-object v0
.end method

.method public getNnapi()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->getNnapi()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;

    move-result-object v0

    return-object v0
.end method

.method public getTflite()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->getTflite()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;

    move-result-object v0

    return-object v0
.end method

.method public getXnnpack()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->getXnnpack()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;

    move-result-object v0

    return-object v0
.end method

.method public hasGpu()Z
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->hasGpu()Z

    move-result v0

    return v0
.end method

.method public hasNnapi()Z
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->hasNnapi()Z

    move-result v0

    return v0
.end method

.method public hasTflite()Z
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->hasTflite()Z

    move-result v0

    return v0
.end method

.method public hasXnnpack()Z
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->hasXnnpack()Z

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

    .line 411
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

    .line 411
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

    .line 411
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

    .line 411
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

    .line 411
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

    .line 411
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

    .line 411
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

    .line 411
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

    .line 411
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

    .line 411
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

    .line 411
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

    .line 411
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

    .line 411
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

    .line 411
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

    .line 411
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeGpu(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 517
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->copyOnWrite()V

    .line 518
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->access$600(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;)V

    return-object p0
.end method

.method public mergeNnapi(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 613
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->copyOnWrite()V

    .line 614
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->access$1200(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;)V

    return-object p0
.end method

.method public mergeTflite(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 565
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->copyOnWrite()V

    .line 566
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->access$900(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;)V

    return-object p0
.end method

.method public mergeXnnpack(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 469
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->copyOnWrite()V

    .line 470
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->access$300(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;)V

    return-object p0
.end method

.method public setGpu(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 509
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->copyOnWrite()V

    .line 510
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-virtual {p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->access$500(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;)V

    return-object p0
.end method

.method public setGpu(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 500
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->copyOnWrite()V

    .line 501
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->access$500(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;)V

    return-object p0
.end method

.method public setNnapi(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi$Builder;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 605
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->copyOnWrite()V

    .line 606
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-virtual {p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->access$1100(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;)V

    return-object p0
.end method

.method public setNnapi(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 596
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->copyOnWrite()V

    .line 597
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->access$1100(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;)V

    return-object p0
.end method

.method public setTflite(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite$Builder;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 557
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->copyOnWrite()V

    .line 558
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-virtual {p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->access$800(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;)V

    return-object p0
.end method

.method public setTflite(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 548
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->copyOnWrite()V

    .line 549
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->access$800(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;)V

    return-object p0
.end method

.method public setXnnpack(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack$Builder;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 461
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->copyOnWrite()V

    .line 462
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-virtual {p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->access$200(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;)V

    return-object p0
.end method

.method public setXnnpack(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 452
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->copyOnWrite()V

    .line 453
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->access$200(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;)V

    return-object p0
.end method
