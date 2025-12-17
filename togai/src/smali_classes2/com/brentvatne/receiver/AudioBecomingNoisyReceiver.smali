.class public Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioBecomingNoisyReceiver.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private listener:Lcom/brentvatne/receiver/BecomingNoisyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 14
    sget-object v0, Lcom/brentvatne/receiver/BecomingNoisyListener;->NO_OP:Lcom/brentvatne/receiver/BecomingNoisyListener;

    iput-object v0, p0, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;->listener:Lcom/brentvatne/receiver/BecomingNoisyListener;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.media.AUDIO_BECOMING_NOISY"

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;->listener:Lcom/brentvatne/receiver/BecomingNoisyListener;

    .line 23
    invoke-interface {p1}, Lcom/brentvatne/receiver/BecomingNoisyListener;->onAudioBecomingNoisy()V

    :cond_0
    return-void
.end method

.method public removeListener()V
    .locals 1

    .line 34
    sget-object v0, Lcom/brentvatne/receiver/BecomingNoisyListener;->NO_OP:Lcom/brentvatne/receiver/BecomingNoisyListener;

    iput-object v0, p0, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;->listener:Lcom/brentvatne/receiver/BecomingNoisyListener;

    :try_start_0
    iget-object v0, p0, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;->context:Landroid/content/Context;

    .line 36
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setListener(Lcom/brentvatne/receiver/BecomingNoisyListener;)V
    .locals 2

    iput-object p1, p0, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;->listener:Lcom/brentvatne/receiver/BecomingNoisyListener;

    .line 29
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;->context:Landroid/content/Context;

    const/4 v1, 0x4

    .line 30
    invoke-static {v0, p0, p1, v1}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method
