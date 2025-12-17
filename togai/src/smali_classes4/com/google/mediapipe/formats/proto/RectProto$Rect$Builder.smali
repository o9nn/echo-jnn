.class public final Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RectProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/RectProto$RectOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/RectProto$Rect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/proto/RectProto$Rect;",
        "Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/RectProto$RectOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 497
    invoke-static {}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->access$000()Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/proto/RectProto$1;)V
    .locals 0

    .line 490
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 490
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 490
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 490
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearHeight()Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;
    .locals 1

    .line 640
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->copyOnWrite()V

    .line 641
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->access$600(Lcom/google/mediapipe/formats/proto/RectProto$Rect;)V

    return-object p0
.end method

.method public clearRectId()Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->copyOnWrite()V

    .line 781
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->access$1200(Lcom/google/mediapipe/formats/proto/RectProto$Rect;)V

    return-object p0
.end method

.method public clearRotation()Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;
    .locals 1

    .line 728
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->copyOnWrite()V

    .line 729
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->access$1000(Lcom/google/mediapipe/formats/proto/RectProto$Rect;)V

    return-object p0
.end method

.method public clearWidth()Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;
    .locals 1

    .line 676
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->copyOnWrite()V

    .line 677
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->access$800(Lcom/google/mediapipe/formats/proto/RectProto$Rect;)V

    return-object p0
.end method

.method public clearXCenter()Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->copyOnWrite()V

    .line 553
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->access$200(Lcom/google/mediapipe/formats/proto/RectProto$Rect;)V

    return-object p0
.end method

.method public clearYCenter()Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;
    .locals 1

    .line 588
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->copyOnWrite()V

    .line 589
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->access$400(Lcom/google/mediapipe/formats/proto/RectProto$Rect;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 490
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 490
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

    .line 490
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 490
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->getHeight()I

    move-result v0

    return v0
.end method

.method public getRectId()J
    .locals 2

    .line 755
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->getRectId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRotation()F
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->getRotation()F

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->getWidth()I

    move-result v0

    return v0
.end method

.method public getXCenter()I
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->getXCenter()I

    move-result v0

    return v0
.end method

.method public getYCenter()I
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->getYCenter()I

    move-result v0

    return v0
.end method

.method public hasHeight()Z
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->hasHeight()Z

    move-result v0

    return v0
.end method

.method public hasRectId()Z
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->hasRectId()Z

    move-result v0

    return v0
.end method

.method public hasRotation()Z
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->hasRotation()Z

    move-result v0

    return v0
.end method

.method public hasWidth()Z
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->hasWidth()Z

    move-result v0

    return v0
.end method

.method public hasXCenter()Z
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->hasXCenter()Z

    move-result v0

    return v0
.end method

.method public hasYCenter()Z
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->hasYCenter()Z

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

    .line 490
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

    .line 490
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

    .line 490
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

    .line 490
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

    .line 490
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

    .line 490
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

    .line 490
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

    .line 490
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

    .line 490
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

    .line 490
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

    .line 490
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

    .line 490
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

    .line 490
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

    .line 490
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

    .line 490
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setHeight(I)Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 627
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->copyOnWrite()V

    .line 628
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->access$500(Lcom/google/mediapipe/formats/proto/RectProto$Rect;I)V

    return-object p0
.end method

.method public setRectId(J)Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 767
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->copyOnWrite()V

    .line 768
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->access$1100(Lcom/google/mediapipe/formats/proto/RectProto$Rect;J)V

    return-object p0
.end method

.method public setRotation(F)Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 715
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->copyOnWrite()V

    .line 716
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->access$900(Lcom/google/mediapipe/formats/proto/RectProto$Rect;F)V

    return-object p0
.end method

.method public setWidth(I)Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 667
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->copyOnWrite()V

    .line 668
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->access$700(Lcom/google/mediapipe/formats/proto/RectProto$Rect;I)V

    return-object p0
.end method

.method public setXCenter(I)Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 538
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->copyOnWrite()V

    .line 539
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->access$100(Lcom/google/mediapipe/formats/proto/RectProto$Rect;I)V

    return-object p0
.end method

.method public setYCenter(I)Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 579
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->copyOnWrite()V

    .line 580
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->access$300(Lcom/google/mediapipe/formats/proto/RectProto$Rect;I)V

    return-object p0
.end method
