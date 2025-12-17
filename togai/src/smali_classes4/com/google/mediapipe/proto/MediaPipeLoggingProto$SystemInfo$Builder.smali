.class public final Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MediaPipeLoggingProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1032
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->access$800()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$1;)V
    .locals 0

    .line 1025
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1025
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1025
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1025
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAppId()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    .locals 1

    .line 1154
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->copyOnWrite()V

    .line 1155
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->access$1200(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;)V

    return-object p0
.end method

.method public clearAppVersion()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    .locals 1

    .line 1236
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->copyOnWrite()V

    .line 1237
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->access$1500(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;)V

    return-object p0
.end method

.method public clearMediapipeVersion()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    .locals 1

    .line 1317
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->copyOnWrite()V

    .line 1318
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->access$1800(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;)V

    return-object p0
.end method

.method public clearPlatform()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    .locals 1

    .line 1083
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->copyOnWrite()V

    .line 1084
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->access$1000(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1025
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1025
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

    .line 1025
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1112
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1126
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->getAppIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1197
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1210
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->getAppVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1025
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getMediapipeVersion()Ljava/lang/String;
    .locals 1

    .line 1278
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->getMediapipeVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediapipeVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1291
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->getMediapipeVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPlatform()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$Platform;
    .locals 1

    .line 1058
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->getPlatform()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$Platform;

    move-result-object v0

    return-object v0
.end method

.method public hasAppId()Z
    .locals 1

    .line 1099
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->hasAppId()Z

    move-result v0

    return v0
.end method

.method public hasAppVersion()Z
    .locals 1

    .line 1185
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->hasAppVersion()Z

    move-result v0

    return v0
.end method

.method public hasMediapipeVersion()Z
    .locals 1

    .line 1266
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->hasMediapipeVersion()Z

    move-result v0

    return v0
.end method

.method public hasPlatform()Z
    .locals 1

    .line 1046
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->hasPlatform()Z

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

    .line 1025
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

    .line 1025
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

    .line 1025
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

    .line 1025
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

    .line 1025
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

    .line 1025
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

    .line 1025
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

    .line 1025
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

    .line 1025
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

    .line 1025
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

    .line 1025
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

    .line 1025
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

    .line 1025
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

    .line 1025
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

    .line 1025
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAppId(Ljava/lang/String;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1140
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->copyOnWrite()V

    .line 1141
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->access$1100(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1170
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->copyOnWrite()V

    .line 1171
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->access$1300(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setAppVersion(Ljava/lang/String;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1223
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->copyOnWrite()V

    .line 1224
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->access$1400(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1251
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->copyOnWrite()V

    .line 1252
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->access$1600(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMediapipeVersion(Ljava/lang/String;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1304
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->copyOnWrite()V

    .line 1305
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->access$1700(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMediapipeVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1332
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->copyOnWrite()V

    .line 1333
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->access$1900(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPlatform(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$Platform;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1070
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->copyOnWrite()V

    .line 1071
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->access$900(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$Platform;)V

    return-object p0
.end method
