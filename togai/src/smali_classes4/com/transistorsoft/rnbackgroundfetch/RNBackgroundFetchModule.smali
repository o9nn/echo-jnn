.class public Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNBackgroundFetchModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# static fields
.field private static final EVENT_FETCH:Ljava/lang/String; = "fetch"

.field private static final FETCH_TASK_ID:Ljava/lang/String; = "react-native-background-fetch"

.field private static final JOB_SERVICE_CLASS:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "RNBackgroundFetch"


# instance fields
.field private initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;->JOB_SERVICE_CLASS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;->initialized:Z

    const-string v0, "TSBackgroundFetch"

    const-string v1, "[RNBackgroundFetch initialize]"

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    .line 24
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method private buildConfig(Lcom/facebook/react/bridge/ReadableMap;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;
    .locals 3

    .line 129
    new-instance v0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    invoke-direct {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;-><init>()V

    const-string v1, "minimumFetchInterval"

    .line 130
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setMinimumFetchInterval(I)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    :cond_0
    const-string v1, "taskId"

    .line 133
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setTaskId(Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    :cond_1
    const-string v1, "delay"

    .line 136
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setDelay(J)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    :cond_2
    const-string v1, "stopOnTerminate"

    .line 140
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 141
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setStopOnTerminate(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    :cond_3
    const-string v1, "forceAlarmManager"

    .line 143
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 144
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setForceAlarmManager(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    :cond_4
    const-string v1, "startOnBoot"

    .line 146
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 147
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setStartOnBoot(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    :cond_5
    const-string v1, "enableHeadless"

    .line 149
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;->JOB_SERVICE_CLASS:Ljava/lang/String;

    .line 150
    invoke-virtual {v0, v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setJobService(Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    :cond_6
    const-string v1, "requiredNetworkType"

    .line 152
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 153
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setRequiredNetworkType(I)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    :cond_7
    const-string v1, "requiresBatteryNotLow"

    .line 155
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 156
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setRequiresBatteryNotLow(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    :cond_8
    const-string v1, "requiresCharging"

    .line 158
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 159
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setRequiresCharging(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    :cond_9
    const-string v1, "requiresDeviceIdle"

    .line 161
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 162
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setRequiresDeviceIdle(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    :cond_a
    const-string v1, "requiresStorageNotLow"

    .line 164
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 165
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setRequiresStorageNotLow(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    :cond_b
    const-string v1, "periodic"

    .line 167
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 168
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setPeriodic(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    :cond_c
    return-object v0
.end method

.method private getAdapter()Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    move-result-object v0

    return-object v0
.end method

.method private initializeBackgroundFetch()V
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;->initialized:Z

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public configure(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 34
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;->getAdapter()Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    move-result-object p3

    .line 36
    new-instance v0, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule$1;

    invoke-direct {v0, p0}, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule$1;-><init>(Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;->buildConfig(Lcom/facebook/react/bridge/ReadableMap;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    move-result-object p1

    const-string v1, "react-native-background-fetch"

    .line 51
    invoke-virtual {p1, v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setTaskId(Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 52
    invoke-virtual {p1, v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setIsFetchTask(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->build()Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;

    move-result-object p1

    .line 50
    invoke-virtual {p3, p1, v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->configure(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$Callback;)V

    const/4 p1, 0x2

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public finish(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 88
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;->getAdapter()Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    move-result-object v0

    .line 89
    invoke-virtual {v0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->finish(Ljava/lang/String;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNBackgroundFetch"

    return-object v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onHostDestroy()V
    .locals 2

    .line 119
    invoke-static {}, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->getInstance()Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->setHeadless(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;->initialized:Z

    return-void
.end method

.method public onHostPause()V
    .locals 0

    return-void
.end method

.method public onHostResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;->initialized:Z

    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;->initializeBackgroundFetch()V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public removeListeners(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public scheduleTask(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;->getAdapter()Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    move-result-object p3

    .line 61
    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;->buildConfig(Lcom/facebook/react/bridge/ReadableMap;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->build()Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->scheduleTask(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;)V

    const/4 p1, 0x1

    .line 62
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public start(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 67
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;->getAdapter()Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    move-result-object p2

    const-string v0, "react-native-background-fetch"

    .line 68
    invoke-virtual {p2, v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->start(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->status()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public status(Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 82
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;->getAdapter()Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->status()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public stop(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "react-native-background-fetch"

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;->getAdapter()Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    move-result-object p3

    .line 76
    invoke-virtual {p3, p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->stop(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 77
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method
