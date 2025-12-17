.class public final Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ClassificationProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;",
        "Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 471
    invoke-static {}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->access$000()Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/proto/ClassificationProto$1;)V
    .locals 0

    .line 464
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 464
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 464
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 464
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDisplayName()Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    .locals 1

    .line 721
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->copyOnWrite()V

    .line 722
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->access$900(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V

    return-object p0
.end method

.method public clearIndex()Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    .locals 1

    .line 522
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->copyOnWrite()V

    .line 523
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->access$200(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V

    return-object p0
.end method

.method public clearLabel()Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    .locals 1

    .line 640
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->copyOnWrite()V

    .line 641
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->access$600(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V

    return-object p0
.end method

.method public clearScore()Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    .locals 1

    .line 574
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->copyOnWrite()V

    .line 575
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->access$400(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 464
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 464
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

    .line 464
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 464
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->getIndex()I

    move-result v0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getScore()F
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->getScore()F

    move-result v0

    return v0
.end method

.method public hasDisplayName()Z
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->hasDisplayName()Z

    move-result v0

    return v0
.end method

.method public hasIndex()Z
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->hasIndex()Z

    move-result v0

    return v0
.end method

.method public hasLabel()Z
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->hasLabel()Z

    move-result v0

    return v0
.end method

.method public hasScore()Z
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->hasScore()Z

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

    .line 464
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

    .line 464
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

    .line 464
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

    .line 464
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

    .line 464
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

    .line 464
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

    .line 464
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

    .line 464
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

    .line 464
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

    .line 464
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

    .line 464
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

    .line 464
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

    .line 464
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

    .line 464
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

    .line 464
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 708
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->copyOnWrite()V

    .line 709
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->access$800(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDisplayNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 736
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->copyOnWrite()V

    .line 737
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->access$1000(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setIndex(I)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 509
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->copyOnWrite()V

    .line 510
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->access$100(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;I)V

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
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
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->copyOnWrite()V

    .line 628
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->access$500(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLabelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 655
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->copyOnWrite()V

    .line 656
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->access$700(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setScore(F)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 561
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->copyOnWrite()V

    .line 562
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->access$300(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;F)V

    return-object p0
.end method
