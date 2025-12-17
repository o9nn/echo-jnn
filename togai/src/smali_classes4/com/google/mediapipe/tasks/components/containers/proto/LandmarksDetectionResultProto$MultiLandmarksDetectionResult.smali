.class public final Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LandmarksDetectionResultProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultiLandmarksDetectionResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResultOrBuilder;"
    }
.end annotation


# static fields
.field public static final CLASSIFICATIONS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

.field public static final LANDMARKS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECTS_FIELD_NUMBER:I = 0x4

.field public static final WORLD_LANDMARKS_FIELD_NUMBER:I = 0x3


# instance fields
.field private classifications_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;",
            ">;"
        }
    .end annotation
.end field

.field private landmarks_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private rects_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;",
            ">;"
        }
    .end annotation
.end field

.field private worldLandmarks_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1636
    new-instance v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    const-class v1, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1640
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 686
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->memoizedIsInitialized:B

    .line 687
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->landmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 688
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->classifications_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 689
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->worldLandmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 690
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->rects_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$1400()Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V
    .locals 0

    .line 681
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->setLandmarks(ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V
    .locals 0

    .line 681
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->addLandmarks(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V
    .locals 0

    .line 681
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->addLandmarks(ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;Ljava/lang/Iterable;)V
    .locals 0

    .line 681
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->addAllLandmarks(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;)V
    .locals 0

    .line 681
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->clearLandmarks()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;I)V
    .locals 0

    .line 681
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->removeLandmarks(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;ILcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V
    .locals 0

    .line 681
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->setClassifications(ILcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V
    .locals 0

    .line 681
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->addClassifications(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;ILcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V
    .locals 0

    .line 681
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->addClassifications(ILcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;Ljava/lang/Iterable;)V
    .locals 0

    .line 681
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->addAllClassifications(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;)V
    .locals 0

    .line 681
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->clearClassifications()V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;I)V
    .locals 0

    .line 681
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->removeClassifications(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V
    .locals 0

    .line 681
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->setWorldLandmarks(ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V
    .locals 0

    .line 681
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->addWorldLandmarks(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V
    .locals 0

    .line 681
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->addWorldLandmarks(ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;Ljava/lang/Iterable;)V
    .locals 0

    .line 681
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->addAllWorldLandmarks(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;)V
    .locals 0

    .line 681
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->clearWorldLandmarks()V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;I)V
    .locals 0

    .line 681
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->removeWorldLandmarks(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;ILcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V
    .locals 0

    .line 681
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->setRects(ILcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V
    .locals 0

    .line 681
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->addRects(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;ILcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V
    .locals 0

    .line 681
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->addRects(ILcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;Ljava/lang/Iterable;)V
    .locals 0

    .line 681
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->addAllRects(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;)V
    .locals 0

    .line 681
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->clearRects()V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;I)V
    .locals 0

    .line 681
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->removeRects(I)V

    return-void
.end method

.method private addAllClassifications(Ljava/lang/Iterable;)V
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
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;",
            ">;)V"
        }
    .end annotation

    .line 862
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->ensureClassificationsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->classifications_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 863
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllLandmarks(Ljava/lang/Iterable;)V
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
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;",
            ">;)V"
        }
    .end annotation

    .line 768
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->ensureLandmarksIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->landmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 769
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllRects(Ljava/lang/Iterable;)V
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
            "Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;",
            ">;)V"
        }
    .end annotation

    .line 1050
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->ensureRectsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->rects_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1051
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllWorldLandmarks(Ljava/lang/Iterable;)V
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
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;",
            ">;)V"
        }
    .end annotation

    .line 956
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->ensureWorldLandmarksIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->worldLandmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 957
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addClassifications(ILcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V
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

    .line 853
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 854
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->ensureClassificationsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->classifications_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 855
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addClassifications(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 844
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 845
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->ensureClassificationsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->classifications_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 846
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLandmarks(ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V
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

    .line 759
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 760
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->ensureLandmarksIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->landmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 761
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addLandmarks(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 750
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 751
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->ensureLandmarksIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->landmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 752
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addRects(ILcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V
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

    .line 1041
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1042
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->ensureRectsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->rects_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1043
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addRects(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1032
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1033
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->ensureRectsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->rects_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1034
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addWorldLandmarks(ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V
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

    .line 947
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 948
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->ensureWorldLandmarksIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->worldLandmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 949
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addWorldLandmarks(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 938
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 939
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->ensureWorldLandmarksIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->worldLandmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 940
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearClassifications()V
    .locals 1

    .line 870
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->classifications_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearLandmarks()V
    .locals 1

    .line 776
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->landmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearRects()V
    .locals 1

    .line 1058
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->rects_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearWorldLandmarks()V
    .locals 1

    .line 964
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->worldLandmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureClassificationsIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->classifications_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 825
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 827
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->classifications_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureLandmarksIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->landmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 731
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 733
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->landmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureRectsIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->rects_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1013
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1015
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->rects_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureWorldLandmarksIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->worldLandmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 919
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 921
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->worldLandmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1143
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1146
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1120
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1126
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1084
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1091
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1131
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1138
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1108
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1115
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1071
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1078
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1096
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1103
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1651
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeClassifications(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 876
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->ensureClassificationsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->classifications_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 877
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeLandmarks(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 782
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->ensureLandmarksIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->landmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 783
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeRects(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1064
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->ensureRectsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->rects_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1065
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeWorldLandmarks(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 970
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->ensureWorldLandmarksIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->worldLandmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 971
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setClassifications(ILcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V
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

    .line 836
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 837
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->ensureClassificationsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->classifications_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 838
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setLandmarks(ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V
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

    .line 742
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 743
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->ensureLandmarksIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->landmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 744
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setRects(ILcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V
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

    .line 1024
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1025
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->ensureRectsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->rects_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1026
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setWorldLandmarks(ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V
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

    .line 930
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 931
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->ensureWorldLandmarksIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->worldLandmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 932
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

    .line 1579
    sget-object p3, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1629
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

    iput-byte p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->memoizedIsInitialized:B

    return-object p3

    :pswitch_1
    iget-byte p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->memoizedIsInitialized:B

    .line 1622
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1609
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1612
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 1617
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
    sget-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    return-object p1

    :pswitch_4
    const-string v0, "landmarks_"

    .line 1587
    const-class v1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    const-string v2, "classifications_"

    const-class v3, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    const-string v4, "worldLandmarks_"

    const-class v5, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    const-string v6, "rects_"

    const-class v7, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0001\u0001\u001b\u0002\u001b\u0003\u001b\u0004\u041b"

    sget-object p3, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1600
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1584
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;

    invoke-direct {p1, p3}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;-><init>(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$1;)V

    return-object p1

    .line 1581
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;-><init>()V

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

.method public getClassifications(I)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->classifications_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 814
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    return-object p1
.end method

.method public getClassificationsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->classifications_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 807
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getClassificationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->classifications_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getClassificationsOrBuilder(I)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->classifications_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 821
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListOrBuilder;

    return-object p1
.end method

.method public getClassificationsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->classifications_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 681
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getLandmarks(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->landmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 720
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    return-object p1
.end method

.method public getLandmarksCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->landmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 713
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getLandmarksList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->landmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLandmarksOrBuilder(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkListOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->landmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 727
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkListOrBuilder;

    return-object p1
.end method

.method public getLandmarksOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkListOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->landmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRects(I)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->rects_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1002
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p1
.end method

.method public getRectsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->rects_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 995
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getRectsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->rects_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRectsOrBuilder(I)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRectOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->rects_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1009
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRectOrBuilder;

    return-object p1
.end method

.method public getRectsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRectOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->rects_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getWorldLandmarks(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->worldLandmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 908
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    return-object p1
.end method

.method public getWorldLandmarksCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->worldLandmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 901
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getWorldLandmarksList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->worldLandmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getWorldLandmarksOrBuilder(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->worldLandmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 915
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListOrBuilder;

    return-object p1
.end method

.method public getWorldLandmarksOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->worldLandmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 681
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 681
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
