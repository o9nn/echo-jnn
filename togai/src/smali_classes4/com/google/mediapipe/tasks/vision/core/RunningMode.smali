.class public final enum Lcom/google/mediapipe/tasks/vision/core/RunningMode;
.super Ljava/lang/Enum;
.source "RunningMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mediapipe/tasks/vision/core/RunningMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/mediapipe/tasks/vision/core/RunningMode;

.field public static final enum IMAGE:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

.field public static final enum LIVE_STREAM:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

.field public static final enum VIDEO:Lcom/google/mediapipe/tasks/vision/core/RunningMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/mediapipe/tasks/vision/core/RunningMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->IMAGE:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    .line 30
    new-instance v1, Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    const-string v2, "VIDEO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/mediapipe/tasks/vision/core/RunningMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->VIDEO:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    .line 31
    new-instance v2, Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    const-string v3, "LIVE_STREAM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/mediapipe/tasks/vision/core/RunningMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->LIVE_STREAM:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    filled-new-array {v0, v1, v2}, [Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->$VALUES:[Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/mediapipe/tasks/vision/core/RunningMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    .line 28
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    return-object p0
.end method

.method public static values()[Lcom/google/mediapipe/tasks/vision/core/RunningMode;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->$VALUES:[Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    .line 28
    invoke-virtual {v0}, [Lcom/google/mediapipe/tasks/vision/core/RunningMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    return-object v0
.end method
