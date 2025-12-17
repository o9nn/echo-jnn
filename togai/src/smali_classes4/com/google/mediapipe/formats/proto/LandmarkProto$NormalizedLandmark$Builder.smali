.class public final Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LandmarkProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1925
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->access$2800()Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/proto/LandmarkProto$1;)V
    .locals 0

    .line 1918
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1918
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1918
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1918
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearPresence()Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;
    .locals 1

    .line 2104
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->copyOnWrite()V

    .line 2105
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->access$3800(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V

    return-object p0
.end method

.method public clearVisibility()Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;
    .locals 1

    .line 2068
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->copyOnWrite()V

    .line 2069
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->access$3600(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V

    return-object p0
.end method

.method public clearX()Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;
    .locals 1

    .line 1960
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->copyOnWrite()V

    .line 1961
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->access$3000(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V

    return-object p0
.end method

.method public clearY()Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;
    .locals 1

    .line 1996
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->copyOnWrite()V

    .line 1997
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->access$3200(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V

    return-object p0
.end method

.method public clearZ()Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;
    .locals 1

    .line 2032
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->copyOnWrite()V

    .line 2033
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->access$3400(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1918
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1918
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

    .line 1918
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1918
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getPresence()F
    .locals 1

    .line 2087
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->getPresence()F

    move-result v0

    return v0
.end method

.method public getVisibility()F
    .locals 1

    .line 2051
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->getVisibility()F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1

    .line 1943
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->getX()F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 1

    .line 1979
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->getY()F

    move-result v0

    return v0
.end method

.method public getZ()F
    .locals 1

    .line 2015
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->getZ()F

    move-result v0

    return v0
.end method

.method public hasPresence()Z
    .locals 1

    .line 2079
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->hasPresence()Z

    move-result v0

    return v0
.end method

.method public hasVisibility()Z
    .locals 1

    .line 2043
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->hasVisibility()Z

    move-result v0

    return v0
.end method

.method public hasX()Z
    .locals 1

    .line 1935
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->hasX()Z

    move-result v0

    return v0
.end method

.method public hasY()Z
    .locals 1

    .line 1971
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->hasY()Z

    move-result v0

    return v0
.end method

.method public hasZ()Z
    .locals 1

    .line 2007
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->hasZ()Z

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

    .line 1918
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

    .line 1918
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

    .line 1918
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

    .line 1918
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

    .line 1918
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

    .line 1918
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

    .line 1918
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

    .line 1918
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

    .line 1918
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

    .line 1918
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

    .line 1918
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

    .line 1918
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

    .line 1918
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

    .line 1918
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

    .line 1918
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPresence(F)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2095
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->copyOnWrite()V

    .line 2096
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->access$3700(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;F)V

    return-object p0
.end method

.method public setVisibility(F)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2059
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->copyOnWrite()V

    .line 2060
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->access$3500(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;F)V

    return-object p0
.end method

.method public setX(F)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1951
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->copyOnWrite()V

    .line 1952
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->access$2900(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;F)V

    return-object p0
.end method

.method public setY(F)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1987
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->copyOnWrite()V

    .line 1988
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->access$3100(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;F)V

    return-object p0
.end method

.method public setZ(F)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2023
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->copyOnWrite()V

    .line 2024
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->access$3300(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;F)V

    return-object p0
.end method
