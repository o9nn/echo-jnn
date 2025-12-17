.class public final Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$Companion;
.super Ljava/lang/Object;
.source "TaskerPluginRunnerAction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskerPluginRunnerAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskerPluginRunnerAction.kt\ncom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$Companion\n+ 2 TaskerPluginRunner.kt\ncom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion\n*L\n1#1,53:1\n93#2,15:54\n*S KotlinDebug\n*F\n+ 1 TaskerPluginRunnerAction.kt\ncom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$Companion\n*L\n39#1:54,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J!\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0000\u00a2\u0006\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$Companion;",
        "",
        "()V",
        "runFromIntent",
        "Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$RunnerActionResult;",
        "context",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;",
        "taskerIntent",
        "Landroid/content/Intent;",
        "runFromIntent$taskerpluginlibrary_release",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final runFromIntent$taskerpluginlibrary_release(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;Landroid/content/Intent;)Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$RunnerActionResult;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 37
    new-instance p1, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$RunnerActionResult;

    invoke-direct {p1, v0}, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$RunnerActionResult;-><init>(Z)V

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 38
    new-instance p1, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$RunnerActionResult;

    invoke-direct {p1, v0}, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$RunnerActionResult;-><init>(Z)V

    return-object p1

    .line 39
    :cond_1
    sget-object v1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;->Companion:Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;

    .line 54
    invoke-static {p2}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->getTaskerPluginExtraBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->getRunnerClass(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 58
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 60
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v2

    :goto_0
    if-nez v1, :cond_3

    goto :goto_1

    .line 65
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;

    check-cast v1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;

    move-object v2, v1

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type com.joaomgcd.taskerpluginlibrary.action.TaskerPluginRunnerAction<*, *>"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    :cond_5
    :goto_1
    check-cast v2, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;

    if-nez v2, :cond_6

    .line 41
    new-instance v1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultError;

    const-string v2, "Couldn\'t get action runner from intent"

    invoke-direct {v1, v0, v2}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultError;-><init>(ILjava/lang/String;)V

    new-instance v2, Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;

    move-object v4, p1

    check-cast v4, Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v3, v2

    move-object v5, p2

    invoke-direct/range {v3 .. v9}, Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v2}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultError;->signalFinish(Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;)Z

    .line 42
    new-instance p1, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$RunnerActionResult;

    invoke-direct {p1, v0}, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$RunnerActionResult;-><init>(Z)V

    return-object p1

    .line 44
    :cond_6
    invoke-virtual {v2, p1, p2}, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;->runWithIntent$taskerpluginlibrary_release(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;Landroid/content/Intent;)Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$RunnerActionResult;

    move-result-object p1

    return-object p1
.end method
