.class public final Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LocationDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LocationDataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;,
        Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;,
        Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypointOrBuilder;,
        Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;,
        Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMaskOrBuilder;,
        Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;,
        Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBoxOrBuilder;,
        Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;,
        Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBoxOrBuilder;,
        Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Format;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationDataOrBuilder;"
    }
.end annotation


# static fields
.field public static final BOUNDING_BOX_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

.field public static final FORMAT_FIELD_NUMBER:I = 0x1

.field public static final MASK_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;",
            ">;"
        }
    .end annotation
.end field

.field public static final RELATIVE_BOUNDING_BOX_FIELD_NUMBER:I = 0x3

.field public static final RELATIVE_KEYPOINTS_FIELD_NUMBER:I = 0x5


# instance fields
.field private bitField0_:I

.field private boundingBox_:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

.field private format_:I

.field private mask_:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

.field private memoizedIsInitialized:B

.field private relativeBoundingBox_:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

.field private relativeKeypoints_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3119
    new-instance v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-direct {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;-><init>()V

    sput-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    const-class v1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    .line 3123
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->memoizedIsInitialized:B

    .line 82
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->relativeKeypoints_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$4000()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Format;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->setFormat(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Format;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->clearFormat()V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->setBoundingBox(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->mergeBoundingBox(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->clearBoundingBox()V

    return-void
.end method

.method static synthetic access$4600(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->setRelativeBoundingBox(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->mergeRelativeBoundingBox(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->clearRelativeBoundingBox()V

    return-void
.end method

.method static synthetic access$4900(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->setMask(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->mergeMask(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->clearMask()V

    return-void
.end method

.method static synthetic access$5200(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;ILcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->setRelativeKeypoints(ILcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->addRelativeKeypoints(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;ILcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->addRelativeKeypoints(ILcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;Ljava/lang/Iterable;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->addAllRelativeKeypoints(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->clearRelativeKeypoints()V

    return-void
.end method

.method static synthetic access$5700(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->removeRelativeKeypoints(I)V

    return-void
.end method

.method private addAllRelativeKeypoints(Ljava/lang/Iterable;)V
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
            "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;",
            ">;)V"
        }
    .end annotation

    .line 2662
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->ensureRelativeKeypointsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->relativeKeypoints_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2663
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addRelativeKeypoints(ILcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)V
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

    .line 2653
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2654
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->ensureRelativeKeypointsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->relativeKeypoints_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2655
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addRelativeKeypoints(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2644
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2645
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->ensureRelativeKeypointsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->relativeKeypoints_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2646
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearBoundingBox()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->boundingBox_:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    return-void
.end method

.method private clearFormat()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->format_:I

    return-void
.end method

.method private clearMask()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->mask_:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    return-void
.end method

.method private clearRelativeBoundingBox()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->relativeBoundingBox_:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    return-void
.end method

.method private clearRelativeKeypoints()V
    .locals 1

    .line 2670
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->relativeKeypoints_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureRelativeKeypointsIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->relativeKeypoints_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2625
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2627
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->relativeKeypoints_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    return-object v0
.end method

.method private mergeBoundingBox(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2477
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->boundingBox_:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    if-eqz v0, :cond_0

    .line 2479
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->getDefaultInstance()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->boundingBox_:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    .line 2481
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->newBuilder(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    iput-object p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->boundingBox_:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->boundingBox_:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    return-void
.end method

.method private mergeMask(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2569
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->mask_:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    if-eqz v0, :cond_0

    .line 2571
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->getDefaultInstance()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->mask_:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    .line 2573
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->newBuilder(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    iput-object p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->mask_:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->mask_:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    return-void
.end method

.method private mergeRelativeBoundingBox(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2523
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->relativeBoundingBox_:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    if-eqz v0, :cond_0

    .line 2525
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->getDefaultInstance()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->relativeBoundingBox_:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    .line 2527
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->newBuilder(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    iput-object p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->relativeBoundingBox_:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->relativeBoundingBox_:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    .line 2755
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    .line 2758
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    .line 2732
    invoke-static {v0, p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    .line 2738
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    .line 2696
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    .line 2703
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    .line 2743
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    .line 2750
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    .line 2720
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    .line 2727
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    .line 2683
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    .line 2690
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    .line 2708
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    .line 2715
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    .line 3134
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeRelativeKeypoints(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2676
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->ensureRelativeKeypointsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->relativeKeypoints_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2677
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setBoundingBox(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2468
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->boundingBox_:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    iget p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    return-void
.end method

.method private setFormat(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Format;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2437
    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Format;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->format_:I

    iget p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    return-void
.end method

.method private setMask(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2560
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->mask_:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    iget p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    return-void
.end method

.method private setRelativeBoundingBox(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2514
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->relativeBoundingBox_:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    iget p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    return-void
.end method

.method private setRelativeKeypoints(ILcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)V
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

    .line 2636
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2637
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->ensureRelativeKeypointsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->relativeKeypoints_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2638
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
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

    .line 3062
    sget-object p3, Lcom/google/mediapipe/formats/proto/LocationDataProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3112
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->memoizedIsInitialized:B

    return-object p3

    :pswitch_1
    iget-byte p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->memoizedIsInitialized:B

    .line 3105
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    .line 3092
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3095
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->PARSER:Lcom/google/protobuf/Parser;

    .line 3100
    :cond_1
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-object p1

    :pswitch_3
    sget-object p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    return-object p1

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "format_"

    .line 3073
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Format;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v2

    const-string v3, "boundingBox_"

    const-string v4, "relativeBoundingBox_"

    const-string v5, "mask_"

    const-string v6, "relativeKeypoints_"

    const-class v7, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001\u100c\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1409\u0003\u0005\u001b"

    sget-object p3, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    .line 3083
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3067
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;

    invoke-direct {p1, p3}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;-><init>(Lcom/google/mediapipe/formats/proto/LocationDataProto$1;)V

    return-object p1

    .line 3064
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-direct {p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;-><init>()V

    return-object p1

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

.method public getBoundingBox()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->boundingBox_:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    if-nez v0, :cond_0

    .line 2462
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->getDefaultInstance()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Format;
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->format_:I

    .line 2429
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Format;->forNumber(I)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Format;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2430
    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Format;->GLOBAL:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Format;

    :cond_0
    return-object v0
.end method

.method public getMask()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->mask_:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    if-nez v0, :cond_0

    .line 2554
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->getDefaultInstance()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRelativeBoundingBox()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->relativeBoundingBox_:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    if-nez v0, :cond_0

    .line 2508
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->getDefaultInstance()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRelativeKeypoints(I)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->relativeKeypoints_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2614
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    return-object p1
.end method

.method public getRelativeKeypointsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->relativeKeypoints_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2607
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getRelativeKeypointsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->relativeKeypoints_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRelativeKeypointsOrBuilder(I)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypointOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->relativeKeypoints_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2621
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypointOrBuilder;

    return-object p1
.end method

.method public getRelativeKeypointsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypointOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->relativeKeypoints_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public hasBoundingBox()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFormat()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMask()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRelativeBoundingBox()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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

    .line 76
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
