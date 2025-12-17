.class public Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;
.super Ljava/lang/Object;
.source "BackgroundFetch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$Callback;
    }
.end annotation


# static fields
.field public static final ACTION_CONFIGURE:Ljava/lang/String; = "configure"

.field public static final ACTION_FINISH:Ljava/lang/String; = "finish"

.field public static final ACTION_FORCE_RELOAD:Ljava/lang/String; = "TSBackgroundFetch-forceReload"

.field public static final ACTION_START:Ljava/lang/String; = "start"

.field public static final ACTION_STATUS:Ljava/lang/String; = "status"

.field public static final ACTION_STOP:Ljava/lang/String; = "stop"

.field public static final EVENT_FETCH:Ljava/lang/String; = ".event.BACKGROUND_FETCH"

.field public static final STATUS_AVAILABLE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "TSBackgroundFetch"

.field private static mInstance:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

.field private static sThreadPool:Ljava/util/concurrent/ExecutorService;

.field private static uiHandler:Landroid/os/Handler;


# instance fields
.field private final mConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFetchCallback:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mConfig:Ljava/util/Map;

    iput-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getUiHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-static {}, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->getInstance()Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;)Ljava/util/Map;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mConfig:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;Lcom/transistorsoft/tsbackgroundfetch/BGTask;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->doFetch(Lcom/transistorsoft/tsbackgroundfetch/BGTask;)V

    return-void
.end method

.method private doFetch(Lcom/transistorsoft/tsbackgroundfetch/BGTask;)V
    .locals 3

    .line 255
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getConfig(Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mContext:Landroid/content/Context;

    .line 258
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getJobId()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->cancel(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    .line 262
    :cond_0
    invoke-static {}, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->getInstance()Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->isHeadless()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mFetchCallback:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$Callback;

    if-eqz v0, :cond_4

    .line 264
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getTaskId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$Callback;->onFetch(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getStopOnTerminate()Z

    move-result v1

    const-string v2, "TSBackgroundFetch"

    if-eqz v1, :cond_2

    const-string v0, "- Stopping on terminate"

    .line 267
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getTaskId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->stop(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getJobService()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mContext:Landroid/content/Context;

    .line 271
    invoke-virtual {p1, v1, v0}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->fireHeadlessEvent(Landroid/content/Context;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;)V
    :try_end_0
    .catch Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Headless task error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;->printStackTrace()V

    goto :goto_0

    :cond_3
    const-string v0, "- BackgroundFetch event has occurred while app is terminated but there\'s no jobService configured to handle the event.  BackgroundFetch will terminate."

    .line 278
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->finish(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getTaskId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->stop(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;
    .locals 1

    sget-object v0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mInstance:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getInstanceSynchronized(Landroid/content/Context;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    move-result-object p0

    sput-object p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mInstance:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    :cond_0
    sget-object p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mInstance:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    return-object p0
.end method

.method private static declared-synchronized getInstanceSynchronized(Landroid/content/Context;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;
    .locals 2

    const-class v0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mInstance:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mInstance:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    :cond_0
    sget-object p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mInstance:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    :cond_0
    sget-object v0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getUiHandler()Landroid/os/Handler;
    .locals 2

    sget-object v0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->uiHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->uiHandler:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private registerTask(Ljava/lang/String;)V
    .locals 4

    .line 237
    invoke-virtual {p0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getConfig(Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;

    move-result-object v0

    const-string v1, "TSBackgroundFetch"

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "- registerTask failed to find BackgroundFetchConfig for taskId "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mContext:Landroid/content/Context;

    .line 243
    invoke-virtual {v0, v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->save(Landroid/content/Context;)V

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "- registerTask: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-virtual {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getForceAlarmManager()Z

    move-result v2

    if-nez v2, :cond_1

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " (jobId: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getJobId()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 249
    :cond_1
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mContext:Landroid/content/Context;

    .line 251
    invoke-static {p1, v0}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->schedule(Landroid/content/Context;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;)V

    return-void
.end method


# virtual methods
.method public configure(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$Callback;)V
    .locals 3

    const-string v0, "TSBackgroundFetch"

    const-string v1, "- configure"

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mFetchCallback:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$Callback;

    iget-object p2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mConfig:Ljava/util/Map;

    .line 87
    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mConfig:Ljava/util/Map;

    .line 88
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mConfig:Ljava/util/Map;

    .line 90
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;

    const-string v1, "TSBackgroundFetch"

    const-string v2, "Re-configured existing task"

    .line 91
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mContext:Landroid/content/Context;

    .line 92
    invoke-static {v1, v0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->reschedule(Landroid/content/Context;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;)V

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mConfig:Ljava/util/Map;

    .line 93
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    monitor-exit p2

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mConfig:Ljava/util/Map;

    .line 96
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getTaskId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->start(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 98
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public finish(Ljava/lang/String;)V
    .locals 3

    const-string v0, "TSBackgroundFetch"

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "- finish: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getTask(Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BGTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->finish()V

    .line 195
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getConfig(Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getPeriodic()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mContext:Landroid/content/Context;

    .line 198
    invoke-virtual {v0, v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->destroy(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mConfig:Ljava/util/Map;

    .line 199
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mConfig:Ljava/util/Map;

    .line 200
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method getConfig(Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;
    .locals 2

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mConfig:Ljava/util/Map;

    .line 285
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mConfig:Ljava/util/Map;

    .line 286
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mConfig:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 287
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getFetchCallback()Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$Callback;
    .locals 1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mFetchCallback:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$Callback;

    return-object v0
.end method

.method onBoot()V
    .locals 2

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mContext:Landroid/content/Context;

    .line 103
    new-instance v1, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$1;

    invoke-direct {v1, p0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$1;-><init>(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;)V

    invoke-static {v0, v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->load(Landroid/content/Context;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$OnLoadCallback;)V

    return-void
.end method

.method onFetch(Lcom/transistorsoft/tsbackgroundfetch/BGTask;)V
    .locals 3

    .line 214
    invoke-static {p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->addTask(Lcom/transistorsoft/tsbackgroundfetch/BGTask;)V

    const-string v0, "TSBackgroundFetch"

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "- Background Fetch event received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mConfig:Ljava/util/Map;

    .line 216
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mConfig:Ljava/util/Map;

    .line 217
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mContext:Landroid/content/Context;

    .line 218
    new-instance v2, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$2;

    invoke-direct {v2, p0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$2;-><init>(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;Lcom/transistorsoft/tsbackgroundfetch/BGTask;)V

    invoke-static {v1, v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->load(Landroid/content/Context;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$OnLoadCallback;)V

    .line 230
    monitor-exit v0

    return-void

    .line 232
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-direct {p0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->doFetch(Lcom/transistorsoft/tsbackgroundfetch/BGTask;)V

    return-void

    :catchall_0
    move-exception p1

    .line 232
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public scheduleTask(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;)V
    .locals 3

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mConfig:Ljava/util/Map;

    .line 175
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mConfig:Ljava/util/Map;

    .line 176
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mContext:Landroid/content/Context;

    .line 179
    invoke-virtual {p1, v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->save(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mConfig:Ljava/util/Map;

    .line 180
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getTaskId()Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-direct {p0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->registerTask(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 181
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public start(Ljava/lang/String;)V
    .locals 3

    const-string v0, "- start"

    const-string v1, "TSBackgroundFetch"

    .line 128
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getTask(Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BGTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[TSBackgroundFetch start] Task "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " already registered"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 135
    :cond_0
    invoke-direct {p0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->registerTask(Ljava/lang/String;)V

    return-void
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public stop(Ljava/lang/String;)V
    .locals 5

    const-string v0, "- stop"

    if-eqz p1, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "- stop: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "TSBackgroundFetch"

    .line 144
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mConfig:Ljava/util/Map;

    .line 147
    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mConfig:Ljava/util/Map;

    .line 148
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;

    .line 149
    invoke-virtual {v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getTask(Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BGTask;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 151
    invoke-virtual {v2}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->finish()V

    .line 152
    invoke-virtual {v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->removeTask(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mContext:Landroid/content/Context;

    .line 154
    invoke-virtual {v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getJobId()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->cancel(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {v1, v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->destroy(Landroid/content/Context;)V

    goto :goto_0

    .line 157
    :cond_2
    invoke-static {}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->clear()V

    .line 158
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 160
    :cond_3
    invoke-static {p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getTask(Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BGTask;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 162
    invoke-virtual {v0}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->finish()V

    .line 163
    invoke-virtual {v0}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->removeTask(Ljava/lang/String;)V

    .line 165
    :cond_4
    invoke-virtual {p0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getConfig(Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mContext:Landroid/content/Context;

    .line 167
    invoke-virtual {p1, v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->destroy(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getJobId()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->cancel(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_5
    :goto_1
    return-void
.end method
