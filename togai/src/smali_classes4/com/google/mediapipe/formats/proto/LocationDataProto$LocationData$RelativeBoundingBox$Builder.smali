.class public final Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LocationDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBoxOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBoxOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1056
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->access$1000()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/proto/LocationDataProto$1;)V
    .locals 0

    .line 1049
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1049
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1049
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1049
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearHeight()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;
    .locals 1

    .line 1199
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->copyOnWrite()V

    .line 1200
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->access$1800(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;)V

    return-object p0
.end method

.method public clearWidth()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;
    .locals 1

    .line 1163
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->copyOnWrite()V

    .line 1164
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->access$1600(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;)V

    return-object p0
.end method

.method public clearXmin()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;
    .locals 1

    .line 1091
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->copyOnWrite()V

    .line 1092
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->access$1200(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;)V

    return-object p0
.end method

.method public clearYmin()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;
    .locals 1

    .line 1127
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->copyOnWrite()V

    .line 1128
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->access$1400(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1049
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1049
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

    .line 1049
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1049
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .line 1182
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->getHeight()F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 1

    .line 1146
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->getWidth()F

    move-result v0

    return v0
.end method

.method public getXmin()F
    .locals 1

    .line 1074
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->getXmin()F

    move-result v0

    return v0
.end method

.method public getYmin()F
    .locals 1

    .line 1110
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->getYmin()F

    move-result v0

    return v0
.end method

.method public hasHeight()Z
    .locals 1

    .line 1174
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->hasHeight()Z

    move-result v0

    return v0
.end method

.method public hasWidth()Z
    .locals 1

    .line 1138
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->hasWidth()Z

    move-result v0

    return v0
.end method

.method public hasXmin()Z
    .locals 1

    .line 1066
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->hasXmin()Z

    move-result v0

    return v0
.end method

.method public hasYmin()Z
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->hasYmin()Z

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

    .line 1049
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

    .line 1049
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

    .line 1049
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

    .line 1049
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

    .line 1049
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

    .line 1049
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

    .line 1049
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

    .line 1049
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

    .line 1049
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

    .line 1049
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

    .line 1049
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

    .line 1049
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

    .line 1049
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

    .line 1049
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

    .line 1049
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setHeight(F)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1190
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->copyOnWrite()V

    .line 1191
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->access$1700(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;F)V

    return-object p0
.end method

.method public setWidth(F)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1154
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->copyOnWrite()V

    .line 1155
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->access$1500(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;F)V

    return-object p0
.end method

.method public setXmin(F)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1082
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->copyOnWrite()V

    .line 1083
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->access$1100(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;F)V

    return-object p0
.end method

.method public setYmin(F)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1118
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->copyOnWrite()V

    .line 1119
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->access$1300(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;F)V

    return-object p0
.end method
