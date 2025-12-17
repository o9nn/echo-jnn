.class public final Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MediaPipeLoggingProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtensionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtensionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 294
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;->access$000()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$1;)V
    .locals 0

    .line 287
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 287
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 287
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 287
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearSolutionEvent()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;
    .locals 1

    .line 441
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;->copyOnWrite()V

    .line 442
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;->access$600(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;)V

    return-object p0
.end method

.method public clearSystemInfo()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;
    .locals 1

    .line 370
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;->copyOnWrite()V

    .line 371
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;->access$300(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 287
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 287
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

    .line 287
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 287
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getSolutionEvent()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;->getSolutionEvent()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    move-result-object v0

    return-object v0
.end method

.method public getSystemInfo()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;->getSystemInfo()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasSolutionEvent()Z
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;->hasSolutionEvent()Z

    move-result v0

    return v0
.end method

.method public hasSystemInfo()Z
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;->hasSystemInfo()Z

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

    .line 287
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

    .line 287
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

    .line 287
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

    .line 287
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

    .line 287
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

    .line 287
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

    .line 287
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

    .line 287
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

    .line 287
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

    .line 287
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

    .line 287
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

    .line 287
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

    .line 287
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

    .line 287
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

    .line 287
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeSolutionEvent(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 430
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;->copyOnWrite()V

    .line 431
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;->access$500(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V

    return-object p0
.end method

.method public mergeSystemInfo(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 358
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;->copyOnWrite()V

    .line 359
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;->access$200(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;)V

    return-object p0
.end method

.method public setSolutionEvent(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 418
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;->copyOnWrite()V

    .line 419
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;->access$400(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V

    return-object p0
.end method

.method public setSolutionEvent(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 405
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;->copyOnWrite()V

    .line 406
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;->access$400(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V

    return-object p0
.end method

.method public setSystemInfo(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;->copyOnWrite()V

    .line 346
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;->access$100(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;)V

    return-object p0
.end method

.method public setSystemInfo(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 331
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;->copyOnWrite()V

    .line 332
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;->access$100(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;)V

    return-object p0
.end method
