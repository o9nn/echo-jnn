.class final Landroidx/compose/foundation/FocusableKt$focusable$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Focusable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/FocusableKt;->focusable(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Focusable.kt\nandroidx/compose/foundation/FocusableKt$focusable$2\n+ 2 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,266:1\n474#2,4:267\n478#2,2:275\n482#2:281\n25#3:271\n25#3:282\n25#3:289\n25#3:296\n25#3:303\n25#3:310\n50#3:317\n49#3:318\n25#3:325\n36#3:332\n1057#4,3:272\n1060#4,3:278\n1057#4,6:283\n1057#4,6:290\n1057#4,6:297\n1057#4,6:304\n1057#4,6:311\n1057#4,6:319\n1057#4,6:326\n1057#4,6:333\n474#5:277\n76#6:339\n102#6,2:340\n76#6:342\n102#6,2:343\n*S KotlinDebug\n*F\n+ 1 Focusable.kt\nandroidx/compose/foundation/FocusableKt$focusable$2\n*L\n74#1:267,4\n74#1:275,2\n74#1:281\n74#1:271\n75#1:282\n76#1:289\n77#1:296\n78#1:303\n90#1:310\n91#1:317\n91#1:318\n115#1:325\n131#1:332\n74#1:272,3\n74#1:278,3\n75#1:283,6\n76#1:290,6\n77#1:297,6\n78#1:304,6\n90#1:311,6\n91#1:319,6\n115#1:326,6\n131#1:333,6\n74#1:277\n76#1:339\n76#1:340,2\n77#1:342\n77#1:343,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/Modifier;",
        "invoke",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Z)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-boolean p2, p0, Landroidx/compose/foundation/FocusableKt$focusable$2;->$enabled:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$invoke$lambda-2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/foundation/lazy/layout/PinnableParent;
    .locals 0

    .line 67
    invoke-static {p0}, Landroidx/compose/foundation/FocusableKt$focusable$2;->invoke$lambda-2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/foundation/lazy/layout/PinnableParent;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$invoke$lambda-3(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/lazy/layout/PinnableParent;)V
    .locals 0

    .line 67
    invoke-static {p0, p1}, Landroidx/compose/foundation/FocusableKt$focusable$2;->invoke$lambda-3(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/lazy/layout/PinnableParent;)V

    return-void
.end method

.method public static final synthetic access$invoke$lambda-5(Landroidx/compose/runtime/MutableState;)Z
    .locals 0

    .line 67
    invoke-static {p0}, Landroidx/compose/foundation/FocusableKt$focusable$2;->invoke$lambda-5(Landroidx/compose/runtime/MutableState;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$invoke$lambda-6(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0

    .line 67
    invoke-static {p0, p1}, Landroidx/compose/foundation/FocusableKt$focusable$2;->invoke$lambda-6(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method

.method private static final invoke$lambda-2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/foundation/lazy/layout/PinnableParent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/lazy/layout/PinnableParent;",
            ">;)",
            "Landroidx/compose/foundation/lazy/layout/PinnableParent;"
        }
    .end annotation

    .line 76
    check-cast p0, Landroidx/compose/runtime/State;

    .line 339
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/layout/PinnableParent;

    return-object p0
.end method

.method private static final invoke$lambda-3(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/lazy/layout/PinnableParent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/lazy/layout/PinnableParent;",
            ">;",
            "Landroidx/compose/foundation/lazy/layout/PinnableParent;",
            ")V"
        }
    .end annotation

    .line 340
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final invoke$lambda-5(Landroidx/compose/runtime/MutableState;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 77
    check-cast p0, Landroidx/compose/runtime/State;

    .line 342
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final invoke$lambda-6(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 77
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 343
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 12

    const-string v0, "$this$composed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x6f8a9229

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "C73@3129L24,74@3183L58,75@3268L50,76@3340L34,77@3400L29,89@4173L37,90@4251L280,90@4215L316,99@4536L390,130@5589L23:Focusable.kt#71ulvw"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.foundation.focusable.<anonymous> (Focusable.kt:72)"

    .line 74
    invoke-static {p1, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const p1, 0x2e20b340

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p1, "C(rememberCoroutineScope)476@19869L144:Effects.kt#9igjgp"

    invoke-static {p2, p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const p1, -0x1d58f75c

    .line 270
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p3, "C(remember):Composables.kt#9igjgp"

    invoke-static {p2, p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 272
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 273
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 277
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, p2}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 275
    new-instance v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 278
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v0, v1

    .line 271
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 270
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 281
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 75
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {p2, p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 283
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 284
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v1, :cond_2

    .line 75
    invoke-static {v4, v4, v3, v4}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    .line 286
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 282
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 75
    move-object v6, v0

    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 76
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {p2, p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 290
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 291
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 76
    invoke-static {v4, v4, v3, v4}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    .line 293
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 289
    :cond_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 76
    move-object v5, v0

    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 77
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {p2, p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 297
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 298
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    const/4 v7, 0x0

    if-ne v0, v1, :cond_4

    .line 77
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v4, v3, v4}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    .line 300
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 296
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 77
    move-object v3, v0

    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 78
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {p2, p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 304
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 305
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 78
    new-instance v0, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 307
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 303
    :cond_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 78
    check-cast v0, Landroidx/compose/ui/focus/FocusRequester;

    .line 90
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {p2, p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 311
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 312
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v1, v8, :cond_6

    .line 90
    invoke-static {}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterKt;->BringIntoViewRequester()Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    move-result-object v1

    .line 314
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 310
    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 90
    move-object v8, v1

    check-cast v8, Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    iget-object v1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const v9, 0x1e7b2b64

    .line 91
    invoke-interface {p2, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "C(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {p2, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 317
    invoke-interface {p2, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v9, v10

    .line 319
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_7

    .line 320
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v10, v9, :cond_8

    .line 91
    :cond_7
    new-instance v9, Landroidx/compose/foundation/FocusableKt$focusable$2$1$1;

    invoke-direct {v9, v6, v1}, Landroidx/compose/foundation/FocusableKt$focusable$2$1$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    move-object v10, v9

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 322
    invoke-interface {p2, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 318
    :cond_8
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 91
    invoke-static {v1, v10, p2, v7}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    iget-boolean v1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2;->$enabled:Z

    .line 100
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v9, Landroidx/compose/foundation/FocusableKt$focusable$2$2;

    iget-boolean v10, p0, Landroidx/compose/foundation/FocusableKt$focusable$2;->$enabled:Z

    iget-object v11, p0, Landroidx/compose/foundation/FocusableKt$focusable$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-direct {v9, v10, v2, v6, v11}, Landroidx/compose/foundation/FocusableKt$focusable$2$2;-><init>(ZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v9, p2, v7}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    iget-boolean v1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2;->$enabled:Z

    if-eqz v1, :cond_d

    const v1, 0x53e55f1f

    .line 113
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "114@5011L36"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 114
    invoke-static {v3}, Landroidx/compose/foundation/FocusableKt$focusable$2;->invoke$lambda-5(Landroidx/compose/runtime/MutableState;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 115
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {p2, p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 326
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p1

    .line 327
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p3

    if-ne p1, p3, :cond_9

    .line 115
    new-instance p1, Landroidx/compose/foundation/FocusedBoundsModifier;

    invoke-direct {p1}, Landroidx/compose/foundation/FocusedBoundsModifier;-><init>()V

    .line 329
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 325
    :cond_9
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast p1, Landroidx/compose/ui/Modifier;

    goto :goto_0

    .line 120
    :cond_a
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 114
    :goto_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 123
    sget-object p3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p3, Landroidx/compose/ui/Modifier;

    .line 124
    new-instance v1, Landroidx/compose/foundation/FocusableKt$focusable$2$3;

    invoke-direct {v1, v3, v0}, Landroidx/compose/foundation/FocusableKt$focusable$2$3;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/focus/FocusRequester;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v9, 0x1

    invoke-static {p3, v7, v1, v9, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p3

    const v1, 0x44faf204

    .line 131
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 332
    invoke-interface {p2, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .line 333
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_b

    .line 334
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v4, v1, :cond_c

    .line 131
    :cond_b
    new-instance v1, Landroidx/compose/foundation/FocusableKt$focusable$2$4$1;

    invoke-direct {v1, v5}, Landroidx/compose/foundation/FocusableKt$focusable$2$4$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 336
    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 332
    :cond_c
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 131
    invoke-static {p3, v4}, Landroidx/compose/foundation/FocusableKt;->access$onPinnableParentAvailable(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p3

    .line 132
    invoke-static {p3, v8}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterKt;->bringIntoViewRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewRequester;)Landroidx/compose/ui/Modifier;

    move-result-object p3

    .line 133
    invoke-static {p3, v0}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object p3

    .line 134
    invoke-interface {p3, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    .line 135
    new-instance p3, Landroidx/compose/foundation/FocusableKt$focusable$2$5;

    iget-object v7, p0, Landroidx/compose/foundation/FocusableKt$focusable$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object v1, p3

    move-object v4, v8

    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/FocusableKt$focusable$2$5;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p3}, Landroidx/compose/ui/focus/FocusChangedModifierKt;->onFocusChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    .line 169
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusModifierKt;->focusTarget(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    goto :goto_1

    .line 171
    :cond_d
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 113
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_e
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/FocusableKt$focusable$2;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method
