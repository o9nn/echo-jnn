.class public final Lcom/joaomgcd/taskerpluginlibrary/condition/IntentServiceCondition;
.super Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;
.source "ConditionReceivers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/condition/IntentServiceCondition;",
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

    const-string v0, "IntentServiceTaskerCondition"

    .line 36
    invoke-direct {p0, v0}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    move-object v0, p0

    check-cast v0, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->startForegroundIfNeeded$default(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;ZILjava/lang/Object;)V

    .line 39
    invoke-static {p1}, Lnet/dinglisch/android/tasker/TaskerPlugin$Condition;->getResultReceiver(Landroid/content/Intent;)Landroid/os/ResultReceiver;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/joaomgcd/taskerpluginlibrary/condition/IntentServiceCondition$onHandleIntent$1;

    invoke-direct {v3, v0}, Lcom/joaomgcd/taskerpluginlibrary/condition/IntentServiceCondition$onHandleIntent$1;-><init>(Landroid/os/ResultReceiver;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, p1, v2, v3}, Lcom/joaomgcd/taskerpluginlibrary/condition/ConditionReceiversKt;->access$getAndHandleResult(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
