.class final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;
.super Ljava/lang/Object;
.source "LazyStaggeredGridMeasure.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ \u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;",
        "",
        "isVertical",
        "",
        "itemProvider",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;",
        "measureScope",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
        "resolvedSlotSums",
        "",
        "measuredItemFactory",
        "Landroidx/compose/foundation/lazy/staggeredgrid/MeasuredItemFactory;",
        "(ZLandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;[ILandroidx/compose/foundation/lazy/staggeredgrid/MeasuredItemFactory;)V",
        "childConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "slot",
        "",
        "childConstraints-OenEA2s",
        "(I)J",
        "getAndMeasure",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
        "index",
        "lane",
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

.field private final itemProvider:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

.field private final measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

.field private final measuredItemFactory:Landroidx/compose/foundation/lazy/staggeredgrid/MeasuredItemFactory;

.field private final resolvedSlotSums:[I


# direct methods
.method public constructor <init>(ZLandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;[ILandroidx/compose/foundation/lazy/staggeredgrid/MeasuredItemFactory;)V
    .locals 1

    const-string v0, "itemProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measureScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolvedSlotSums"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measuredItemFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->isVertical:Z

    iput-object p2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->itemProvider:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->resolvedSlotSums:[I

    iput-object p5, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->measuredItemFactory:Landroidx/compose/foundation/lazy/staggeredgrid/MeasuredItemFactory;

    return-void
.end method

.method private final childConstraints-OenEA2s(I)J
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->resolvedSlotSums:[I

    add-int/lit8 v1, p1, -0x1

    .line 652
    aget v0, v0, v1

    :goto_0
    iget-object v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->resolvedSlotSums:[I

    .line 653
    aget p1, v1, p1

    sub-int/2addr p1, v0

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->isVertical:Z

    if-eqz v0, :cond_1

    .line 655
    sget-object v0, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/unit/Constraints$Companion;->fixedWidth-OenEA2s(I)J

    move-result-wide v0

    goto :goto_1

    .line 657
    :cond_1
    sget-object v0, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/unit/Constraints$Companion;->fixedHeight-OenEA2s(I)J

    move-result-wide v0

    :goto_1
    return-wide v0
.end method


# virtual methods
.method public final getAndMeasure(II)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->itemProvider:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    .line 662
    invoke-interface {v0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    .line 663
    invoke-direct {p0, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->childConstraints-OenEA2s(I)J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->measure-0kLqBqw(IJ)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->measuredItemFactory:Landroidx/compose/foundation/lazy/staggeredgrid/MeasuredItemFactory;

    .line 664
    invoke-interface {v2, p1, p2, v0, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/MeasuredItemFactory;->createItem(IILjava/lang/Object;Ljava/util/List;)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    move-result-object p1

    return-object p1
.end method
