.class final Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Clickable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/input/pointer/PointerInputScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClickable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Clickable.kt\nandroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1\n+ 2 IntOffset.kt\nandroidx/compose/ui/unit/IntOffsetKt\n*L\n1#1,565:1\n157#2:566\n*S KotlinDebug\n*F\n+ 1 Clickable.kt\nandroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1\n*L\n342#1:566\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.ClickableKt$combinedClickable$4$gesture$1$1"
    f = "Clickable.kt"
    i = {}
    l = {
        0x157
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $centreOffset:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $delayPressInteraction:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $enabled:Z

.field final synthetic $hasDoubleClick:Z

.field final synthetic $hasLongClick:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $onClickState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $onDoubleClickState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $onLongClickState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $pressedInteraction:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/PressInteraction$Press;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;ZZZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;ZZZ",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/PressInteraction$Press;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$centreOffset:Landroidx/compose/runtime/MutableState;

    iput-boolean p2, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$hasDoubleClick:Z

    iput-boolean p3, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$enabled:Z

    iput-boolean p4, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$hasLongClick:Z

    iput-object p5, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$onDoubleClickState:Landroidx/compose/runtime/State;

    iput-object p6, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$onLongClickState:Landroidx/compose/runtime/State;

    iput-object p7, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p8, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$pressedInteraction:Landroidx/compose/runtime/MutableState;

    iput-object p9, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$delayPressInteraction:Landroidx/compose/runtime/State;

    iput-object p10, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$onClickState:Landroidx/compose/runtime/State;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p11}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 13
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

    new-instance v12, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;

    iget-object v1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$centreOffset:Landroidx/compose/runtime/MutableState;

    iget-boolean v2, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$hasDoubleClick:Z

    iget-boolean v3, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$enabled:Z

    iget-boolean v4, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$hasLongClick:Z

    iget-object v5, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$onDoubleClickState:Landroidx/compose/runtime/State;

    iget-object v6, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$onLongClickState:Landroidx/compose/runtime/State;

    iget-object v7, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v8, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$pressedInteraction:Landroidx/compose/runtime/MutableState;

    iget-object v9, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$delayPressInteraction:Landroidx/compose/runtime/State;

    iget-object v10, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$onClickState:Landroidx/compose/runtime/State;

    move-object v0, v12

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;-><init>(Landroidx/compose/runtime/MutableState;ZZZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v12, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlin/coroutines/Continuation;

    return-object v12
.end method

.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 65535
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 366
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65535
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->L$0:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputScope;

    iget-object p1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$centreOffset:Landroidx/compose/runtime/MutableState;

    .line 342
    invoke-interface {v3}, Landroidx/compose/ui/input/pointer/PointerInputScope;->getSize-YbymL2g()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSizeKt;->getCenter-ozmzZPI(J)J

    move-result-wide v4

    .line 566
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v4}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    .line 342
    invoke-interface {p1, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-boolean p1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$hasDoubleClick:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$enabled:Z

    if-eqz p1, :cond_2

    .line 343
    new-instance p1, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1$1;

    iget-object v4, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$onDoubleClickState:Landroidx/compose/runtime/State;

    invoke-direct {p1, v4}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1$1;-><init>(Landroidx/compose/runtime/State;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    move-object v4, p1

    goto :goto_0

    .line 347
    :cond_2
    move-object p1, v1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    move-object v4, v1

    :goto_0
    iget-boolean p1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$hasLongClick:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$enabled:Z

    if-eqz p1, :cond_3

    .line 343
    new-instance p1, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1$2;

    iget-object v1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$onLongClickState:Landroidx/compose/runtime/State;

    invoke-direct {p1, v1}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1$2;-><init>(Landroidx/compose/runtime/State;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    move-object v5, p1

    goto :goto_1

    .line 352
    :cond_3
    move-object p1, v1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    move-object v5, v1

    .line 343
    :goto_1
    new-instance p1, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1$3;

    iget-boolean v7, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$enabled:Z

    iget-object v8, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v9, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$pressedInteraction:Landroidx/compose/runtime/MutableState;

    iget-object v10, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$delayPressInteraction:Landroidx/compose/runtime/State;

    const/4 v11, 0x0

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1$3;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function3;

    new-instance p1, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1$4;

    iget-boolean v1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$enabled:Z

    iget-object v7, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->$onClickState:Landroidx/compose/runtime/State;

    invoke-direct {p1, v1, v7}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1$4;-><init>(ZLandroidx/compose/runtime/State;)V

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function1;

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput v2, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;->label:I

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->detectTapGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 366
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
