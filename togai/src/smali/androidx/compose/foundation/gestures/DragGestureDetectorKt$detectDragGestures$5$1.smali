.class final Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "DragGestureDetector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nDragGestureDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragGestureDetector.kt\nandroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1\n+ 2 DragGestureDetector.kt\nandroidx/compose/foundation/gestures/DragGestureDetectorKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,881:1\n666#2,18:882\n684#2,4:909\n688#2,58:920\n98#3,2:900\n33#3,6:902\n100#3:908\n33#3,6:913\n100#3:919\n*S KotlinDebug\n*F\n+ 1 DragGestureDetector.kt\nandroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1\n*L\n181#1:882,18\n181#1:909,4\n181#1:920,58\n181#1:900,2\n181#1:902,6\n181#1:908\n181#1:913,6\n181#1:919\n*E\n"
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
    c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGestures$5$1"
    f = "DragGestureDetector.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0xb1,
        0x382,
        0x3b4,
        0xc2
    }
    m = "invokeSuspend"
    n = {
        "$this$awaitPointerEventScope",
        "$this$awaitPointerEventScope",
        "down",
        "overSlop",
        "$this$awaitPointerSlopOrCancellation_u2dwtdNQyU_u24default$iv",
        "pointerDirectionConfig$iv",
        "pointer$iv",
        "triggerOnMainAxisSlop$iv",
        "touchSlop$iv",
        "totalMainPositionChange$iv",
        "totalCrossPositionChange$iv",
        "$this$awaitPointerEventScope",
        "down",
        "overSlop",
        "$this$awaitPointerSlopOrCancellation_u2dwtdNQyU_u24default$iv",
        "pointerDirectionConfig$iv",
        "pointer$iv",
        "dragEvent$iv",
        "triggerOnMainAxisSlop$iv",
        "touchSlop$iv",
        "totalMainPositionChange$iv",
        "totalCrossPositionChange$iv"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "I$0",
        "F$0",
        "F$1",
        "F$2",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "I$0",
        "F$0",
        "F$1",
        "F$2"
    }
.end annotation


# instance fields
.field final synthetic $onDrag:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onDragCancel:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onDragEnd:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onDragStart:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field F$0:F

.field F$1:F

.field F$2:F

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->$onDragStart:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->$onDrag:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->$onDragCancel:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->$onDragEnd:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->$onDragStart:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->$onDrag:Lkotlin/jvm/functions/Function2;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->$onDragCancel:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->$onDragEnd:Lkotlin/jvm/functions/Function0;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v8, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    .line 176
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v0

    move-object/from16 v0, p1

    goto/16 :goto_10

    .line 204
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->F$2:F

    iget v10, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->F$1:F

    iget v11, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->F$0:F

    iget v12, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->I$0:I

    iget-object v13, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$6:Ljava/lang/Object;

    .line 176
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v14, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$5:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v15, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$4:Ljava/lang/Object;

    check-cast v15, Landroidx/compose/foundation/gestures/PointerDirectionConfig;

    iget-object v6, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$3:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v3, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$1:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v5, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 v8, 0x3

    move/from16 v20, v11

    move-object v11, v0

    move v0, v12

    move/from16 v12, v20

    move-object/from16 v21, v4

    move v4, v2

    move-object v2, v6

    move v6, v10

    move-object v10, v3

    move-object v3, v5

    move-object/from16 v5, v21

    goto/16 :goto_b

    :cond_2
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->F$2:F

    iget v3, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->F$1:F

    iget v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->F$0:F

    iget v5, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->I$0:I

    iget-object v6, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$5:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v10, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$4:Ljava/lang/Object;

    check-cast v10, Landroidx/compose/foundation/gestures/PointerDirectionConfig;

    iget-object v11, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$3:Ljava/lang/Object;

    check-cast v11, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v12, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v13, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$1:Ljava/lang/Object;

    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v14, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$0:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v7, p1

    move v15, v5

    move-object v5, v13

    move-object v13, v10

    move-object v10, v12

    move v12, v4

    move v4, v2

    move-object v2, v11

    move-object v11, v0

    const/4 v0, 0x2

    move-object/from16 v20, v6

    move v6, v3

    move-object v3, v14

    move-object/from16 v14, v20

    goto/16 :goto_3

    :cond_3
    iget-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 177
    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$0:Ljava/lang/Object;

    iput v8, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->label:I

    invoke-static {v2, v7, v3}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_5

    return-object v1

    .line 176
    :cond_5
    :goto_0
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 179
    new-instance v4, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    sget-object v5, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v5

    iput-wide v5, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object v5, v0

    .line 182
    :goto_1
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v10

    .line 183
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    move-result v6

    .line 885
    invoke-static {}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->getHorizontalPointerDirectionConfig()Landroidx/compose/foundation/gestures/PointerDirectionConfig;

    move-result-object v12

    .line 889
    invoke-interface {v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;

    move-result-object v13

    invoke-static {v13, v10, v11}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->access$isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object v0, v9

    goto/16 :goto_e

    .line 892
    :cond_6
    invoke-interface {v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v13

    invoke-static {v13, v6}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->pointerSlop-E8SPZFQ(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    move-result v6

    .line 893
    new-instance v13, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iput-wide v10, v13, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object v10, v4

    move-object v11, v5

    move v15, v7

    move-object v14, v13

    const/4 v4, 0x0

    move-object v5, v3

    move-object v13, v12

    move-object v3, v2

    move v12, v6

    const/4 v6, 0x0

    .line 898
    :goto_2
    move-object v7, v11

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v3, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$0:Ljava/lang/Object;

    iput-object v5, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$1:Ljava/lang/Object;

    iput-object v10, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$2:Ljava/lang/Object;

    iput-object v2, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$3:Ljava/lang/Object;

    iput-object v13, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$4:Ljava/lang/Object;

    iput-object v14, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$5:Ljava/lang/Object;

    iput-object v9, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$6:Ljava/lang/Object;

    iput v15, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->I$0:I

    iput v12, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->F$0:F

    iput v6, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->F$1:F

    iput v4, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->F$2:F

    const/4 v0, 0x2

    iput v0, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->label:I

    invoke-static {v2, v9, v7, v8, v9}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_7

    return-object v1

    .line 176
    :cond_7
    :goto_3
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 899
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    .line 903
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_9

    .line 904
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 901
    move-object/from16 v17, v16

    check-cast v17, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-object/from16 v18, v0

    move-object/from16 p1, v1

    .line 899
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    iget-wide v2, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v0, v18

    move-object/from16 v3, v19

    goto :goto_4

    :cond_9
    move-object/from16 p1, v1

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    const/16 v16, 0x0

    :goto_5
    move-object/from16 v0, v16

    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v0, :cond_a

    :goto_6
    move-object/from16 v1, p1

    move-object v3, v5

    move-object v4, v10

    move-object v5, v11

    move-object/from16 v2, v19

    goto/16 :goto_c

    .line 909
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_6

    .line 911
    :cond_b
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 912
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    .line 914
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_d

    .line 915
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 901
    move-object v7, v3

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 912
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_8

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_8
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v3, :cond_e

    goto :goto_6

    .line 924
    :cond_e
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v0

    iput-wide v0, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    :goto_9
    const/4 v8, 0x1

    const/4 v9, 0x0

    goto/16 :goto_2

    .line 927
    :cond_f
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v1

    .line 928
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPosition-F1C5BW0()J

    move-result-wide v7

    .line 930
    invoke-interface {v13, v1, v2}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->mainAxisDelta-k-4lQ0M(J)F

    move-result v3

    .line 931
    invoke-interface {v13, v7, v8}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->mainAxisDelta-k-4lQ0M(J)F

    move-result v9

    sub-float/2addr v3, v9

    .line 933
    invoke-interface {v13, v1, v2}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->crossAxisDelta-k-4lQ0M(J)F

    move-result v1

    .line 934
    invoke-interface {v13, v7, v8}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->crossAxisDelta-k-4lQ0M(J)F

    move-result v2

    sub-float/2addr v1, v2

    add-float v2, v6, v3

    add-float/2addr v1, v4

    if-eqz v15, :cond_10

    .line 939
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    goto :goto_a

    .line 941
    :cond_10
    invoke-interface {v13, v2, v1}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->offsetFromChanges-dBAh8RU(FF)J

    move-result-wide v3

    .line 944
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    move-result v3

    :goto_a
    cmpg-float v4, v3, v12

    if-gez v4, :cond_13

    .line 948
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    move-object v4, v11

    check-cast v4, Lkotlin/coroutines/Continuation;

    move-object/from16 v6, v19

    iput-object v6, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$0:Ljava/lang/Object;

    iput-object v5, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$1:Ljava/lang/Object;

    iput-object v10, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$2:Ljava/lang/Object;

    move-object/from16 v7, v17

    iput-object v7, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$3:Ljava/lang/Object;

    iput-object v13, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$4:Ljava/lang/Object;

    iput-object v14, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$5:Ljava/lang/Object;

    iput-object v0, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$6:Ljava/lang/Object;

    iput v15, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->I$0:I

    iput v12, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->F$0:F

    iput v2, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->F$1:F

    iput v1, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->F$2:F

    const/4 v8, 0x3

    iput v8, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->label:I

    invoke-interface {v7, v3, v4}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v4, p1

    if-ne v3, v4, :cond_11

    return-object v4

    :cond_11
    move-object v3, v6

    move v6, v2

    move-object v2, v7

    move-object/from16 v20, v13

    move-object v13, v0

    move v0, v15

    move-object/from16 v15, v20

    move-object/from16 v21, v4

    move v4, v1

    move-object/from16 v1, v21

    .line 949
    :goto_b
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v7

    if-eqz v7, :cond_12

    move-object v2, v3

    move-object v3, v5

    move-object v4, v10

    move-object v5, v11

    :goto_c
    const/4 v0, 0x0

    goto :goto_e

    :cond_12
    move-object v13, v15

    const/4 v8, 0x1

    const/4 v9, 0x0

    move v15, v0

    move-object/from16 v0, p0

    goto/16 :goto_2

    :cond_13
    move-object/from16 v4, p1

    move-object/from16 v7, v17

    move-object/from16 v6, v19

    const/4 v8, 0x3

    if-eqz v15, :cond_14

    .line 955
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v3, v12

    sub-float/2addr v2, v3

    .line 956
    invoke-interface {v13, v2, v1}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->offsetFromChanges-dBAh8RU(FF)J

    move-result-wide v1

    goto :goto_d

    .line 961
    :cond_14
    invoke-interface {v13, v2, v1}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->offsetFromChanges-dBAh8RU(FF)J

    move-result-wide v1

    .line 965
    invoke-static {v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->div-tuRUvjQ(JF)J

    move-result-wide v8

    invoke-static {v8, v9, v12}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(JF)J

    move-result-wide v8

    .line 966
    invoke-static {v1, v2, v8, v9}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v1

    .line 186
    :goto_d
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 187
    iput-wide v1, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 973
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v1

    if-eqz v1, :cond_1a

    move-object v1, v4

    move-object v3, v5

    move-object v2, v6

    move-object v4, v10

    move-object v5, v11

    :goto_e
    if-eqz v0, :cond_16

    .line 189
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v6

    if-eqz v6, :cond_15

    goto :goto_f

    :cond_15
    move-object/from16 v0, p0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_16
    :goto_f
    if-eqz v0, :cond_19

    .line 191
    iget-object v3, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->$onDragStart:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v6

    invoke-interface {v3, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v3, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->$onDrag:Lkotlin/jvm/functions/Function2;

    iget-wide v6, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v3

    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1$2;

    iget-object v6, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->$onDrag:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v6}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1$2;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object v6, v5

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v8, 0x0

    iput-object v8, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$0:Ljava/lang/Object;

    iput-object v8, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$1:Ljava/lang/Object;

    iput-object v8, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$2:Ljava/lang/Object;

    iput-object v8, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$3:Ljava/lang/Object;

    iput-object v8, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$4:Ljava/lang/Object;

    iput-object v8, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$5:Ljava/lang/Object;

    iput-object v8, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->L$6:Ljava/lang/Object;

    const/4 v9, 0x4

    iput v9, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->label:I

    invoke-static {v2, v3, v4, v0, v6}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->drag-jO51t88(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_17

    return-object v1

    :cond_17
    :goto_10
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_18

    .line 199
    iget-object v0, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->$onDragCancel:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_11

    .line 201
    :cond_18
    iget-object v0, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$1;->$onDragEnd:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 204
    :cond_19
    :goto_11
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_1a
    move-object/from16 v0, p0

    move-object v1, v4

    move-object v3, v6

    move-object v2, v7

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto/16 :goto_9
.end method
