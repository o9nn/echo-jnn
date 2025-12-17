.class public Lcom/transistorsoft/tsbackgroundfetch/FetchAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FetchAlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "power"

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TSBackgroundFetch::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 22
    sget v1, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->MAX_TIME:I

    add-int/lit16 v1, v1, 0xfa0

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 26
    new-instance v1, Lcom/transistorsoft/tsbackgroundfetch/FetchAlarmReceiver$1;

    invoke-direct {v1, p0, v0}, Lcom/transistorsoft/tsbackgroundfetch/FetchAlarmReceiver$1;-><init>(Lcom/transistorsoft/tsbackgroundfetch/FetchAlarmReceiver;Landroid/os/PowerManager$WakeLock;)V

    .line 36
    new-instance v0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$CompletionHandler;I)V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->onFetch(Lcom/transistorsoft/tsbackgroundfetch/BGTask;)V

    return-void
.end method
