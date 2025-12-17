.class public final Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LandmarksDetectionResultProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LandmarksDetectionResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResultOrBuilder;"
    }
.end annotation


# static fields
.field public static final CLASSIFICATIONS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

.field public static final LANDMARKS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECT_FIELD_NUMBER:I = 0x4

.field public static final WORLD_LANDMARKS_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private classifications_:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

.field private landmarks_:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

.field private memoizedIsInitialized:B

.field private rect_:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

.field private worldLandmarks_:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 599
    new-instance v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    const-class v1, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    .line 603
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->memoizedIsInitialized:B

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->setLandmarks(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->setRect(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->mergeRect(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->clearRect()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->mergeLandmarks(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->clearLandmarks()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->setClassifications(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->mergeClassifications(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->clearClassifications()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->setWorldLandmarks(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->mergeWorldLandmarks(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->clearWorldLandmarks()V

    return-void
.end method

.method private clearClassifications()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->classifications_:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    return-void
.end method

.method private clearLandmarks()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->landmarks_:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    return-void
.end method

.method private clearRect()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->rect_:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    return-void
.end method

.method private clearWorldLandmarks()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->worldLandmarks_:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    return-object v0
.end method

.method private mergeClassifications(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->classifications_:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->getDefaultInstance()Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->classifications_:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 149
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->newBuilder(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->classifications_:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->classifications_:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    return-void
.end method

.method private mergeLandmarks(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->landmarks_:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->getDefaultInstance()Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->landmarks_:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 103
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->newBuilder(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->landmarks_:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->landmarks_:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    return-void
.end method

.method private mergeRect(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 237
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->rect_:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    if-eqz v0, :cond_0

    .line 239
    invoke-static {}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->getDefaultInstance()Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->rect_:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    .line 241
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->newBuilder(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->rect_:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->rect_:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    return-void
.end method

.method private mergeWorldLandmarks(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 191
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->worldLandmarks_:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->getDefaultInstance()Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->worldLandmarks_:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 195
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->newBuilder(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->worldLandmarks_:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->worldLandmarks_:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    .line 329
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    .line 332
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    .line 306
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    .line 312
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    .line 270
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    .line 277
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    .line 317
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    .line 324
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    .line 294
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    .line 301
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    .line 257
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    .line 264
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    .line 282
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    .line 289
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    .line 614
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setClassifications(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->classifications_:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    iget p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    return-void
.end method

.method private setLandmarks(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->landmarks_:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    iget p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    return-void
.end method

.method private setRect(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 228
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->rect_:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    iget p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    return-void
.end method

.method private setWorldLandmarks(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->worldLandmarks_:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    iget p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    .line 545
    sget-object p3, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 592
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

    iput-byte p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->memoizedIsInitialized:B

    return-object p3

    :pswitch_1
    iget-byte p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->memoizedIsInitialized:B

    .line 585
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    .line 572
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 575
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 580
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
    sget-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "landmarks_"

    const-string p3, "classifications_"

    const-string v0, "worldLandmarks_"

    const-string v1, "rect_"

    .line 553
    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0001\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1409\u0003"

    sget-object p3, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    .line 563
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 550
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;

    invoke-direct {p1, p3}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult$Builder;-><init>(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$1;)V

    return-object p1

    .line 547
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;-><init>()V

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

.method public getClassifications()Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->classifications_:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    if-nez v0, :cond_0

    .line 130
    invoke-static {}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->getDefaultInstance()Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 62
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getLandmarks()Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->landmarks_:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->getDefaultInstance()Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRect()Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->rect_:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    if-nez v0, :cond_0

    .line 222
    invoke-static {}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->getDefaultInstance()Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getWorldLandmarks()Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->worldLandmarks_:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    if-nez v0, :cond_0

    .line 176
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->getDefaultInstance()Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasClassifications()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLandmarks()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasRect()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWorldLandmarks()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResult;->bitField0_:I

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

    .line 62
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 62
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
