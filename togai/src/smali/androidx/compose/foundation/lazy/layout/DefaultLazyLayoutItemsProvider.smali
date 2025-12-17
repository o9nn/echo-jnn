.class final Landroidx/compose/foundation/lazy/layout/DefaultLazyLayoutItemsProvider;
.super Ljava/lang/Object;
.source "LazyLayoutItemProvider.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;


# annotations
.annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IntervalContent::",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyLayoutItemProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyLayoutItemProvider.kt\nandroidx/compose/foundation/lazy/layout/DefaultLazyLayoutItemsProvider\n*L\n1#1,232:1\n136#1,3:233\n136#1,3:236\n136#1,3:239\n*S KotlinDebug\n*F\n+ 1 LazyLayoutItemProvider.kt\nandroidx/compose/foundation/lazy/layout/DefaultLazyLayoutItemsProvider\n*L\n117#1:233,3\n123#1:236,3\n128#1:239,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0010\u0008\u0003\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003BN\u00121\u0010\u0004\u001a-\u0012\u0004\u0012\u00028\u0000\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0005\u00a2\u0006\u0002\u0008\u000b\u00a2\u0006\u0002\u0008\u000c\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011J\u0015\u0010\u001f\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0006H\u0017\u00a2\u0006\u0002\u0010 J*\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00060\u001b2\u0006\u0010\"\u001a\u00020\u00102\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000eH\u0003J\u0012\u0010$\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\t\u001a\u00020\u0006H\u0016J\u0010\u0010%\u001a\u00020\u001c2\u0006\u0010\t\u001a\u00020\u0006H\u0016JT\u0010&\u001a\u0002H\'\"\u0004\u0008\u0001\u0010\'2\u0006\u0010\t\u001a\u00020\u000626\u0010(\u001a2\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008()\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(*\u0012\u0004\u0012\u0002H\'0\u0005H\u0082\u0008\u00a2\u0006\u0002\u0010+R\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R>\u0010\u0004\u001a-\u0012\u0004\u0012\u00028\u0000\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0005\u00a2\u0006\u0002\u0008\u000b\u00a2\u0006\u0002\u0008\u000c\u00a2\u0006\n\n\u0002\u0010\u0016\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R \u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00060\u001bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006,"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/layout/DefaultLazyLayoutItemsProvider;",
        "IntervalContent",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;",
        "itemContentProvider",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "index",
        "",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "intervals",
        "Landroidx/compose/foundation/lazy/layout/IntervalList;",
        "nearestItemsRange",
        "Lkotlin/ranges/IntRange;",
        "(Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/lazy/layout/IntervalList;Lkotlin/ranges/IntRange;)V",
        "getIntervals",
        "()Landroidx/compose/foundation/lazy/layout/IntervalList;",
        "getItemContentProvider",
        "()Lkotlin/jvm/functions/Function4;",
        "Lkotlin/jvm/functions/Function4;",
        "itemCount",
        "getItemCount",
        "()I",
        "keyToIndexMap",
        "",
        "",
        "getKeyToIndexMap",
        "()Ljava/util/Map;",
        "Item",
        "(ILandroidx/compose/runtime/Composer;I)V",
        "generateKeyToIndexMap",
        "range",
        "list",
        "getContentType",
        "getKey",
        "withLocalIntervalIndex",
        "T",
        "block",
        "localIndex",
        "content",
        "(ILkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
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
.field private final intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/foundation/lazy/layout/IntervalList<",
            "TIntervalContent;>;"
        }
    .end annotation
.end field

.field private final itemContentProvider:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "TIntervalContent;",
            "Ljava/lang/Integer;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final keyToIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/lazy/layout/IntervalList;Lkotlin/ranges/IntRange;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-TIntervalContent;-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/lazy/layout/IntervalList<",
            "+TIntervalContent;>;",
            "Lkotlin/ranges/IntRange;",
            ")V"
        }
    .end annotation

    const-string v0, "itemContentProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intervals"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nearestItemsRange"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/DefaultLazyLayoutItemsProvider;->itemContentProvider:Lkotlin/jvm/functions/Function4;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/DefaultLazyLayoutItemsProvider;->intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;

    .line 113
    invoke-direct {p0, p3, p2}, Landroidx/compose/foundation/lazy/layout/DefaultLazyLayoutItemsProvider;->generateKeyToIndexMap(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/layout/IntervalList;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/DefaultLazyLayoutItemsProvider;->keyToIndexMap:Ljava/util/Map;

    return-void
.end method

.method private final generateKeyToIndexMap(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/layout/IntervalList;)Ljava/util/Map;
    .locals 3
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/IntRange;",
            "Landroidx/compose/foundation/lazy/layout/IntervalList<",
            "+",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 151
    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v0

    if-ltz v0, :cond_1

    .line 153
    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getLast()I

    move-result p1

    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/IntervalList;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ge p1, v0, :cond_0

    .line 155
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 157
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 158
    new-instance v2, Landroidx/compose/foundation/lazy/layout/DefaultLazyLayoutItemsProvider$generateKeyToIndexMap$1$1;

    invoke-direct {v2, v0, p1, v1}, Landroidx/compose/foundation/lazy/layout/DefaultLazyLayoutItemsProvider$generateKeyToIndexMap$1$1;-><init>(IILjava/util/HashMap;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, v0, p1, v2}, Landroidx/compose/foundation/lazy/layout/IntervalList;->forEach(IILkotlin/jvm/functions/Function1;)V

    .line 157
    move-object p1, v1

    check-cast p1, Ljava/util/Map;

    :goto_0
    return-object p1

    .line 152
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final withLocalIntervalIndex(ILkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TIntervalContent;+TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/DefaultLazyLayoutItemsProvider;->intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;

    .line 136
    invoke-interface {v0, p1}, Landroidx/compose/foundation/lazy/layout/IntervalList;->get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getStartIndex()I

    move-result v1

    sub-int/2addr p1, v1

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public Item(ILandroidx/compose/runtime/Composer;I)V
    .locals 4

    const v0, -0x6febd618

    .line 116
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    const-string v1, "C(Item)*117@4203L31:LazyLayoutItemProvider.kt#wow0x6"

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
    and-int/lit8 v1, v1, 0x5b

    const/16 v2, 0x12

    if-ne v1, v2, :cond_5

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    .line 120
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_4

    .line 116
    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.lazy.layout.DefaultLazyLayoutItemsProvider.Item (LazyLayoutItemProvider.kt:115)"

    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_6
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/DefaultLazyLayoutItemsProvider;->intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;

    .line 233
    invoke-interface {v0, p1}, Landroidx/compose/foundation/lazy/layout/IntervalList;->get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getStartIndex()I

    move-result v1

    sub-int v1, p1, v1

    .line 235
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;

    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/DefaultLazyLayoutItemsProvider;->itemContentProvider:Lkotlin/jvm/functions/Function4;

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v1, p2, v3}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 120
    :cond_7
    :goto_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p2

    if-nez p2, :cond_8

    goto :goto_5

    :cond_8
    new-instance v0, Landroidx/compose/foundation/lazy/layout/DefaultLazyLayoutItemsProvider$Item$2;

    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/foundation/lazy/layout/DefaultLazyLayoutItemsProvider$Item$2;-><init>(Landroidx/compose/foundation/lazy/layout/DefaultLazyLayoutItemsProvider;II)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_5
    return-void
.end method

.method public getContentType(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/DefaultLazyLayoutItemsProvider;->intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;

    .line 239
    invoke-interface {v0, p1}, Landroidx/compose/foundation/lazy/layout/IntervalList;->get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getStartIndex()I

    move-result v1

    sub-int/2addr p1, v1

    .line 241
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;

    .line 129
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;->getType()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getIntervals()Landroidx/compose/foundation/lazy/layout/IntervalList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/foundation/lazy/layout/IntervalList<",
            "TIntervalContent;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/DefaultLazyLayoutItemsProvider;->intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;

    return-object v0
.end method

.method public final getItemContentProvider()Lkotlin/jvm/functions/Function4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function4<",
            "TIntervalContent;",
            "Ljava/lang/Integer;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/DefaultLazyLayoutItemsProvider;->itemContentProvider:Lkotlin/jvm/functions/Function4;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/DefaultLazyLayoutItemsProvider;->intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;

    .line 111
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/IntervalList;->getSize()I

    move-result v0

    return v0
.end method

.method public getKey(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/DefaultLazyLayoutItemsProvider;->intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;

    .line 236
    invoke-interface {v0, p1}, Landroidx/compose/foundation/lazy/layout/IntervalList;->get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getStartIndex()I

    move-result v1

    sub-int v1, p1, v1

    .line 238
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;

    .line 124
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;->getKey()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p1}, Landroidx/compose/foundation/lazy/layout/Lazy_androidKt;->getDefaultLazyLayoutKey(I)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
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

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/DefaultLazyLayoutItemsProvider;->keyToIndexMap:Ljava/util/Map;

    return-object v0
.end method
