.class final Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyList.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListKt;->rememberLazyListMeasurePolicy(Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;Landroidx/compose/runtime/Composer;III)Lkotlin/jvm/functions/Function2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/foundation/lazy/LazyListMeasureResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyList.kt\nandroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 3 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n*L\n1#1,345:1\n480#2,4:346\n485#2:355\n122#3,5:350\n*S KotlinDebug\n*F\n+ 1 LazyList.kt\nandroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1\n*L\n295#1:346,4\n295#1:355\n295#1:350,5\n*E\n"
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
.field final synthetic $beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

.field final synthetic $horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field final synthetic $isVertical:Z

.field final synthetic $itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

.field final synthetic $overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

.field final synthetic $placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

.field final synthetic $reverseLayout:Z

.field final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic $verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

.field final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method constructor <init>(ZLandroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/OverscrollEffect;)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    iput-object p6, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p7, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-object p8, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    iput-object p9, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    iput-object p10, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p11, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    iput-object p12, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 191
    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->invoke-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-result-object p1

    return-object p1
.end method

.method public final invoke-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v13, p2

    const-string v2, "$this$null"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v2, :cond_0

    .line 194
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 192
    :goto_0
    invoke-static {v13, v14, v2}, Landroidx/compose/foundation/CheckScrollableContainerConstraintsKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 200
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v2

    invoke-interface {v0, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v2

    goto :goto_1

    :cond_1
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 203
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/PaddingKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v2

    invoke-interface {v0, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v2

    :goto_1
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v3, :cond_2

    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 208
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v3

    invoke-interface {v0, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v3

    goto :goto_2

    :cond_2
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 211
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/PaddingKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v3

    invoke-interface {v0, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v3

    :goto_2
    iget-object v4, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 213
    invoke-interface {v4}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v4

    invoke-interface {v0, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v4

    iget-object v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 214
    invoke-interface {v5}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v5

    invoke-interface {v0, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v5

    add-int v15, v4, v5

    add-int v12, v2, v3

    iget-boolean v6, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v6, :cond_3

    move v7, v15

    goto :goto_3

    :cond_3
    move v7, v12

    :goto_3
    if-eqz v6, :cond_4

    iget-boolean v8, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    if-nez v8, :cond_4

    move/from16 v19, v4

    goto :goto_4

    :cond_4
    if-eqz v6, :cond_5

    iget-boolean v8, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    if-eqz v8, :cond_5

    move/from16 v19, v5

    goto :goto_4

    :cond_5
    if-nez v6, :cond_6

    iget-boolean v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    if-nez v5, :cond_6

    move/from16 v19, v2

    goto :goto_4

    :cond_6
    move/from16 v19, v3

    :goto_4
    sub-int v20, v7, v19

    neg-int v3, v12

    neg-int v5, v15

    .line 226
    invoke-static {v13, v14, v3, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v25

    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 228
    invoke-virtual {v3, v5}, Landroidx/compose/foundation/lazy/LazyListState;->updateScrollPositionIfTheFirstItemWasMoved$foundation_release(Landroidx/compose/foundation/lazy/LazyListItemProvider;)V

    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 231
    move-object v11, v0

    check-cast v11, Landroidx/compose/ui/unit/Density;

    invoke-virtual {v3, v11}, Landroidx/compose/foundation/lazy/LazyListState;->setDensity$foundation_release(Landroidx/compose/ui/unit/Density;)V

    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 234
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->getItemScope()Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    move-result-object v3

    .line 235
    invoke-static/range {v25 .. v26}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v5

    .line 236
    invoke-static/range {v25 .. v26}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v6

    .line 234
    invoke-virtual {v3, v5, v6}, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->setMaxSize(II)V

    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    const-string v5, "Required value was null."

    if-eqz v3, :cond_8

    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    if-eqz v3, :cond_7

    .line 240
    invoke-interface {v3}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v3

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    if-eqz v3, :cond_e

    .line 242
    invoke-interface {v3}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v3

    .line 244
    :goto_5
    invoke-interface {v0, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v21

    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 246
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->getItemCount()I

    move-result v16

    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v3, :cond_9

    .line 250
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    sub-int/2addr v3, v15

    goto :goto_6

    .line 252
    :cond_9
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    sub-int/2addr v3, v12

    :goto_6
    move/from16 v18, v3

    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    if-eqz v3, :cond_d

    if-lez v18, :cond_a

    goto :goto_8

    :cond_a
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v3, :cond_b

    goto :goto_7

    :cond_b
    add-int v2, v2, v18

    :goto_7
    if-eqz v3, :cond_c

    add-int v4, v4, v18

    .line 260
    :cond_c
    invoke-static {v2, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v2

    goto :goto_9

    .line 255
    :cond_d
    :goto_8
    invoke-static {v2, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v2

    :goto_9
    move-wide/from16 v22, v2

    .line 266
    new-instance v17, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;

    iget-boolean v10, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    iget-object v9, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 271
    new-instance v24, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;

    iget-boolean v6, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    iget-object v7, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    iget-object v8, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    iget-boolean v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    iget-object v4, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    move-object/from16 v2, v24

    move/from16 v3, v16

    move-object/from16 v27, v4

    move/from16 v4, v21

    move/from16 v28, v5

    move-object/from16 v5, p1

    move-object/from16 v29, v9

    move/from16 v9, v28

    move/from16 v28, v10

    move/from16 v10, v19

    move-object/from16 v32, v11

    move/from16 v11, v20

    move/from16 v35, v12

    move-object/from16 v12, v27

    move-wide/from16 v13, v22

    invoke-direct/range {v2 .. v14}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;-><init>(IILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;ZIILandroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;J)V

    move-object/from16 v8, v24

    check-cast v8, Landroidx/compose/foundation/lazy/MeasuredItemFactory;

    const/4 v9, 0x0

    move-object/from16 v2, v17

    move-wide/from16 v3, v25

    move/from16 v5, v28

    move-object/from16 v6, v29

    move-object/from16 v7, p1

    .line 266
    invoke-direct/range {v2 .. v9}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;-><init>(JZLandroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Landroidx/compose/foundation/lazy/MeasuredItemFactory;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 291
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->getChildConstraints-msEJaDk()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/compose/foundation/lazy/LazyListState;->setPremeasureConstraints-BRTryo0$foundation_release(J)V

    .line 295
    sget-object v2, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 347
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    .line 350
    :try_start_0
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 296
    :try_start_1
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemIndex()I

    move-result v5

    invoke-static {v5}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v22

    .line 297
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemScrollOffset()I

    move-result v23

    .line 298
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    :try_start_2
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 355
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 309
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->getScrollToBeConsumed$foundation_release()F

    move-result v24

    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    move/from16 v27, v2

    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 312
    invoke-interface {v2}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->getHeaderIndexes()Ljava/util/List;

    move-result-object v28

    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-object/from16 v29, v2

    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-object/from16 v30, v2

    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    move/from16 v31, v2

    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    move-object/from16 v33, v2

    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    move-object/from16 v34, v2

    .line 300
    new-instance v8, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$2;

    move-object v2, v8

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, v35

    move v7, v15

    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JII)V

    move-object/from16 v35, v8

    check-cast v35, Lkotlin/jvm/functions/Function3;

    invoke-static/range {v16 .. v35}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->measureLazyList-nXYdgZc(ILandroidx/compose/foundation/lazy/LazyMeasuredItemProvider;IIIIIIFJZLjava/util/List;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-result-object v0

    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 328
    invoke-virtual {v2, v0}, Landroidx/compose/foundation/lazy/LazyListState;->applyMeasureResult$foundation_release(Landroidx/compose/foundation/lazy/LazyListMeasureResult;)V

    .line 329
    invoke-static {v3, v0}, Landroidx/compose/foundation/lazy/LazyListKt;->access$refreshOverscrollInfo(Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/lazy/LazyListMeasureResult;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 354
    :try_start_3
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 355
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw v0

    .line 242
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
