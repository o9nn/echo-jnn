.class public final Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LandmarkProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1000
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->access$1200()Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/proto/LandmarkProto$1;)V
    .locals 0

    .line 993
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllLandmark(Ljava/lang/Iterable;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;
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
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;",
            ">;)",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;"
        }
    .end annotation

    .line 1085
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->copyOnWrite()V

    .line 1086
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->access$1600(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addLandmark(ILcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;
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

    .line 1075
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->copyOnWrite()V

    .line 1076
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 1077
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    .line 1076
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->access$1500(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;ILcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V

    return-object p0
.end method

.method public addLandmark(ILcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;
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

    .line 1057
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->copyOnWrite()V

    .line 1058
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->access$1500(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;ILcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V

    return-object p0
.end method

.method public addLandmark(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1066
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->copyOnWrite()V

    .line 1067
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->access$1400(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V

    return-object p0
.end method

.method public addLandmark(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1048
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->copyOnWrite()V

    .line 1049
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->access$1400(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 993
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 993
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 993
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearLandmark()Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;
    .locals 1

    .line 1093
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->copyOnWrite()V

    .line 1094
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->access$1700(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 993
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 993
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

    .line 993
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 993
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getLandmark(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1023
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->getLandmark(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    move-result-object p1

    return-object p1
.end method

.method public getLandmarkCount()I
    .locals 1

    .line 1017
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->getLandmarkCount()I

    move-result v0

    return v0
.end method

.method public getLandmarkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;",
            ">;"
        }
    .end annotation

    .line 1009
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 1010
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->getLandmarkList()Ljava/util/List;

    move-result-object v0

    .line 1009
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

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

    .line 993
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

    .line 993
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

    .line 993
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

    .line 993
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

    .line 993
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

    .line 993
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

    .line 993
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

    .line 993
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

    .line 993
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

    .line 993
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

    .line 993
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

    .line 993
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

    .line 993
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

    .line 993
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

    .line 993
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeLandmark(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1101
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->copyOnWrite()V

    .line 1102
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->access$1800(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;I)V

    return-object p0
.end method

.method public setLandmark(ILcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;
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

    .line 1039
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->copyOnWrite()V

    .line 1040
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 1041
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    .line 1040
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->access$1300(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;ILcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V

    return-object p0
.end method

.method public setLandmark(ILcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;
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

    .line 1030
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->copyOnWrite()V

    .line 1031
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->access$1300(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;ILcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V

    return-object p0
.end method
