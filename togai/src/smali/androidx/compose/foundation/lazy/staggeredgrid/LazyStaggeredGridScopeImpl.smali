.class public final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScopeImpl;
.super Ljava/lang/Object;
.source "LazyStaggeredGridScope.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;


# annotations
.annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyStaggeredGridScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyStaggeredGridScope.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScopeImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,67:1\n1#2:68\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J?\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u001c\u0010\r\u001a\u0018\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\t0\u000e\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u0011H\u0017\u00a2\u0006\u0002\u0010\u0012J\u0092\u0001\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00152#\u0010\n\u001a\u001f\u0012\u0013\u0012\u00110\u0015\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u0018\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u000e2#\u0010\u000c\u001a\u001f\u0012\u0013\u0012\u00110\u0015\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u000e21\u0010\u0019\u001a-\u0012\u0004\u0012\u00020\u000f\u0012\u0013\u0012\u00110\u0015\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u0018\u0012\u0004\u0012\u00020\t0\u001a\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u0011H\u0016\u00a2\u0006\u0002\u0010\u001bR\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScopeImpl;",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;",
        "()V",
        "intervals",
        "Landroidx/compose/foundation/lazy/layout/MutableIntervalList;",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridIntervalContent;",
        "getIntervals",
        "()Landroidx/compose/foundation/lazy/layout/MutableIntervalList;",
        "item",
        "",
        "key",
        "",
        "contentType",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V",
        "items",
        "count",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "index",
        "itemContent",
        "Lkotlin/Function2;",
        "(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V",
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
.field private final intervals:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/foundation/lazy/layout/MutableIntervalList<",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridIntervalContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScopeImpl;->intervals:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    return-void
.end method


# virtual methods
.method public final getIntervals()Landroidx/compose/foundation/lazy/layout/MutableIntervalList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/foundation/lazy/layout/MutableIntervalList<",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridIntervalContent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScopeImpl;->intervals:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    return-object v0
.end method

.method public item(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V
    .locals 2
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "content"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 36
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScopeImpl$item$1$1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScopeImpl$item$1$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    new-instance p1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScopeImpl$item$2;

    invoke-direct {p1, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScopeImpl$item$2;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 38
    new-instance p2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScopeImpl$item$3;

    invoke-direct {p2, p3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScopeImpl$item$3;-><init>(Lkotlin/jvm/functions/Function3;)V

    const p3, 0x7975b2e0

    const/4 v1, 0x1

    invoke-static {p3, v1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p2

    check-cast p2, Lkotlin/jvm/functions/Function4;

    .line 34
    invoke-virtual {p0, v1, v0, p1, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScopeImpl;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method public items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScope;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contentType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemContent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScopeImpl;->intervals:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    .line 50
    new-instance v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridIntervalContent;

    invoke-direct {v1, p2, p3, p4}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridIntervalContent;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 48
    invoke-virtual {v0, p1, v1}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->addInterval(ILjava/lang/Object;)V

    return-void
.end method
