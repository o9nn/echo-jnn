.class public Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;
.super Ljava/lang/Object;
.source "LifecycleManager.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager$OnHeadlessChangeCallback;,
        Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager$OnStateChangeCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHeadlessChangeCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager$OnHeadlessChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadlessChangeEvent:Ljava/lang/Runnable;

.field private final mIsBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsHeadless:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mStateChangeCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager$OnStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mHeadlessChangeCallbacks:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mStateChangeCallbacks:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mIsBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mIsHeadless:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->onHeadlessChange(Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager$OnHeadlessChangeCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->fireHeadlessChangeListeners()V

    return-void
.end method

.method private fireHeadlessChangeListeners()V
    .locals 4

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mHeadlessChangeEvent:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mHandler:Landroid/os/Handler;

    .line 207
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mHeadlessChangeEvent:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mHeadlessChangeCallbacks:Ljava/util/List;

    .line 210
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mHeadlessChangeCallbacks:Ljava/util/List;

    .line 211
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager$OnHeadlessChangeCallback;

    iget-object v3, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mIsHeadless:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 212
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager$OnHeadlessChangeCallback;->onChange(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mHeadlessChangeCallbacks:Ljava/util/List;

    .line 214
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 215
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private fireStateChangeListeners(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mStateChangeCallbacks:Ljava/util/List;

    .line 197
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mStateChangeCallbacks:Ljava/util/List;

    .line 198
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager$OnStateChangeCallback;

    .line 199
    invoke-interface {v2, p1}, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager$OnStateChangeCallback;->onChange(Z)V

    goto :goto_0

    .line 201
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getInstance()Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;
    .locals 1

    sget-object v0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->sInstance:Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;

    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->getInstanceSynchronized()Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->sInstance:Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;

    :cond_0
    sget-object v0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->sInstance:Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;

    return-object v0
.end method

.method private static declared-synchronized getInstanceSynchronized()Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;
    .locals 2

    const-class v0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->sInstance:Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;

    invoke-direct {v1}, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;-><init>()V

    sput-object v1, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->sInstance:Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;

    :cond_0
    sget-object v1, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->sInstance:Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic lambda$new$0(Z)V
    .locals 2

    if-eqz p0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u262f\ufe0f  HeadlessMode? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TSBackgroundFetch"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public isBackground()Z
    .locals 1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mIsBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isHeadless()Z
    .locals 1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mIsHeadless:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3

    const-string p1, "TSBackgroundFetch"

    const-string v0, "\u262f\ufe0f  onCreate"

    .line 127
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance p1, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager$1;

    invoke-direct {p1, p0}, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager$1;-><init>(Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;)V

    iput-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mHeadlessChangeEvent:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    .line 136
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mIsHeadless:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 137
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mIsBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 138
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string p1, "TSBackgroundFetch"

    const-string v0, "\u262f\ufe0f  onDestroy"

    .line 162
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mIsBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 163
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mIsHeadless:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 164
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onHeadlessChange(Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager$OnHeadlessChangeCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mIsHeadless:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager$OnHeadlessChangeCallback;->onChange(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mHeadlessChangeCallbacks:Ljava/util/List;

    .line 104
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mHeadlessChangeCallbacks:Ljava/util/List;

    .line 105
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string p1, "TSBackgroundFetch"

    const-string v0, "\u262f\ufe0f  onPause"

    .line 179
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mIsBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 180
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x0

    .line 181
    invoke-direct {p0, p1}, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->fireStateChangeListeners(Z)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string p1, "TSBackgroundFetch"

    const-string v0, "\u262f\ufe0f  onResume"

    .line 186
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 187
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mIsBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mIsHeadless:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 191
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x1

    .line 192
    invoke-direct {p0, p1}, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->fireStateChangeListeners(Z)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string p1, "TSBackgroundFetch"

    const-string v0, "\u262f\ufe0f  onStart"

    .line 143
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 145
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mHeadlessChangeEvent:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mHandler:Landroid/os/Handler;

    .line 149
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 152
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mIsHeadless:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mIsBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 154
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 157
    invoke-direct {p0}, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->fireHeadlessChangeListeners()V

    return-void
.end method

.method public onStateChange(Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager$OnStateChangeCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mStateChangeCallbacks:Ljava/util/List;

    .line 112
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mStateChangeCallbacks:Ljava/util/List;

    .line 113
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    const-string p1, "TSBackgroundFetch"

    const-string v0, "\u262f\ufe0f  onStop"

    .line 169
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 170
    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mIsBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 173
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public resume()V
    .locals 2

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public run()V
    .locals 1

    .line 122
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public setHeadless(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mIsHeadless:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mIsHeadless:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u262f\ufe0f  HeadlessMode? "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mIsHeadless:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TSBackgroundFetch"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mHeadlessChangeEvent:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mHandler:Landroid/os/Handler;

    .line 91
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 92
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 93
    invoke-direct {p0}, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->fireHeadlessChangeListeners()V

    :cond_1
    return-void
.end method
