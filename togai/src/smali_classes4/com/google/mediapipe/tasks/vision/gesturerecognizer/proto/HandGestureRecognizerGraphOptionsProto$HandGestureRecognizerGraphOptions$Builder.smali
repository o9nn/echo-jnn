.class public final Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "HandGestureRecognizerGraphOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;",
        "Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 465
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->access$000()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$1;)V
    .locals 0

    .line 458
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 458
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 458
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 458
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBaseOptions()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;
    .locals 1

    .line 541
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 542
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->access$300(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;)V

    return-object p0
.end method

.method public clearCannedGestureClassifierGraphOptions()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;
    .locals 1

    .line 683
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 684
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->access$900(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;)V

    return-object p0
.end method

.method public clearCustomGestureClassifierGraphOptions()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;
    .locals 1

    .line 754
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 755
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->access$1200(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;)V

    return-object p0
.end method

.method public clearGestureEmbedderGraphOptions()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 613
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->access$600(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 458
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 458
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

    .line 458
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v0

    return-object v0
.end method

.method public getCannedGestureClassifierGraphOptions()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->getCannedGestureClassifierGraphOptions()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

    move-result-object v0

    return-object v0
.end method

.method public getCustomGestureClassifierGraphOptions()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->getCustomGestureClassifierGraphOptions()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 458
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getGestureEmbedderGraphOptions()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->getGestureEmbedderGraphOptions()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;

    move-result-object v0

    return-object v0
.end method

.method public hasBaseOptions()Z
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->hasBaseOptions()Z

    move-result v0

    return v0
.end method

.method public hasCannedGestureClassifierGraphOptions()Z
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->hasCannedGestureClassifierGraphOptions()Z

    move-result v0

    return v0
.end method

.method public hasCustomGestureClassifierGraphOptions()Z
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->hasCustomGestureClassifierGraphOptions()Z

    move-result v0

    return v0
.end method

.method public hasGestureEmbedderGraphOptions()Z
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->hasGestureEmbedderGraphOptions()Z

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

    .line 458
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 529
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 530
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->access$200(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public mergeCannedGestureClassifierGraphOptions(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 672
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 673
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->access$800(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;)V

    return-object p0
.end method

.method public mergeCustomGestureClassifierGraphOptions(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 743
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 744
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->access$1100(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;)V

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

    .line 458
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

    .line 458
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

    .line 458
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

    .line 458
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

    .line 458
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

    .line 458
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

    .line 458
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

    .line 458
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

    .line 458
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

    .line 458
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

    .line 458
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

    .line 458
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

    .line 458
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

    .line 458
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeGestureEmbedderGraphOptions(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 601
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 602
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->access$500(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;)V

    return-object p0
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 516
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 517
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->access$100(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 502
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 503
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->access$100(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setCannedGestureClassifierGraphOptions(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions$Builder;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 660
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 661
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->access$700(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;)V

    return-object p0
.end method

.method public setCannedGestureClassifierGraphOptions(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 647
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 648
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->access$700(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;)V

    return-object p0
.end method

.method public setCustomGestureClassifierGraphOptions(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions$Builder;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 731
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 732
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->access$1000(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;)V

    return-object p0
.end method

.method public setCustomGestureClassifierGraphOptions(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 718
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 719
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->access$1000(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;)V

    return-object p0
.end method

.method public setGestureEmbedderGraphOptions(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions$Builder;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 589
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 590
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->access$400(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;)V

    return-object p0
.end method

.method public setGestureEmbedderGraphOptions(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 576
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->copyOnWrite()V

    .line 577
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->access$400(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;)V

    return-object p0
.end method
