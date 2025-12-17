.class public abstract Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;
.super Landroid/app/Service;
.source "IntentServiceParallel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntentServiceParallel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntentServiceParallel.kt\ncom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,96:1\n1#2:97\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u001cH$J\u001a\u0010 \u001a\u00020\u001e2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010!\u001a\u00020\u0016H\u0016J\"\u0010\"\u001a\u00020\u00162\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010#\u001a\u00020\u00162\u0006\u0010!\u001a\u00020\u0016H\u0016J\u0010\u0010$\u001a\u00020\u001e2\u0008\u0008\u0002\u0010%\u001a\u00020&R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R#\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\u000c0\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\n\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0017R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;",
        "Landroid/app/Service;",
        "name",
        "",
        "(Ljava/lang/String;)V",
        "binder",
        "Landroid/os/Binder;",
        "getBinder",
        "()Landroid/os/Binder;",
        "binder$delegate",
        "Lkotlin/Lazy;",
        "executor",
        "Ljava/util/concurrent/ExecutorService;",
        "kotlin.jvm.PlatformType",
        "getExecutor",
        "()Ljava/util/concurrent/ExecutorService;",
        "executor$delegate",
        "handler",
        "Landroid/os/Handler;",
        "jobsCount",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "lastStartId",
        "",
        "Ljava/lang/Integer;",
        "getName",
        "()Ljava/lang/String;",
        "onBind",
        "intent",
        "Landroid/content/Intent;",
        "onDestroy",
        "",
        "onHandleIntent",
        "onStart",
        "startId",
        "onStartCommand",
        "flags",
        "startForegroundIfNeeded",
        "mayNeedToStartForeground",
        "",
        "taskerpluginlibrary_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final binder$delegate:Lkotlin/Lazy;

.field private final executor$delegate:Lkotlin/Lazy;

.field private final handler:Landroid/os/Handler;

.field private jobsCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private lastStartId:Ljava/lang/Integer;

.field private final name:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$N4P-V-Qp5OM5M7BMXgn8Ua6BTkM(Ljava/lang/RuntimeException;)V
    .locals 0

    invoke-static {p0}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->onStart$lambda$3$lambda$0(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZZxh_UAss5zOX-uvIgaQ0rVlevU(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->onStart$lambda$3(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oWELhO-8hzpt1RabMvWSZ17K_II(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;)V
    .locals 0

    invoke-static {p0}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->onStart$lambda$3$lambda$2(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->name:Ljava/lang/String;

    .line 26
    sget-object p1, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$binder$2;->INSTANCE:Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$binder$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->binder$delegate:Lkotlin/Lazy;

    .line 34
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->handler:Landroid/os/Handler;

    .line 39
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->jobsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    new-instance p1, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$executor$2;

    invoke-direct {p1, p0}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$executor$2;-><init>(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->executor$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getBinder()Landroid/os/Binder;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->binder$delegate:Lkotlin/Lazy;

    .line 26
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Binder;

    return-object v0
.end method

.method private final getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->executor$delegate:Lkotlin/Lazy;

    .line 46
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private static final onStart$lambda$3(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->onHandleIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    iget-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$$ExternalSyntheticLambda0;-><init>(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 74
    :try_start_1
    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$$ExternalSyntheticLambda1;-><init>(Ljava/lang/RuntimeException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    iget-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$$ExternalSyntheticLambda0;-><init>(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;)V

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$$ExternalSyntheticLambda0;-><init>(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw p1
.end method

.method private static final onStart$lambda$3$lambda$0(Ljava/lang/RuntimeException;)V
    .locals 1

    const-string v0, "$throwable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    throw p0
.end method

.method private static final onStart$lambda$3$lambda$2(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->jobsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->lastStartId:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->stopSelf(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->stopSelf()V

    :goto_0
    return-void
.end method

.method public static synthetic startForegroundIfNeeded$default(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 27
    :cond_0
    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->startForegroundIfNeeded(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: startForegroundIfNeeded"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/Binder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->getBinder()Landroid/os/Binder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->onBind(Landroid/content/Intent;)Landroid/os/Binder;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 93
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 94
    invoke-direct {p0}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method protected abstract onHandleIntent(Landroid/content/Intent;)V
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->jobsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 67
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->lastStartId:Ljava/lang/Integer;

    .line 68
    invoke-direct {p0}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$$ExternalSyntheticLambda2;-><init>(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;Landroid/content/Intent;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p3}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->onStart(Landroid/content/Intent;I)V

    const/4 p1, 0x2

    return p1
.end method

.method public final startForegroundIfNeeded(Z)V
    .locals 6

    .line 27
    sget-object v0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;->Companion:Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;

    move-object v1, p0

    check-cast v1, Landroid/app/Service;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;->startForegroundIfNeeded$default(Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;Landroid/app/Service;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;ZILjava/lang/Object;)V

    return-void
.end method
