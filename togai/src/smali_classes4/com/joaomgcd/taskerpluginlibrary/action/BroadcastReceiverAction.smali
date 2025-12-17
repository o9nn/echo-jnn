.class public final Lcom/joaomgcd/taskerpluginlibrary/action/BroadcastReceiverAction;
.super Landroid/content/BroadcastReceiver;
.source "ActionReceivers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActionReceivers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActionReceivers.kt\ncom/joaomgcd/taskerpluginlibrary/action/BroadcastReceiverAction\n+ 2 Internal.kt\ncom/joaomgcd/taskerpluginlibrary/extensions/InternalKt\n*L\n1#1,33:1\n59#2,4:34\n*S KotlinDebug\n*F\n+ 1 ActionReceivers.kt\ncom/joaomgcd/taskerpluginlibrary/action/BroadcastReceiverAction\n*L\n17#1:34,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/action/BroadcastReceiverAction;",
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

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x3

    .line 15
    invoke-virtual {p0, v0}, Lcom/joaomgcd/taskerpluginlibrary/action/BroadcastReceiverAction;->setResultCode(I)V

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/joaomgcd/taskerpluginlibrary/action/IntentServiceAction;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 36
    invoke-static {p1, p2}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->startServiceDependingOnTargetApi(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
