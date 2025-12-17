.class public final Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MediaPipeLoggingProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/MediaPipeLoggingProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SolutionEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;,
        Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEventOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

.field public static final ERROR_DETAILS_FIELD_NUMBER:I = 0x6

.field public static final EVENT_NAME_FIELD_NUMBER:I = 0x2

.field public static final INVOCATION_REPORT_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final SESSION_CLONE_FIELD_NUMBER:I = 0x7

.field public static final SESSION_END_FIELD_NUMBER:I = 0x5

.field public static final SESSION_START_FIELD_NUMBER:I = 0x3

.field public static final SOLUTION_NAME_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private eventDetailsCase_:I

.field private eventDetails_:Ljava/lang/Object;

.field private eventName_:I

.field private solutionName_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2447
    new-instance v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;-><init>()V

    sput-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    const-class v1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 2451
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1524
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    return-void
.end method

.method static synthetic access$2100()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V
    .locals 0

    .line 1519
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->clearEventDetails()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;)V
    .locals 0

    .line 1519
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->setSolutionName(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V
    .locals 0

    .line 1519
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->clearSolutionName()V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;)V
    .locals 0

    .line 1519
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->setEventName(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V
    .locals 0

    .line 1519
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->clearEventName()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;)V
    .locals 0

    .line 1519
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->setSessionStart(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;)V
    .locals 0

    .line 1519
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->mergeSessionStart(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V
    .locals 0

    .line 1519
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->clearSessionStart()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V
    .locals 0

    .line 1519
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->setInvocationReport(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V
    .locals 0

    .line 1519
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->mergeInvocationReport(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V
    .locals 0

    .line 1519
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->clearInvocationReport()V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;)V
    .locals 0

    .line 1519
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->setSessionEnd(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;)V
    .locals 0

    .line 1519
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->mergeSessionEnd(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V
    .locals 0

    .line 1519
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->clearSessionEnd()V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;)V
    .locals 0

    .line 1519
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->setErrorDetails(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;)V
    .locals 0

    .line 1519
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->mergeErrorDetails(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V
    .locals 0

    .line 1519
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->clearErrorDetails()V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)V
    .locals 0

    .line 1519
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->setSessionClone(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)V
    .locals 0

    .line 1519
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->mergeSessionClone(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V
    .locals 0

    .line 1519
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->clearSessionClone()V

    return-void
.end method

.method private clearErrorDetails()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearEventDetails()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    return-void
.end method

.method private clearEventName()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventName_:I

    return-void
.end method

.method private clearInvocationReport()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearSessionClone()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearSessionEnd()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearSessionStart()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearSolutionName()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->solutionName_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object v0
.end method

.method private mergeErrorDetails(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1858
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1860
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1861
    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;->newBuilder(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError$Builder;

    move-result-object v0

    .line 1862
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    return-void
.end method

.method private mergeInvocationReport(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1758
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1760
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1761
    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->newBuilder(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;

    move-result-object v0

    .line 1762
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    return-void
.end method

.method private mergeSessionClone(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1908
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1910
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1911
    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->newBuilder(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;

    move-result-object v0

    .line 1912
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    return-void
.end method

.method private mergeSessionEnd(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1808
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1810
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1811
    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;->newBuilder(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd$Builder;

    move-result-object v0

    .line 1812
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    return-void
.end method

.method private mergeSessionStart(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1708
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1710
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1711
    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;->newBuilder(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart$Builder;

    move-result-object v0

    .line 1712
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 2003
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 2006
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 1980
    invoke-static {v0, p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 1986
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 1944
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 1951
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 1991
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 1998
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 1968
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 1975
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 1931
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 1938
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 1956
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 1963
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 2462
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setErrorDetails(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1850
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    return-void
.end method

.method private setEventName(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1663
    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventName_:I

    iget p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->bitField0_:I

    return-void
.end method

.method private setInvocationReport(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1750
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    return-void
.end method

.method private setSessionClone(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1900
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    return-void
.end method

.method private setSessionEnd(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1800
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    return-void
.end method

.method private setSessionStart(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1700
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    return-void
.end method

.method private setSolutionName(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1612
    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->solutionName_:I

    iget p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
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

    .line 2386
    sget-object p2, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2440
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 2434
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 2421
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2424
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 2429
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
    sget-object p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p1

    :pswitch_4
    const-string v0, "eventDetails_"

    const-string v1, "eventDetailsCase_"

    const-string v2, "bitField0_"

    const-string v3, "solutionName_"

    .line 2399
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v4

    const-string v5, "eventName_"

    .line 2401
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v6

    const-class v7, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;

    const-class v8, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    const-class v9, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;

    const-class v10, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;

    const-class v11, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0007\u0001\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u100c\u0001\u0003\u103c\u0000\u0004\u103c\u0000\u0005\u103c\u0000\u0006\u103c\u0000\u0007\u103c\u0000"

    sget-object p3, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 2412
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2391
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;-><init>(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$1;)V

    return-object p1

    .line 2388
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-direct {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;-><init>()V

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

    .line 1519
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getErrorDetails()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1842
    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;

    return-object v0

    .line 1844
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;

    move-result-object v0

    return-object v0
.end method

.method public getEventDetailsCase()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    .line 1567
    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;->forNumber(I)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    move-result-object v0

    return-object v0
.end method

.method public getEventName()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventName_:I

    .line 1651
    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;->forNumber(I)Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1652
    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;->EVENT_START:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;

    :cond_0
    return-object v0
.end method

.method public getInvocationReport()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1742
    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    return-object v0

    .line 1744
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    move-result-object v0

    return-object v0
.end method

.method public getSessionClone()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1892
    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    return-object v0

    .line 1894
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    move-result-object v0

    return-object v0
.end method

.method public getSessionEnd()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1792
    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;

    return-object v0

    .line 1794
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;

    move-result-object v0

    return-object v0
.end method

.method public getSessionStart()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1692
    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;

    return-object v0

    .line 1694
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;

    move-result-object v0

    return-object v0
.end method

.method public getSolutionName()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->solutionName_:I

    .line 1600
    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;->forNumber(I)Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1601
    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;->SOLUTION_UNKNOWN:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;

    :cond_0
    return-object v0
.end method

.method public hasErrorDetails()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEventName()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInvocationReport()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSessionClone()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSessionEnd()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSessionStart()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSolutionName()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->bitField0_:I

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

    .line 1519
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1519
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
