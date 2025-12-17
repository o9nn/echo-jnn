.class public final Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AudioClassifierGraphOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;",
        "Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 377
    invoke-static {}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->access$000()Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$1;)V
    .locals 0

    .line 370
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 370
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 370
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 370
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBaseOptions()Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    .locals 1

    .line 453
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->copyOnWrite()V

    .line 454
    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->access$300(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;)V

    return-object p0
.end method

.method public clearClassifierOptions()Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    .locals 1

    .line 530
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->copyOnWrite()V

    .line 531
    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->access$600(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;)V

    return-object p0
.end method

.method public clearDefaultInputAudioSampleRate()Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    .locals 1

    .line 586
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->copyOnWrite()V

    .line 587
    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->access$800(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 370
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 370
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

    .line 370
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v0

    return-object v0
.end method

.method public getClassifierOptions()Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->getClassifierOptions()Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInputAudioSampleRate()D
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->getDefaultInputAudioSampleRate()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 370
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public hasBaseOptions()Z
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->hasBaseOptions()Z

    move-result v0

    return v0
.end method

.method public hasClassifierOptions()Z
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->hasClassifierOptions()Z

    move-result v0

    return v0
.end method

.method public hasDefaultInputAudioSampleRate()Z
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->hasDefaultInputAudioSampleRate()Z

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

    .line 370
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
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
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->copyOnWrite()V

    .line 442
    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->access$200(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public mergeClassifierOptions(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 518
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->copyOnWrite()V

    .line 519
    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->access$500(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V

    return-object p0
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

    .line 370
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

    .line 370
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

    .line 370
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

    .line 370
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

    .line 370
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

    .line 370
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

    .line 370
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

    .line 370
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

    .line 370
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

    .line 370
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

    .line 370
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

    .line 370
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

    .line 370
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

    .line 370
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 428
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->copyOnWrite()V

    .line 429
    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->access$100(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->copyOnWrite()V

    .line 415
    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->access$100(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setClassifierOptions(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 505
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->copyOnWrite()V

    .line 506
    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->access$400(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V

    return-object p0
.end method

.method public setClassifierOptions(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 491
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->copyOnWrite()V

    .line 492
    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->access$400(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V

    return-object p0
.end method

.method public setDefaultInputAudioSampleRate(D)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 572
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->copyOnWrite()V

    .line 573
    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->access$700(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;D)V

    return-object p0
.end method
