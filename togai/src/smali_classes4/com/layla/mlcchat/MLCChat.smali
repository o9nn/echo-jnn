.class public final Lcom/layla/mlcchat/MLCChat;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "MLCChat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layla/mlcchat/MLCChat$ChatState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001\u0018B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\tH\u0007J\u0008\u0010\r\u001a\u00020\tH\u0016J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0006H\u0007J\u0018\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J \u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u0010\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0007R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/layla/mlcchat/MLCChat;",
        "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "listenerCount",
        "",
        "messageQueue",
        "Ljava/util/concurrent/ArrayBlockingQueue;",
        "",
        "addListener",
        "",
        "eventName",
        "getName",
        "removeListeners",
        "count",
        "sendMessage",
        "msg",
        "promise",
        "Lcom/facebook/react/bridge/Promise;",
        "start",
        "modelDir",
        "modelLib",
        "stop",
        "ChatState",
        "app_release"
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
.field private listenerCount:I

.field private final messageQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 21
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/layla/mlcchat/MLCChat;->messageQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-void
.end method

.method public static final synthetic access$getMessageQueue$p(Lcom/layla/mlcchat/MLCChat;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/layla/mlcchat/MLCChat;->messageQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method public static final synthetic access$getReactApplicationContext(Lcom/layla/mlcchat/MLCChat;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/layla/mlcchat/MLCChat;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget p1, p0, Lcom/layla/mlcchat/MLCChat;->listenerCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/layla/mlcchat/MLCChat;->listenerCount:I

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MLCChat"

    return-object v0
.end method

.method public final removeListeners(I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget v0, p0, Lcom/layla/mlcchat/MLCChat;->listenerCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/layla/mlcchat/MLCChat;->listenerCount:I

    return-void
.end method

.method public final sendMessage(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/layla/mlcchat/MLCChat;->messageQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 80
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public final start(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "modelDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelLib"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "4"

    const/4 v1, 0x1

    const-string v2, "TVM_NUM_THREADS"

    .line 49
    invoke-static {v2, v0, v1}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    const/4 v3, 0x0

    new-instance v0, Lcom/layla/mlcchat/MLCChat$start$1;

    const/4 v7, 0x0

    invoke-direct {v0, p0, p2, p1, v7}, Lcom/layla/mlcchat/MLCChat$start$1;-><init>(Lcom/layla/mlcchat/MLCChat;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 75
    invoke-interface {p3, v7}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public final stop(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/layla/mlcchat/MLCChat;->messageQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    const-string v0, "###KILL###"

    .line 86
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method
