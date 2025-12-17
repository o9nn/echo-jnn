.class final Lcom/layla/mlcchat/MLCChat$start$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MLCChat.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layla/mlcchat/MLCChat;->start(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.layla.mlcchat.MLCChat$start$1"
    f = "MLCChat.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $modelDir:Ljava/lang/String;

.field final synthetic $modelLib:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/layla/mlcchat/MLCChat;


# direct methods
.method constructor <init>(Lcom/layla/mlcchat/MLCChat;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layla/mlcchat/MLCChat;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/layla/mlcchat/MLCChat$start$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/layla/mlcchat/MLCChat$start$1;->this$0:Lcom/layla/mlcchat/MLCChat;

    iput-object p2, p0, Lcom/layla/mlcchat/MLCChat$start$1;->$modelLib:Ljava/lang/String;

    iput-object p3, p0, Lcom/layla/mlcchat/MLCChat$start$1;->$modelDir:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/layla/mlcchat/MLCChat$start$1;

    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$start$1;->this$0:Lcom/layla/mlcchat/MLCChat;

    iget-object v1, p0, Lcom/layla/mlcchat/MLCChat$start$1;->$modelLib:Ljava/lang/String;

    iget-object v2, p0, Lcom/layla/mlcchat/MLCChat$start$1;->$modelDir:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/layla/mlcchat/MLCChat$start$1;-><init>(Lcom/layla/mlcchat/MLCChat;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/layla/mlcchat/MLCChat$start$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/layla/mlcchat/MLCChat$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/layla/mlcchat/MLCChat$start$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/layla/mlcchat/MLCChat$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lcom/layla/mlcchat/MLCChat$start$1;->label:I

    if-nez v0, :cond_2

    .line 51
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    new-instance p1, Lcom/layla/mlcchat/MLCChat$ChatState;

    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$start$1;->this$0:Lcom/layla/mlcchat/MLCChat;

    invoke-static {v0}, Lcom/layla/mlcchat/MLCChat;->access$getReactApplicationContext(Lcom/layla/mlcchat/MLCChat;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    const-string v2, "access$getReactApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    invoke-direct {p1, v0, v1}, Lcom/layla/mlcchat/MLCChat$ChatState;-><init>(Lcom/layla/mlcchat/MLCChat;Lcom/facebook/react/bridge/ReactContext;)V

    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$start$1;->$modelLib:Ljava/lang/String;

    iget-object v1, p0, Lcom/layla/mlcchat/MLCChat$start$1;->$modelDir:Ljava/lang/String;

    .line 54
    invoke-virtual {p1, v0, v1}, Lcom/layla/mlcchat/MLCChat$ChatState;->requestReloadChat(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/layla/mlcchat/MLCChat$start$1;->this$0:Lcom/layla/mlcchat/MLCChat;

    .line 59
    invoke-static {v1}, Lcom/layla/mlcchat/MLCChat;->access$getMessageQueue$p(Lcom/layla/mlcchat/MLCChat;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "###KILL###"

    .line 61
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    sget-object v0, Lcom/layla/mlcchat/MLCChat$start$1$1;->INSTANCE:Lcom/layla/mlcchat/MLCChat$start$1$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0}, Lcom/layla/mlcchat/MLCChat$ChatState;->requestTerminateChat(Lkotlin/jvm/functions/Function0;)V

    const/4 v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/layla/mlcchat/MLCChat$ChatState;->requestGenerate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 73
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 51
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
