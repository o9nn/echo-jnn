.class public abstract Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;
.super Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;
.source "TaskerPluginRunnerAction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$Companion;,
        Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$RunnerActionResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TInput:",
        "Ljava/lang/Object;",
        "TOutput:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner<",
        "TTInput;TTOutput;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskerPluginRunnerAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskerPluginRunnerAction.kt\ncom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,53:1\n1#2:54\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000 \u0018*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004:\u0002\u0018\u0019B\u0005\u00a2\u0006\u0002\u0010\u0005J(\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000b2\u0010\u0008\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0011J$\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00132\u0006\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0011H&J!\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00162\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0000\u00a2\u0006\u0002\u0008\u0017R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;",
        "TInput",
        "",
        "TOutput",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;",
        "()V",
        "requestedTimeout",
        "",
        "getRequestedTimeout",
        "()Ljava/lang/Integer;",
        "taskerIntent",
        "Landroid/content/Intent;",
        "getArgsSignalFinish",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;",
        "context",
        "Landroid/content/Context;",
        "input",
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;",
        "run",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResult;",
        "runWithIntent",
        "Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$RunnerActionResult;",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;",
        "runWithIntent$taskerpluginlibrary_release",
        "Companion",
        "RunnerActionResult",
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


# static fields
.field public static final Companion:Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$Companion;


# instance fields
.field private taskerIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;->Companion:Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;-><init>()V

    return-void
.end method

.method public static synthetic getArgsSignalFinish$default(Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;Landroid/content/Context;Landroid/content/Intent;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;ILjava/lang/Object;)Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 48
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;->getArgsSignalFinish(Landroid/content/Context;Landroid/content/Intent;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getArgsSignalFinish"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getArgsSignalFinish(Landroid/content/Context;Landroid/content/Intent;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "TTInput;>;)",
            "Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskerIntent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;

    invoke-virtual {p0, p1, p3}, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;->getRenames$taskerpluginlibrary_release(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;

    move-result-object v1

    new-instance v2, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$getArgsSignalFinish$1;

    invoke-direct {v2, p0, p1, p3}, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$getArgsSignalFinish$1;-><init>(Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method protected final getRequestedTimeout()Ljava/lang/Integer;
    .locals 3

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;->taskerIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lnet/dinglisch/android/tasker/TaskerPlugin$Setting;->getHintTimeoutMS(Landroid/os/Bundle;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public abstract run(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "TTInput;>;)",
            "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResult<",
            "TTOutput;>;"
        }
    .end annotation
.end method

.method public final runWithIntent$taskerpluginlibrary_release(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;Landroid/content/Intent;)Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$RunnerActionResult;
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 19
    new-instance p1, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$RunnerActionResult;

    invoke-direct {p1, v0}, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$RunnerActionResult;-><init>(Z)V

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 20
    new-instance p1, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$RunnerActionResult;

    invoke-direct {p1, v0}, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$RunnerActionResult;-><init>(Z)V

    return-object p1

    .line 21
    :cond_1
    sget-object v1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;->Companion:Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;

    move-object v2, p1

    check-cast v2, Landroid/app/Service;

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->getMayNeedToStartForeground(Landroid/content/Intent;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;->startForegroundIfNeeded$default(Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;Landroid/app/Service;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;ZILjava/lang/Object;)V

    :try_start_0
    iput-object p2, p0, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;->taskerIntent:Landroid/content/Intent;

    .line 24
    move-object v8, p1

    check-cast v8, Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;->getInputClass(Landroid/content/Intent;)Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v7, p2

    invoke-static/range {v7 .. v12}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->getTaskerInput$default(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;ILjava/lang/Object;)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;

    move-result-object v0

    .line 25
    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;->run(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResult;

    move-result-object v1

    .line 26
    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p0, v2, p2, v0}, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;->getArgsSignalFinish(Landroid/content/Context;Landroid/content/Intent;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResult;->signalFinish(Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 28
    new-instance v1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultError;

    invoke-direct {v1, v0}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultError;-><init>(Ljava/lang/Throwable;)V

    move-object v3, p1

    check-cast v3, Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;->getArgsSignalFinish$default(Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;Landroid/content/Context;Landroid/content/Intent;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;ILjava/lang/Object;)Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultError;->signalFinish(Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;)Z

    .line 30
    :goto_0
    new-instance p1, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$RunnerActionResult;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$RunnerActionResult;-><init>(Z)V

    return-object p1
.end method
