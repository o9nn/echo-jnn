.class public final enum Lcom/google/mediapipe/tasks/core/Delegate;
.super Ljava/lang/Enum;
.source "Delegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mediapipe/tasks/core/Delegate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/mediapipe/tasks/core/Delegate;

.field public static final enum CPU:Lcom/google/mediapipe/tasks/core/Delegate;

.field public static final enum GPU:Lcom/google/mediapipe/tasks/core/Delegate;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 20
    new-instance v0, Lcom/google/mediapipe/tasks/core/Delegate;

    const-string v1, "CPU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/mediapipe/tasks/core/Delegate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mediapipe/tasks/core/Delegate;->CPU:Lcom/google/mediapipe/tasks/core/Delegate;

    .line 21
    new-instance v1, Lcom/google/mediapipe/tasks/core/Delegate;

    const-string v2, "GPU"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/mediapipe/tasks/core/Delegate;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/mediapipe/tasks/core/Delegate;->GPU:Lcom/google/mediapipe/tasks/core/Delegate;

    filled-new-array {v0, v1}, [Lcom/google/mediapipe/tasks/core/Delegate;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/tasks/core/Delegate;->$VALUES:[Lcom/google/mediapipe/tasks/core/Delegate;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/Delegate;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/mediapipe/tasks/core/Delegate;

    .line 19
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/Delegate;

    return-object p0
.end method

.method public static values()[Lcom/google/mediapipe/tasks/core/Delegate;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/core/Delegate;->$VALUES:[Lcom/google/mediapipe/tasks/core/Delegate;

    .line 19
    invoke-virtual {v0}, [Lcom/google/mediapipe/tasks/core/Delegate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mediapipe/tasks/core/Delegate;

    return-object v0
.end method
