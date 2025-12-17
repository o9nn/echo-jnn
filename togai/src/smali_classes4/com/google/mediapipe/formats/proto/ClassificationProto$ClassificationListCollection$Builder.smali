.class public final Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ClassificationProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;",
        "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollectionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1445
    invoke-static {}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;->access$2000()Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/proto/ClassificationProto$1;)V
    .locals 0

    .line 1438
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllClassificationList(Ljava/lang/Iterable;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;
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
            "+",
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;",
            ">;)",
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;"
        }
    .end annotation

    .line 1530
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;->copyOnWrite()V

    .line 1531
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;->access$2400(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addClassificationList(ILcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 1520
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;->copyOnWrite()V

    .line 1521
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;

    .line 1522
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 1521
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;->access$2300(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;ILcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

    return-object p0
.end method

.method public addClassificationList(ILcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;
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

    .line 1502
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;->copyOnWrite()V

    .line 1503
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;->access$2300(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;ILcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

    return-object p0
.end method

.method public addClassificationList(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1511
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;->copyOnWrite()V

    .line 1512
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;->access$2200(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

    return-object p0
.end method

.method public addClassificationList(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1493
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;->copyOnWrite()V

    .line 1494
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;->access$2200(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1438
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1438
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1438
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClassificationList()Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;
    .locals 1

    .line 1538
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;->copyOnWrite()V

    .line 1539
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;->access$2500(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1438
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1438
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

    .line 1438
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClassificationList(I)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1468
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;->getClassificationList(I)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    move-result-object p1

    return-object p1
.end method

.method public getClassificationListCount()I
    .locals 1

    .line 1462
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;->getClassificationListCount()I

    move-result v0

    return v0
.end method

.method public getClassificationListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;",
            ">;"
        }
    .end annotation

    .line 1454
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;

    .line 1455
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;->getClassificationListList()Ljava/util/List;

    move-result-object v0

    .line 1454
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1438
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
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

    .line 1438
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

    .line 1438
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

    .line 1438
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

    .line 1438
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

    .line 1438
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

    .line 1438
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

    .line 1438
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

    .line 1438
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

    .line 1438
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

    .line 1438
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

    .line 1438
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

    .line 1438
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

    .line 1438
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

    .line 1438
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

    .line 1438
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeClassificationList(I)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1546
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;->copyOnWrite()V

    .line 1547
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;->access$2600(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;I)V

    return-object p0
.end method

.method public setClassificationList(ILcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 1484
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;->copyOnWrite()V

    .line 1485
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;

    .line 1486
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 1485
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;->access$2100(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;ILcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

    return-object p0
.end method

.method public setClassificationList(ILcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;
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

    .line 1475
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;->copyOnWrite()V

    .line 1476
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;->access$2100(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollection;ILcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

    return-object p0
.end method
