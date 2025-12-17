.class public final Landroidx/compose/foundation/lazy/grid/LazyGridState;
.super Ljava/lang/Object;
.source "LazyGridState.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollableState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridState.kt\nandroidx/compose/foundation/lazy/grid/LazyGridState\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 5 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,451:1\n1182#2:452\n1161#2,2:453\n76#3:455\n102#3,2:456\n76#3:458\n102#3,2:459\n76#3:461\n102#3,2:462\n76#3:464\n102#3,2:465\n76#3:467\n102#3,2:468\n76#3:470\n102#3,2:471\n460#4,11:473\n460#4,11:490\n33#5,6:484\n*S KotlinDebug\n*F\n+ 1 LazyGridState.kt\nandroidx/compose/foundation/lazy/grid/LazyGridState\n*L\n189#1:452\n189#1:453,2\n149#1:455\n149#1:456,2\n154#1:458\n154#1:459,2\n159#1:461\n159#1:462,2\n201#1:464\n201#1:465,2\n222#1:467\n222#1:468,2\n224#1:470\n224#1:471,2\n346#1:473,11\n373#1:490,11\n351#1:484,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00da\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u008d\u00012\u00020\u0001:\u0002\u008d\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J#\u0010k\u001a\u00020l2\u0006\u0010m\u001a\u00020\u00032\u0008\u0008\u0002\u0010n\u001a\u00020\u0003H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010oJ\u0015\u0010p\u001a\u00020l2\u0006\u0010q\u001a\u00020rH\u0000\u00a2\u0006\u0002\u0008sJ\u0010\u0010t\u001a\u00020l2\u0006\u0010u\u001a\u00020/H\u0002J\u0010\u0010v\u001a\u00020`2\u0006\u0010w\u001a\u00020`H\u0016J\u0010\u0010x\u001a\u00020l2\u0006\u0010w\u001a\u00020`H\u0002J\u0015\u0010y\u001a\u00020`2\u0006\u0010z\u001a\u00020`H\u0000\u00a2\u0006\u0002\u0008{JH\u0010|\u001a\u00020l2\u0006\u0010}\u001a\u00020~2,\u0010\u007f\u001a(\u0008\u0001\u0012\u0005\u0012\u00030\u0081\u0001\u0012\u000b\u0012\t\u0012\u0004\u0012\u00020l0\u0082\u0001\u0012\u0007\u0012\u0005\u0018\u00010\u0083\u00010\u0080\u0001\u00a2\u0006\u0003\u0008\u0084\u0001H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0003\u0010\u0085\u0001J$\u0010\u0086\u0001\u001a\u00020l2\u0006\u0010m\u001a\u00020\u00032\u0008\u0008\u0002\u0010n\u001a\u00020\u0003H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010oJ\u001f\u0010\u0087\u0001\u001a\u00020l2\u0006\u0010m\u001a\u00020\u00032\u0006\u0010n\u001a\u00020\u0003H\u0000\u00a2\u0006\u0003\u0008\u0088\u0001J\u0019\u0010\u0089\u0001\u001a\u00020l2\u0008\u0010\u008a\u0001\u001a\u00030\u008b\u0001H\u0000\u00a2\u0006\u0003\u0008\u008c\u0001R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\tX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\u00158@@@X\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0002\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u0004\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u001eR\u0011\u0010 \u001a\u00020!8F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u0014\u0010$\u001a\u00020%X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u0014\u0010(\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010\u0011R+\u0010)\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r8@@@X\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008-\u0010\u001c\u001a\u0004\u0008*\u0010\u0011\"\u0004\u0008+\u0010,R\u0011\u0010.\u001a\u00020/8F\u00a2\u0006\u0006\u001a\u0004\u00080\u00101R\u0014\u00102\u001a\u0008\u0012\u0004\u0012\u00020/03X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u00105\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0003@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u0010\u001eR/\u00108\u001a\u0004\u0018\u0001072\u0008\u0010\u000e\u001a\u0004\u0018\u0001078@@@X\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008=\u0010\u001c\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\u0088\u0001\u0010F\u001a/\u0012\u0013\u0012\u00110?\u00a2\u0006\u000c\u0008@\u0012\u0008\u0008A\u0012\u0004\u0008\u0008(B\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020E0D0C0>23\u0010\u000e\u001a/\u0012\u0013\u0012\u00110?\u00a2\u0006\u000c\u0008@\u0012\u0008\u0008A\u0012\u0004\u0008\u0008(B\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020E0D0C0>8@@@X\u0080\u008e\u0002\u00f8\u0001\u0000\u00a2\u0006\u0012\n\u0004\u0008K\u0010\u001c\u001a\u0004\u0008G\u0010H\"\u0004\u0008I\u0010JR\u0014\u0010L\u001a\u00020MX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008N\u0010OR\u001a\u0010P\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010\u0011\"\u0004\u0008R\u0010,R/\u0010T\u001a\u0004\u0018\u00010S2\u0008\u0010\u000e\u001a\u0004\u0018\u00010S8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008Y\u0010\u001c\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010XR\u0014\u0010Z\u001a\u00020[X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\\\u0010]R\u000e\u0010^\u001a\u00020_X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010a\u001a\u00020`2\u0006\u0010\u000e\u001a\u00020`@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008b\u0010cR\u000e\u0010d\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010e\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00038@@@X\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008i\u0010\u001c\u001a\u0004\u0008f\u0010\u001e\"\u0004\u0008g\u0010hR\u000e\u0010j\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u008e\u0001"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
        "Landroidx/compose/foundation/gestures/ScrollableState;",
        "firstVisibleItemIndex",
        "",
        "firstVisibleItemScrollOffset",
        "(II)V",
        "animateScrollScope",
        "Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope;",
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
        "currentLinePrefetchHandles",
        "Landroidx/compose/runtime/collection/MutableVector;",
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
        "interactionSource",
        "Landroidx/compose/foundation/interaction/InteractionSource;",
        "getInteractionSource",
        "()Landroidx/compose/foundation/interaction/InteractionSource;",
        "internalInteractionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "getInternalInteractionSource$foundation_release",
        "()Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "isScrollInProgress",
        "isVertical",
        "isVertical$foundation_release",
        "setVertical$foundation_release",
        "(Z)V",
        "isVertical$delegate",
        "layoutInfo",
        "Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;",
        "getLayoutInfo",
        "()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;",
        "layoutInfoState",
        "Landroidx/compose/runtime/MutableState;",
        "lineToPrefetch",
        "numMeasurePasses",
        "getNumMeasurePasses$foundation_release",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;",
        "placementAnimator",
        "getPlacementAnimator$foundation_release",
        "()Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;",
        "setPlacementAnimator$foundation_release",
        "(Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;)V",
        "placementAnimator$delegate",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/lazy/grid/LineIndex;",
        "Lkotlin/ParameterName;",
        "name",
        "line",
        "",
        "Lkotlin/Pair;",
        "Landroidx/compose/ui/unit/Constraints;",
        "prefetchInfoRetriever",
        "getPrefetchInfoRetriever$foundation_release",
        "()Lkotlin/jvm/functions/Function1;",
        "setPrefetchInfoRetriever$foundation_release",
        "(Lkotlin/jvm/functions/Function1;)V",
        "prefetchInfoRetriever$delegate",
        "prefetchState",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;",
        "getPrefetchState$foundation_release",
        "()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;",
        "prefetchingEnabled",
        "getPrefetchingEnabled$foundation_release",
        "setPrefetchingEnabled$foundation_release",
        "Landroidx/compose/ui/layout/Remeasurement;",
        "remeasurement",
        "getRemeasurement",
        "()Landroidx/compose/ui/layout/Remeasurement;",
        "setRemeasurement",
        "(Landroidx/compose/ui/layout/Remeasurement;)V",
        "remeasurement$delegate",
        "remeasurementModifier",
        "Landroidx/compose/ui/layout/RemeasurementModifier;",
        "getRemeasurementModifier$foundation_release",
        "()Landroidx/compose/ui/layout/RemeasurementModifier;",
        "scrollPosition",
        "Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;",
        "",
        "scrollToBeConsumed",
        "getScrollToBeConsumed$foundation_release",
        "()F",
        "scrollableState",
        "slotsPerLine",
        "getSlotsPerLine$foundation_release",
        "setSlotsPerLine$foundation_release",
        "(I)V",
        "slotsPerLine$delegate",
        "wasScrollingForward",
        "animateScrollToItem",
        "",
        "index",
        "scrollOffset",
        "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "applyMeasureResult",
        "result",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;",
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
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;",
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
.field public static final Companion:Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion;

.field private static final Saver:Landroidx/compose/runtime/saveable/Saver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final animateScrollScope:Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope;

.field private final awaitLayoutModifier:Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;

.field private canScrollBackward:Z

.field private canScrollForward:Z

.field private final currentLinePrefetchHandles:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final density$delegate:Landroidx/compose/runtime/MutableState;

.field private final internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field private final isVertical$delegate:Landroidx/compose/runtime/MutableState;

.field private final layoutInfoState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private lineToPrefetch:I

.field private numMeasurePasses:I

.field private final placementAnimator$delegate:Landroidx/compose/runtime/MutableState;

.field private final prefetchInfoRetriever$delegate:Landroidx/compose/runtime/MutableState;

.field private final prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

.field private prefetchingEnabled:Z

.field private final remeasurement$delegate:Landroidx/compose/runtime/MutableState;

.field private final remeasurementModifier:Landroidx/compose/ui/layout/RemeasurementModifier;

.field private final scrollPosition:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

.field private scrollToBeConsumed:F

.field private final scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

.field private final slotsPerLine$delegate:Landroidx/compose/runtime/MutableState;

.field private wasScrollingForward:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->Companion:Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion;

    .line 427
    sget-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion$Saver$1;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion$Saver$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sget-object v1, Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion$Saver$2;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion$Saver$2;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/ListSaverKt;->listSaver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;-><init>(II)V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    .line 113
    sget-object p1, Landroidx/compose/foundation/lazy/grid/EmptyLazyGridLayoutInfo;->INSTANCE:Landroidx/compose/foundation/lazy/grid/EmptyLazyGridLayoutInfo;

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-static {p1, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    .line 137
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 p1, 0x0

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->slotsPerLine$delegate:Landroidx/compose/runtime/MutableState;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 154
    invoke-static {v1, v1}, Landroidx/compose/ui/unit/DensityKt;->Density(FF)Landroidx/compose/ui/unit/Density;

    move-result-object v1

    invoke-static {v1, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->density$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x1

    .line 159
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->isVertical$delegate:Landroidx/compose/runtime/MutableState;

    .line 165
    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridState$scrollableState$1;

    invoke-direct {v2, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState$scrollableState$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Landroidx/compose/foundation/gestures/ScrollableStateKt;->ScrollableState(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/ScrollableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    iput-boolean v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchingEnabled:Z

    const/4 v1, -0x1

    iput v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->lineToPrefetch:I

    .line 454
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v2, 0x10

    new-array v2, v2, [Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    invoke-direct {v1, v2, p1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    iput-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->currentLinePrefetchHandles:Landroidx/compose/runtime/collection/MutableVector;

    .line 201
    invoke-static {p2, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->remeasurement$delegate:Landroidx/compose/runtime/MutableState;

    .line 206
    new-instance p1, Landroidx/compose/foundation/lazy/grid/LazyGridState$remeasurementModifier$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState$remeasurementModifier$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    check-cast p1, Landroidx/compose/ui/layout/RemeasurementModifier;

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->remeasurementModifier:Landroidx/compose/ui/layout/RemeasurementModifier;

    .line 216
    new-instance p1, Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;

    .line 222
    sget-object p1, Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchInfoRetriever$2;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchInfoRetriever$2;

    invoke-static {p1, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchInfoRetriever$delegate:Landroidx/compose/runtime/MutableState;

    .line 224
    invoke-static {p2, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->placementAnimator$delegate:Landroidx/compose/runtime/MutableState;

    .line 226
    new-instance p1, Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->animateScrollScope:Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope;

    .line 379
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

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

    .line 80
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;-><init>(II)V

    return-void
.end method

.method public static final synthetic access$getSaver$cp()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static final synthetic access$setRemeasurement(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/ui/layout/Remeasurement;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->setRemeasurement(Landroidx/compose/ui/layout/Remeasurement;)V

    return-void
.end method

.method public static synthetic animateScrollToItem$default(Landroidx/compose/foundation/lazy/grid/LazyGridState;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 389
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->animateScrollToItem(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final cancelPrefetchIfVisibleItemsChanged(Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;)V
    .locals 3

    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->lineToPrefetch:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 361
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->wasScrollingForward:Z

    if-eqz v0, :cond_1

    .line 363
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 364
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->isVertical$foundation_release()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getRow()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getColumn()I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 367
    :cond_1
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 368
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->isVertical$foundation_release()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getRow()I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getColumn()I

    move-result p1

    :goto_1
    add-int/lit8 p1, p1, -0x1

    :goto_2
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->lineToPrefetch:I

    if-eq v0, p1, :cond_5

    iput v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->lineToPrefetch:I

    iget-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->currentLinePrefetchHandles:Landroidx/compose/runtime/collection/MutableVector;

    .line 491
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    if-lez v0, :cond_4

    .line 494
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of androidx.compose.runtime.collection.MutableVector>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 496
    :cond_3
    aget-object v2, p1, v1

    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 373
    invoke-interface {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_3

    :cond_4
    iget-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->currentLinePrefetchHandles:Landroidx/compose/runtime/collection/MutableVector;

    .line 374
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    :cond_5
    return-void
.end method

.method private final getRemeasurement()Landroidx/compose/ui/layout/Remeasurement;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->remeasurement$delegate:Landroidx/compose/runtime/MutableState;

    .line 201
    check-cast v0, Landroidx/compose/runtime/State;

    .line 464
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/Remeasurement;

    return-object v0
.end method

.method private final notifyPrefetch(F)V
    .locals 8

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchingEnabled:Z

    if-nez v1, :cond_0

    return-void

    .line 322
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v1

    .line 323
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    cmpg-float p1, p1, v2

    const/4 v2, 0x0

    if-gez p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    if-eqz p1, :cond_3

    .line 328
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 329
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->isVertical$foundation_release()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getRow()I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getColumn()I

    move-result v4

    :goto_1
    add-int/2addr v4, v3

    .line 331
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getIndex()I

    move-result v5

    add-int/2addr v5, v3

    goto :goto_3

    .line 333
    :cond_3
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 334
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->isVertical$foundation_release()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getRow()I

    move-result v4

    goto :goto_2

    :cond_4
    invoke-interface {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getColumn()I

    move-result v4

    :goto_2
    add-int/lit8 v4, v4, -0x1

    .line 336
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getIndex()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_3
    iget v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->lineToPrefetch:I

    if-eq v4, v6, :cond_7

    if-ltz v5, :cond_7

    .line 339
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getTotalItemsCount()I

    move-result v1

    if-ge v5, v1, :cond_7

    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->wasScrollingForward:Z

    if-eq v1, p1, :cond_6

    iget-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->currentLinePrefetchHandles:Landroidx/compose/runtime/collection/MutableVector;

    .line 474
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v5

    if-lez v5, :cond_6

    .line 477
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v1

    const-string v6, "null cannot be cast to non-null type kotlin.Array<T of androidx.compose.runtime.collection.MutableVector>"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move v6, v2

    .line 479
    :cond_5
    aget-object v7, v1, v6

    check-cast v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 346
    invoke-interface {v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    add-int/2addr v6, v3

    if-lt v6, v5, :cond_5

    :cond_6
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->wasScrollingForward:Z

    iput v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->lineToPrefetch:I

    iget-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->currentLinePrefetchHandles:Landroidx/compose/runtime/collection/MutableVector;

    .line 350
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 351
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getPrefetchInfoRetriever$foundation_release()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-static {v4}, Landroidx/compose/foundation/lazy/grid/LineIndex;->constructor-impl(I)I

    move-result v1

    invoke-static {v1}, Landroidx/compose/foundation/lazy/grid/LineIndex;->box-impl(I)Landroidx/compose/foundation/lazy/grid/LineIndex;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 485
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_4
    if-ge v2, v1, :cond_7

    .line 486
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 487
    check-cast v3, Lkotlin/Pair;

    iget-object v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->currentLinePrefetchHandles:Landroidx/compose/runtime/collection/MutableVector;

    .line 353
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->schedulePrefetch-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    move-result-object v3

    .line 352
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method

.method public static synthetic scrollToItem$default(Landroidx/compose/foundation/lazy/grid/LazyGridState;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 237
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToItem(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final setRemeasurement(Landroidx/compose/ui/layout/Remeasurement;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->remeasurement$delegate:Landroidx/compose/runtime/MutableState;

    .line 465
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

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->animateScrollScope:Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope;

    .line 394
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

.method public final applyMeasureResult$foundation_release(Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    .line 401
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->updateFromMeasureResult(Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V

    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 402
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getConsumedScroll()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    .line 403
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 405
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getCanScrollForward()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->canScrollForward:Z

    .line 406
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getFirstVisibleLine()Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->getIndex-hA7yfN8()I

    move-result v0

    if-nez v0, :cond_1

    .line 407
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getFirstVisibleLineScrollOffset()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->canScrollBackward:Z

    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->numMeasurePasses:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->numMeasurePasses:I

    .line 411
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->cancelPrefetchIfVisibleItemsChanged(Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;)V

    return-void
.end method

.method public dispatchRawDelta(F)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 271
    invoke-interface {v0, p1}, Landroidx/compose/foundation/gestures/ScrollableState;->dispatchRawDelta(F)F

    move-result p1

    return p1
.end method

.method public final getAwaitLayoutModifier$foundation_release()Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;

    return-object v0
.end method

.method public final getCanScrollForward$foundation_release()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->canScrollForward:Z

    return v0
.end method

.method public final getDensity$foundation_release()Landroidx/compose/ui/unit/Density;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->density$delegate:Landroidx/compose/runtime/MutableState;

    .line 154
    check-cast v0, Landroidx/compose/runtime/State;

    .line 458
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    return-object v0
.end method

.method public final getFirstVisibleItemIndex()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    .line 104
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->getIndex-VZbfaAc()I

    move-result v0

    return v0
.end method

.method public final getFirstVisibleItemScrollOffset()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    .line 110
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->getScrollOffset()I

    move-result v0

    return v0
.end method

.method public final getInteractionSource()Landroidx/compose/foundation/interaction/InteractionSource;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 135
    check-cast v0, Landroidx/compose/foundation/interaction/InteractionSource;

    return-object v0
.end method

.method public final getInternalInteractionSource$foundation_release()Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-object v0
.end method

.method public final getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    .line 128
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    return-object v0
.end method

.method public final getNumMeasurePasses$foundation_release()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->numMeasurePasses:I

    return v0
.end method

.method public final getPlacementAnimator$foundation_release()Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->placementAnimator$delegate:Landroidx/compose/runtime/MutableState;

    .line 224
    check-cast v0, Landroidx/compose/runtime/State;

    .line 470
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    return-object v0
.end method

.method public final getPrefetchInfoRetriever$foundation_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/foundation/lazy/grid/LineIndex;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;>;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchInfoRetriever$delegate:Landroidx/compose/runtime/MutableState;

    .line 221
    check-cast v0, Landroidx/compose/runtime/State;

    .line 467
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getPrefetchState$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    return-object v0
.end method

.method public final getPrefetchingEnabled$foundation_release()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchingEnabled:Z

    return v0
.end method

.method public final getRemeasurementModifier$foundation_release()Landroidx/compose/ui/layout/RemeasurementModifier;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->remeasurementModifier:Landroidx/compose/ui/layout/RemeasurementModifier;

    return-object v0
.end method

.method public final getScrollToBeConsumed$foundation_release()F
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    return v0
.end method

.method public final getSlotsPerLine$foundation_release()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->slotsPerLine$delegate:Landroidx/compose/runtime/MutableState;

    .line 149
    check-cast v0, Landroidx/compose/runtime/State;

    .line 455
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public isScrollInProgress()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 274
    invoke-interface {v0}, Landroidx/compose/foundation/gestures/ScrollableState;->isScrollInProgress()Z

    move-result v0

    return v0
.end method

.method public final isVertical$foundation_release()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->isVertical$delegate:Landroidx/compose/runtime/MutableState;

    .line 159
    check-cast v0, Landroidx/compose/runtime/State;

    .line 461
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final onScroll$foundation_release(F)F
    .locals 4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->canScrollForward:Z

    if-eqz v1, :cond_1

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->canScrollBackward:Z

    if-nez v1, :cond_2

    :cond_1
    return v0

    :cond_2
    iget v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 287
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    iget v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    add-float/2addr v1, p1

    iput v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 295
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 297
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getRemeasurement()Landroidx/compose/ui/layout/Remeasurement;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroidx/compose/ui/layout/Remeasurement;->forceRemeasure()V

    :cond_3
    iget-boolean v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchingEnabled:Z

    if-eqz v3, :cond_4

    iget v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    sub-float/2addr v1, v3

    .line 299
    invoke-direct {p0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->notifyPrefetch(F)V

    :cond_4
    iget v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 304
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    return p1

    :cond_5
    iget v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    sub-float/2addr p1, v1

    iput v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    return p1

    .line 288
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "entered drag with non-zero pending scroll: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 287
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

    instance-of v0, p3, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;

    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 262
    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 268
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 262
    :cond_2
    iget-object p1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iget-object p1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/MutatePriority;

    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;

    .line 266
    iput-object p0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->label:I

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;->waitForFirstLayout(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 267
    :goto_1
    iget-object p3, v2, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->label:I

    invoke-interface {p3, p1, p2, v0}, Landroidx/compose/foundation/gestures/ScrollableState;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 268
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

    .line 242
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/gestures/ScrollableState;

    const/4 v1, 0x0

    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridState$scrollToItem$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState$scrollToItem$2;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;IILkotlin/coroutines/Continuation;)V

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

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->density$delegate:Landroidx/compose/runtime/MutableState;

    .line 459
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPlacementAnimator$foundation_release(Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->placementAnimator$delegate:Landroidx/compose/runtime/MutableState;

    .line 471
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPrefetchInfoRetriever$foundation_release(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LineIndex;",
            "+",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;>;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchInfoRetriever$delegate:Landroidx/compose/runtime/MutableState;

    .line 468
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPrefetchingEnabled$foundation_release(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchingEnabled:Z

    return-void
.end method

.method public final setSlotsPerLine$foundation_release(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->slotsPerLine$delegate:Landroidx/compose/runtime/MutableState;

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 456
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setVertical$foundation_release(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->isVertical$delegate:Landroidx/compose/runtime/MutableState;

    .line 159
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 462
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final snapToItemIndexInternal$foundation_release(II)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    .line 248
    invoke-static {p1}, Landroidx/compose/foundation/lazy/grid/ItemIndex;->constructor-impl(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->requestPosition-yO3Fmg4(II)V

    .line 250
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getPlacementAnimator$foundation_release()Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->reset()V

    .line 251
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getRemeasurement()Landroidx/compose/ui/layout/Remeasurement;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroidx/compose/ui/layout/Remeasurement;->forceRemeasure()V

    :cond_1
    return-void
.end method

.method public final updateScrollPositionIfTheFirstItemWasMoved$foundation_release(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;)V
    .locals 1

    const-string v0, "itemProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    .line 420
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->updateScrollPositionIfTheFirstItemWasMoved(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;)V

    return-void
.end method
