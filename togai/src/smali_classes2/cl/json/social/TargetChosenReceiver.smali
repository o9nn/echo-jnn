.class public Lcl/json/social/TargetChosenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TargetChosenReceiver.java"


# static fields
.field private static final EXTRA_RECEIVER_TOKEN:Ljava/lang/String; = "receiver_token"

.field private static final LOCK:Ljava/lang/Object;

.field private static callback:Lcom/facebook/react/bridge/Promise;

.field private static sLastRegisteredReceiver:Lcl/json/social/TargetChosenReceiver;

.field private static sTargetChosenReceiveAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcl/json/social/TargetChosenReceiver;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static callbackReject(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcl/json/social/TargetChosenReceiver;->callback:Lcom/facebook/react/bridge/Promise;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0, p0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcl/json/social/TargetChosenReceiver;->callback:Lcom/facebook/react/bridge/Promise;

    return-void
.end method

.method public static callbackResolve(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcl/json/social/TargetChosenReceiver;->callback:Lcom/facebook/react/bridge/Promise;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0, p0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcl/json/social/TargetChosenReceiver;->callback:Lcom/facebook/react/bridge/Promise;

    return-void
.end method

.method public static getSharingSenderIntent(Lcom/facebook/react/bridge/ReactContext;)Landroid/content/IntentSender;
    .locals 5

    sget-object v0, Lcl/json/social/TargetChosenReceiver;->LOCK:Ljava/lang/Object;

    .line 40
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcl/json/social/TargetChosenReceiver;->sTargetChosenReceiveAction:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcl/json/social/TargetChosenReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ACTION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcl/json/social/TargetChosenReceiver;->sTargetChosenReceiveAction:Ljava/lang/String;

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcl/json/social/TargetChosenReceiver;->sLastRegisteredReceiver:Lcl/json/social/TargetChosenReceiver;

    if-eqz v2, :cond_1

    .line 46
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 48
    :cond_1
    new-instance v2, Lcl/json/social/TargetChosenReceiver;

    invoke-direct {v2}, Lcl/json/social/TargetChosenReceiver;-><init>()V

    sput-object v2, Lcl/json/social/TargetChosenReceiver;->sLastRegisteredReceiver:Lcl/json/social/TargetChosenReceiver;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v2, v3, :cond_2

    .line 49
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v2, v3, :cond_2

    sget-object v2, Lcl/json/social/TargetChosenReceiver;->sLastRegisteredReceiver:Lcl/json/social/TargetChosenReceiver;

    .line 50
    new-instance v3, Landroid/content/IntentFilter;

    sget-object v4, Lcl/json/social/TargetChosenReceiver;->sTargetChosenReceiveAction:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    sget-object v2, Lcl/json/social/TargetChosenReceiver;->sLastRegisteredReceiver:Lcl/json/social/TargetChosenReceiver;

    .line 52
    new-instance v3, Landroid/content/IntentFilter;

    sget-object v4, Lcl/json/social/TargetChosenReceiver;->sTargetChosenReceiveAction:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcl/json/social/TargetChosenReceiver;->sTargetChosenReceiveAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcl/json/social/TargetChosenReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "receiver_token"

    sget-object v2, Lcl/json/social/TargetChosenReceiver;->sLastRegisteredReceiver:Lcl/json/social/TargetChosenReceiver;

    .line 59
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x54000000

    .line 60
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 54
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static isSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static registerCallbacks(Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    sput-object p0, Lcl/json/social/TargetChosenReceiver;->callback:Lcom/facebook/react/bridge/Promise;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcl/json/social/TargetChosenReceiver;->LOCK:Ljava/lang/Object;

    .line 70
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcl/json/social/TargetChosenReceiver;->sLastRegisteredReceiver:Lcl/json/social/TargetChosenReceiver;

    if-eq v1, p0, :cond_0

    .line 71
    monitor-exit v0

    return-void

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcl/json/social/TargetChosenReceiver;->sLastRegisteredReceiver:Lcl/json/social/TargetChosenReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    sput-object p1, Lcl/json/social/TargetChosenReceiver;->sLastRegisteredReceiver:Lcl/json/social/TargetChosenReceiver;

    .line 74
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "receiver_token"

    .line 75
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "receiver_token"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "android.intent.extra.CHOSEN_COMPONENT"

    .line 79
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 80
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    const-string v0, "success"

    const/4 v1, 0x1

    .line 81
    invoke-interface {p2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p1, :cond_2

    const-string v0, "message"

    .line 83
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "message"

    const-string v0, "OK"

    .line 86
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_0
    invoke-static {p2}, Lcl/json/social/TargetChosenReceiver;->callbackResolve(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 74
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
