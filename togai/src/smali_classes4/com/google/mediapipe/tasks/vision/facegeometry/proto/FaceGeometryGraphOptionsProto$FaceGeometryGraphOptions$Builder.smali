.class public final Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FaceGeometryGraphOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;",
        "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 175
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->access$000()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$1;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 168
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 168
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 168
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearGeometryPipelineOptions()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;
    .locals 1

    .line 221
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;->copyOnWrite()V

    .line 222
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->access$300(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 168
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 168
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

    .line 168
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 168
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getGeometryPipelineOptions()Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->getGeometryPipelineOptions()Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;

    move-result-object v0

    return-object v0
.end method

.method public hasGeometryPipelineOptions()Z
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->hasGeometryPipelineOptions()Z

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

    .line 168
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

    .line 168
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

    .line 168
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

    .line 168
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

    .line 168
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

    .line 168
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

    .line 168
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

    .line 168
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

    .line 168
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

    .line 168
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

    .line 168
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

    .line 168
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

    .line 168
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

    .line 168
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

    .line 168
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeGeometryPipelineOptions(Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;->copyOnWrite()V

    .line 215
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->access$200(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;)V

    return-object p0
.end method

.method public setGeometryPipelineOptions(Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions$Builder;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;->copyOnWrite()V

    .line 207
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->access$100(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;)V

    return-object p0
.end method

.method public setGeometryPipelineOptions(Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;->copyOnWrite()V

    .line 198
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->access$100(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;)V

    return-object p0
.end method
