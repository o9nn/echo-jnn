.class public Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;
.super Ljava/lang/Object;
.source "HeadlessTask.java"

# interfaces
.implements Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;


# static fields
.field private static HEADLESS_TASK_NAME:Ljava/lang/String; = "BackgroundFetch"

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private mActiveTaskContext:Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

.field private mReactNativeHost:Lcom/facebook/react/ReactNativeHost;


# direct methods
.method static bridge synthetic -$$Nest$minvokeStartTask(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->invokeStartTask(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmHandler()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transistorsoft/tsbackgroundfetch/BGTask;)V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/ReactApplication;

    .line 34
    invoke-interface {p1}, Lcom/facebook/react/ReactApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    new-instance p1, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {p1}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    const-string v0, "taskId"

    .line 40
    invoke-virtual {p2}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "timeout"

    .line 41
    invoke-virtual {p2}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getTimedOut()Z

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    new-instance p2, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    sget-object v0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->HEADLESS_TASK_NAME:Ljava/lang/String;

    const-wide/16 v1, 0x7530

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;J)V

    .line 43
    invoke-virtual {p0, p2}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->startTask(Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    return-void

    :catch_0
    const-string p1, "TSBackgroundFetch"

    const-string p2, "Failed to fetch ReactApplication.  Task ignored."

    .line 36
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private invokeStartTask(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V
    .locals 2

    .line 95
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getLifecycleState()Lcom/facebook/react/common/LifecycleState;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->RESUMED:Lcom/facebook/react/common/LifecycleState;

    if-ne v0, v1, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->getInstance(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    move-result-object p1

    .line 99
    invoke-virtual {p1, p0}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->addTaskEventListener(Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;)V

    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->mActiveTaskContext:Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    .line 102
    :try_start_0
    new-instance v0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;-><init>(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;Lcom/facebook/react/jstasks/HeadlessJsTaskContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "TSBackgroundFetch"

    const-string p2, "Headless task attempted to run in the foreground.  Task ignored."

    .line 114
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->mActiveTaskContext:Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p0}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->removeTaskEventListener(Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;)V

    :cond_0
    return-void
.end method

.method public onHeadlessJsTaskFinish(I)V
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onHeadlessJsTaskFinish: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TSBackgroundFetch"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->mActiveTaskContext:Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    .line 58
    invoke-virtual {p1, p0}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->removeTaskEventListener(Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;)V

    return-void
.end method

.method public onHeadlessJsTaskStart(I)V
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onHeadlessJsTaskStart: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TSBackgroundFetch"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected startTask(Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V
    .locals 2

    .line 69
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;

    .line 70
    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;-><init>(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;Lcom/facebook/react/ReactInstanceManager;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManager;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    .line 86
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->hasStartedCreatingInitialContext()Z

    move-result p1

    if-nez p1, :cond_1

    .line 87
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->createReactContextInBackground()V

    goto :goto_0

    .line 90
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->invokeStartTask(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    :cond_1
    :goto_0
    return-void
.end method
