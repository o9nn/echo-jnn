.class public final Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MatrixDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/MatrixDataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MatrixData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;,
        Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;",
        "Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixDataOrBuilder;"
    }
.end annotation


# static fields
.field public static final COLS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

.field public static final LAYOUT_FIELD_NUMBER:I = 0x4

.field public static final PACKED_DATA_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROWS_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private cols_:I

.field private layout_:I

.field private packedDataMemoizedSerializedSize:I

.field private packedData_:Lcom/google/protobuf/Internal$FloatList;

.field private rows_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 728
    new-instance v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-direct {v0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;-><init>()V

    sput-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    const-class v1, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    .line 732
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->packedDataMemoizedSerializedSize:I

    .line 89
    invoke-static {}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->emptyFloatList()Lcom/google/protobuf/Internal$FloatList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->packedData_:Lcom/google/protobuf/Internal$FloatList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->setRows(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->clearLayout()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->clearRows()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->setCols(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->clearCols()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;IF)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->setPackedData(IF)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;F)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->addPackedData(F)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;Ljava/lang/Iterable;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->addAllPackedData(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->clearPackedData()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->setLayout(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;)V

    return-void
.end method

.method private addAllPackedData(Ljava/lang/Iterable;)V
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

    .line 304
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->ensurePackedDataIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->packedData_:Lcom/google/protobuf/Internal$FloatList;

    .line 305
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addPackedData(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 295
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->ensurePackedDataIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->packedData_:Lcom/google/protobuf/Internal$FloatList;

    .line 296
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$FloatList;->addFloat(F)V

    return-void
.end method

.method private clearCols()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->cols_:I

    return-void
.end method

.method private clearLayout()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->layout_:I

    return-void
.end method

.method private clearPackedData()V
    .locals 1

    .line 312
    invoke-static {}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->emptyFloatList()Lcom/google/protobuf/Internal$FloatList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->packedData_:Lcom/google/protobuf/Internal$FloatList;

    return-void
.end method

.method private clearRows()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->rows_:I

    return-void
.end method

.method private ensurePackedDataIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->packedData_:Lcom/google/protobuf/Internal$FloatList;

    .line 275
    invoke-interface {v0}, Lcom/google/protobuf/Internal$FloatList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$FloatList;)Lcom/google/protobuf/Internal$FloatList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->packedData_:Lcom/google/protobuf/Internal$FloatList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    .line 445
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    .line 448
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    .line 422
    invoke-static {v0, p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    .line 428
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    .line 386
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    .line 393
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    .line 433
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    .line 440
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    .line 410
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    .line 417
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    .line 373
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    .line 380
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    .line 398
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    .line 405
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    .line 743
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCols(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->cols_:I

    return-void
.end method

.method private setLayout(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 354
    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->layout_:I

    iget p1, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    return-void
.end method

.method private setPackedData(IF)V
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

    .line 287
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->ensurePackedDataIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->packedData_:Lcom/google/protobuf/Internal$FloatList;

    .line 288
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$FloatList;->setFloat(IF)F

    return-void
.end method

.method private setRows(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->rows_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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

    .line 674
    sget-object p2, Lcom/google/mediapipe/formats/proto/MatrixDataProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 721
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 715
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    .line 702
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 705
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->PARSER:Lcom/google/protobuf/Parser;

    .line 710
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
    sget-object p1, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p1

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "rows_"

    const-string v2, "cols_"

    const-string v3, "packedData_"

    const-string v4, "layout_"

    .line 688
    invoke-static {}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003$\u0004\u100c\u0002"

    sget-object p3, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    .line 693
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 679
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;-><init>(Lcom/google/mediapipe/formats/proto/MatrixDataProto$1;)V

    return-object p1

    .line 676
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-direct {p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;-><init>()V

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

.method public getCols()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->cols_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 83
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getLayout()Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->layout_:I

    .line 341
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;->forNumber(I)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 342
    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;->COLUMN_MAJOR:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;

    :cond_0
    return-object v0
.end method

.method public getPackedData(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->packedData_:Lcom/google/protobuf/Internal$FloatList;

    .line 270
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$FloatList;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getPackedDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->packedData_:Lcom/google/protobuf/Internal$FloatList;

    .line 261
    invoke-interface {v0}, Lcom/google/protobuf/Internal$FloatList;->size()I

    move-result v0

    return v0
.end method

.method public getPackedDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->packedData_:Lcom/google/protobuf/Internal$FloatList;

    return-object v0
.end method

.method public getRows()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->rows_:I

    return v0
.end method

.method public hasCols()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLayout()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRows()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

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

    .line 83
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 83
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
