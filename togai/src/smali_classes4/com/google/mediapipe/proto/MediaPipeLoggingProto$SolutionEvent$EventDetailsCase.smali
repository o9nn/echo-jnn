.class public final enum Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;
.super Ljava/lang/Enum;
.source "MediaPipeLoggingProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventDetailsCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

.field public static final enum ERROR_DETAILS:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

.field public static final enum EVENTDETAILS_NOT_SET:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

.field public static final enum INVOCATION_REPORT:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

.field public static final enum SESSION_CLONE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

.field public static final enum SESSION_END:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

.field public static final enum SESSION_START:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1530
    new-instance v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    const-string v1, "SESSION_START"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;->SESSION_START:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    .line 1531
    new-instance v1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    const-string v4, "INVOCATION_REPORT"

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-direct {v1, v4, v5, v6}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;->INVOCATION_REPORT:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    .line 1532
    new-instance v4, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    const-string v5, "SESSION_END"

    const/4 v7, 0x2

    const/4 v8, 0x5

    invoke-direct {v4, v5, v7, v8}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;->SESSION_END:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    .line 1533
    new-instance v5, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    const-string v7, "ERROR_DETAILS"

    const/4 v9, 0x6

    invoke-direct {v5, v7, v3, v9}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;->ERROR_DETAILS:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    .line 1534
    new-instance v7, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    const-string v3, "SESSION_CLONE"

    const/4 v9, 0x7

    invoke-direct {v7, v3, v6, v9}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;->SESSION_CLONE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    .line 1535
    new-instance v6, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    const-string v3, "EVENTDETAILS_NOT_SET"

    invoke-direct {v6, v3, v8, v2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;->EVENTDETAILS_NOT_SET:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    move-object v2, v4

    move-object v3, v5

    move-object v4, v7

    move-object v5, v6

    filled-new-array/range {v0 .. v5}, [Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;->$VALUES:[Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1537
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;->SESSION_CLONE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;->ERROR_DETAILS:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;->SESSION_END:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;->INVOCATION_REPORT:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;->SESSION_START:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    return-object p0

    :cond_5
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;->EVENTDETAILS_NOT_SET:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1545
    invoke-static {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;->forNumber(I)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    .line 1529
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    return-object p0
.end method

.method public static values()[Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;->$VALUES:[Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    .line 1529
    invoke-virtual {v0}, [Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;->value:I

    return v0
.end method
