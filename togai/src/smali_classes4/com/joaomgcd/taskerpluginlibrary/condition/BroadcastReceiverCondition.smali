.class public final Lcom/joaomgcd/taskerpluginlibrary/condition/BroadcastReceiverCondition;
.super Landroid/content/BroadcastReceiver;
.source "ConditionReceivers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/condition/BroadcastReceiverCondition;",
        "Landroid/content/BroadcastReceiver;",
        "()V",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
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
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, v0}, Lcom/joaomgcd/taskerpluginlibrary/condition/BroadcastReceiverCondition;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "getResultExtras(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/joaomgcd/taskerpluginlibrary/condition/BroadcastReceiverCondition$onReceive$1;

    invoke-direct {v1, p0}, Lcom/joaomgcd/taskerpluginlibrary/condition/BroadcastReceiverCondition$onReceive$1;-><init>(Lcom/joaomgcd/taskerpluginlibrary/condition/BroadcastReceiverCondition;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, p2, v0, v1}, Lcom/joaomgcd/taskerpluginlibrary/condition/ConditionReceiversKt;->access$getAndHandleResult(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
