.class public final Lcom/joaomgcd/taskerpluginlibrary/action/IntentServiceAction;
.super Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;
.source "ActionReceivers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/action/IntentServiceAction;",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;",
        "()V",
        "onHandleIntent",
        "",
        "intent",
        "Landroid/content/Intent;",
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
.method public constructor <init>()V
    .locals 1

    const-string v0, "IntentServiceTaskerAction"

    .line 24
    invoke-direct {p0, v0}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->getMayNeedToStartForeground(Landroid/content/Intent;)Z

    move-result v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/joaomgcd/taskerpluginlibrary/action/IntentServiceAction;->startForegroundIfNeeded(Z)V

    .line 28
    sget-object v1, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;->Companion:Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$Companion;

    move-object v2, p0

    check-cast v2, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;

    invoke-virtual {v1, v2, p1}, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$Companion;->runFromIntent$taskerpluginlibrary_release(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;Landroid/content/Intent;)Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$RunnerActionResult;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$RunnerActionResult;->getHasStartedForeground()Z

    move-result p1

    if-nez p1, :cond_0

    .line 30
    invoke-virtual {p0, v0}, Lcom/joaomgcd/taskerpluginlibrary/action/IntentServiceAction;->startForegroundIfNeeded(Z)V

    :cond_0
    return-void
.end method
