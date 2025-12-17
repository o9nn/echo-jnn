.class public final Landroidx/compose/foundation/lazy/LazyListState;
.super Ljava/lang/Object;
.source "LazyListState.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollableState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/LazyListState$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListState.kt\nandroidx/compose/foundation/lazy/LazyListState\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,448:1\n76#2:449\n102#2,2:450\n76#2:452\n102#2,2:453\n76#2:455\n102#2,2:456\n76#2:458\n102#2,2:459\n*S KotlinDebug\n*F\n+ 1 LazyListState.kt\nandroidx/compose/foundation/lazy/LazyListState\n*L\n157#1:449\n157#1:450,2\n198#1:452\n198#1:453,2\n215#1:455\n215#1:456,2\n220#1:458\n220#1:459,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00be\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 |2\u00020\u0001:\u0001|B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J#\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020\u00032\u0008\u0008\u0002\u0010]\u001a\u00020\u0003H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010^J\u0015\u0010_\u001a\u00020[2\u0006\u0010`\u001a\u00020aH\u0000\u00a2\u0006\u0002\u0008bJ\u0010\u0010c\u001a\u00020[2\u0006\u0010d\u001a\u00020*H\u0002J\u0010\u0010e\u001a\u00020T2\u0006\u0010f\u001a\u00020TH\u0016J\u0010\u0010g\u001a\u00020[2\u0006\u0010f\u001a\u00020TH\u0002J\u0015\u0010h\u001a\u00020T2\u0006\u0010i\u001a\u00020TH\u0000\u00a2\u0006\u0002\u0008jJB\u0010k\u001a\u00020[2\u0006\u0010l\u001a\u00020m2\'\u0010n\u001a#\u0008\u0001\u0012\u0004\u0012\u00020p\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020[0q\u0012\u0006\u0012\u0004\u0018\u00010r0o\u00a2\u0006\u0002\u0008sH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010tJ#\u0010u\u001a\u00020[2\u0006\u0010\\\u001a\u00020\u00032\u0008\u0008\u0002\u0010]\u001a\u00020\u0003H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010^J\u001d\u0010v\u001a\u00020[2\u0006\u0010\\\u001a\u00020\u00032\u0006\u0010]\u001a\u00020\u0003H\u0000\u00a2\u0006\u0002\u0008wJ\u0015\u0010x\u001a\u00020[2\u0006\u0010y\u001a\u00020zH\u0000\u00a2\u0006\u0002\u0008{R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\tX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R+\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u00148@@@X\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0002\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u0004\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001dR\u000e\u0010\u001f\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010 \u001a\u00020!8F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u0014\u0010$\u001a\u00020%X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u0014\u0010(\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010\u0011R\u0011\u0010)\u001a\u00020*8F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,R\u0014\u0010-\u001a\u0008\u0012\u0004\u0012\u00020*0.X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010/\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0003@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010\u001dR/\u00102\u001a\u0004\u0018\u0001012\u0008\u0010\u000e\u001a\u0004\u0018\u0001018@@@X\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00087\u0010\u001b\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\u0014\u00108\u001a\u000209X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010;R\u001a\u0010<\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010\u0011\"\u0004\u0008>\u0010?R4\u0010A\u001a\u00020@2\u0006\u0010\u000e\u001a\u00020@8@@@X\u0080\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0012\n\u0004\u0008F\u0010\u001b\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER/\u0010H\u001a\u0004\u0018\u00010G2\u0008\u0010\u000e\u001a\u0004\u0018\u00010G8@@BX\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008M\u0010\u001b\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR\u0014\u0010N\u001a\u00020OX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008P\u0010QR\u000e\u0010R\u001a\u00020SX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010U\u001a\u00020T2\u0006\u0010\u000e\u001a\u00020T@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008V\u0010WR\u000e\u0010X\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010Y\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006}"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/LazyListState;",
        "Landroidx/compose/foundation/gestures/ScrollableState;",
        "firstVisibleItemIndex",
        "",
        "firstVisibleItemScrollOffset",
        "(II)V",
        "animateScrollScope",
        "Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;",
        "awaitLayoutModifier",
        "Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;",
        "getAwaitLayoutModifier$foundation_release",
        "()Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;",
        "canScrollBackward",
        "",
        "<set-?>",
        "canScrollForward",
        "getCanScrollForward$foundation_release",
        "()Z",
        "currentPrefetchHandle",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;",
        "Landroidx/compose/ui/unit/Density;",
        "density",
        "getDensity$foundation_release",
        "()Landroidx/compose/ui/unit/Density;",
        "setDensity$foundation_release",
        "(Landroidx/compose/ui/unit/Density;)V",
        "density$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "getFirstVisibleItemIndex",
        "()I",
        "getFirstVisibleItemScrollOffset",
        "indexToPrefetch",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/InteractionSource;",
        "getInteractionSource",
        "()Landroidx/compose/foundation/interaction/InteractionSource;",
        "internalInteractionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "getInternalInteractionSource$foundation_release",
        "()Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "isScrollInProgress",
        "layoutInfo",
        "Landroidx/compose/foundation/lazy/LazyListLayoutInfo;",
        "getLayoutInfo",
        "()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;",
        "layoutInfoState",
        "Landroidx/compose/runtime/MutableState;",
        "numMeasurePasses",
        "getNumMeasurePasses$foundation_release",
        "Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;",
        "placementAnimator",
        "getPlacementAnimator$foundation_release",
        "()Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;",
        "setPlacementAnimator$foundation_release",
        "(Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;)V",
        "placementAnimator$delegate",
        "prefetchState",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;",
        "getPrefetchState$foundation_release",
        "()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;",
        "prefetchingEnabled",
        "getPrefetchingEnabled$foundation_release",
        "setPrefetchingEnabled$foundation_release",
        "(Z)V",
        "Landroidx/compose/ui/unit/Constraints;",
        "premeasureConstraints",
        "getPremeasureConstraints-msEJaDk$foundation_release",
        "()J",
        "setPremeasureConstraints-BRTryo0$foundation_release",
        "(J)V",
        "premeasureConstraints$delegate",
        "Landroidx/compose/ui/layout/Remeasurement;",
        "remeasurement",
        "getRemeasurement$foundation_release",
        "()Landroidx/compose/ui/layout/Remeasurement;",
        "setRemeasurement",
        "(Landroidx/compose/ui/layout/Remeasurement;)V",
        "remeasurement$delegate",
        "remeasurementModifier",
        "Landroidx/compose/ui/layout/RemeasurementModifier;",
        "getRemeasurementModifier$foundation_release",
        "()Landroidx/compose/ui/layout/RemeasurementModifier;",
        "scrollPosition",
        "Landroidx/compose/foundation/lazy/LazyListScrollPosition;",
        "",
        "scrollToBeConsumed",
        "getScrollToBeConsumed$foundation_release",
        "()F",
        "scrollableState",
        "wasScrollingForward",
        "animateScrollToItem",
        "",
        "index",
        "scrollOffset",
        "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "applyMeasureResult",
        "result",
        "Landroidx/compose/foundation/lazy/LazyListMeasureResult;",
        "applyMeasureResult$foundation_release",
        "cancelPrefetchIfVisibleItemsChanged",
        "info",
        "dispatchRawDelta",
        "delta",
        "notifyPrefetch",
        "onScroll",
        "distance",
        "onScroll$foundation_release",
        "scroll",
        "scrollPriority",
        "Landroidx/compose/foundation/MutatePriority;",
        "block",
        "Lkotlin/Function2;",
        "Landroidx/compose/foundation/gestures/ScrollScope;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "scrollToItem",
        "snapToItemIndexInternal",
        "snapToItemIndexInternal$foundation_release",
        "updateScrollPositionIfTheFirstItemWasMoved",
        "itemProvider",
        "Landroidx/compose/foundation/lazy/LazyListItemProvider;",
        "updateScrollPositionIfTheFirstItemWasMoved$foundation_release",
        "Companion",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/foundation/lazy/LazyListState$Companion;

.field private static final Saver:Landroidx/compose/runtime/saveable/Saver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final animateScrollScope:Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;

.field private final awaitLayoutModifier:Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;

.field private canScrollBackward:Z

.field private canScrollForward:Z

.field private currentPrefetchHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

.field private final density$delegate:Landroidx/compose/runtime/MutableState;

.field private indexToPrefetch:I

.field private final internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field private final layoutInfoState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/lazy/LazyListLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private numMeasurePasses:I

.field private final placementAnimator$delegate:Landroidx/compose/runtime/MutableState;

.field private final prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

.field private prefetchingEnabled:Z

.field private final premeasureConstraints$delegate:Landroidx/compose/runtime/MutableState;

.field private final remeasurement$delegate:Landroidx/compose/runtime/MutableState;

.field private final remeasurementModifier:Landroidx/compose/ui/layout/RemeasurementModifier;

.field private final scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

.field private scrollToBeConsumed:F

.field private final scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

.field private wasScrollingForward:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/lazy/LazyListState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/LazyListState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/lazy/LazyListState;->Companion:Landroidx/compose/foundation/lazy/LazyListState$Companion;

    .line 405
    sget-object v0, Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$1;->INSTANCE:Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sget-object v1, Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$2;->INSTANCE:Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$2;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/ListSaverKt;->listSaver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/lazy/LazyListState;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Landroidx/compose/foundation/lazy/LazyListState;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 7

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;-><init>(II)V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 92
    new-instance p1, Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->animateScrollScope:Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;

    .line 121
    sget-object p1, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->INSTANCE:Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-static {p1, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    .line 145
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 157
    invoke-static {p1, p1}, Landroidx/compose/ui/unit/DensityKt;->Density(FF)Landroidx/compose/ui/unit/Density;

    move-result-object p1

    invoke-static {p1, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->density$delegate:Landroidx/compose/runtime/MutableState;

    .line 163
    new-instance p1, Landroidx/compose/foundation/lazy/LazyListState$scrollableState$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/lazy/LazyListState$scrollableState$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Landroidx/compose/foundation/gestures/ScrollableStateKt;->ScrollableState(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/ScrollableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchingEnabled:Z

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->indexToPrefetch:I

    .line 198
    invoke-static {p2, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->remeasurement$delegate:Landroidx/compose/runtime/MutableState;

    .line 203
    new-instance p1, Landroidx/compose/foundation/lazy/LazyListState$remeasurementModifier$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/lazy/LazyListState$remeasurementModifier$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    check-cast p1, Landroidx/compose/ui/layout/RemeasurementModifier;

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->remeasurementModifier:Landroidx/compose/ui/layout/RemeasurementModifier;

    .line 213
    new-instance p1, Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;

    .line 215
    invoke-static {p2, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->placementAnimator$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    .line 220
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->box-impl(J)Landroidx/compose/ui/unit/Constraints;

    move-result-object p1

    invoke-static {p1, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->premeasureConstraints$delegate:Landroidx/compose/runtime/MutableState;

    .line 357
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 82
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListState;-><init>(II)V

    return-void
.end method

.method public static final synthetic access$getSaver$cp()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/lazy/LazyListState;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static final synthetic access$setRemeasurement(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/ui/layout/Remeasurement;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/LazyListState;->setRemeasurement(Landroidx/compose/ui/layout/Remeasurement;)V

    return-void
.end method

.method public static synthetic animateScrollToItem$default(Landroidx/compose/foundation/lazy/LazyListState;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 367
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListState;->animateScrollToItem(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final cancelPrefetchIfVisibleItemsChanged(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)V
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->indexToPrefetch:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 343
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->wasScrollingForward:Z

    if-eqz v0, :cond_0

    .line 345
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 347
    :cond_0
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->indexToPrefetch:I

    if-eq v0, p1, :cond_2

    iput v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->indexToPrefetch:I

    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->currentPrefetchHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    if-eqz p1, :cond_1

    .line 351
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->currentPrefetchHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    :cond_2
    return-void
.end method

.method private final notifyPrefetch(F)V
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchingEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 315
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v0

    .line 316
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 319
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_1

    .line 321
    :cond_2
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_1
    iget v2, p0, Landroidx/compose/foundation/lazy/LazyListState;->indexToPrefetch:I

    if-eq v1, v2, :cond_4

    if-ltz v1, :cond_4

    .line 324
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getTotalItemsCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->wasScrollingForward:Z

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->currentPrefetchHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    if-eqz v0, :cond_3

    .line 331
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    :cond_3
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->wasScrollingForward:Z

    iput v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->indexToPrefetch:I

    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 336
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getPremeasureConstraints-msEJaDk$foundation_release()J

    move-result-wide v2

    .line 335
    invoke-virtual {p1, v1, v2, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->schedulePrefetch-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->currentPrefetchHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    :cond_4
    return-void
.end method

.method public static synthetic scrollToItem$default(Landroidx/compose/foundation/lazy/LazyListState;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 231
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListState;->scrollToItem(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final setRemeasurement(Landroidx/compose/ui/layout/Remeasurement;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->remeasurement$delegate:Landroidx/compose/runtime/MutableState;

    .line 453
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final animateScrollToItem(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->animateScrollScope:Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;

    .line 372
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    invoke-static {v0, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt;->animateScrollToItem(Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final applyMeasureResult$foundation_release(Landroidx/compose/foundation/lazy/LazyListMeasureResult;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 379
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->updateFromMeasureResult(Landroidx/compose/foundation/lazy/LazyListMeasureResult;)V

    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 380
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getConsumedScroll()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    .line 381
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 383
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getCanScrollForward()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->canScrollForward:Z

    .line 384
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getFirstVisibleItem()Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getIndex()I

    move-result v0

    if-nez v0, :cond_1

    .line 385
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getFirstVisibleItemScrollOffset()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->canScrollBackward:Z

    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->numMeasurePasses:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->numMeasurePasses:I

    .line 389
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/LazyListState;->cancelPrefetchIfVisibleItemsChanged(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)V

    return-void
.end method

.method public dispatchRawDelta(F)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 265
    invoke-interface {v0, p1}, Landroidx/compose/foundation/gestures/ScrollableState;->dispatchRawDelta(F)F

    move-result p1

    return p1
.end method

.method public final getAwaitLayoutModifier$foundation_release()Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;

    return-object v0
.end method

.method public final getCanScrollForward$foundation_release()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->canScrollForward:Z

    return v0
.end method

.method public final getDensity$foundation_release()Landroidx/compose/ui/unit/Density;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->density$delegate:Landroidx/compose/runtime/MutableState;

    .line 157
    check-cast v0, Landroidx/compose/runtime/State;

    .line 449
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    return-object v0
.end method

.method public final getFirstVisibleItemIndex()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 108
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->getIndex-jQJCoq8()I

    move-result v0

    return v0
.end method

.method public final getFirstVisibleItemScrollOffset()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 118
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->getScrollOffset()I

    move-result v0

    return v0
.end method

.method public final getInteractionSource()Landroidx/compose/foundation/interaction/InteractionSource;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 143
    check-cast v0, Landroidx/compose/foundation/interaction/InteractionSource;

    return-object v0
.end method

.method public final getInternalInteractionSource$foundation_release()Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-object v0
.end method

.method public final getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    .line 136
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    return-object v0
.end method

.method public final getNumMeasurePasses$foundation_release()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->numMeasurePasses:I

    return v0
.end method

.method public final getPlacementAnimator$foundation_release()Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->placementAnimator$delegate:Landroidx/compose/runtime/MutableState;

    .line 215
    check-cast v0, Landroidx/compose/runtime/State;

    .line 455
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    return-object v0
.end method

.method public final getPrefetchState$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    return-object v0
.end method

.method public final getPrefetchingEnabled$foundation_release()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchingEnabled:Z

    return v0
.end method

.method public final getPremeasureConstraints-msEJaDk$foundation_release()J
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->premeasureConstraints$delegate:Landroidx/compose/runtime/MutableState;

    .line 220
    check-cast v0, Landroidx/compose/runtime/State;

    .line 458
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getRemeasurement$foundation_release()Landroidx/compose/ui/layout/Remeasurement;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->remeasurement$delegate:Landroidx/compose/runtime/MutableState;

    .line 198
    check-cast v0, Landroidx/compose/runtime/State;

    .line 452
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/Remeasurement;

    return-object v0
.end method

.method public final getRemeasurementModifier$foundation_release()Landroidx/compose/ui/layout/RemeasurementModifier;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->remeasurementModifier:Landroidx/compose/ui/layout/RemeasurementModifier;

    return-object v0
.end method

.method public final getScrollToBeConsumed$foundation_release()F
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    return v0
.end method

.method public isScrollInProgress()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 268
    invoke-interface {v0}, Landroidx/compose/foundation/gestures/ScrollableState;->isScrollInProgress()Z

    move-result v0

    return v0
.end method

.method public final onScroll$foundation_release(F)F
    .locals 4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->canScrollForward:Z

    if-eqz v1, :cond_1

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->canScrollBackward:Z

    if-nez v1, :cond_2

    :cond_1
    return v0

    :cond_2
    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 281
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    add-float/2addr v1, p1

    iput v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 289
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 291
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getRemeasurement$foundation_release()Landroidx/compose/ui/layout/Remeasurement;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroidx/compose/ui/layout/Remeasurement;->forceRemeasure()V

    :cond_3
    iget-boolean v3, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchingEnabled:Z

    if-eqz v3, :cond_4

    iget v3, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    sub-float/2addr v1, v3

    .line 293
    invoke-direct {p0, v1}, Landroidx/compose/foundation/lazy/LazyListState;->notifyPrefetch(F)V

    :cond_4
    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 298
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    return p1

    :cond_5
    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    sub-float/2addr p1, v1

    iput v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    return p1

    .line 282
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "entered drag with non-zero pending scroll: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 281
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/MutatePriority;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;

    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 256
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 262
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 256
    :cond_2
    iget-object p1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iget-object p1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/MutatePriority;

    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListState;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Landroidx/compose/foundation/lazy/LazyListState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;

    .line 260
    iput-object p0, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;->waitForFirstLayout(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 261
    :goto_1
    iget-object p3, v2, Landroidx/compose/foundation/lazy/LazyListState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

    invoke-interface {p3, p1, p2, v0}, Landroidx/compose/foundation/gestures/ScrollableState;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 262
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final scrollToItem(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 236
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/gestures/ScrollableState;

    const/4 v1, 0x0

    new-instance v2, Landroidx/compose/foundation/lazy/LazyListState$scrollToItem$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Landroidx/compose/foundation/lazy/LazyListState$scrollToItem$2;-><init>(Landroidx/compose/foundation/lazy/LazyListState;IILkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/ScrollableState;->scroll$default(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final setDensity$foundation_release(Landroidx/compose/ui/unit/Density;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->density$delegate:Landroidx/compose/runtime/MutableState;

    .line 450
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPlacementAnimator$foundation_release(Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->placementAnimator$delegate:Landroidx/compose/runtime/MutableState;

    .line 456
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPrefetchingEnabled$foundation_release(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchingEnabled:Z

    return-void
.end method

.method public final setPremeasureConstraints-BRTryo0$foundation_release(J)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->premeasureConstraints$delegate:Landroidx/compose/runtime/MutableState;

    .line 220
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->box-impl(J)Landroidx/compose/ui/unit/Constraints;

    move-result-object p1

    .line 459
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final snapToItemIndexInternal$foundation_release(II)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 242
    invoke-static {p1}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->requestPosition-AhXoVpI(II)V

    .line 244
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getPlacementAnimator$foundation_release()Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->reset()V

    .line 245
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getRemeasurement$foundation_release()Landroidx/compose/ui/layout/Remeasurement;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroidx/compose/ui/layout/Remeasurement;->forceRemeasure()V

    :cond_1
    return-void
.end method

.method public final updateScrollPositionIfTheFirstItemWasMoved$foundation_release(Landroidx/compose/foundation/lazy/LazyListItemProvider;)V
    .locals 1

    const-string v0, "itemProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 398
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->updateScrollPositionIfTheFirstItemWasMoved(Landroidx/compose/foundation/lazy/LazyListItemProvider;)V

    return-void
.end method
