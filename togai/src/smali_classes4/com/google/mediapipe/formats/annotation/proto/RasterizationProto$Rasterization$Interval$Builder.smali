.class public final Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RasterizationProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$IntervalOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;",
        "Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$IntervalOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 309
    invoke-static {}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->access$000()Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$1;)V
    .locals 0

    .line 302
    invoke-direct {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 302
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 302
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 302
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearLeftX()Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;
    .locals 1

    .line 380
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;->copyOnWrite()V

    .line 381
    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    invoke-static {v0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->access$400(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)V

    return-object p0
.end method

.method public clearRightX()Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;
    .locals 1

    .line 416
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;->copyOnWrite()V

    .line 417
    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    invoke-static {v0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->access$600(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)V

    return-object p0
.end method

.method public clearY()Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;
    .locals 1

    .line 344
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;->copyOnWrite()V

    .line 345
    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    invoke-static {v0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->access$200(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 302
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 302
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

    .line 302
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 302
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getLeftX()I
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->getLeftX()I

    move-result v0

    return v0
.end method

.method public getRightX()I
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->getRightX()I

    move-result v0

    return v0
.end method

.method public getY()I
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->getY()I

    move-result v0

    return v0
.end method

.method public hasLeftX()Z
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->hasLeftX()Z

    move-result v0

    return v0
.end method

.method public hasRightX()Z
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->hasRightX()Z

    move-result v0

    return v0
.end method

.method public hasY()Z
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->hasY()Z

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

    .line 302
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

    .line 302
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

    .line 302
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

    .line 302
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

    .line 302
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

    .line 302
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

    .line 302
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

    .line 302
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

    .line 302
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

    .line 302
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

    .line 302
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

    .line 302
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

    .line 302
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

    .line 302
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

    .line 302
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLeftX(I)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 371
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;->copyOnWrite()V

    .line 372
    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->access$300(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;I)V

    return-object p0
.end method

.method public setRightX(I)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 407
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;->copyOnWrite()V

    .line 408
    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->access$500(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;I)V

    return-object p0
.end method

.method public setY(I)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;->copyOnWrite()V

    .line 336
    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->access$100(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;I)V

    return-object p0
.end method
