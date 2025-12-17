.class final Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyLayout.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazyLayout(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/runtime/saveable/SaveableStateHolder;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyLayout.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,122:1\n25#2:123\n25#2:130\n50#2:137\n49#2:138\n1057#3,6:124\n1057#3,6:131\n1057#3,6:139\n*S KotlinDebug\n*F\n+ 1 LazyLayout.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1\n*L\n51#1:123\n54#1:130\n68#1:137\n68#1:138\n51#1:124,6\n54#1:131,6\n68#1:139,6\n*E\n"
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
.field final synthetic $$dirty:I

.field final synthetic $currentItemProvider:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $measurePolicy:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;I",
            "Landroidx/compose/runtime/State<",
            "+",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1;->$prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1;->$measurePolicy:Lkotlin/jvm/functions/Function2;

    iput p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1;->$$dirty:I

    iput-object p5, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1;->$currentItemProvider:Landroidx/compose/runtime/State;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    check-cast p1, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1;->invoke(Landroidx/compose/runtime/saveable/SaveableStateHolder;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/saveable/SaveableStateHolder;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    const-string v0, "saveableStateHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "C50@2063L112,53@2212L101,*57@2355L140,67@2602L264,64@2515L361:LazyLayout.kt#wow0x6"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.foundation.lazy.layout.LazyLayout.<anonymous> (LazyLayout.kt:49)"

    const v2, 0x500aafab

    .line 51
    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    iget-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1;->$currentItemProvider:Landroidx/compose/runtime/State;

    const v0, -0x1d58f75c

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(remember):Composables.kt#9igjgp"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 124
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 125
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 52
    new-instance v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    new-instance v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1$itemContentFactory$1$1;

    invoke-direct {v3, p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1$itemContentFactory$1$1;-><init>(Landroidx/compose/runtime/State;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-direct {v2, p1, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;-><init>(Landroidx/compose/runtime/saveable/SaveableStateHolder;Lkotlin/jvm/functions/Function0;)V

    .line 127
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 123
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 51
    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 54
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 131
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p1

    .line 132
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p3

    if-ne p1, p3, :cond_2

    .line 55
    new-instance p1, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    new-instance p3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemReusePolicy;

    invoke-direct {p3, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemReusePolicy;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;)V

    check-cast p3, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    invoke-direct {p1, p3}, Landroidx/compose/ui/layout/SubcomposeLayoutState;-><init>(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V

    .line 134
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 130
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 54
    move-object v3, p1

    check-cast v3, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1;->$prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1;->$$dirty:I

    shr-int/lit8 p3, p3, 0x6

    and-int/lit8 p3, p3, 0xe

    or-int/lit8 p3, p3, 0x40

    .line 61
    sget v0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->$stable:I

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr p3, v0

    .line 58
    invoke-static {p1, v2, v3, p2, p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher_androidKt;->LazyLayoutPrefetcher(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/runtime/Composer;I)V

    :goto_0
    iget-object v4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1;->$measurePolicy:Lkotlin/jvm/functions/Function2;

    const p3, 0x1e7b2b64

    .line 68
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p3, "C(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {p2, p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 137
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p3

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p3, v0

    .line 139
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p3, :cond_4

    .line 140
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p3

    if-ne v0, p3, :cond_5

    .line 69
    :cond_4
    new-instance p3, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1$2$1;

    invoke-direct {p3, v2, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1$2$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Lkotlin/jvm/functions/Function2;)V

    move-object v0, p3

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 142
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 138
    :cond_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    sget p1, Landroidx/compose/ui/layout/SubcomposeLayoutState;->$stable:I

    iget p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1;->$$dirty:I

    and-int/lit8 p3, p3, 0x70

    or-int v7, p1, p3

    const/4 v8, 0x0

    move-object v6, p2

    .line 65
    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->SubcomposeLayout(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    return-void
.end method
