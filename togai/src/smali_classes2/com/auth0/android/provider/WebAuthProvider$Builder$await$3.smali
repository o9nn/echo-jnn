.class final Lcom/auth0/android/provider/WebAuthProvider$Builder$await$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebAuthProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auth0/android/provider/WebAuthProvider$Builder;->await$auth0_release(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/auth0/android/result/Credentials;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebAuthProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebAuthProvider.kt\ncom/auth0/android/provider/WebAuthProvider$Builder$await$3\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,559:1\n314#2,11:560\n*S KotlinDebug\n*F\n+ 1 WebAuthProvider.kt\ncom/auth0/android/provider/WebAuthProvider$Builder$await$3\n*L\n539#1:560,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/auth0/android/result/Credentials;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.auth0.android.provider.WebAuthProvider$Builder$await$3"
    f = "WebAuthProvider.kt"
    i = {}
    l = {
        0x230
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/auth0/android/provider/WebAuthProvider$Builder;


# direct methods
.method constructor <init>(Lcom/auth0/android/provider/WebAuthProvider$Builder;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/android/provider/WebAuthProvider$Builder;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/auth0/android/provider/WebAuthProvider$Builder$await$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder$await$3;->this$0:Lcom/auth0/android/provider/WebAuthProvider$Builder;

    iput-object p2, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder$await$3;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/auth0/android/provider/WebAuthProvider$Builder$await$3;

    iget-object v0, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder$await$3;->this$0:Lcom/auth0/android/provider/WebAuthProvider$Builder;

    iget-object v1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder$await$3;->$context:Landroid/content/Context;

    invoke-direct {p1, v0, v1, p2}, Lcom/auth0/android/provider/WebAuthProvider$Builder$await$3;-><init>(Lcom/auth0/android/provider/WebAuthProvider$Builder;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/auth0/android/provider/WebAuthProvider$Builder$await$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/auth0/android/result/Credentials;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/auth0/android/provider/WebAuthProvider$Builder$await$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/auth0/android/provider/WebAuthProvider$Builder$await$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/auth0/android/provider/WebAuthProvider$Builder$await$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder$await$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder$await$3;->L$1:Ljava/lang/Object;

    .line 538
    check-cast v0, Landroid/content/Context;

    iget-object v0, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder$await$3;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/auth0/android/provider/WebAuthProvider$Builder;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder$await$3;->this$0:Lcom/auth0/android/provider/WebAuthProvider$Builder;

    iget-object v1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder$await$3;->$context:Landroid/content/Context;

    iput-object p1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder$await$3;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder$await$3;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder$await$3;->label:I

    .line 560
    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    .line 561
    new-instance v4, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 567
    invoke-virtual {v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 568
    move-object v2, v4

    check-cast v2, Lkotlinx/coroutines/CancellableContinuation;

    .line 540
    new-instance v5, Lcom/auth0/android/provider/WebAuthProvider$Builder$await$3$1$1;

    invoke-direct {v5, v2}, Lcom/auth0/android/provider/WebAuthProvider$Builder$await$3$1$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v5, Lcom/auth0/android/callback/Callback;

    invoke-virtual {p1, v1, v5}, Lcom/auth0/android/provider/WebAuthProvider$Builder;->start(Landroid/content/Context;Lcom/auth0/android/callback/Callback;)V

    .line 569
    invoke-virtual {v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 560
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_2
    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    return-object p1
.end method
