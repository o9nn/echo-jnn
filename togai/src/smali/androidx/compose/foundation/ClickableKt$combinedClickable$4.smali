.class final Landroidx/compose/foundation/ClickableKt$combinedClickable$4;
.super Lkotlin/jvm/internal/Lambda;
.source "Clickable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/ClickableKt;->combinedClickable-XVZzFYc(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
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
    value = "SMAP\nClickable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Clickable.kt\nandroidx/compose/foundation/ClickableKt$combinedClickable$4\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n*L\n1#1,565:1\n25#2:566\n25#2:573\n50#2:580\n49#2:581\n25#2:588\n50#2:595\n49#2:596\n25#2:603\n83#2,3:610\n25#2:619\n25#2:630\n1057#3,6:567\n1057#3,6:574\n1057#3,6:582\n1057#3,6:589\n1057#3,6:597\n1057#3,6:604\n1057#3,6:613\n1057#3,6:620\n1057#3,3:631\n1060#3,3:637\n474#4,4:626\n478#4,2:634\n482#4:640\n474#5:636\n*S KotlinDebug\n*F\n+ 1 Clickable.kt\nandroidx/compose/foundation/ClickableKt$combinedClickable$4\n*L\n313#1:566\n314#1:573\n318#1:580\n318#1:581\n334#1:588\n335#1:595\n335#1:596\n338#1:603\n341#1:610,3\n369#1:619\n384#1:630\n313#1:567,6\n314#1:574,6\n318#1:582,6\n334#1:589,6\n335#1:597,6\n338#1:604,6\n341#1:613,6\n369#1:620,6\n384#1:631,3\n384#1:637,3\n384#1:626,4\n384#1:634,2\n384#1:640\n384#1:636\n*E\n"
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

.field final synthetic $indication:Landroidx/compose/foundation/Indication;

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $onClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onClickLabel:Ljava/lang/String;

.field final synthetic $onDoubleClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onLongClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onLongClickLabel:Ljava/lang/String;

.field final synthetic $role:Landroidx/compose/ui/semantics/Role;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;Ljava/lang/String;Landroidx/compose/ui/semantics/Role;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/Indication;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/semantics/Role;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onClick:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onLongClick:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onDoubleClick:Lkotlin/jvm/functions/Function0;

    iput-boolean p4, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$enabled:Z

    iput-object p5, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p6, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$indication:Landroidx/compose/foundation/Indication;

    iput-object p7, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onClickLabel:Ljava/lang/String;

    iput-object p8, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$role:Landroidx/compose/ui/semantics/Role;

    iput-object p9, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onLongClickLabel:Ljava/lang/String;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "$this$composed"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x6dc662f0

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C307@13021L29,308@13082L33,309@13149L35,312@13316L58,313@13417L56,332@14268L36,333@14352L33,334@14443L95,334@14422L116,337@14566L40,340@14722L1028,368@15803L445,383@16482L24:Clickable.kt#71ulvw"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    const-string v4, "androidx.compose.foundation.combinedClickable.<anonymous> (Clickable.kt:306)"

    move/from16 v5, p3

    .line 308
    invoke-static {v2, v5, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    iget-object v2, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onClick:Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v14

    iget-object v2, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onLongClick:Lkotlin/jvm/functions/Function0;

    .line 309
    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    iget-object v4, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onDoubleClick:Lkotlin/jvm/functions/Function0;

    .line 310
    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v15

    iget-object v4, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onLongClick:Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    move/from16 v16, v5

    goto :goto_0

    :cond_1
    move/from16 v16, v3

    :goto_0
    iget-object v4, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onDoubleClick:Lkotlin/jvm/functions/Function0;

    if-eqz v4, :cond_2

    move/from16 v17, v5

    goto :goto_1

    :cond_2
    move/from16 v17, v3

    :goto_1
    const v13, -0x1d58f75c

    .line 313
    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "C(remember):Composables.kt#9igjgp"

    invoke-static {v1, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 567
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 568
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-ne v4, v6, :cond_3

    .line 313
    invoke-static {v8, v8, v7, v8}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    .line 570
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 566
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 313
    move-object v11, v4

    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 314
    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v1, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 574
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 575
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_4

    .line 314
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v4, Ljava/util/Map;

    .line 577
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 573
    :cond_4
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 314
    move-object v10, v4

    check-cast v10, Ljava/util/Map;

    const v4, 0x4ebe8108

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "317@13690L342,317@13659L373,326@14045L170"

    invoke-static {v1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    iget-boolean v4, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$enabled:Z

    const-string v6, "C(remember)P(1,2):Composables.kt#9igjgp"

    const v9, 0x1e7b2b64

    if-eqz v4, :cond_7

    .line 318
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v7, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v1, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 580
    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    or-int v18, v18, v19

    .line 582
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v18, :cond_5

    .line 583
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v9, v8, :cond_6

    .line 318
    :cond_5
    new-instance v8, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$1$1;

    invoke-direct {v8, v11, v7}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$1$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    move-object v9, v8

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 585
    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 581
    :cond_6
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 318
    invoke-static {v4, v9, v1, v3}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    iget-object v4, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/16 v7, 0x230

    .line 327
    invoke-static {v4, v11, v10, v1, v7}, Landroidx/compose/foundation/ClickableKt;->PressedInteractionSourceDisposableEffect(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Ljava/util/Map;Landroidx/compose/runtime/Composer;I)V

    :cond_7
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 333
    invoke-static {v1, v3}, Landroidx/compose/foundation/Clickable_androidKt;->isComposeRootInScrollableContainer(Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;

    move-result-object v4

    .line 334
    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v1, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 589
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .line 590
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v7, v8, :cond_8

    .line 334
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v5, v8, v7, v8}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    .line 592
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v7, v5

    .line 588
    :cond_8
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 334
    move-object v9, v7

    check-cast v9, Landroidx/compose/runtime/MutableState;

    const v5, 0x1e7b2b64

    .line 335
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v1, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 595
    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    .line 597
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_9

    .line 598
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v6, v5, :cond_a

    .line 335
    :cond_9
    new-instance v5, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$delayPressInteraction$1$1;

    invoke-direct {v5, v9, v4}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$delayPressInteraction$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;)V

    move-object v6, v5

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 600
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 596
    :cond_a
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 335
    invoke-static {v6, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v18

    .line 338
    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v1, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 604
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 605
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_b

    .line 338
    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v4, v6, v5, v6}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    .line 607
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 603
    :cond_b
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 338
    move-object/from16 v19, v4

    check-cast v19, Landroidx/compose/runtime/MutableState;

    .line 341
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v8, v4

    check-cast v8, Landroidx/compose/ui/Modifier;

    iget-object v4, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v7, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$enabled:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v4, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$enabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    iget-object v4, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v21, v4

    move-object/from16 v4, v19

    move-object v3, v7

    move-object v7, v15

    move-object/from16 v31, v8

    move-object/from16 v8, v20

    move-object/from16 v32, v9

    move-object v9, v2

    move-object/from16 v23, v10

    move-object/from16 v10, v21

    move-object/from16 v20, v11

    move-object/from16 v33, v12

    move-object/from16 v12, v18

    move-object v13, v14

    filled-new-array/range {v4 .. v13}, [Ljava/lang/Object;

    move-result-object v4

    iget-boolean v7, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$enabled:Z

    const v5, -0x21de6e89

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "C(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    const/16 v8, 0xa

    if-ge v5, v8, :cond_c

    .line 611
    aget-object v8, v4, v5

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 613
    :cond_c
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v6, :cond_d

    .line 614
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_e

    .line 341
    :cond_d
    new-instance v22, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;

    const/16 v24, 0x0

    move-object/from16 v4, v22

    move-object/from16 v5, v19

    move/from16 v6, v17

    move/from16 v8, v16

    move-object v9, v15

    move-object v10, v2

    move-object/from16 v11, v21

    move-object/from16 v12, v20

    move-object/from16 v13, v18

    move-object/from16 v15, v24

    invoke-direct/range {v4 .. v15}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;-><init>(Landroidx/compose/runtime/MutableState;ZZZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v4, v22

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 616
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 612
    :cond_e
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object/from16 v2, v31

    .line 341
    invoke-static {v2, v3, v4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 367
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const v4, -0x1d58f75c

    .line 369
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 v5, v33

    invoke-static {v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 620
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .line 621
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_f

    .line 370
    new-instance v6, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$2$1;

    move-object/from16 v7, v32

    invoke-direct {v6, v7}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 623
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 619
    :cond_f
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v6, Landroidx/compose/ui/Modifier;

    .line 368
    invoke-virtual {v3, v6}, Landroidx/compose/ui/Modifier$Companion;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    iget-object v3, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v6, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$indication:Landroidx/compose/foundation/Indication;

    const v7, 0x2e20b340

    .line 384
    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v7, "C(rememberCoroutineScope)476@19869L144:Effects.kt#9igjgp"

    invoke-static {v1, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 629
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 631
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 632
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_10

    .line 636
    sget-object v4, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v4, v1}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 634
    new-instance v5, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v5, v4}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 637
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v4, v5

    .line 630
    :cond_10
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 629
    check-cast v4, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 640
    invoke-virtual {v4}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v22

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 386
    move-object/from16 v24, v19

    check-cast v24, Landroidx/compose/runtime/State;

    iget-boolean v4, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$enabled:Z

    iget-object v5, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onClickLabel:Ljava/lang/String;

    iget-object v7, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$role:Landroidx/compose/ui/semantics/Role;

    iget-object v8, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onLongClickLabel:Ljava/lang/String;

    iget-object v9, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onLongClick:Lkotlin/jvm/functions/Function0;

    iget-object v10, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onClick:Lkotlin/jvm/functions/Function0;

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v6

    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    .line 380
    invoke-static/range {v18 .. v30}, Landroidx/compose/foundation/ClickableKt;->genericClickableWithoutGesture-bdNGguI(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;Lkotlinx/coroutines/CoroutineScope;Ljava/util/Map;Landroidx/compose/runtime/State;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_11
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 306
    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method
