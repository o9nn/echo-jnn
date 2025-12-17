.class public final Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LocationDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypointOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2164
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->access$2900()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/proto/LocationDataProto$1;)V
    .locals 0

    .line 2157
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2157
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2157
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2157
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearKeypointLabel()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;
    .locals 1

    .line 2281
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->copyOnWrite()V

    .line 2282
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->access$3500(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)V

    return-object p0
.end method

.method public clearScore()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;
    .locals 1

    .line 2328
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->copyOnWrite()V

    .line 2329
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->access$3800(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)V

    return-object p0
.end method

.method public clearX()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;
    .locals 1

    .line 2199
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->copyOnWrite()V

    .line 2200
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->access$3100(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)V

    return-object p0
.end method

.method public clearY()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;
    .locals 1

    .line 2235
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->copyOnWrite()V

    .line 2236
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->access$3300(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2157
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2157
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

    .line 2157
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2157
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getKeypointLabel()Ljava/lang/String;
    .locals 1

    .line 2254
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->getKeypointLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeypointLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2263
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->getKeypointLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getScore()F
    .locals 1

    .line 2311
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->getScore()F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1

    .line 2182
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->getX()F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 1

    .line 2218
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->getY()F

    move-result v0

    return v0
.end method

.method public hasKeypointLabel()Z
    .locals 1

    .line 2246
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->hasKeypointLabel()Z

    move-result v0

    return v0
.end method

.method public hasScore()Z
    .locals 1

    .line 2303
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->hasScore()Z

    move-result v0

    return v0
.end method

.method public hasX()Z
    .locals 1

    .line 2174
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->hasX()Z

    move-result v0

    return v0
.end method

.method public hasY()Z
    .locals 1

    .line 2210
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->hasY()Z

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

    .line 2157
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

    .line 2157
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

    .line 2157
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

    .line 2157
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

    .line 2157
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

    .line 2157
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

    .line 2157
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

    .line 2157
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

    .line 2157
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

    .line 2157
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

    .line 2157
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

    .line 2157
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

    .line 2157
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

    .line 2157
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

    .line 2157
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setKeypointLabel(Ljava/lang/String;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2272
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->copyOnWrite()V

    .line 2273
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->access$3400(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;Ljava/lang/String;)V

    return-object p0
.end method

.method public setKeypointLabelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2292
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->copyOnWrite()V

    .line 2293
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->access$3600(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setScore(F)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2319
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->copyOnWrite()V

    .line 2320
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->access$3700(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;F)V

    return-object p0
.end method

.method public setX(F)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2190
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->copyOnWrite()V

    .line 2191
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->access$3000(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;F)V

    return-object p0
.end method

.method public setY(F)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2226
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->copyOnWrite()V

    .line 2227
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->access$3200(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;F)V

    return-object p0
.end method
