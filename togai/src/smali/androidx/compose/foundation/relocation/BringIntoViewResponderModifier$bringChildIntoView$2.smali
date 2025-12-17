.class final Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BringIntoViewResponder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->bringChildIntoView(Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.relocation.BringIntoViewResponderModifier$bringChildIntoView$2"
    f = "BringIntoViewResponder.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x1,
        0x2
    }
    l = {
        0xe0,
        0xe9,
        0xf0
    }
    m = "invokeSuspend"
    n = {
        "thisRequest",
        "layoutCoordinates",
        "thisRequest",
        "previousRequest",
        "thisRequest"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$2",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $boundsProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $childCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    iput-object p2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->$childCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    iput-object p3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->$boundsProvider:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;

    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    iget-object v2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->$childCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    iget-object v3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->$boundsProvider:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, v2, v3, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$0:Ljava/lang/Object;

    .line 198
    check-cast v0, Lkotlin/Pair;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_1

    .line 254
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$2:Ljava/lang/Object;

    .line 198
    check-cast v1, Lkotlin/Pair;

    iget-object v3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlin/Pair;

    iget-object v4, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/layout/LayoutCoordinates;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v3

    goto/16 :goto_4

    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/Pair;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_3

    :catchall_1
    move-exception p1

    goto/16 :goto_4

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 199
    invoke-virtual {v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_4
    iget-object v6, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->$childCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 200
    invoke-interface {v6}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v6

    if-nez v6, :cond_5

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_5
    iget-object v6, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->$childCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    iget-object v7, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->$boundsProvider:Lkotlin/jvm/functions/Function0;

    .line 204
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/geometry/Rect;

    if-nez v7, :cond_6

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 202
    :cond_6
    invoke-static {v1, v6, v7}, Landroidx/compose/foundation/relocation/BringIntoViewResponderKt;->access$localRectOf(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v6

    .line 212
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 213
    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v6, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 214
    invoke-static {p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$getNewestReceivedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lkotlin/Pair;

    move-result-object p1

    iget-object v8, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 215
    invoke-static {v8, v7}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$setNewestReceivedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lkotlin/Pair;)V

    if-eqz p1, :cond_d

    .line 222
    :try_start_3
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/geometry/Rect;

    invoke-static {v8, v6}, Landroidx/compose/foundation/relocation/BringIntoViewResponderKt;->access$completelyOverlaps(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_2

    .line 233
    :cond_7
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/Job;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$0:Ljava/lang/Object;

    iput-object v7, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$1:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$2:Ljava/lang/Object;

    iput v3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->label:I

    invoke-interface {v4, v6}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v3, v0, :cond_8

    return-object v0

    :cond_8
    move-object v4, v1

    move-object v3, v7

    move-object v1, p1

    :goto_0
    :try_start_4
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 237
    invoke-static {p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$getNewestDispatchedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lkotlin/Pair;

    move-result-object p1

    if-ne p1, v1, :cond_a

    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 240
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput-object v3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$2:Ljava/lang/Object;

    iput v2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->label:I

    invoke-static {p1, v3, v4, v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$dispatchRequest(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lkotlin/Pair;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    move-object v0, v3

    :goto_1
    move-object v3, v0

    :cond_a
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 246
    invoke-static {p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$getNewestDispatchedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lkotlin/Pair;

    move-result-object p1

    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    invoke-static {v0}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$getNewestReceivedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lkotlin/Pair;

    move-result-object v0

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 247
    invoke-static {p1, v5}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$setNewestDispatchedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lkotlin/Pair;)V

    :cond_b
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 250
    invoke-static {p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$getNewestReceivedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lkotlin/Pair;

    move-result-object p1

    if-ne p1, v3, :cond_c

    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 251
    invoke-static {p1, v5}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$setNewestReceivedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lkotlin/Pair;)V

    .line 254
    :cond_c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_d
    :goto_2
    :try_start_5
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 224
    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput-object v7, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$0:Ljava/lang/Object;

    iput v4, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->label:I

    invoke-static {p1, v7, v1, v2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$dispatchRequest(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lkotlin/Pair;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ne p1, v0, :cond_e

    return-object v0

    :cond_e
    move-object v0, v7

    .line 225
    :goto_3
    :try_start_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 246
    invoke-static {v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$getNewestDispatchedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lkotlin/Pair;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    invoke-static {v2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$getNewestReceivedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lkotlin/Pair;

    move-result-object v2

    if-ne v1, v2, :cond_f

    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 247
    invoke-static {v1, v5}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$setNewestDispatchedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lkotlin/Pair;)V

    :cond_f
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 250
    invoke-static {v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$getNewestReceivedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lkotlin/Pair;

    move-result-object v1

    if-ne v1, v0, :cond_10

    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 251
    invoke-static {v0, v5}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$setNewestReceivedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lkotlin/Pair;)V

    :cond_10
    return-object p1

    :catchall_2
    move-exception p1

    move-object v0, v7

    :goto_4
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 246
    invoke-static {v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$getNewestDispatchedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lkotlin/Pair;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    invoke-static {v2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$getNewestReceivedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lkotlin/Pair;

    move-result-object v2

    if-ne v1, v2, :cond_11

    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 247
    invoke-static {v1, v5}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$setNewestDispatchedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lkotlin/Pair;)V

    :cond_11
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 250
    invoke-static {v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$getNewestReceivedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lkotlin/Pair;

    move-result-object v1

    if-ne v1, v0, :cond_12

    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 251
    invoke-static {v0, v5}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$setNewestReceivedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lkotlin/Pair;)V

    :cond_12
    throw p1
.end method
