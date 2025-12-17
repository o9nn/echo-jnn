.class public final Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RenderDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOvalOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;",
        ">;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOvalOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4119
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->access$6000()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/util/proto/RenderDataProto$1;)V
    .locals 0

    .line 4112
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4112
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4112
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4112
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFillColor()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;
    .locals 1

    .line 4236
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;->copyOnWrite()V

    .line 4237
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->access$6600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;)V

    return-object p0
.end method

.method public clearOval()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;
    .locals 1

    .line 4165
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;->copyOnWrite()V

    .line 4166
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->access$6300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 4112
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4112
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

    .line 4112
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4112
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getFillColor()Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .locals 1

    .line 4190
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->getFillColor()Lcom/google/mediapipe/util/proto/ColorProto$Color;

    move-result-object v0

    return-object v0
.end method

.method public getOval()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;
    .locals 1

    .line 4135
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->getOval()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;

    move-result-object v0

    return-object v0
.end method

.method public hasFillColor()Z
    .locals 1

    .line 4179
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->hasFillColor()Z

    move-result v0

    return v0
.end method

.method public hasOval()Z
    .locals 1

    .line 4128
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->hasOval()Z

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

    .line 4112
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFillColor(Lcom/google/mediapipe/util/proto/ColorProto$Color;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4225
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;->copyOnWrite()V

    .line 4226
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->access$6500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;Lcom/google/mediapipe/util/proto/ColorProto$Color;)V

    return-object p0
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

    .line 4112
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

    .line 4112
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

    .line 4112
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

    .line 4112
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

    .line 4112
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

    .line 4112
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

    .line 4112
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

    .line 4112
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

    .line 4112
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

    .line 4112
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

    .line 4112
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

    .line 4112
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

    .line 4112
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

    .line 4112
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4158
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;->copyOnWrite()V

    .line 4159
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->access$6200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)V

    return-object p0
.end method

.method public setFillColor(Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4213
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;->copyOnWrite()V

    .line 4214
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->access$6400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;Lcom/google/mediapipe/util/proto/ColorProto$Color;)V

    return-object p0
.end method

.method public setFillColor(Lcom/google/mediapipe/util/proto/ColorProto$Color;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4200
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;->copyOnWrite()V

    .line 4201
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->access$6400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;Lcom/google/mediapipe/util/proto/ColorProto$Color;)V

    return-object p0
.end method

.method public setOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval$Builder;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4150
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;->copyOnWrite()V

    .line 4151
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->access$6100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)V

    return-object p0
.end method

.method public setOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4141
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;->copyOnWrite()V

    .line 4142
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->access$6100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)V

    return-object p0
.end method
