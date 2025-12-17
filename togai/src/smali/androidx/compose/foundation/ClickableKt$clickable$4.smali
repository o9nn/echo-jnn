.class final Landroidx/compose/foundation/ClickableKt$clickable$4;
.super Lkotlin/jvm/internal/Lambda;
.source "Clickable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/ClickableKt;->clickable-O2vRcR0(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
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
    value = "SMAP\nClickable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Clickable.kt\nandroidx/compose/foundation/ClickableKt$clickable$4\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n*L\n1#1,565:1\n25#2:566\n25#2:573\n25#2:580\n50#2:587\n49#2:588\n25#2:595\n83#2,3:602\n25#2:611\n25#2:622\n1057#3,6:567\n1057#3,6:574\n1057#3,6:581\n1057#3,6:589\n1057#3,6:596\n1057#3,6:605\n1057#3,6:612\n1057#3,3:623\n1060#3,3:629\n474#4,4:618\n478#4,2:626\n482#4:632\n474#5:628\n*S KotlinDebug\n*F\n+ 1 Clickable.kt\nandroidx/compose/foundation/ClickableKt$clickable$4\n*L\n138#1:566\n139#1:573\n148#1:580\n149#1:587\n149#1:588\n152#1:595\n154#1:602,3\n172#1:611\n187#1:622\n138#1:567,6\n139#1:574,6\n148#1:581,6\n149#1:589,6\n152#1:596,6\n154#1:605,6\n172#1:612,6\n187#1:623,3\n187#1:629,3\n187#1:618,4\n187#1:626,2\n187#1:632\n187#1:628\n*E\n"
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

.field final synthetic $role:Landroidx/compose/ui/semantics/Role;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;Ljava/lang/String;Landroidx/compose/ui/semantics/Role;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/Indication;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/semantics/Role;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$onClick:Lkotlin/jvm/functions/Function0;

    iput-boolean p2, p0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$enabled:Z

    iput-object p3, p0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p4, p0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$indication:Landroidx/compose/foundation/Indication;

    iput-object p5, p0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$onClickLabel:Ljava/lang/String;

    iput-object p6, p0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$role:Landroidx/compose/ui/semantics/Role;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "$this$composed"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x57cf7f4

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C136@5787L29,137@5850L58,138@5951L56,146@6266L36,147@6350L33,148@6441L95,148@6420L116,151@6564L40,153@6678L550,171@7281L445,186@7960L24:Clickable.kt#71ulvw"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    const-string v4, "androidx.compose.foundation.clickable.<anonymous> (Clickable.kt:135)"

    move/from16 v5, p3

    .line 137
    invoke-static {v2, v5, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    iget-object v2, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$onClick:Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v10

    const v2, -0x1d58f75c

    .line 138
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "C(remember):Composables.kt#9igjgp"

    invoke-static {v1, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 567
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 568
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ne v4, v5, :cond_1

    .line 138
    invoke-static {v7, v7, v6, v7}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    .line 570
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 566
    :cond_1
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 138
    move-object v11, v4

    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 139
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v1, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 574
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 575
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 139
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v4, Ljava/util/Map;

    .line 577
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 573
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 139
    move-object v15, v4

    check-cast v15, Ljava/util/Map;

    const v4, 0x6dca6879

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "140@6043L170"

    invoke-static {v1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    iget-boolean v4, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$enabled:Z

    if-eqz v4, :cond_3

    iget-object v4, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/16 v5, 0x230

    .line 141
    invoke-static {v4, v11, v15, v1, v5}, Landroidx/compose/foundation/ClickableKt;->PressedInteractionSourceDisposableEffect(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Ljava/util/Map;Landroidx/compose/runtime/Composer;I)V

    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 147
    invoke-static {v1, v3}, Landroidx/compose/foundation/Clickable_androidKt;->isComposeRootInScrollableContainer(Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;

    move-result-object v4

    .line 148
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v1, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 581
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .line 582
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v5, v8, :cond_4

    const/4 v5, 0x1

    .line 148
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5, v7, v6, v7}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    .line 584
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 580
    :cond_4
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 148
    move-object v13, v5

    check-cast v13, Landroidx/compose/runtime/MutableState;

    const v5, 0x1e7b2b64

    .line 149
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "C(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 587
    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v5, v8

    .line 589
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_5

    .line 590
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v8, v5, :cond_6

    .line 149
    :cond_5
    new-instance v5, Landroidx/compose/foundation/ClickableKt$clickable$4$delayPressInteraction$1$1;

    invoke-direct {v5, v13, v4}, Landroidx/compose/foundation/ClickableKt$clickable$4$delayPressInteraction$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;)V

    move-object v8, v5

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 592
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 588
    :cond_6
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 149
    invoke-static {v8, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v14

    .line 152
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v1, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 596
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 597
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_7

    .line 152
    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v4

    invoke-static {v4, v7, v6, v7}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    .line 599
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 595
    :cond_7
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 152
    move-object/from16 v16, v4

    check-cast v16, Landroidx/compose/runtime/MutableState;

    .line 154
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v9, v4

    check-cast v9, Landroidx/compose/ui/Modifier;

    iget-object v8, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-boolean v4, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$enabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v4, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$enabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v4, v16

    move-object/from16 v17, v6

    move-object v3, v7

    move-object v7, v11

    move-object v2, v8

    move-object v8, v14

    move-object/from16 v18, v15

    move-object v15, v9

    move-object v9, v10

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v4

    iget-boolean v6, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$enabled:Z

    const v5, -0x21de6e89

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "C(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x6

    if-ge v5, v8, :cond_8

    .line 603
    aget-object v8, v4, v5

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 605
    :cond_8
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v7, :cond_9

    .line 606
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_a

    .line 154
    :cond_9
    new-instance v19, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;

    const/16 v20, 0x0

    move-object/from16 v4, v19

    move-object/from16 v5, v16

    move-object/from16 v7, v17

    move-object v8, v11

    move-object v9, v14

    move-object/from16 v11, v20

    invoke-direct/range {v4 .. v11}, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;-><init>(Landroidx/compose/runtime/MutableState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v4, v19

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 608
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 604
    :cond_a
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 154
    invoke-static {v15, v2, v3, v4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    .line 170
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const v3, -0x1d58f75c

    .line 172
    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v1, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 612
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .line 613
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_b

    .line 173
    new-instance v3, Landroidx/compose/foundation/ClickableKt$clickable$4$1$1;

    invoke-direct {v3, v13}, Landroidx/compose/foundation/ClickableKt$clickable$4$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 615
    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 611
    :cond_b
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 171
    invoke-virtual {v2, v3}, Landroidx/compose/ui/Modifier$Companion;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    iget-object v15, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v2, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$indication:Landroidx/compose/foundation/Indication;

    const v3, 0x2e20b340

    .line 187
    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C(rememberCoroutineScope)476@19869L144:Effects.kt#9igjgp"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const v3, -0x1d58f75c

    .line 621
    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v1, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 623
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .line 624
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_c

    .line 628
    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v3, v1}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    .line 626
    new-instance v4, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v4, v3}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 629
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v3, v4

    .line 622
    :cond_c
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 621
    check-cast v3, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 632
    invoke-virtual {v3}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v17

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 189
    move-object/from16 v19, v16

    check-cast v19, Landroidx/compose/runtime/State;

    iget-boolean v3, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$enabled:Z

    iget-object v4, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$onClickLabel:Ljava/lang/String;

    iget-object v5, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$role:Landroidx/compose/ui/semantics/Role;

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget-object v6, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$onClick:Lkotlin/jvm/functions/Function0;

    move-object/from16 v7, v18

    move-object/from16 v16, v2

    move/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v25, v6

    .line 183
    invoke-static/range {v13 .. v25}, Landroidx/compose/foundation/ClickableKt;->genericClickableWithoutGesture-bdNGguI(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;Lkotlinx/coroutines/CoroutineScope;Ljava/util/Map;Landroidx/compose/runtime/State;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_d
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 135
    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/ClickableKt$clickable$4;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method
