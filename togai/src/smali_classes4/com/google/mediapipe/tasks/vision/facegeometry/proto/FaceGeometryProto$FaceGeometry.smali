.class public final Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FaceGeometryProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FaceGeometry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;",
        "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometryOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

.field public static final MESH_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSE_TRANSFORM_MATRIX_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private mesh_:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

.field private poseTransformMatrix_:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 785
    new-instance v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    const-class v1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    .line 789
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->setMesh(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->mergeMesh(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->clearMesh()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->setPoseTransformMatrix(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->mergePoseTransformMatrix(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->clearPoseTransformMatrix()V

    return-void
.end method

.method private clearMesh()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->mesh_:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->bitField0_:I

    return-void
.end method

.method private clearPoseTransformMatrix()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->poseTransformMatrix_:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    return-object v0
.end method

.method private mergeMesh(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->mesh_:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->mesh_:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    .line 217
    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->newBuilder(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->mesh_:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->mesh_:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->bitField0_:I

    return-void
.end method

.method private mergePoseTransformMatrix(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 325
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->poseTransformMatrix_:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    if-eqz v0, :cond_0

    .line 327
    invoke-static {}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->getDefaultInstance()Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->poseTransformMatrix_:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    .line 329
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->newBuilder(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->poseTransformMatrix_:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->poseTransformMatrix_:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    .line 429
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    .line 432
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    .line 406
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    .line 412
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    .line 370
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    .line 377
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    .line 417
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    .line 424
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    .line 394
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    .line 401
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    .line 357
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    .line 364
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    .line 382
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    .line 389
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    .line 800
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setMesh(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->mesh_:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    iget p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->bitField0_:I

    return-void
.end method

.method private setPoseTransformMatrix(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 304
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->poseTransformMatrix_:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    iget p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 734
    sget-object p2, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 778
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 772
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    .line 759
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 762
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->PARSER:Lcom/google/protobuf/Parser;

    .line 767
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_3
    sget-object p1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "mesh_"

    const-string p3, "poseTransformMatrix_"

    .line 742
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001"

    sget-object p3, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    .line 750
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 739
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry$Builder;-><init>(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$1;)V

    return-object p1

    .line 736
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 104
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getMesh()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->mesh_:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    if-nez v0, :cond_0

    .line 162
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPoseTransformMatrix()Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->poseTransformMatrix_:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    if-nez v0, :cond_0

    .line 286
    invoke-static {}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->getDefaultInstance()Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasMesh()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasPoseTransformMatrix()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 104
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 104
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
