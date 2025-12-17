.class public final Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimatorKt;
.super Ljava/lang/Object;
.source "LazyGridItemPlacementAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridItemPlacementAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridItemPlacementAnimator.kt\nandroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimatorKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,560:1\n33#2,6:561\n*S KotlinDebug\n*F\n+ 1 LazyGridItemPlacementAnimator.kt\nandroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimatorKt\n*L\n552#1:561,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\u001a\u0014\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0004H\u0002\u001a\u0014\u0010\u0007\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0004H\u0002\u001a\u000c\u0010\u0008\u001a\u00020\u0004*\u00020\u0005H\u0002\u001a\"\u0010\t\u001a\u00020\u0004*\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004H\u0002\u001a2\u0010\u000e\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002\u001a\u0014\u0010\u0013\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0004H\u0002\"\u0017\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "InterruptionSpec",
        "Landroidx/compose/animation/core/SpringSpec;",
        "Landroidx/compose/ui/unit/IntOffset;",
        "firstIndexInLineContaining",
        "",
        "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;",
        "index",
        "firstIndexInNextLineAfter",
        "getFirstIndexInNextLineAfterTheLastKnownOne",
        "getLineSize",
        "",
        "Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;",
        "itemIndex",
        "fallback",
        "getLinesMainAxisSizesSum",
        "fromIndex",
        "toIndex",
        "averageLineMainAxisSize",
        "visibleItems",
        "lastIndexInPreviousLineBefore",
        "foundation_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final InterruptionSpec:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 480
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/IntOffset$Companion;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x43c80000    # 400.0f

    .line 478
    invoke-static {v3, v4, v0, v1, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimatorKt;->InterruptionSpec:Landroidx/compose/animation/core/SpringSpec;

    return-void
.end method

.method public static final synthetic access$firstIndexInNextLineAfter(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimatorKt;->firstIndexInNextLineAfter(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getInterruptionSpec$p()Landroidx/compose/animation/core/SpringSpec;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimatorKt;->InterruptionSpec:Landroidx/compose/animation/core/SpringSpec;

    return-object v0
.end method

.method public static final synthetic access$getLinesMainAxisSizesSum(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;IIILjava/util/List;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimatorKt;->getLinesMainAxisSizesSum(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;IIILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$lastIndexInPreviousLineBefore(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimatorKt;->lastIndexInPreviousLineBefore(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;I)I

    move-result p0

    return p0
.end method

.method private static final firstIndexInLineContaining(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;I)I
    .locals 2

    .line 533
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 534
    invoke-static {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimatorKt;->getFirstIndexInNextLineAfterTheLastKnownOne(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 536
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getSlotsPerLine()I

    move-result v1

    div-int/2addr p1, v1

    .line 537
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getSlotsPerLine()I

    move-result p0

    mul-int/2addr p0, p1

    add-int/2addr v0, p0

    goto :goto_0

    .line 539
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineIndexOfItem--_Ze7BM(I)I

    move-result p1

    .line 540
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineConfiguration(I)Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;

    move-result-object p0

    .line 541
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->getFirstItemIndex()I

    move-result v0

    :goto_0
    return v0
.end method

.method private static final firstIndexInNextLineAfter(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;I)I
    .locals 1

    .line 523
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 525
    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimatorKt;->firstIndexInLineContaining(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;I)I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getSlotsPerLine()I

    move-result p0

    goto :goto_0

    .line 527
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineIndexOfItem--_Ze7BM(I)I

    move-result p1

    .line 528
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineConfiguration(I)Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;

    move-result-object p0

    .line 529
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->getFirstItemIndex()I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->getSpans()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    add-int/2addr p1, p0

    return p1
.end method

.method private static final getFirstIndexInNextLineAfterTheLastKnownOne(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;)I
    .locals 7

    .line 548
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineIndexOfItem--_Ze7BM(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineConfiguration(I)Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;

    move-result-object v0

    .line 550
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->getFirstItemIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 552
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->getSpans()Ljava/util/List;

    move-result-object v0

    .line 562
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_0

    .line 563
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 564
    check-cast v5, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->unbox-impl()J

    move-result-wide v5

    .line 553
    invoke-static {v5, v6}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->getCurrentLineSpan-impl(J)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 557
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getSlotsPerLine()I

    move-result p0

    sub-int/2addr p0, v4

    add-int/lit8 p0, p0, 0x1

    add-int/2addr v1, p0

    return v1
.end method

.method private static final getLineSize(Ljava/util/List;II)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;",
            ">;II)I"
        }
    .end annotation

    .line 502
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getIndex()I

    move-result v0

    if-lt p1, v0, :cond_4

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getIndex()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_2

    .line 503
    :cond_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getIndex()I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getIndex()I

    move-result v1

    sub-int/2addr v1, p1

    if-ge v0, v1, :cond_2

    .line 504
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 505
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    .line 506
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getIndex()I

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getLineMainAxisSizeWithSpacings()I

    move-result p0

    return p0

    .line 507
    :cond_1
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getIndex()I

    move-result v2

    if-gt v2, p1, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    :cond_2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    :goto_1
    const/4 v1, -0x1

    if-ge v1, v0, :cond_4

    .line 511
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    .line 512
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getIndex()I

    move-result v2

    if-ne v2, p1, :cond_3

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getLineMainAxisSizeWithSpacings()I

    move-result p0

    return p0

    .line 513
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getIndex()I

    move-result v1

    if-lt v1, p1, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    return p2
.end method

.method private static final getLinesMainAxisSizesSum(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;IIILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;",
            "III",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-gt p1, p2, :cond_1

    .line 492
    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimatorKt;->firstIndexInNextLineAfter(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;I)I

    move-result p1

    add-int/lit8 v1, p1, -0x1

    if-gt v1, p2, :cond_0

    .line 494
    invoke-static {p4, v1, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimatorKt;->getLineSize(Ljava/util/List;II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static final lastIndexInPreviousLineBefore(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;I)I
    .locals 0

    .line 520
    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimatorKt;->firstIndexInLineContaining(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;I)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method
