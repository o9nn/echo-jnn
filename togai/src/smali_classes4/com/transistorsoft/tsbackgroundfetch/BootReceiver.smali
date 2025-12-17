.class public Lcom/transistorsoft/tsbackgroundfetch/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BootReceiver: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TSBackgroundFetch"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/transistorsoft/tsbackgroundfetch/BootReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BootReceiver$1;-><init>(Lcom/transistorsoft/tsbackgroundfetch/BootReceiver;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
