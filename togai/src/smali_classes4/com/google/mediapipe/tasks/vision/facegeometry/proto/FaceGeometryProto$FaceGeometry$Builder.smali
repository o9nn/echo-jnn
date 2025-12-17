.class public final Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FaceGeometryProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;",
        "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometryOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 449
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->access$000()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$1;)V
    .locals 0

    .line 442
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 442
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 442
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 442
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMesh()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;
    .locals 1

    .line 603
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;->copyOnWrite()V

    .line 604
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->access$300(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;)V

    return-object p0
.end method

.method public clearPoseTransformMatrix()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;
    .locals 1

    .line 722
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;->copyOnWrite()V

    .line 723
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->access$600(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 442
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 442
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

    .line 442
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 442
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getMesh()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->getMesh()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    move-result-object v0

    return-object v0
.end method

.method public getPoseTransformMatrix()Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->getPoseTransformMatrix()Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    move-result-object v0

    return-object v0
.end method

.method public hasMesh()Z
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->hasMesh()Z

    move-result v0

    return v0
.end method

.method public hasPoseTransformMatrix()Z
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->hasPoseTransformMatrix()Z

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

    .line 442
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

    .line 442
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

    .line 442
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

    .line 442
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

    .line 442
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

    .line 442
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

    .line 442
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

    .line 442
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

    .line 442
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

    .line 442
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

    .line 442
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

    .line 442
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

    .line 442
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

    .line 442
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

    .line 442
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeMesh(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 578
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;->copyOnWrite()V

    .line 579
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->access$200(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;)V

    return-object p0
.end method

.method public mergePoseTransformMatrix(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 703
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;->copyOnWrite()V

    .line 704
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->access$500(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)V

    return-object p0
.end method

.method public setMesh(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$Builder;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 552
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;->copyOnWrite()V

    .line 553
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->access$100(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;)V

    return-object p0
.end method

.method public setMesh(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;->copyOnWrite()V

    .line 526
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->access$100(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;)V

    return-object p0
.end method

.method public setPoseTransformMatrix(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 683
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;->copyOnWrite()V

    .line 684
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->access$400(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)V

    return-object p0
.end method

.method public setPoseTransformMatrix(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 662
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;->copyOnWrite()V

    .line 663
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->access$400(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)V

    return-object p0
.end method
