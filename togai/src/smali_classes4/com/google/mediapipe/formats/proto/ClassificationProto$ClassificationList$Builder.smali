.class public final Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ClassificationProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;",
        "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1042
    invoke-static {}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->access$1200()Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/proto/ClassificationProto$1;)V
    .locals 0

    .line 1035
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllClassification(Ljava/lang/Iterable;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;
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
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;",
            ">;)",
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;"
        }
    .end annotation

    .line 1127
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->copyOnWrite()V

    .line 1128
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->access$1600(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addClassification(ILcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;
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

    .line 1117
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->copyOnWrite()V

    .line 1118
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 1119
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    .line 1118
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->access$1500(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;ILcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V

    return-object p0
.end method

.method public addClassification(ILcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;
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

    .line 1099
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->copyOnWrite()V

    .line 1100
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->access$1500(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;ILcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V

    return-object p0
.end method

.method public addClassification(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1108
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->copyOnWrite()V

    .line 1109
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->access$1400(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V

    return-object p0
.end method

.method public addClassification(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1090
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->copyOnWrite()V

    .line 1091
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->access$1400(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1035
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1035
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1035
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClassification()Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;
    .locals 1

    .line 1135
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->copyOnWrite()V

    .line 1136
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->access$1700(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1035
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1035
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

    .line 1035
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClassification(I)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1065
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->getClassification(I)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    move-result-object p1

    return-object p1
.end method

.method public getClassificationCount()I
    .locals 1

    .line 1059
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->getClassificationCount()I

    move-result v0

    return v0
.end method

.method public getClassificationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;",
            ">;"
        }
    .end annotation

    .line 1051
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 1052
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->getClassificationList()Ljava/util/List;

    move-result-object v0

    .line 1051
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1035
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

    .line 1035
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

    .line 1035
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

    .line 1035
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

    .line 1035
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

    .line 1035
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

    .line 1035
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

    .line 1035
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

    .line 1035
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

    .line 1035
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

    .line 1035
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

    .line 1035
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

    .line 1035
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

    .line 1035
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

    .line 1035
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

    .line 1035
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeClassification(I)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1143
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->copyOnWrite()V

    .line 1144
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->access$1800(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;I)V

    return-object p0
.end method

.method public setClassification(ILcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;
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

    .line 1081
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->copyOnWrite()V

    .line 1082
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 1083
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    .line 1082
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->access$1300(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;ILcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V

    return-object p0
.end method

.method public setClassification(ILcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;
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

    .line 1072
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->copyOnWrite()V

    .line 1073
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->access$1300(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;ILcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V

    return-object p0
.end method
