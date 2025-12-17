.class final Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;
.super Ljava/lang/Object;
.source "LazyGridItemProvider.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;


# annotations
.annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B#\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000eH\u0097\u0001\u00a2\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u001c\u001a\u00020\u000eH\u0096\u0001J\u0011\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u000eH\u0096\u0001J$\u0010 \u001a\u00020!*\u00020\"2\u0006\u0010\u001c\u001a\u00020\u000eH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008#\u0010$R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000eX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R \u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u000e0\u00128VX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006%"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;",
        "intervals",
        "Landroidx/compose/foundation/lazy/layout/IntervalList;",
        "Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;",
        "hasCustomSpans",
        "",
        "nearestItemsRange",
        "Lkotlin/ranges/IntRange;",
        "(Landroidx/compose/foundation/lazy/layout/IntervalList;ZLkotlin/ranges/IntRange;)V",
        "getHasCustomSpans",
        "()Z",
        "itemCount",
        "",
        "getItemCount",
        "()I",
        "keyToIndexMap",
        "",
        "",
        "getKeyToIndexMap",
        "()Ljava/util/Map;",
        "spanLayoutProvider",
        "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;",
        "getSpanLayoutProvider",
        "()Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;",
        "Item",
        "",
        "index",
        "(ILandroidx/compose/runtime/Composer;I)V",
        "getContentType",
        "getKey",
        "getSpan",
        "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;",
        "getSpan-_-orMbw",
        "(Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;I)J",
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
.field private final synthetic $$delegate_0:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

.field private final hasCustomSpans:Z

.field private final intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/foundation/lazy/layout/IntervalList<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;",
            ">;"
        }
    .end annotation
.end field

.field private final spanLayoutProvider:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/IntervalList;ZLkotlin/ranges/IntRange;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/layout/IntervalList<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;",
            ">;Z",
            "Lkotlin/ranges/IntRange;",
            ")V"
        }
    .end annotation

    const-string v0, "intervals"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nearestItemsRange"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;

    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->hasCustomSpans:Z

    .line 86
    sget-object p2, Landroidx/compose/foundation/lazy/grid/ComposableSingletons$LazyGridItemProviderKt;->INSTANCE:Landroidx/compose/foundation/lazy/grid/ComposableSingletons$LazyGridItemProviderKt;

    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/grid/ComposableSingletons$LazyGridItemProviderKt;->getLambda-1$foundation_release()Lkotlin/jvm/functions/Function4;

    move-result-object p2

    .line 84
    invoke-static {p1, p3, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProviderKt;->LazyLayoutItemProvider(Landroidx/compose/foundation/lazy/layout/IntervalList;Lkotlin/ranges/IntRange;Lkotlin/jvm/functions/Function4;)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->$$delegate_0:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    .line 92
    new-instance p1, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    move-object p2, p0

    check-cast p2, Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    invoke-direct {p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;)V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->spanLayoutProvider:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    return-void
.end method


# virtual methods
.method public Item(ILandroidx/compose/runtime/Composer;I)V
    .locals 4

    const v0, 0x50c6aa44

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    const-string v1, "C(Item)-1@-2:LazyGridItemProvider.kt#7791vq"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p3, 0xe

    if-nez v1, :cond_1

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p3

    goto :goto_1

    :cond_1
    move v1, p3

    :goto_1
    and-int/lit8 v2, p3, 0x70

    if-nez v2, :cond_3

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit8 v2, v1, 0x5b

    const/16 v3, 0x12

    if-ne v2, v3, :cond_5

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_4

    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, -0x1

    const-string v3, "androidx.compose.foundation.lazy.grid.LazyGridItemProviderImpl.Item (LazyGridItemProvider.kt:-1)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_6
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->$$delegate_0:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    and-int/lit8 v1, v1, 0xe

    invoke-interface {v0, p1, p2, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->Item(ILandroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    :goto_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p2

    if-nez p2, :cond_8

    goto :goto_5

    :cond_8
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl$Item$1;

    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl$Item$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;II)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_5
    return-void
.end method

.method public getContentType(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->$$delegate_0:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    invoke-interface {v0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getContentType(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getHasCustomSpans()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->hasCustomSpans:Z

    return v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->$$delegate_0:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getKey(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->$$delegate_0:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    invoke-interface {v0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getKeyToIndexMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->$$delegate_0:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getKeyToIndexMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSpan-_-orMbw(Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;I)J
    .locals 2

    const-string v0, "$this$getSpan"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;

    .line 95
    invoke-interface {v0, p2}, Landroidx/compose/foundation/lazy/layout/IntervalList;->get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getStartIndex()I

    move-result v1

    sub-int/2addr p2, v1

    .line 97
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->getSpan()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->unbox-impl()J

    move-result-wide p1

    return-wide p1
.end method

.method public getSpanLayoutProvider()Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->spanLayoutProvider:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    return-object v0
.end method
