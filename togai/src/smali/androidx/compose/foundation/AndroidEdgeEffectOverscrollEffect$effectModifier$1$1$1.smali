.class final Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "AndroidOverscroll.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidOverscroll.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidOverscroll.kt\nandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1\n+ 2 TempListUtils.kt\nandroidx/compose/foundation/TempListUtilsKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,591:1\n36#2,3:592\n39#2,2:599\n41#2:602\n33#3,4:595\n38#3:601\n98#3,2:603\n33#3,6:605\n100#3:611\n*S KotlinDebug\n*F\n+ 1 AndroidOverscroll.kt\nandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1\n*L\n328#1:592,3\n328#1:599,2\n328#1:602\n328#1:595,4\n328#1:601\n332#1:603,2\n332#1:605,6\n332#1:611\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"
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
    c = "androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1"
    f = "AndroidOverscroll.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x144,
        0x148
    }
    m = "invokeSuspend"
    n = {
        "$this$awaitPointerEventScope",
        "$this$awaitPointerEventScope"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;->this$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;

    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;->this$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    invoke-direct {v0, v1, p2}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;->L$0:Ljava/lang/Object;

    .line 323
    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v8, p1

    move-object v7, v0

    goto :goto_1

    .line 342
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v2, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;->L$0:Ljava/lang/Object;

    .line 323
    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v7, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 324
    move-object v7, v0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v2, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;->label:I

    invoke-static {v2, v4, v7}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_3

    return-object v1

    .line 323
    :cond_3
    :goto_0
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v8, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;->this$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 325
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/input/pointer/PointerId;->box-impl(J)Landroidx/compose/ui/input/pointer/PointerId;

    move-result-object v9

    invoke-static {v8, v9}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->access$setPointerId$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/ui/input/pointer/PointerId;)V

    iget-object v8, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;->this$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 326
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v7

    invoke-static {v8, v7}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->access$setPointerPosition$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/ui/geometry/Offset;)V

    move-object v7, v0

    .line 328
    :cond_4
    move-object v8, v7

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v2, v7, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;->L$0:Ljava/lang/Object;

    iput v3, v7, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;->label:I

    invoke-static {v2, v5, v8, v6, v5}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v8

    .line 593
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 596
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    move v11, v4

    :goto_2
    if-ge v11, v10, :cond_7

    .line 597
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 599
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 328
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v13

    if-eqz v13, :cond_6

    move-object v13, v9

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 602
    :cond_7
    check-cast v9, Ljava/util/List;

    .line 332
    iget-object v8, v7, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;->this$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 606
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    move v11, v4

    :goto_3
    if-ge v11, v10, :cond_9

    .line 607
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 604
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 332
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v13

    invoke-static {v8}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->access$getPointerId$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroidx/compose/ui/input/pointer/PointerId;

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl(JLjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_9
    move-object v12, v5

    :goto_4
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v12, :cond_a

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    :cond_a
    if-eqz v12, :cond_b

    .line 335
    iget-object v8, v7, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;->this$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v10

    invoke-static {v10, v11}, Landroidx/compose/ui/input/pointer/PointerId;->box-impl(J)Landroidx/compose/ui/input/pointer/PointerId;

    move-result-object v10

    invoke-static {v8, v10}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->access$setPointerId$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/ui/input/pointer/PointerId;)V

    .line 336
    iget-object v8, v7, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;->this$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v10

    invoke-static {v10, v11}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v10

    invoke-static {v8, v10}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->access$setPointerPosition$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/ui/geometry/Offset;)V

    .line 338
    :cond_b
    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v6

    if-nez v8, :cond_4

    .line 339
    iget-object v1, v7, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1$1$1;->this$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    invoke-static {v1, v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->access$setPointerId$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/ui/input/pointer/PointerId;)V

    .line 342
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
