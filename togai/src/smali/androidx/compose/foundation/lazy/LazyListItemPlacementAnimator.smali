.class public final Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;
.super Ljava/lang/Object;
.source "LazyListItemPlacementAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListItemPlacementAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListItemPlacementAnimator.kt\nandroidx/compose/foundation/lazy/LazyListItemPlacementAnimator\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n*L\n1#1,442:1\n83#2,2:443\n33#2,6:445\n85#2:451\n33#2,6:452\n33#2,4:458\n38#2:465\n83#2,2:467\n33#2,4:469\n38#2:474\n85#2:475\n83#2,2:476\n33#2,6:478\n85#2:484\n51#2,4:488\n56#2:494\n79#3:462\n86#3:463\n86#3:464\n86#3:466\n86#3:473\n86#3:485\n86#3:486\n79#3:487\n86#3:492\n79#3:493\n*S KotlinDebug\n*F\n+ 1 LazyListItemPlacementAnimator.kt\nandroidx/compose/foundation/lazy/LazyListItemPlacementAnimator\n*L\n74#1:443,2\n74#1:445,6\n74#1:451\n90#1:452,6\n98#1:458,4\n98#1:465\n199#1:467,2\n199#1:469,4\n199#1:474\n199#1:475\n206#1:476,2\n206#1:478,6\n206#1:484\n381#1:488,4\n381#1:494\n143#1:462\n146#1:463\n157#1:464\n193#1:466\n200#1:473\n257#1:485\n258#1:486\n375#1:487\n382#1:492\n387#1:493\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J[\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\t2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020!0 H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\"\u0010#J;\u0010$\u001a\u00020\u00142\u0006\u0010%\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\t2\u0006\u0010\'\u001a\u00020\t2\u0006\u0010(\u001a\u00020\t2\u0006\u0010)\u001a\u00020\u0014\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008*\u0010+J<\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\t2\u0006\u0010/\u001a\u00020\t2\u0006\u00100\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u00052\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020!022\u0006\u00103\u001a\u000204J\u0006\u00105\u001a\u00020-J\u0018\u00106\u001a\u00020-2\u0006\u00107\u001a\u00020!2\u0006\u00108\u001a\u00020\u000cH\u0002J\"\u00109\u001a\u00020\t*\u0008\u0012\u0004\u0012\u00020!0 2\u0006\u0010:\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tH\u0002J\u001c\u0010;\u001a\u00020\u0014*\u00020\tH\u0002\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008<\u0010=R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0013\u001a\u00020\t*\u00020\u00148BX\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006>"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "isVertical",
        "",
        "(Lkotlinx/coroutines/CoroutineScope;Z)V",
        "keyToIndexMap",
        "",
        "",
        "keyToItemInfoMap",
        "",
        "Landroidx/compose/foundation/lazy/ItemInfo;",
        "positionedKeys",
        "",
        "viewportEndItemIndex",
        "viewportEndItemNotVisiblePartSize",
        "viewportStartItemIndex",
        "viewportStartItemNotVisiblePartSize",
        "mainAxis",
        "Landroidx/compose/ui/unit/IntOffset;",
        "getMainAxis--gyyYBs",
        "(J)I",
        "calculateExpectedOffset",
        "index",
        "sizeWithSpacings",
        "averageItemsSize",
        "scrolledBy",
        "reverseLayout",
        "mainAxisLayoutSize",
        "fallback",
        "visibleItems",
        "",
        "Landroidx/compose/foundation/lazy/LazyListPositionedItem;",
        "calculateExpectedOffset-diAxcj4",
        "(IIIJZIILjava/util/List;)I",
        "getAnimatedOffset",
        "key",
        "placeableIndex",
        "minOffset",
        "maxOffset",
        "rawOffset",
        "getAnimatedOffset-YT5a7pE",
        "(Ljava/lang/Object;IIIJ)J",
        "onMeasured",
        "",
        "consumedScroll",
        "layoutWidth",
        "layoutHeight",
        "positionedItems",
        "",
        "itemProvider",
        "Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;",
        "reset",
        "startAnimationsIfNeeded",
        "item",
        "itemInfo",
        "getItemSize",
        "itemIndex",
        "toOffset",
        "toOffset-Bjo55l4",
        "(I)J",
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


# instance fields
.field private final isVertical:Z

.field private keyToIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final keyToItemInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/compose/foundation/lazy/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final positionedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private viewportEndItemIndex:I

.field private viewportEndItemNotVisiblePartSize:I

.field private viewportStartItemIndex:I

.field private viewportStartItemNotVisiblePartSize:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Z)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->isVertical:Z

    .line 47
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 50
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToIndexMap:Ljava/util/Map;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemIndex:I

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemIndex:I

    .line 59
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->positionedKeys:Ljava/util/Set;

    return-void
.end method

.method private final calculateExpectedOffset-diAxcj4(IIIJZIILjava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIJZII",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListPositionedItem;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemIndex:I

    if-nez p6, :cond_0

    if-ge v2, p1, :cond_1

    goto :goto_0

    :cond_0
    if-le v2, p1, :cond_1

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iget v3, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemIndex:I

    if-nez p6, :cond_2

    if-le v3, p1, :cond_3

    goto :goto_2

    :cond_2
    if-ge v3, p1, :cond_3

    :goto_2
    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v0

    :goto_3
    if-eqz v2, :cond_6

    if-nez p6, :cond_4

    iget p2, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemIndex:I

    add-int/2addr p2, v1

    .line 311
    invoke-static {p2, p1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    goto :goto_4

    :cond_4
    add-int/2addr p1, v1

    iget p2, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemIndex:I

    .line 313
    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    .line 315
    :goto_4
    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result p2

    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getLast()I

    move-result p1

    if-gt p2, p1, :cond_5

    .line 316
    :goto_5
    invoke-direct {p0, p9, p2, p3}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getItemSize(Ljava/util/List;II)I

    move-result p6

    add-int/2addr v0, p6

    if-eq p2, p1, :cond_5

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_5
    iget p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemNotVisiblePartSize:I

    add-int/2addr p7, p1

    add-int/2addr p7, v0

    .line 322
    invoke-direct {p0, p4, p5}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    move-result p1

    add-int p8, p7, p1

    goto :goto_8

    :cond_6
    if-eqz v3, :cond_9

    if-nez p6, :cond_7

    add-int/2addr p1, v1

    iget p6, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemIndex:I

    .line 329
    invoke-static {p1, p6}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    goto :goto_6

    :cond_7
    iget p6, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemIndex:I

    add-int/2addr p6, v1

    .line 331
    invoke-static {p6, p1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    .line 333
    :goto_6
    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result p6

    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getLast()I

    move-result p1

    if-gt p6, p1, :cond_8

    .line 334
    :goto_7
    invoke-direct {p0, p9, p6, p3}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getItemSize(Ljava/util/List;II)I

    move-result p7

    add-int/2addr p2, p7

    if-eq p6, p1, :cond_8

    add-int/lit8 p6, p6, 0x1

    goto :goto_7

    :cond_8
    iget p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemNotVisiblePartSize:I

    sub-int/2addr p1, p2

    .line 339
    invoke-direct {p0, p4, p5}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    move-result p2

    add-int p8, p1, p2

    :cond_9
    :goto_8
    return p8
.end method

.method private final getItemSize(Ljava/util/List;II)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListPositionedItem;",
            ">;II)I"
        }
    .end annotation

    .line 348
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v0

    if-lt p2, v0, :cond_4

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v0

    if-le p2, v0, :cond_0

    goto :goto_2

    .line 349
    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v0

    sub-int v0, p2, v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v1

    sub-int/2addr v1, p2

    if-ge v0, v1, :cond_2

    .line 350
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 351
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 352
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v3

    if-ne v3, p2, :cond_1

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getSizeWithSpacings()I

    move-result p1

    return p1

    .line 353
    :cond_1
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v2

    if-gt v2, p2, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    :cond_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    :goto_1
    const/4 v1, -0x1

    if-ge v1, v0, :cond_4

    .line 357
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 358
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v2

    if-ne v2, p2, :cond_3

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getSizeWithSpacings()I

    move-result p1

    return p1

    .line 359
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v1

    if-lt v1, p2, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    return p3
.end method

.method private final getMainAxis--gyyYBs(J)I
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->isVertical:Z

    if-eqz v0, :cond_0

    .line 418
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p1

    :goto_0
    return p1
.end method

.method private final startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListPositionedItem;Landroidx/compose/foundation/lazy/ItemInfo;)V
    .locals 17

    move-object/from16 v0, p1

    .line 367
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->getPlaceables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getPlaceablesCount()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->getPlaceables()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_0

    .line 370
    :cond_0
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->getPlaceables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getPlaceablesCount()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->getPlaceables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 372
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getOffset-Bjo55l4(I)J

    move-result-wide v4

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->getPlaceables()Ljava/util/List;

    move-result-object v2

    .line 374
    new-instance v6, Landroidx/compose/foundation/lazy/PlaceableInfo;

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->getNotAnimatableDelta-nOcc-ac()J

    move-result-wide v7

    .line 487
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v9

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v4

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v9, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v4

    .line 376
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getMainAxisSize(I)I

    move-result v1

    .line 374
    invoke-direct {v6, v4, v5, v1, v3}, Landroidx/compose/foundation/lazy/PlaceableInfo;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 373
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 381
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->getPlaceables()Ljava/util/List;

    move-result-object v1

    .line 489
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_3

    .line 490
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 491
    check-cast v5, Landroidx/compose/foundation/lazy/PlaceableInfo;

    .line 382
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/PlaceableInfo;->getTargetOffset-nOcc-ac()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->getNotAnimatableDelta-nOcc-ac()J

    move-result-wide v8

    .line 492
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v10

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v6

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v10, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v6

    .line 383
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getOffset-Bjo55l4(I)J

    move-result-wide v8

    .line 384
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getMainAxisSize(I)I

    move-result v10

    invoke-virtual {v5, v10}, Landroidx/compose/foundation/lazy/PlaceableInfo;->setSize(I)V

    .line 385
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getAnimationSpec(I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v10

    .line 386
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v6

    if-nez v6, :cond_2

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->getNotAnimatableDelta-nOcc-ac()J

    move-result-wide v6

    .line 493
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v11

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v12

    sub-int/2addr v11, v12

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v8

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v6

    sub-int/2addr v8, v6

    invoke-static {v11, v8}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v6

    .line 387
    invoke-virtual {v5, v6, v7}, Landroidx/compose/foundation/lazy/PlaceableInfo;->setTargetOffset--gyyYBs(J)V

    if-eqz v10, :cond_2

    const/4 v6, 0x1

    .line 389
    invoke-virtual {v5, v6}, Landroidx/compose/foundation/lazy/PlaceableInfo;->setInProgress(Z)V

    move-object/from16 v6, p0

    iget-object v11, v6, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 390
    new-instance v7, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator$startAnimationsIfNeeded$1$1;

    invoke-direct {v7, v5, v10, v3}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator$startAnimationsIfNeeded$1$1;-><init>(Landroidx/compose/foundation/lazy/PlaceableInfo;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/coroutines/Continuation;)V

    move-object v14, v7

    check-cast v14, Lkotlin/jvm/functions/Function2;

    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_3

    :cond_2
    move-object/from16 v6, p0

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v6, p0

    return-void
.end method

.method private final toOffset-Bjo55l4(I)J
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->isVertical:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    if-nez v0, :cond_1

    move p1, v1

    .line 416
    :cond_1
    invoke-static {v2, p1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final getAnimatedOffset-YT5a7pE(Ljava/lang/Object;IIIJ)J
    .locals 6

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 255
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/ItemInfo;

    if-nez p1, :cond_0

    return-wide p5

    .line 256
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/ItemInfo;->getPlaceables()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/foundation/lazy/PlaceableInfo;

    .line 257
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/PlaceableInfo;->getAnimatedOffset()Landroidx/compose/animation/core/Animatable;

    move-result-object p5

    invoke-virtual {p5}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/compose/ui/unit/IntOffset;

    invoke-virtual {p5}, Landroidx/compose/ui/unit/IntOffset;->unbox-impl()J

    move-result-wide p5

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/ItemInfo;->getNotAnimatableDelta-nOcc-ac()J

    move-result-wide v0

    .line 485
    invoke-static {p5, p6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p5, p6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p5

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p6

    add-int/2addr p5, p6

    invoke-static {v2, p5}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p5

    .line 258
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/PlaceableInfo;->getTargetOffset-nOcc-ac()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/ItemInfo;->getNotAnimatableDelta-nOcc-ac()J

    move-result-wide v2

    .line 486
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p1

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    add-int/2addr p1, v4

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v0

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v0

    .line 261
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/PlaceableInfo;->getInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 262
    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    move-result p1

    if-ge p1, p3, :cond_1

    invoke-direct {p0, p5, p6}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    move-result p1

    if-lt p1, p3, :cond_2

    .line 263
    :cond_1
    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    move-result p1

    if-le p1, p4, :cond_3

    invoke-direct {p0, p5, p6}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    move-result p1

    if-le p1, p4, :cond_3

    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 265
    new-instance p1, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator$getAnimatedOffset$1;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator$getAnimatedOffset$1;-><init>(Landroidx/compose/foundation/lazy/PlaceableInfo;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_3
    return-wide p5
.end method

.method public final onMeasured(IIIZLjava/util/List;Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListPositionedItem;",
            ">;",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;",
            ")V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    const-string v0, "positionedItems"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemProvider"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v13, 0x0

    move v1, v13

    :goto_0
    if-ge v1, v0, :cond_19

    .line 447
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 444
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 74
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getHasAnimations()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-boolean v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->isVertical:Z

    if-eqz v0, :cond_0

    move/from16 v14, p3

    goto :goto_1

    :cond_0
    move/from16 v14, p2

    :goto_1
    move/from16 v2, p1

    if-eqz p4, :cond_1

    neg-int v0, v2

    goto :goto_2

    :cond_1
    move v0, v2

    .line 83
    :goto_2
    invoke-direct {v10, v0}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->toOffset-Bjo55l4(I)J

    move-result-wide v15

    .line 85
    invoke-static/range {p5 .. p5}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 86
    invoke-static/range {p5 .. p5}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 453
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    move v1, v13

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_3

    .line 454
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 455
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    iget-object v4, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 91
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/ItemInfo;

    if-nez v4, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/compose/foundation/lazy/ItemInfo;->setIndex(I)V

    .line 92
    :goto_4
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getSizeWithSpacings()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 94
    :cond_3
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    div-int v19, v2, v0

    iget-object v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->positionedKeys:Ljava/util/Set;

    .line 96
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 459
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v9

    move v8, v13

    :goto_5
    if-ge v8, v9, :cond_c

    .line 460
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 461
    move-object v7, v0

    check-cast v7, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    iget-object v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->positionedKeys:Ljava/util/Set;

    .line 99
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 100
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/ItemInfo;

    if-nez v0, :cond_a

    .line 103
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getHasAnimations()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 104
    new-instance v6, Landroidx/compose/foundation/lazy/ItemInfo;

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v0

    invoke-direct {v6, v0}, Landroidx/compose/foundation/lazy/ItemInfo;-><init>(I)V

    iget-object v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToIndexMap:Ljava/util/Map;

    .line 105
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 106
    invoke-virtual {v7, v13}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getOffset-Bjo55l4(I)J

    move-result-wide v4

    .line 107
    invoke-virtual {v7, v13}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getMainAxisSize(I)I

    move-result v20

    if-nez v0, :cond_4

    .line 111
    invoke-direct {v10, v4, v5}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    move-result v0

    move-wide/from16 v26, v4

    move-object/from16 p1, v6

    move-object/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    goto :goto_8

    :cond_4
    if-nez p4, :cond_5

    .line 114
    invoke-direct {v10, v4, v5}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    move-result v1

    goto :goto_6

    .line 116
    :cond_5
    invoke-direct {v10, v4, v5}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    move-result v1

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getSizeWithSpacings()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v1, v1, v20

    :goto_6
    move/from16 v21, v1

    .line 121
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getSizeWithSpacings()I

    move-result v2

    .line 120
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, p0

    move/from16 v3, v19

    move-wide/from16 v26, v4

    move-wide v4, v15

    move-object/from16 p1, v6

    move/from16 v6, p4

    move-object/from16 v28, v7

    move v7, v14

    move/from16 v29, v8

    move/from16 v8, v21

    move/from16 v30, v9

    move-object/from16 v9, p5

    .line 119
    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->calculateExpectedOffset-diAxcj4(IIIJZIILjava/util/List;)I

    move-result v0

    if-eqz p4, :cond_6

    .line 129
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getSize()I

    move-result v1

    sub-int v1, v1, v20

    goto :goto_7

    :cond_6
    move v1, v13

    :goto_7
    add-int/2addr v0, v1

    :goto_8
    iget-boolean v1, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->isVertical:Z

    if-eqz v1, :cond_7

    const/16 v22, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-wide/from16 v20, v26

    move/from16 v23, v0

    .line 135
    invoke-static/range {v20 .. v25}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(JIIILjava/lang/Object;)J

    move-result-wide v0

    goto :goto_9

    :cond_7
    const/16 v23, 0x0

    const/16 v24, 0x2

    const/16 v25, 0x0

    move-wide/from16 v20, v26

    move/from16 v22, v0

    .line 137
    invoke-static/range {v20 .. v25}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(JIIILjava/lang/Object;)J

    move-result-wide v0

    .line 141
    :goto_9
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getPlaceablesCount()I

    move-result v2

    move v3, v13

    :goto_a
    if-ge v3, v2, :cond_8

    move-object/from16 v4, v28

    .line 143
    invoke-virtual {v4, v3}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getOffset-Bjo55l4(I)J

    move-result-wide v5

    .line 462
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v7

    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v5

    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v7, v5}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v5

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/ItemInfo;->getPlaceables()Ljava/util/List;

    move-result-object v7

    .line 145
    new-instance v8, Landroidx/compose/foundation/lazy/PlaceableInfo;

    .line 463
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v9

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v20

    add-int v9, v9, v20

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v20

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v5

    add-int v5, v20, v5

    invoke-static {v9, v5}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v5

    .line 147
    invoke-virtual {v4, v3}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getMainAxisSize(I)I

    move-result v9

    const/4 v13, 0x0

    .line 145
    invoke-direct {v8, v5, v6, v9, v13}, Landroidx/compose/foundation/lazy/PlaceableInfo;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 144
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v3, v3, 0x1

    const/4 v13, 0x0

    goto :goto_a

    :cond_8
    move-object/from16 v4, v28

    iget-object v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 151
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-direct {v10, v4, v2}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListPositionedItem;Landroidx/compose/foundation/lazy/ItemInfo;)V

    goto :goto_b

    :cond_9
    move/from16 v29, v8

    move/from16 v30, v9

    goto :goto_b

    :cond_a
    move-object v4, v7

    move/from16 v29, v8

    move/from16 v30, v9

    .line 155
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getHasAnimations()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 157
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/ItemInfo;->getNotAnimatableDelta-nOcc-ac()J

    move-result-wide v1

    .line 464
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v3, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v1

    .line 157
    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/lazy/ItemInfo;->setNotAnimatableDelta--gyyYBs(J)V

    .line 158
    invoke-direct {v10, v4, v0}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListPositionedItem;Landroidx/compose/foundation/lazy/ItemInfo;)V

    goto :goto_b

    :cond_b
    iget-object v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 161
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    add-int/lit8 v8, v29, 0x1

    move/from16 v9, v30

    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_c
    if-nez p4, :cond_d

    .line 171
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v0

    iput v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemIndex:I

    .line 172
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getOffset()I

    move-result v0

    iput v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemNotVisiblePartSize:I

    .line 173
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v0

    iput v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemIndex:I

    .line 175
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getOffset()I

    move-result v0

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getSizeWithSpacings()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, v14

    iput v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemNotVisiblePartSize:I

    goto :goto_c

    .line 177
    :cond_d
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v0

    iput v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemIndex:I

    .line 179
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getOffset()I

    move-result v0

    sub-int v0, v14, v0

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getSize()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemNotVisiblePartSize:I

    .line 180
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v0

    iput v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemIndex:I

    .line 182
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getOffset()I

    move-result v0

    neg-int v0, v0

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getSizeWithSpacings()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getSize()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemNotVisiblePartSize:I

    :goto_c
    iget-object v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 185
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 186
    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 187
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->positionedKeys:Ljava/util/Set;

    .line 188
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 191
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/compose/foundation/lazy/ItemInfo;

    .line 193
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/ItemInfo;->getNotAnimatableDelta-nOcc-ac()J

    move-result-wide v1

    .line 466
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v3, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v1

    .line 193
    invoke-virtual {v9, v1, v2}, Landroidx/compose/foundation/lazy/ItemInfo;->setNotAnimatableDelta--gyyYBs(J)V

    .line 195
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->getKeyToIndexMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 199
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/ItemInfo;->getPlaceables()Ljava/util/List;

    move-result-object v1

    .line 470
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_e
    const/4 v4, 0x1

    if-ge v3, v2, :cond_f

    .line 471
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 468
    check-cast v5, Landroidx/compose/foundation/lazy/PlaceableInfo;

    .line 200
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/PlaceableInfo;->getTargetOffset-nOcc-ac()J

    move-result-wide v6

    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/ItemInfo;->getNotAnimatableDelta-nOcc-ac()J

    move-result-wide v17

    .line 473
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v8

    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v21

    add-int v8, v8, v21

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v6

    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v8, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v6

    .line 201
    invoke-direct {v10, v6, v7}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    move-result v8

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/PlaceableInfo;->getSize()I

    move-result v5

    add-int/2addr v8, v5

    if-lez v8, :cond_e

    .line 202
    invoke-direct {v10, v6, v7}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    move-result v5

    if-ge v5, v14, :cond_e

    move v1, v4

    goto :goto_f

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_f
    const/4 v1, 0x0

    .line 206
    :goto_f
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/ItemInfo;->getPlaceables()Ljava/util/List;

    move-result-object v2

    .line 479
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v3, :cond_11

    .line 480
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 477
    check-cast v6, Landroidx/compose/foundation/lazy/PlaceableInfo;

    .line 206
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/PlaceableInfo;->getInProgress()Z

    move-result v6

    if-eqz v6, :cond_10

    move v2, v4

    goto :goto_11

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_11
    const/4 v2, 0x0

    :goto_11
    xor-int/2addr v2, v4

    if-nez v1, :cond_12

    if-nez v2, :cond_15

    :cond_12
    if-eqz v0, :cond_15

    .line 210
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/ItemInfo;->getPlaceables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_12

    .line 215
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v1

    invoke-virtual {v12, v1}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->getAndMeasure-ZjPyQlc(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move-result-object v8

    .line 220
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v2

    .line 219
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, p0

    move/from16 v3, v19

    move-wide v4, v15

    move/from16 v6, p4

    move v7, v14

    move-object/from16 p1, v8

    move v8, v14

    move-object v12, v9

    move-object/from16 v9, p5

    .line 218
    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->calculateExpectedOffset-diAxcj4(IIIJZIILjava/util/List;)I

    move-result v0

    if-eqz p4, :cond_14

    sub-int v0, v14, v0

    .line 229
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSize()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_14
    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    .line 234
    invoke-virtual {v1, v0, v3, v4}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->position(III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    move-result-object v0

    .line 235
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-direct {v10, v0, v12}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListPositionedItem;Landroidx/compose/foundation/lazy/ItemInfo;)V

    goto :goto_13

    :cond_15
    :goto_12
    move/from16 v3, p2

    move/from16 v4, p3

    .line 212
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    goto :goto_13

    :cond_16
    move/from16 v3, p2

    move/from16 v4, p3

    :goto_13
    move-object/from16 v12, p6

    goto/16 :goto_d

    .line 241
    :cond_17
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->getKeyToIndexMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToIndexMap:Ljava/util/Map;

    return-void

    :cond_18
    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v12, p6

    const/4 v13, 0x0

    goto/16 :goto_0

    .line 76
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->reset()V

    return-void
.end method

.method public final reset()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 279
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 280
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToIndexMap:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemIndex:I

    const/4 v1, 0x0

    iput v1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemNotVisiblePartSize:I

    iput v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemIndex:I

    iput v1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemNotVisiblePartSize:I

    return-void
.end method
