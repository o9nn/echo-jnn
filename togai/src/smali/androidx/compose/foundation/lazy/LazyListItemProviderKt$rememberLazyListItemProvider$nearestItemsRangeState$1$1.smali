.class final Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProvider$nearestItemsRangeState$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyListItemProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListItemProviderKt;->rememberLazyListItemProvider(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListItemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
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


# instance fields
.field final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProvider$nearestItemsRangeState$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProvider$nearestItemsRangeState$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 45
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProvider$nearestItemsRangeState$1$1;->invoke()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
