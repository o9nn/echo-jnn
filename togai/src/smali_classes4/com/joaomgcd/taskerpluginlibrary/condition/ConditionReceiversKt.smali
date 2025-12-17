.class public final Lcom/joaomgcd/taskerpluginlibrary/condition/ConditionReceiversKt;
.super Ljava/lang/Object;
.source "ConditionReceivers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\u001a@\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u001a\u0010\u0008\u001a\u0016\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u00010\tH\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "getAndHandleResult",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "resultBundle",
        "Landroid/os/Bundle;",
        "handler",
        "Lkotlin/Function2;",
        "",
        "taskerpluginlibrary_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$getAndHandleResult(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/joaomgcd/taskerpluginlibrary/condition/ConditionReceiversKt;->getAndHandleResult(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final getAndHandleResult(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/os/Bundle;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 16
    :cond_0
    sget-object v0, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;->Companion:Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition$Companion;->getResultFromIntent$taskerpluginlibrary_release(Landroid/content/Context;Landroid/content/Intent;)Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;

    move-result-object p1

    .line 17
    instance-of v0, p0, Landroid/app/IntentService;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;->getHasStartedForeground()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    sget-object v2, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;->Companion:Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;

    move-object v3, p0

    check-cast v3, Landroid/app/Service;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;->startForegroundIfNeeded$default(Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;Landroid/app/Service;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;ZILjava/lang/Object;)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 22
    invoke-virtual {p1}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;->getCode()I

    move-result p0

    const-string v0, "net.dinglisch.android.tasker.extras.VARIABLES"

    .line 23
    invoke-virtual {p1}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    const/16 p0, 0x12

    .line 25
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
