.class public final Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LabelMapProto.java"

# interfaces
.implements Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;",
        "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;",
        ">;",
        "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItemOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 548
    invoke-static {}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->access$000()Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/util/proto/LabelMapProto$1;)V
    .locals 0

    .line 541
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllChildName(Ljava/lang/Iterable;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;
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
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;"
        }
    .end annotation

    .line 828
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->copyOnWrite()V

    .line 829
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->access$900(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addChildName(Ljava/lang/String;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 812
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->copyOnWrite()V

    .line 813
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->access$800(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;Ljava/lang/String;)V

    return-object p0
.end method

.method public addChildNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 858
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->copyOnWrite()V

    .line 859
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->access$1100(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 541
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 541
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 541
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearChildName()Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;
    .locals 1

    .line 842
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->copyOnWrite()V

    .line 843
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->access$1000(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;)V

    return-object p0
.end method

.method public clearDisplayName()Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;
    .locals 1

    .line 705
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->copyOnWrite()V

    .line 706
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->access$500(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;)V

    return-object p0
.end method

.method public clearName()Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;
    .locals 1

    .line 618
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->copyOnWrite()V

    .line 619
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->access$200(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 541
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 541
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

    .line 541
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChildName(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 766
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->getChildName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChildNameBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 781
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->getChildNameBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getChildNameCount()I
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->getChildNameCount()I

    move-result v0

    return v0
.end method

.method public getChildNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    .line 739
    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->getChildNameList()Ljava/util/List;

    move-result-object v0

    .line 738
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 541
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasDisplayName()Z
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->hasDisplayName()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->hasName()Z

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

    .line 541
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

    .line 541
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

    .line 541
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

    .line 541
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

    .line 541
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

    .line 541
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

    .line 541
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

    .line 541
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

    .line 541
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

    .line 541
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

    .line 541
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

    .line 541
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

    .line 541
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

    .line 541
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

    .line 541
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setChildName(ILjava/lang/String;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;
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

    .line 796
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->copyOnWrite()V

    .line 797
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->access$700(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;ILjava/lang/String;)V

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 691
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->copyOnWrite()V

    .line 692
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->access$400(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDisplayNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 721
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->copyOnWrite()V

    .line 722
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->access$600(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 604
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->copyOnWrite()V

    .line 605
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->access$100(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 634
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->copyOnWrite()V

    .line 635
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->access$300(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
