.class Lcom/transistorsoft/tsbackgroundfetch/FetchAlarmReceiver$1;
.super Ljava/lang/Object;
.source "FetchAlarmReceiver.java"

# interfaces
.implements Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/tsbackgroundfetch/FetchAlarmReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transistorsoft/tsbackgroundfetch/FetchAlarmReceiver;

.field final synthetic val$wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/transistorsoft/tsbackgroundfetch/FetchAlarmReceiver;Landroid/os/PowerManager$WakeLock;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/FetchAlarmReceiver$1;->this$0:Lcom/transistorsoft/tsbackgroundfetch/FetchAlarmReceiver;

    iput-object p2, p0, Lcom/transistorsoft/tsbackgroundfetch/FetchAlarmReceiver$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/FetchAlarmReceiver$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 29
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/FetchAlarmReceiver$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 30
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string v0, "TSBackgroundFetch"

    const-string v1, "- FetchAlarmReceiver finish"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
