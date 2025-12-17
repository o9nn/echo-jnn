.class public final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
.super Ljava/lang/Object;
.source "LazyStaggeredGridState.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollableState;


# annotations
.annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyStaggeredGridState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyStaggeredGridState.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,433:1\n1851#2,2:434\n*S KotlinDebug\n*F\n+ 1 LazyStaggeredGridState.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState\n*L\n367#1:434,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\"\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 }2\u00020\u0001:\u0001}B\u001b\u0008\u0016\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005B\u0017\u0008\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ#\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020\u00032\u0008\u0008\u0002\u0010Z\u001a\u00020\u0003H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010[J\u0015\u0010\\\u001a\u00020X2\u0006\u0010]\u001a\u00020^H\u0000\u00a2\u0006\u0002\u0008_J\u0010\u0010`\u001a\u00020X2\u0006\u0010a\u001a\u000201H\u0002J\u0016\u0010b\u001a\u00020X2\u000c\u0010c\u001a\u0008\u0012\u0004\u0012\u00020\u00030dH\u0002J\u0010\u0010e\u001a\u00020N2\u0006\u0010f\u001a\u00020NH\u0016J\u0018\u0010g\u001a\u00020\u00072\u0006\u0010h\u001a\u00020\u00032\u0006\u0010)\u001a\u00020\u0003H\u0002J\u0010\u0010i\u001a\u00020X2\u0006\u0010f\u001a\u00020NH\u0002J\u0010\u0010j\u001a\u00020N2\u0006\u0010k\u001a\u00020NH\u0002JB\u0010l\u001a\u00020X2\u0006\u0010m\u001a\u00020n2\'\u0010o\u001a#\u0008\u0001\u0012\u0004\u0012\u00020q\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020X0r\u0012\u0006\u0012\u0004\u0018\u00010s0p\u00a2\u0006\u0002\u0008tH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010uJ#\u0010v\u001a\u00020X2\u0006\u0010Y\u001a\u00020\u00032\u0008\u0008\u0002\u0010Z\u001a\u00020\u0003H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010[J\u0015\u0010w\u001a\u00020X2\u0006\u0010x\u001a\u00020yH\u0000\u00a2\u0006\u0002\u0008zJ!\u0010{\u001a\u00020X*\u00020q2\u0006\u0010Y\u001a\u00020\u00032\u0006\u0010Z\u001a\u00020\u0003H\u0000\u00a2\u0006\u0002\u0008|R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u00020\u0017X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u001c\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u001eR\u0011\u0010!\u001a\u00020\"8F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\u0014\u0010%\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u0010R\u001a\u0010&\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u0010\"\u0004\u0008(\u0010\u0012R\u0014\u0010)\u001a\u00020\u00038@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\u001eR\u001a\u0010+\u001a\u00020\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u0011\u00100\u001a\u0002018F\u00a2\u0006\u0006\u001a\u0004\u00082\u00103R\u0014\u00104\u001a\u0008\u0012\u0004\u0012\u00020105X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u00106\u001a\u00020\u0003X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u001e\"\u0004\u00088\u00109R\u0014\u0010:\u001a\u00020;X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010=R\u000e\u0010>\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010?\u001a\u00020@X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008A\u0010BR\u0010\u0010C\u001a\u0004\u0018\u00010DX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010E\u001a\u00020FX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008G\u0010HR\u0014\u0010I\u001a\u00020JX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008K\u0010LR\u001e\u0010O\u001a\u00020N2\u0006\u0010M\u001a\u00020N@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008P\u0010QR\u000e\u0010R\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010S\u001a\u00020TX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008U\u0010V\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006~"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;",
        "Landroidx/compose/foundation/gestures/ScrollableState;",
        "initialFirstVisibleItemIndex",
        "",
        "initialFirstVisibleItemOffset",
        "(II)V",
        "initialFirstVisibleItems",
        "",
        "initialFirstVisibleOffsets",
        "([I[I)V",
        "animateScrollScope",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridAnimateScrollScope;",
        "canScrollBackward",
        "",
        "canScrollForward",
        "getCanScrollForward$foundation_release",
        "()Z",
        "setCanScrollForward$foundation_release",
        "(Z)V",
        "currentItemPrefetchHandles",
        "",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "getDensity$foundation_release",
        "()Landroidx/compose/ui/unit/Density;",
        "setDensity$foundation_release",
        "(Landroidx/compose/ui/unit/Density;)V",
        "firstVisibleItemIndex",
        "getFirstVisibleItemIndex",
        "()I",
        "firstVisibleItemScrollOffset",
        "getFirstVisibleItemScrollOffset",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/InteractionSource;",
        "getInteractionSource",
        "()Landroidx/compose/foundation/interaction/InteractionSource;",
        "isScrollInProgress",
        "isVertical",
        "isVertical$foundation_release",
        "setVertical$foundation_release",
        "laneCount",
        "getLaneCount$foundation_release",
        "laneWidthsPrefixSum",
        "getLaneWidthsPrefixSum$foundation_release",
        "()[I",
        "setLaneWidthsPrefixSum$foundation_release",
        "([I)V",
        "layoutInfo",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;",
        "getLayoutInfo",
        "()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;",
        "layoutInfoState",
        "Landroidx/compose/runtime/MutableState;",
        "measurePassCount",
        "getMeasurePassCount$foundation_release",
        "setMeasurePassCount$foundation_release",
        "(I)V",
        "mutableInteractionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "getMutableInteractionSource$foundation_release",
        "()Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "prefetchBaseIndex",
        "prefetchState",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;",
        "getPrefetchState$foundation_release",
        "()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;",
        "remeasurement",
        "Landroidx/compose/ui/layout/Remeasurement;",
        "remeasurementModifier",
        "Landroidx/compose/ui/layout/RemeasurementModifier;",
        "getRemeasurementModifier$foundation_release",
        "()Landroidx/compose/ui/layout/RemeasurementModifier;",
        "scrollPosition",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;",
        "getScrollPosition$foundation_release",
        "()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;",
        "<set-?>",
        "",
        "scrollToBeConsumed",
        "getScrollToBeConsumed$foundation_release",
        "()F",
        "scrollableState",
        "spans",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;",
        "getSpans$foundation_release",
        "()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;",
        "animateScrollToItem",
        "",
        "index",
        "scrollOffset",
        "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "applyMeasureResult",
        "result",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;",
        "applyMeasureResult$foundation_release",
        "cancelPrefetchIfVisibleItemsChanged",
        "info",
        "clearLeftoverPrefetchHandles",
        "prefetchHandlesUsed",
        "",
        "dispatchRawDelta",
        "delta",
        "fillNearestIndices",
        "itemIndex",
        "notifyPrefetch",
        "onScroll",
        "distance",
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
        "updateScrollPositionIfTheFirstItemWasMoved",
        "itemProvider",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;",
        "updateScrollPositionIfTheFirstItemWasMoved$foundation_release",
        "snapToItemInternal",
        "snapToItemInternal$foundation_release",
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
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$Companion;

.field private static final Saver:Landroidx/compose/runtime/saveable/Saver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final animateScrollScope:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridAnimateScrollScope;

.field private canScrollBackward:Z

.field private canScrollForward:Z

.field private final currentItemPrefetchHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;",
            ">;"
        }
    .end annotation
.end field

.field private density:Landroidx/compose/ui/unit/Density;

.field private isVertical:Z

.field private laneWidthsPrefixSum:[I

.field private final layoutInfoState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private measurePassCount:I

.field private final mutableInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field private prefetchBaseIndex:I

.field private final prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

.field private remeasurement:Landroidx/compose/ui/layout/Remeasurement;

.field private final remeasurementModifier:Landroidx/compose/ui/layout/RemeasurementModifier;

.field private final scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

.field private scrollToBeConsumed:F

.field private final scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

.field private final spans:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->Companion:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->$stable:I

    .line 421
    sget-object v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$Companion$Saver$1;->INSTANCE:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$Companion$Saver$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sget-object v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$Companion$Saver$2;->INSTANCE:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$Companion$Saver$2;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/ListSaverKt;->listSaver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    filled-new-array {p1}, [I

    move-result-object p1

    filled-new-array {p2}, [I

    move-result-object p2

    .line 84
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;-><init>([I[I)V

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

    .line 81
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;-><init>(II)V

    return-void
.end method

.method private constructor <init>([I[I)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    .line 113
    new-instance v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scrollPosition$1;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scrollPosition$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 110
    invoke-direct {v0, p1, p2, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;-><init>([I[ILkotlin/jvm/functions/Function2;)V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    .line 127
    sget-object p1, Landroidx/compose/foundation/lazy/staggeredgrid/EmptyLazyStaggeredGridLayoutInfo;->INSTANCE:Landroidx/compose/foundation/lazy/staggeredgrid/EmptyLazyStaggeredGridLayoutInfo;

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-static {p1, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    .line 130
    new-instance p1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->spans:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->canScrollForward:Z

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->canScrollBackward:Z

    .line 136
    new-instance p1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridAnimateScrollScope;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridAnimateScrollScope;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;)V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->animateScrollScope:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridAnimateScrollScope;

    .line 140
    new-instance p1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$remeasurementModifier$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$remeasurementModifier$1;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;)V

    check-cast p1, Landroidx/compose/ui/layout/RemeasurementModifier;

    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->remeasurementModifier:Landroidx/compose/ui/layout/RemeasurementModifier;

    .line 147
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 150
    new-instance p1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scrollableState$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scrollableState$1;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Landroidx/compose/foundation/gestures/ScrollableStateKt;->ScrollableState(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/ScrollableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    const/4 p1, 0x0

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->laneWidthsPrefixSum:[I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->prefetchBaseIndex:I

    .line 163
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->currentItemPrefetchHandles:Ljava/util/Map;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 166
    invoke-static {p1, p1}, Landroidx/compose/ui/unit/DensityKt;->Density(FF)Landroidx/compose/ui/unit/Density;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->density:Landroidx/compose/ui/unit/Density;

    .line 177
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->mutableInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-void
.end method

.method public synthetic constructor <init>([I[ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;-><init>([I[I)V

    return-void
.end method

.method public static final synthetic access$fillNearestIndices(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;II)[I
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->fillNearestIndices(II)[I

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSaver$cp()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static final synthetic access$onScroll(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;F)F
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->onScroll(F)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$setRemeasurement$p(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/ui/layout/Remeasurement;)V
    .locals 0

    .line 72
    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->remeasurement:Landroidx/compose/ui/layout/Remeasurement;

    return-void
.end method

.method public static synthetic animateScrollToItem$default(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 261
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->animateScrollToItem(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final cancelPrefetchIfVisibleItemsChanged(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;)V
    .locals 3

    .line 363
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->prefetchBaseIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 364
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 365
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;->getIndex()I

    move-result v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;->getIndex()I

    move-result p1

    iget v2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->prefetchBaseIndex:I

    if-gt v0, v2, :cond_0

    if-gt v2, p1, :cond_0

    goto :goto_1

    :cond_0
    iput v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->prefetchBaseIndex:I

    iget-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->currentItemPrefetchHandles:Ljava/util/Map;

    .line 367
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 434
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 367
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->currentItemPrefetchHandles:Ljava/util/Map;

    .line 368
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_2
    :goto_1
    return-void
.end method

.method private final clearLeftoverPrefetchHandles(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->currentItemPrefetchHandles:Ljava/util/Map;

    .line 352
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 353
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 354
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 355
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 356
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    .line 357
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final fillNearestIndices(II)[I
    .locals 9

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->spans:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;

    add-int v1, p1, p2

    .line 387
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->ensureValidIndex(I)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->spans:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;

    .line 389
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->getSpan(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 391
    :cond_0
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 392
    :goto_0
    new-array v8, p2, [I

    add-int/lit8 v2, v0, -0x1

    move v5, v2

    move v2, p1

    :goto_1
    if-ge v1, v5, :cond_2

    iget-object v3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->spans:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;

    .line 397
    invoke-virtual {v3, v2, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->findPreviousItemIndex(II)I

    move-result v2

    aput v2, v8, v5

    if-ne v2, v1, :cond_1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, v8

    .line 399
    invoke-static/range {v2 .. v7}, Lkotlin/collections/ArraysKt;->fill$default([IIIIILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 405
    :cond_2
    :goto_2
    aput p1, v8, v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_3

    iget-object v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->spans:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;

    .line 410
    invoke-virtual {v1, p1, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->findNextItemIndex(II)I

    move-result p1

    aput p1, v8, v0

    goto :goto_3

    :cond_3
    return-object v8
.end method

.method private final notifyPrefetch(F)V
    .locals 11

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    .line 293
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;

    .line 294
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    const/4 v1, 0x0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 298
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;->getIndex()I

    move-result p1

    goto :goto_1

    .line 300
    :cond_1
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;->getIndex()I

    move-result p1

    :goto_1
    iget v3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->prefetchBaseIndex:I

    if-ne p1, v3, :cond_2

    return-void

    :cond_2
    iput p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->prefetchBaseIndex:I

    .line 309
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v3, Ljava/util/Set;

    iget-object v4, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->laneWidthsPrefixSum:[I

    .line 311
    array-length v4, v4

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_9

    if-eqz v2, :cond_3

    iget-object v6, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->spans:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;

    .line 316
    invoke-virtual {v6, p1, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->findNextItemIndex(II)I

    move-result v6

    goto :goto_3

    :cond_3
    iget-object v6, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->spans:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;

    .line 318
    invoke-virtual {v6, p1, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->findPreviousItemIndex(II)I

    move-result v6

    :goto_3
    if-ltz v6, :cond_8

    .line 321
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;->getTotalItemsCount()I

    move-result v7

    if-ge v6, v7, :cond_8

    if-ne p1, v6, :cond_4

    goto :goto_7

    .line 324
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 327
    move-object v7, v3

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v7, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->currentItemPrefetchHandles:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_6

    :cond_5
    iget-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->laneWidthsPrefixSum:[I

    .line 332
    aget v7, p1, v5

    if-nez v5, :cond_6

    move p1, v1

    goto :goto_4

    :cond_6
    add-int/lit8 v8, v5, -0x1

    .line 333
    aget p1, p1, v8

    :goto_4
    sub-int/2addr v7, p1

    iget-boolean p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->isVertical:Z

    if-eqz p1, :cond_7

    .line 336
    sget-object p1, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {p1, v7}, Landroidx/compose/ui/unit/Constraints$Companion;->fixedWidth-OenEA2s(I)J

    move-result-wide v7

    goto :goto_5

    .line 338
    :cond_7
    sget-object p1, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {p1, v7}, Landroidx/compose/ui/unit/Constraints$Companion;->fixedHeight-OenEA2s(I)J

    move-result-wide v7

    .line 335
    :goto_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v9, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->currentItemPrefetchHandles:Ljava/util/Map;

    iget-object v10, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 341
    invoke-virtual {v10, v6, v7, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->schedulePrefetch-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    move-result-object v7

    invoke-interface {v9, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    add-int/lit8 v5, v5, 0x1

    move p1, v6

    goto :goto_2

    :cond_8
    :goto_7
    return-void

    .line 347
    :cond_9
    invoke-direct {p0, v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->clearLeftoverPrefetchHandles(Ljava/util/Set;)V

    :cond_a
    return-void
.end method

.method private final onScroll(F)F
    .locals 4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->canScrollForward:Z

    if-eqz v1, :cond_1

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->canScrollBackward:Z

    if-nez v1, :cond_2

    :cond_1
    return v0

    :cond_2
    iget v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    .line 206
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    iget v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    add-float/2addr v1, p1

    iput v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    .line 214
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    iget-object v3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->remeasurement:Landroidx/compose/ui/layout/Remeasurement;

    if-eqz v3, :cond_3

    .line 216
    invoke-interface {v3}, Landroidx/compose/ui/layout/Remeasurement;->forceRemeasure()V

    :cond_3
    iget v3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    sub-float/2addr v1, v3

    .line 217
    invoke-direct {p0, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->notifyPrefetch(F)V

    :cond_4
    iget v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    .line 221
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    return p1

    :cond_5
    iget v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    sub-float/2addr p1, v1

    iput v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    return p1

    .line 207
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "entered drag with non-zero pending scroll: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic scrollToItem$default(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 243
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToItem(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
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

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->animateScrollScope:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridAnimateScrollScope;

    .line 266
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

.method public final applyMeasureResult$foundation_release(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    .line 375
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getConsumedScroll()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    .line 376
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getCanScrollBackward()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->canScrollBackward:Z

    .line 377
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getCanScrollForward()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->canScrollForward:Z

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    .line 378
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 379
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->cancelPrefetchIfVisibleItemsChanged(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    .line 380
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->updateFromMeasureResult(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;)V

    iget p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->measurePassCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->measurePassCount:I

    return-void
.end method

.method public dispatchRawDelta(F)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 289
    invoke-interface {v0, p1}, Landroidx/compose/foundation/gestures/ScrollableState;->dispatchRawDelta(F)F

    move-result p1

    return p1
.end method

.method public final getCanScrollForward$foundation_release()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->canScrollForward:Z

    return v0
.end method

.method public final getDensity$foundation_release()Landroidx/compose/ui/unit/Density;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->density:Landroidx/compose/ui/unit/Density;

    return-object v0
.end method

.method public final getFirstVisibleItemIndex()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    .line 96
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->getIndices()[I

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->minOrNull([I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getFirstVisibleItemScrollOffset()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    .line 105
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->getOffsets()[I

    move-result-object v0

    .line 106
    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->getIndices()[I

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->indexOfMinValue([I)I

    move-result v1

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public final getInteractionSource()Landroidx/compose/foundation/interaction/InteractionSource;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->mutableInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 174
    check-cast v0, Landroidx/compose/foundation/interaction/InteractionSource;

    return-object v0
.end method

.method public final getLaneCount$foundation_release()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->laneWidthsPrefixSum:[I

    .line 167
    array-length v0, v0

    return v0
.end method

.method public final getLaneWidthsPrefixSum$foundation_release()[I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->laneWidthsPrefixSum:[I

    return-object v0
.end method

.method public final getLayoutInfo()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    .line 123
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;

    return-object v0
.end method

.method public final getMeasurePassCount$foundation_release()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->measurePassCount:I

    return v0
.end method

.method public final getMutableInteractionSource$foundation_release()Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->mutableInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-object v0
.end method

.method public final getPrefetchState$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    return-object v0
.end method

.method public final getRemeasurementModifier$foundation_release()Landroidx/compose/ui/layout/RemeasurementModifier;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->remeasurementModifier:Landroidx/compose/ui/layout/RemeasurementModifier;

    return-object v0
.end method

.method public final getScrollPosition$foundation_release()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    return-object v0
.end method

.method public final getScrollToBeConsumed$foundation_release()F
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    return v0
.end method

.method public final getSpans$foundation_release()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->spans:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;

    return-object v0
.end method

.method public isScrollInProgress()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 199
    invoke-interface {v0}, Landroidx/compose/foundation/gestures/ScrollableState;->isScrollInProgress()Z

    move-result v0

    return v0
.end method

.method public final isVertical$foundation_release()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->isVertical:Z

    return v0
.end method

.method public scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 191
    invoke-interface {v0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ScrollableState;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
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

    .line 248
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/gestures/ScrollableState;

    const/4 v1, 0x0

    new-instance v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scrollToItem$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scrollToItem$2;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;IILkotlin/coroutines/Continuation;)V

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

.method public final setCanScrollForward$foundation_release(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->canScrollForward:Z

    return-void
.end method

.method public final setDensity$foundation_release(Landroidx/compose/ui/unit/Density;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->density:Landroidx/compose/ui/unit/Density;

    return-void
.end method

.method public final setLaneWidthsPrefixSum$foundation_release([I)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->laneWidthsPrefixSum:[I

    return-void
.end method

.method public final setMeasurePassCount$foundation_release(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->measurePassCount:I

    return-void
.end method

.method public final setVertical$foundation_release(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->isVertical:Z

    return-void
.end method

.method public final snapToItemInternal$foundation_release(Landroidx/compose/foundation/gestures/ScrollScope;II)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResultKt;->findVisibleItem(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;I)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->isVertical:Z

    .line 272
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;->getOffset-nOcc-ac()J

    move-result-wide v0

    if-eqz p2, :cond_0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p2

    :goto_0
    add-int/2addr p2, p3

    int-to-float p2, p2

    .line 274
    invoke-interface {p1, p2}, Landroidx/compose/foundation/gestures/ScrollScope;->scrollBy(F)F

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    .line 276
    invoke-virtual {p1, p2, p3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->requestPosition(II)V

    iget-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->remeasurement:Landroidx/compose/ui/layout/Remeasurement;

    if-eqz p1, :cond_2

    .line 277
    invoke-interface {p1}, Landroidx/compose/ui/layout/Remeasurement;->forceRemeasure()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final updateScrollPositionIfTheFirstItemWasMoved$foundation_release(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;)V
    .locals 1

    const-string v0, "itemProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    .line 285
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->updateScrollPositionIfTheFirstItemWasMoved(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;)V

    return-void
.end method
