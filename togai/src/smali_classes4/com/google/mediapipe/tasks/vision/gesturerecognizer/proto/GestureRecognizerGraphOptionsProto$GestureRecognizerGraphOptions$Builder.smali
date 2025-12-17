.class public final Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GestureRecognizerGraphOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;",
        "Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 380
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;->access$000()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$1;)V
    .locals 0

    .line 373
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 373
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 373
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 373
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBaseOptions()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;
    .locals 1

    .line 456
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 457
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;->access$300(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;)V

    return-object p0
.end method

.method public clearHandGestureRecognizerGraphOptions()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;
    .locals 1

    .line 598
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 599
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;->access$900(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;)V

    return-object p0
.end method

.method public clearHandLandmarkerGraphOptions()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;
    .locals 1

    .line 527
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 528
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;->access$600(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 373
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 373
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

    .line 373
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;->getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 373
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getHandGestureRecognizerGraphOptions()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;->getHandGestureRecognizerGraphOptions()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    move-result-object v0

    return-object v0
.end method

.method public getHandLandmarkerGraphOptions()Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarkerGraphOptionsProto$HandLandmarkerGraphOptions;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;->getHandLandmarkerGraphOptions()Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarkerGraphOptionsProto$HandLandmarkerGraphOptions;

    move-result-object v0

    return-object v0
.end method

.method public hasBaseOptions()Z
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;->hasBaseOptions()Z

    move-result v0

    return v0
.end method

.method public hasHandGestureRecognizerGraphOptions()Z
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;->hasHandGestureRecognizerGraphOptions()Z

    move-result v0

    return v0
.end method

.method public hasHandLandmarkerGraphOptions()Z
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;->hasHandLandmarkerGraphOptions()Z

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

    .line 373
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 444
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 445
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;->access$200(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

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

    .line 373
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

    .line 373
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

    .line 373
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

    .line 373
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

    .line 373
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

    .line 373
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

    .line 373
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

    .line 373
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

    .line 373
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

    .line 373
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

    .line 373
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

    .line 373
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

    .line 373
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

    .line 373
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeHandGestureRecognizerGraphOptions(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 587
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 588
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;->access$800(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;)V

    return-object p0
.end method

.method public mergeHandLandmarkerGraphOptions(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarkerGraphOptionsProto$HandLandmarkerGraphOptions;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 516
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 517
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;->access$500(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarkerGraphOptionsProto$HandLandmarkerGraphOptions;)V

    return-object p0
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 431
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 432
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;->access$100(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 417
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 418
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;->access$100(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setHandGestureRecognizerGraphOptions(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 575
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 576
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;->access$700(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;)V

    return-object p0
.end method

.method public setHandGestureRecognizerGraphOptions(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 562
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 563
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;->access$700(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;)V

    return-object p0
.end method

.method public setHandLandmarkerGraphOptions(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarkerGraphOptionsProto$HandLandmarkerGraphOptions$Builder;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 504
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 505
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarkerGraphOptionsProto$HandLandmarkerGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarkerGraphOptionsProto$HandLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;->access$400(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarkerGraphOptionsProto$HandLandmarkerGraphOptions;)V

    return-object p0
.end method

.method public setHandLandmarkerGraphOptions(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarkerGraphOptionsProto$HandLandmarkerGraphOptions;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;
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
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 492
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;->access$400(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureRecognizerGraphOptionsProto$GestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarkerGraphOptionsProto$HandLandmarkerGraphOptions;)V

    return-object p0
.end method
