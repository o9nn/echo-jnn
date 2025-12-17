.class public final Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$RunnerActionResult;
.super Ljava/lang/Object;
.source "TaskerPluginRunnerAction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RunnerActionResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$RunnerActionResult;",
        "",
        "hasStartedForeground",
        "",
        "(Z)V",
        "getHasStartedForeground",
        "()Z",
        "taskerpluginlibrary_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final hasStartedForeground:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$RunnerActionResult;->hasStartedForeground:Z

    return-void
.end method


# virtual methods
.method public final getHasStartedForeground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$RunnerActionResult;->hasStartedForeground:Z

    return v0
.end method
