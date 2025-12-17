.class final Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LazyAnimateScroll.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt;->animateScrollToItem(Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/foundation/gestures/ScrollScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyAnimateScroll.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyAnimateScroll.kt\nandroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 LazyAnimateScroll.kt\nandroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt\n*L\n1#1,261:1\n1#2:262\n39#3,4:263\n39#3,4:267\n*S KotlinDebug\n*F\n+ 1 LazyAnimateScroll.kt\nandroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2\n*L\n126#1:263,4\n227#1:267,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/gestures/ScrollScope;"
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
    c = "androidx.compose.foundation.lazy.layout.LazyAnimateScrollKt$animateScrollToItem$2"
    f = "LazyAnimateScroll.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1
    }
    l = {
        0x86,
        0xe6
    }
    m = "invokeSuspend"
    n = {
        "$this$scroll",
        "loop",
        "anim",
        "loops",
        "targetDistancePx",
        "boundDistancePx",
        "forward",
        "$this$scroll"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "F$0",
        "F$1",
        "I$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic $scrollOffset:I

.field final synthetic $this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

.field F$0:F

.field F$1:F

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ILandroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$index:I

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    iput p3, p0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$scrollOffset:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final synthetic access$invokeSuspend$isOvershot(ZLandroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;II)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->invokeSuspend$isOvershot(ZLandroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;II)Z

    move-result p0

    return p0
.end method

.method private static final invokeSuspend$isOvershot(ZLandroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;II)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 93
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->getFirstVisibleItemIndex()I

    move-result p0

    if-le p0, p2, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->getFirstVisibleItemIndex()I

    move-result p0

    if-ne p0, p2, :cond_3

    .line 97
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->getFirstVisibleItemScrollOffset()I

    move-result p0

    if-le p0, p3, :cond_3

    goto :goto_0

    .line 104
    :cond_1
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->getFirstVisibleItemIndex()I

    move-result p0

    if-ge p0, p2, :cond_2

    :goto_0
    move v0, v1

    goto :goto_1

    .line 107
    :cond_2
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->getFirstVisibleItemIndex()I

    move-result p0

    if-ne p0, p2, :cond_3

    .line 108
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->getFirstVisibleItemScrollOffset()I

    move-result p0

    if-ge p0, p3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v0
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

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$index:I

    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    iget v3, p0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$scrollOffset:I

    invoke-direct {v0, v1, v2, v3, p2}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;-><init>(ILandroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;ILkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/gestures/ScrollScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->invoke(Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 44

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    iget v0, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v6, :cond_1

    if-ne v0, v3, :cond_0

    iget-object v0, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$0:Ljava/lang/Object;

    .line 75
    check-cast v0, Landroidx/compose/foundation/gestures/ScrollScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v1

    goto/16 :goto_b

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->I$0:I

    iget v7, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->F$1:F

    iget v8, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->F$0:F

    iget-object v9, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$3:Ljava/lang/Object;

    .line 75
    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v12, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$0:Ljava/lang/Object;

    check-cast v12, Landroidx/compose/foundation/gestures/ScrollScope;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_0 .. :try_end_0} :catch_0

    move v14, v7

    move v15, v8

    move-object v13, v9

    move-object v9, v1

    move-object/from16 v43, v12

    move-object v12, v10

    move-object/from16 v10, v43

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v9, v1

    move-object v0, v12

    goto/16 :goto_9

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$0:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroidx/compose/foundation/gestures/ScrollScope;

    iget v0, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$index:I

    int-to-float v8, v0

    cmpl-float v8, v8, v4

    if-ltz v8, :cond_3

    move v8, v6

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_e

    :try_start_1
    iget-object v0, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    .line 78
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v0

    invoke-static {}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt;->access$getTargetDistance$p()F

    move-result v8

    invoke-interface {v0, v8}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    iget-object v8, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    .line 79
    invoke-interface {v8}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v8

    invoke-static {}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt;->access$getBoundDistance$p()F

    move-result v9

    invoke-interface {v8, v9}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v8

    .line 80
    new-instance v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v6, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 81
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1e

    const/16 v19, 0x0

    invoke-static/range {v11 .. v19}, Landroidx/compose/animation/core/AnimationStateKt;->AnimationState$default(FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v11

    iput-object v11, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v11, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    iget v12, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$index:I

    .line 82
    invoke-interface {v11, v12}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->getTargetItemOffset(I)Ljava/lang/Integer;

    move-result-object v11

    if-nez v11, :cond_a

    iget v11, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$index:I

    iget-object v12, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    .line 87
    invoke-interface {v12}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->getFirstVisibleItemIndex()I

    move-result v12

    if-le v11, v12, :cond_4

    move v11, v6

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    .line 117
    :goto_1
    new-instance v12, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v6, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_1
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_1 .. :try_end_1} :catch_5

    move v15, v0

    move v14, v8

    move v0, v11

    move-object v13, v12

    move-object v11, v9

    move-object v12, v10

    move-object v9, v1

    move-object v10, v7

    .line 118
    :goto_2
    :try_start_2
    iget-boolean v7, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v7, :cond_d

    iget-object v7, v9, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    invoke-interface {v7}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->getItemCount()I

    move-result v7

    if-lez v7, :cond_d

    .line 119
    iget-object v7, v9, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    iget v8, v9, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$index:I

    iget v5, v9, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$scrollOffset:I

    invoke-interface {v7, v8, v5}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->expectedDistanceTo(II)F

    move-result v5

    .line 120
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v15

    if-gez v7, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    move v5, v15

    goto :goto_3

    :cond_6
    neg-float v5, v15

    .line 126
    :goto_3
    iget v7, v9, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$index:I

    iget v7, v9, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$scrollOffset:I

    iget-object v7, v9, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    .line 132
    iget-object v7, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v20, v7

    check-cast v20, Landroidx/compose/animation/core/AnimationState;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1e

    const/16 v29, 0x0

    invoke-static/range {v20 .. v29}, Landroidx/compose/animation/core/AnimationStateKt;->copy$default(Landroidx/compose/animation/core/AnimationState;FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v7

    iput-object v7, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 133
    new-instance v16, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct/range {v16 .. v16}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 134
    iget-object v7, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v20, v7

    check-cast v20, Landroidx/compose/animation/core/AnimationState;

    .line 135
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v21

    const/16 v22, 0x0

    .line 136
    iget-object v7, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/animation/core/AnimationState;

    invoke-virtual {v7}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    cmpg-float v7, v7, v4

    if-nez v7, :cond_7

    const/16 v23, 0x0

    goto :goto_4

    :cond_7
    move/from16 v23, v6

    .line 134
    :goto_4
    new-instance v24, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2$3;

    iget-object v8, v9, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    iget v7, v9, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$index:I

    if-eqz v0, :cond_8

    move/from16 v17, v6

    goto :goto_5

    :cond_8
    const/16 v17, 0x0

    :goto_5
    iget v3, v9, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$scrollOffset:I
    :try_end_2
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_2 .. :try_end_2} :catch_4

    move/from16 v18, v7

    move-object/from16 v7, v24

    move-object v4, v9

    move/from16 v9, v18

    move-object/from16 p1, v10

    move v10, v5

    move-object v5, v11

    move-object/from16 v11, v16

    move-object/from16 v30, v12

    move-object/from16 v12, p1

    move-object/from16 v31, v13

    move-object v13, v5

    move/from16 v32, v14

    move/from16 v14, v17

    move v6, v15

    move/from16 v15, v32

    move-object/from16 v16, v31

    move/from16 v17, v3

    move-object/from16 v18, v30

    :try_start_3
    invoke-direct/range {v7 .. v18}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2$3;-><init>(Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;IFLkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/jvm/internal/Ref$BooleanRef;ZFLkotlin/jvm/internal/Ref$IntRef;ILkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v24, Lkotlin/jvm/functions/Function1;

    move-object/from16 v25, v4

    check-cast v25, Lkotlin/coroutines/Continuation;
    :try_end_3
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_3 .. :try_end_3} :catch_3

    const/16 v26, 0x2

    const/16 v27, 0x0

    move-object/from16 v7, p1

    :try_start_4
    iput-object v7, v4, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$0:Ljava/lang/Object;

    iput-object v5, v4, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$1:Ljava/lang/Object;

    move-object/from16 v10, v30

    iput-object v10, v4, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$2:Ljava/lang/Object;

    move-object/from16 v12, v31

    iput-object v12, v4, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$3:Ljava/lang/Object;

    iput v6, v4, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->F$0:F

    move/from16 v8, v32

    iput v8, v4, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->F$1:F

    iput v0, v4, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->I$0:I

    const/4 v3, 0x1

    iput v3, v4, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->label:I

    invoke-static/range {v20 .. v27}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateTo$default(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_4
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_4 .. :try_end_4} :catch_2

    if-ne v3, v2, :cond_9

    return-object v2

    :cond_9
    move-object v9, v4

    move-object v11, v5

    move v15, v6

    move v14, v8

    move-object v13, v12

    move-object v12, v10

    move-object v10, v7

    .line 219
    :goto_6
    :try_start_5
    iget v3, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_5
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v10

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object/from16 v7, p1

    :goto_7
    move-object v3, v0

    move-object v9, v4

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v4, v9

    move-object v7, v10

    move-object v3, v0

    goto :goto_8

    .line 85
    :cond_a
    :try_start_6
    new-instance v0, Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/animation/core/AnimationState;

    invoke-direct {v0, v3, v4}, Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll;-><init>(ILandroidx/compose/animation/core/AnimationState;)V

    throw v0
    :try_end_6
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    move-exception v0

    move-object v3, v0

    move-object v9, v1

    :goto_8
    move-object v0, v7

    .line 224
    :goto_9
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll;->getPreviousAnimation()Landroidx/compose/animation/core/AnimationState;

    move-result-object v33

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x1e

    const/16 v42, 0x0

    invoke-static/range {v33 .. v42}, Landroidx/compose/animation/core/AnimationStateKt;->copy$default(Landroidx/compose/animation/core/AnimationState;FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v10

    .line 225
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll;->getItemOffset()I

    move-result v3

    iget v4, v9, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$scrollOffset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 226
    new-instance v4, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 230
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-nez v5, :cond_b

    const/4 v5, 0x1

    goto :goto_a

    :cond_b
    const/4 v5, 0x0

    :goto_a
    const/4 v6, 0x1

    xor-int/lit8 v13, v5, 0x1

    new-instance v5, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2$5;

    invoke-direct {v5, v3, v4, v0}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2$5;-><init>(FLkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollScope;)V

    move-object v14, v5

    check-cast v14, Lkotlin/jvm/functions/Function1;

    move-object v15, v9

    check-cast v15, Lkotlin/coroutines/Continuation;

    const/16 v16, 0x2

    const/16 v17, 0x0

    iput-object v0, v9, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$0:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v9, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$1:Ljava/lang/Object;

    iput-object v3, v9, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$2:Ljava/lang/Object;

    iput-object v3, v9, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$3:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v9, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->label:I

    invoke-static/range {v10 .. v17}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateTo$default(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_c

    return-object v2

    .line 258
    :cond_c
    :goto_b
    iget-object v2, v9, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    iget v3, v9, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$index:I

    iget v4, v9, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$scrollOffset:I

    invoke-interface {v2, v0, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->snapToItem(Landroidx/compose/foundation/gestures/ScrollScope;II)V

    .line 260
    :cond_d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 76
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Index should be non-negative ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
