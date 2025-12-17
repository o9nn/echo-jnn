.class public final Lcom/auth0/android/request/internal/DefaultThreadSwitcher;
.super Ljava/lang/Object;
.source "ThreadSwitcher.kt"

# interfaces
.implements Lcom/auth0/android/request/internal/ThreadSwitcher;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010\u000e\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/auth0/android/request/internal/DefaultThreadSwitcher;",
        "Lcom/auth0/android/request/internal/ThreadSwitcher;",
        "backgroundExecutor",
        "Ljava/util/concurrent/Executor;",
        "(Ljava/util/concurrent/Executor;)V",
        "mainHandler",
        "Landroid/os/Handler;",
        "backgroundThread",
        "",
        "runnable",
        "Ljava/lang/Runnable;",
        "createAsync",
        "looper",
        "Landroid/os/Looper;",
        "mainThread",
        "auth0_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private volatile mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/auth0/android/request/internal/DefaultThreadSwitcher;-><init>(Ljava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "backgroundExecutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/request/internal/DefaultThreadSwitcher;->backgroundExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x4

    .line 24
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string p2, "newFixedThreadPool(MAX_CONCURRENT_THREADS)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/concurrent/Executor;

    .line 23
    :cond_0
    invoke-direct {p0, p1}, Lcom/auth0/android/request/internal/DefaultThreadSwitcher;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private final createAsync(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    .line 44
    invoke-static {p1}, Landroidx/core/os/HandlerCompat;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    const-string v0, "createAsync(looper)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public backgroundThread(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/internal/DefaultThreadSwitcher;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 40
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public mainThread(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/internal/DefaultThreadSwitcher;->mainHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 31
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/auth0/android/request/internal/DefaultThreadSwitcher;->mainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "getMainLooper()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/auth0/android/request/internal/DefaultThreadSwitcher;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/auth0/android/request/internal/DefaultThreadSwitcher;->mainHandler:Landroid/os/Handler;

    .line 35
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/auth0/android/request/internal/DefaultThreadSwitcher;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 36
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
