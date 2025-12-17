.class public final Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Mesh3DProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3dOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mesh3d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$Builder;,
        Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;,
        Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;",
        "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3dOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

.field public static final INDEX_BUFFER_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIMITIVE_TYPE_FIELD_NUMBER:I = 0x2

.field public static final VERTEX_BUFFER_FIELD_NUMBER:I = 0x3

.field public static final VERTEX_TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private indexBuffer_:Lcom/google/protobuf/Internal$IntList;

.field private primitiveType_:I

.field private vertexBuffer_:Lcom/google/protobuf/Internal$FloatList;

.field private vertexType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 997
    new-instance v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    const-class v1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    .line 1001
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 110
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->emptyFloatList()Lcom/google/protobuf/Internal$FloatList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->vertexBuffer_:Lcom/google/protobuf/Internal$FloatList;

    .line 111
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->indexBuffer_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->setVertexType(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->addIndexBuffer(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;Ljava/lang/Iterable;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->addAllIndexBuffer(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->clearIndexBuffer()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->clearVertexType()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->setPrimitiveType(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->clearPrimitiveType()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;IF)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->setVertexBuffer(IF)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;F)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->addVertexBuffer(F)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;Ljava/lang/Iterable;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->addAllVertexBuffer(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->clearVertexBuffer()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;II)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->setIndexBuffer(II)V

    return-void
.end method

.method private addAllIndexBuffer(Ljava/lang/Iterable;)V
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 544
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->ensureIndexBufferIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->indexBuffer_:Lcom/google/protobuf/Internal$IntList;

    .line 545
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllVertexBuffer(Ljava/lang/Iterable;)V
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
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 439
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->ensureVertexBufferIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->vertexBuffer_:Lcom/google/protobuf/Internal$FloatList;

    .line 440
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addIndexBuffer(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 530
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->ensureIndexBufferIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->indexBuffer_:Lcom/google/protobuf/Internal$IntList;

    .line 531
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addVertexBuffer(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 425
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->ensureVertexBufferIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->vertexBuffer_:Lcom/google/protobuf/Internal$FloatList;

    .line 426
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$FloatList;->addFloat(F)V

    return-void
.end method

.method private clearIndexBuffer()V
    .locals 1

    .line 557
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->indexBuffer_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method private clearPrimitiveType()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->primitiveType_:I

    return-void
.end method

.method private clearVertexBuffer()V
    .locals 1

    .line 452
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->emptyFloatList()Lcom/google/protobuf/Internal$FloatList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->vertexBuffer_:Lcom/google/protobuf/Internal$FloatList;

    return-void
.end method

.method private clearVertexType()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->vertexType_:I

    return-void
.end method

.method private ensureIndexBufferIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->indexBuffer_:Lcom/google/protobuf/Internal$IntList;

    .line 500
    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 502
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->indexBuffer_:Lcom/google/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method private ensureVertexBufferIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->vertexBuffer_:Lcom/google/protobuf/Internal$FloatList;

    .line 395
    invoke-interface {v0}, Lcom/google/protobuf/Internal$FloatList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$FloatList;)Lcom/google/protobuf/Internal$FloatList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->vertexBuffer_:Lcom/google/protobuf/Internal$FloatList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    .line 635
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    .line 638
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    .line 612
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    .line 618
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    .line 576
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    .line 583
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    .line 623
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    .line 630
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    .line 600
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    .line 607
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    .line 563
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    .line 570
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    .line 588
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    .line 595
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    .line 1012
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setIndexBuffer(II)V
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

    .line 517
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->ensureIndexBufferIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->indexBuffer_:Lcom/google/protobuf/Internal$IntList;

    .line 518
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setPrimitiveType(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 339
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->primitiveType_:I

    iget p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->bitField0_:I

    return-void
.end method

.method private setVertexBuffer(IF)V
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

    .line 412
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->ensureVertexBufferIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->vertexBuffer_:Lcom/google/protobuf/Internal$FloatList;

    .line 413
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$FloatList;->setFloat(IF)F

    return-void
.end method

.method private setVertexType(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType;)V
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
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->vertexType_:I

    iget p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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

    .line 942
    sget-object p2, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 990
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 984
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    .line 971
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 974
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->PARSER:Lcom/google/protobuf/Parser;

    .line 979
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
    sget-object p1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    return-object p1

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "vertexType_"

    .line 953
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v2

    const-string v3, "primitiveType_"

    .line 955
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v4

    const-string v5, "vertexBuffer_"

    const-string v6, "indexBuffer_"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u100c\u0000\u0002\u100c\u0001\u0003\u0013\u0004\u001d"

    sget-object p3, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    .line 962
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 947
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$Builder;-><init>(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$1;)V

    return-object p1

    .line 944
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;-><init>()V

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

.method public getIndexBuffer(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->indexBuffer_:Lcom/google/protobuf/Internal$IntList;

    .line 496
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getIndexBufferCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->indexBuffer_:Lcom/google/protobuf/Internal$IntList;

    .line 482
    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getIndexBufferList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->indexBuffer_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getPrimitiveType()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->primitiveType_:I

    .line 331
    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;->forNumber(I)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 332
    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;->TRIANGLE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;

    :cond_0
    return-object v0
.end method

.method public getVertexBuffer(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->vertexBuffer_:Lcom/google/protobuf/Internal$FloatList;

    .line 391
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$FloatList;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getVertexBufferCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->vertexBuffer_:Lcom/google/protobuf/Internal$FloatList;

    .line 377
    invoke-interface {v0}, Lcom/google/protobuf/Internal$FloatList;->size()I

    move-result v0

    return v0
.end method

.method public getVertexBufferList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->vertexBuffer_:Lcom/google/protobuf/Internal$FloatList;

    return-object v0
.end method

.method public getVertexType()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType;
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->vertexType_:I

    .line 296
    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType;->forNumber(I)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 297
    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType;->VERTEX_PT:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType;

    :cond_0
    return-object v0
.end method

.method public hasPrimitiveType()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVertexType()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
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
