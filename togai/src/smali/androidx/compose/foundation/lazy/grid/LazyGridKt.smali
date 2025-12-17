.class public final Landroidx/compose/foundation/lazy/grid/LazyGridKt;
.super Ljava/lang/Object;
.source "LazyGrid.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGrid.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGrid.kt\nandroidx/compose/foundation/lazy/grid/LazyGridKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 6 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 7 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,379:1\n154#2:380\n474#3,4:381\n478#3,2:389\n482#3:395\n25#4:385\n50#4:396\n49#4:397\n83#4,3:405\n1057#5,3:386\n1060#5,3:392\n1057#5,6:398\n1057#5,6:408\n474#6:391\n76#7:404\n*S KotlinDebug\n*F\n+ 1 LazyGrid.kt\nandroidx/compose/foundation/lazy/grid/LazyGridKt\n*L\n61#1:380\n83#1:381,4\n83#1:389,2\n83#1:395\n83#1:385\n84#1:396\n84#1:397\n173#1:405,3\n83#1:386,3\n83#1:392,3\n84#1:398,6\n173#1:408,6\n83#1:391\n122#1:404\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u009e\u0001\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052#\u0010\u0006\u001a\u001f\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\u0007\u00a2\u0006\u0002\u0008\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0017\u0010\u0019\u001a\u0013\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00010\u001a\u00a2\u0006\u0002\u0008\u000cH\u0001\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001c\u001a\u001d\u0010\u001d\u001a\u00020\u00012\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0004\u001a\u00020\u0005H\u0003\u00a2\u0006\u0002\u0010 \u001a\u0018\u0010!\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0002\u001a\u009c\u0001\u0010&\u001a\u0019\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020(0\u0007\u00a2\u0006\u0002\u0008\u000c2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020#2#\u0010\u0006\u001a\u001f\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\u0007\u00a2\u0006\u0002\u0008\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010)\u001a\u00020*H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010+\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006,"
    }
    d2 = {
        "LazyGrid",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "state",
        "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
        "slotSizesSums",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/unit/Density;",
        "Landroidx/compose/ui/unit/Constraints;",
        "",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "contentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "reverseLayout",
        "",
        "isVertical",
        "flingBehavior",
        "Landroidx/compose/foundation/gestures/FlingBehavior;",
        "userScrollEnabled",
        "verticalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V",
        "ScrollPositionUpdater",
        "itemProvider",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;",
        "(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/runtime/Composer;I)V",
        "refreshOverscrollInfo",
        "overscrollEffect",
        "Landroidx/compose/foundation/OverscrollEffect;",
        "result",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;",
        "rememberLazyGridMeasurePolicy",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "placementAnimator",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;",
        "(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Landroidx/compose/runtime/Composer;II)Lkotlin/jvm/functions/Function2;",
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


# direct methods
.method public static final LazyGrid(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "ZZ",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Z",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move/from16 v15, p5

    move-object/from16 v12, p8

    move-object/from16 v11, p9

    move-object/from16 v10, p10

    move/from16 v9, p12

    move/from16 v8, p14

    const-string/jumbo v0, "state"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "slotSizesSums"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "verticalArrangement"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "horizontalArrangement"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x9193020

    move-object/from16 v1, p11

    .line 76
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    const-string v1, "C(LazyGrid)P(5,8,7,1,6,4,2,9,10,3)66@3100L15,76@3541L18,78@3584L44,80@3654L65,82@3737L24,83@3790L92,88@3956L275,103@4272L42,110@4552L215,121@5041L7,106@4407L1113:LazyGrid.kt#7791vq"

    invoke-static {v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v8, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v4, v9, 0x6

    move v5, v4

    move-object/from16 v4, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v9, 0xe

    if-nez v4, :cond_2

    move-object/from16 v4, p0

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v9

    goto :goto_1

    :cond_2
    move-object/from16 v4, p0

    move v5, v9

    :goto_1
    and-int/lit8 v6, v8, 0x2

    if-eqz v6, :cond_3

    or-int/lit8 v5, v5, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v9, 0x70

    if-nez v6, :cond_5

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v5, v6

    :cond_5
    :goto_3
    and-int/lit8 v6, v8, 0x4

    if-eqz v6, :cond_6

    or-int/lit16 v5, v5, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v6, v9, 0x380

    if-nez v6, :cond_8

    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_4

    :cond_7
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v5, v6

    :cond_8
    :goto_5
    and-int/lit8 v6, v8, 0x8

    if-eqz v6, :cond_9

    or-int/lit16 v5, v5, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v2, v9, 0x1c00

    if-nez v2, :cond_b

    move-object/from16 v2, p3

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const/16 v16, 0x800

    goto :goto_6

    :cond_a
    const/16 v16, 0x400

    :goto_6
    or-int v5, v5, v16

    goto :goto_8

    :cond_b
    :goto_7
    move-object/from16 v2, p3

    :goto_8
    and-int/lit8 v16, v8, 0x10

    const v17, 0xe000

    if-eqz v16, :cond_c

    or-int/lit16 v5, v5, 0x6000

    move/from16 v0, p4

    goto :goto_a

    :cond_c
    and-int v18, v9, v17

    move/from16 v0, p4

    if-nez v18, :cond_e

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_d

    const/16 v19, 0x4000

    goto :goto_9

    :cond_d
    const/16 v19, 0x2000

    :goto_9
    or-int v5, v5, v19

    :cond_e
    :goto_a
    and-int/lit8 v19, v8, 0x20

    const/high16 v20, 0x70000

    if-eqz v19, :cond_f

    const/high16 v19, 0x30000

    :goto_b
    or-int v5, v5, v19

    goto :goto_c

    :cond_f
    and-int v19, v9, v20

    if-nez v19, :cond_11

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_10

    const/high16 v19, 0x20000

    goto :goto_b

    :cond_10
    const/high16 v19, 0x10000

    goto :goto_b

    :cond_11
    :goto_c
    const/high16 v19, 0x380000

    and-int v21, v9, v19

    if-nez v21, :cond_13

    and-int/lit8 v21, v8, 0x40

    move-object/from16 v3, p6

    if-nez v21, :cond_12

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    const/high16 v22, 0x100000

    goto :goto_d

    :cond_12
    const/high16 v22, 0x80000

    :goto_d
    or-int v5, v5, v22

    goto :goto_e

    :cond_13
    move-object/from16 v3, p6

    :goto_e
    and-int/lit16 v0, v8, 0x80

    const/high16 v22, 0x1c00000

    if-eqz v0, :cond_14

    const/high16 v0, 0xc00000

    or-int/2addr v5, v0

    goto :goto_10

    :cond_14
    and-int v0, v9, v22

    if-nez v0, :cond_16

    move/from16 v0, p7

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v23

    if-eqz v23, :cond_15

    const/high16 v23, 0x800000

    goto :goto_f

    :cond_15
    const/high16 v23, 0x400000

    :goto_f
    or-int v5, v5, v23

    goto :goto_11

    :cond_16
    :goto_10
    move/from16 v0, p7

    :goto_11
    and-int/lit16 v0, v8, 0x100

    const/high16 v23, 0xe000000

    if-eqz v0, :cond_17

    const/high16 v0, 0x6000000

    :goto_12
    or-int/2addr v5, v0

    goto :goto_13

    :cond_17
    and-int v0, v9, v23

    if-nez v0, :cond_19

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/high16 v0, 0x4000000

    goto :goto_12

    :cond_18
    const/high16 v0, 0x2000000

    goto :goto_12

    :cond_19
    :goto_13
    and-int/lit16 v0, v8, 0x200

    if-eqz v0, :cond_1a

    const/high16 v0, 0x30000000

    :goto_14
    or-int/2addr v5, v0

    goto :goto_15

    :cond_1a
    const/high16 v0, 0x70000000

    and-int/2addr v0, v9

    if-nez v0, :cond_1c

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/high16 v0, 0x20000000

    goto :goto_14

    :cond_1b
    const/high16 v0, 0x10000000

    goto :goto_14

    :cond_1c
    :goto_15
    and-int/lit16 v0, v8, 0x400

    if-eqz v0, :cond_1d

    or-int/lit8 v0, p13, 0x6

    goto :goto_17

    :cond_1d
    and-int/lit8 v0, p13, 0xe

    if-nez v0, :cond_1f

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x4

    goto :goto_16

    :cond_1e
    const/4 v0, 0x2

    :goto_16
    or-int v0, p13, v0

    goto :goto_17

    :cond_1f
    move/from16 v0, p13

    :goto_17
    const v24, 0x5b6db6db

    and-int v2, v5, v24

    const v3, 0x12492492

    if-ne v2, v3, :cond_21

    and-int/lit8 v2, v0, 0xb

    const/4 v3, 0x2

    if-ne v2, v3, :cond_21

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_18

    .line 136
    :cond_20
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v5, p4

    move-object v1, v4

    move-object v8, v7

    move-object/from16 v4, p3

    move-object/from16 v7, p6

    goto/16 :goto_20

    .line 76
    :cond_21
    :goto_18
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v2, v9, 0x1

    const/4 v3, 0x6

    if-eqz v2, :cond_24

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_19

    .line 67
    :cond_22
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v1, v8, 0x40

    if-eqz v1, :cond_23

    const v1, -0x380001

    and-int/2addr v5, v1

    :cond_23
    move-object/from16 v16, p3

    move-object/from16 v21, p6

    move-object v6, v4

    move v4, v5

    move/from16 v5, p4

    goto :goto_1e

    :cond_24
    :goto_19
    if-eqz v1, :cond_25

    .line 55
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    goto :goto_1a

    :cond_25
    move-object v1, v4

    :goto_1a
    const/4 v2, 0x0

    if-eqz v6, :cond_26

    int-to-float v4, v2

    .line 380
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 61
    invoke-static {v4}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v4

    goto :goto_1b

    :cond_26
    move-object/from16 v4, p3

    :goto_1b
    if-eqz v16, :cond_27

    goto :goto_1c

    :cond_27
    move/from16 v2, p4

    :goto_1c
    and-int/lit8 v6, v8, 0x40

    if-eqz v6, :cond_28

    .line 67
    sget-object v6, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    invoke-virtual {v6, v7, v3}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->flingBehavior(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;

    move-result-object v6

    const v16, -0x380001

    and-int v5, v5, v16

    move-object/from16 v16, v4

    move v4, v5

    move-object/from16 v21, v6

    move-object v6, v1

    goto :goto_1d

    :cond_28
    move-object/from16 v21, p6

    move-object v6, v1

    move-object/from16 v16, v4

    move v4, v5

    :goto_1d
    move v5, v2

    :goto_1e
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v1, "androidx.compose.foundation.lazy.grid.LazyGrid (LazyGrid.kt:52)"

    const v2, 0x9193020

    .line 76
    invoke-static {v2, v4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 77
    :cond_29
    sget-object v1, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    invoke-virtual {v1, v7, v3}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->overscrollEffect(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/OverscrollEffect;

    move-result-object v3

    shr-int/lit8 v1, v4, 0x3

    and-int/lit8 v1, v1, 0xe

    shl-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x70

    or-int/2addr v0, v1

    .line 79
    invoke-static {v13, v10, v7, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderKt;->rememberLazyGridItemProvider(Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    move-result-object v2

    .line 81
    move-object v0, v2

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    move-object/from16 p0, v6

    shr-int/lit8 v6, v4, 0x6

    and-int/lit16 v8, v6, 0x380

    or-int/2addr v1, v8

    invoke-static {v13, v0, v5, v7, v1}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt;->rememberLazyGridSemanticState(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    move-result-object v18

    const v1, 0x2e20b340

    .line 83
    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberCoroutineScope)476@19869L144:Effects.kt#9igjgp"

    invoke-static {v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const v1, -0x1d58f75c

    .line 384
    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(remember):Composables.kt#9igjgp"

    invoke-static {v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 386
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 387
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v1, v8, :cond_2a

    .line 391
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1, v7}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    .line 389
    new-instance v8, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v8, v1}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 392
    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v1, v8

    .line 385
    :cond_2a
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 384
    check-cast v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 395
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 83
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 p3, v0

    const v0, 0x1e7b2b64

    .line 84
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "C(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v7, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 396
    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v0, v8

    .line 398
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v0, :cond_2b

    .line 399
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v8, v0, :cond_2c

    .line 85
    :cond_2b
    new-instance v8, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    invoke-direct {v8, v1, v15}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;-><init>(Lkotlinx/coroutines/CoroutineScope;Z)V

    .line 401
    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 397
    :cond_2c
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 84
    check-cast v8, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    .line 87
    invoke-virtual {v13, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->setPlacementAnimator$foundation_release(Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;)V

    and-int/lit8 v1, v4, 0x70

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    move/from16 p4, v1

    shl-int/lit8 v1, v4, 0x3

    move/from16 v24, v5

    and-int/lit16 v5, v1, 0x1c00

    or-int/2addr v0, v5

    and-int v5, v1, v17

    or-int/2addr v0, v5

    and-int v5, v1, v20

    or-int/2addr v0, v5

    and-int v1, v1, v19

    or-int/2addr v0, v1

    and-int v1, v6, v22

    or-int/2addr v0, v1

    and-int v1, v4, v23

    or-int v19, v0, v1

    const/16 v20, 0x0

    move-object/from16 v22, p3

    move-object v0, v2

    move/from16 v6, p4

    move-object/from16 v1, p1

    move-object v5, v2

    move-object v2, v3

    move-object/from16 v31, v3

    move-object/from16 v3, p2

    move/from16 v23, v4

    move-object/from16 v4, v16

    move-object/from16 v32, v5

    move/from16 p3, v24

    move/from16 v5, p3

    move-object/from16 v34, p0

    move/from16 v33, v6

    move/from16 v6, p5

    move-object/from16 p0, v7

    move-object/from16 v7, p9

    move-object/from16 v24, v8

    move-object/from16 v8, p8

    move-object/from16 v9, v24

    move-object/from16 v10, p0

    move/from16 v11, v19

    move/from16 v12, v20

    .line 89
    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->rememberLazyGridMeasurePolicy(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Landroidx/compose/runtime/Composer;II)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .line 102
    invoke-virtual {v13, v15}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->setVertical$foundation_release(Z)V

    move-object/from16 v8, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    .line 104
    invoke-static {v1, v13, v8, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->ScrollPositionUpdater(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/runtime/Composer;I)V

    if-eqz v15, :cond_2d

    .line 106
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_1f

    :cond_2d
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_1f
    move-object v9, v1

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getRemeasurementModifier$foundation_release()Landroidx/compose/ui/layout/RemeasurementModifier;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object/from16 v10, v34

    invoke-interface {v10, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getAwaitLayoutModifier$foundation_release()Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/Modifier;

    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    shr-int/lit8 v2, v23, 0x9

    and-int v7, v2, v17

    move-object/from16 v2, v22

    move-object/from16 v3, v18

    move-object v4, v9

    move/from16 v5, p7

    move-object v6, v8

    .line 111
    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt;->lazyLayoutSemantics(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 117
    invoke-static {v1, v9}, Landroidx/compose/foundation/ClipScrollableContainerKt;->clipScrollableContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 v2, v31

    .line 118
    invoke-static {v1, v2}, Landroidx/compose/foundation/OverscrollKt;->overscroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/OverscrollEffect;)Landroidx/compose/ui/Modifier;

    move-result-object v23

    .line 121
    sget-object v1, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    .line 122
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    const v4, 0x789c5f52

    const-string v5, "C:CompositionLocal.kt#9igjgp"

    .line 404
    invoke-static {v8, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    move/from16 v11, p3

    .line 121
    invoke-virtual {v1, v3, v9, v11}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->reverseDirection(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/Orientation;Z)Z

    move-result v28

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getInternalInteractionSource$foundation_release()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v30

    .line 128
    move-object/from16 v24, v13

    check-cast v24, Landroidx/compose/foundation/gestures/ScrollableState;

    move-object/from16 v25, v9

    move-object/from16 v26, v2

    move/from16 v27, p7

    move-object/from16 v29, v21

    .line 119
    invoke-static/range {v23 .. v30}, Landroidx/compose/foundation/gestures/ScrollableKt;->scrollable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getPrefetchState$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, v22

    move-object v4, v0

    move-object v5, v8

    .line 107
    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazyLayout(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2e
    move-object v1, v10

    move v5, v11

    move-object/from16 v4, v16

    move-object/from16 v7, v21

    .line 136
    :goto_20
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-nez v12, :cond_2f

    goto :goto_21

    :cond_2f
    new-instance v16, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;

    move-object/from16 v0, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object v15, v12

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;III)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_21
    return-void
.end method

.method private static final ScrollPositionUpdater(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/runtime/Composer;I)V
    .locals 3

    const v0, 0x38ae4144

    .line 144
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    const-string v1, "C(ScrollPositionUpdater):LazyGrid.kt#7791vq"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p3, 0xe

    if-nez v1, :cond_1

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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

    .line 148
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_4

    .line 144
    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.lazy.grid.ScrollPositionUpdater (LazyGrid.kt:140)"

    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 145
    :cond_6
    invoke-interface {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;->getItemCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 146
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->updateScrollPositionIfTheFirstItemWasMoved$foundation_release(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;)V

    :cond_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 148
    :cond_8
    :goto_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p2

    if-nez p2, :cond_9

    goto :goto_5

    :cond_9
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$ScrollPositionUpdater$1;

    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$ScrollPositionUpdater$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridState;I)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_5
    return-void
.end method

.method public static final synthetic access$ScrollPositionUpdater(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->ScrollPositionUpdater(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$refreshOverscrollInfo(Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->refreshOverscrollInfo(Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V

    return-void
.end method

.method private static final refreshOverscrollInfo(Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V
    .locals 4

    .line 373
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getCanScrollForward()Z

    move-result v0

    .line 374
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getFirstVisibleLine()Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v3

    :cond_1
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 375
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getFirstVisibleLineScrollOffset()I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v3

    :goto_1
    if-nez v0, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    move v2, v3

    .line 377
    :cond_5
    invoke-interface {p0, v2}, Landroidx/compose/foundation/OverscrollEffect;->setEnabled(Z)V

    return-void
.end method

.method private static final rememberLazyGridMeasurePolicy(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Landroidx/compose/runtime/Composer;II)Lkotlin/jvm/functions/Function2;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Landroidx/compose/foundation/OverscrollEffect;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "ZZ",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p10

    move/from16 v1, p12

    const v2, 0x74c29fda

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C(rememberLazyGridMeasurePolicy)P(3,8,4,7!1,6,2!1,9)172@6984L8296:LazyGrid.kt#7791vq"

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit16 v3, v1, 0x80

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    move-object/from16 v3, p7

    :goto_0
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v4, p8

    .line 170
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    const-string v5, "androidx.compose.foundation.lazy.grid.rememberLazyGridMeasurePolicy (LazyGrid.kt:151)"

    move/from16 v6, p11

    .line 173
    invoke-static {v2, v6, v1, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 178
    :cond_2
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 179
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object v11, v3

    move-object v12, v4

    move-object/from16 v13, p9

    .line 182
    filled-new-array/range {v5 .. v13}, [Ljava/lang/Object;

    move-result-object v1

    const v2, -0x21de6e89

    .line 173
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v2, 0x0

    move v5, v2

    :goto_2
    const/16 v6, 0x9

    if-ge v2, v6, :cond_3

    .line 406
    aget-object v6, v1, v2

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 408
    :cond_3
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v5, :cond_4

    .line 409
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_5

    .line 184
    :cond_4
    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;

    move-object v5, v1

    move/from16 v6, p6

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p1

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move-object v12, v4

    move-object v13, v3

    move-object/from16 v14, p9

    move-object/from16 v15, p2

    invoke-direct/range {v5 .. v15}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;-><init>(ZLandroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Landroidx/compose/foundation/OverscrollEffect;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 411
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 407
    :cond_5
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 173
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method
