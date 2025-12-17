.class public final Landroidx/compose/foundation/lazy/LazyListMeasureKt;
.super Ljava/lang/Object;
.source "LazyListMeasure.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListMeasure.kt\nandroidx/compose/foundation/lazy/LazyListMeasureKt\n+ 2 DataIndex.kt\nandroidx/compose/foundation/lazy/DataIndex\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 4 TempListUtils.kt\nandroidx/compose/foundation/TempListUtilsKt\n*L\n1#1,410:1\n30#2:411\n25#2:416\n27#2:418\n25#2:419\n30#2:420\n33#3,4:412\n38#3:417\n33#3,4:424\n38#3:430\n33#3,6:432\n33#3,6:438\n33#3,6:444\n36#4,3:421\n39#4,2:428\n41#4:431\n*S KotlinDebug\n*F\n+ 1 LazyListMeasure.kt\nandroidx/compose/foundation/lazy/LazyListMeasureKt\n*L\n119#1:411\n144#1:416\n159#1:418\n166#1:419\n176#1:420\n143#1:412,4\n143#1:417\n315#1:424,4\n315#1:430\n392#1:432,6\n398#1:438,6\n403#1:444,6\n315#1:421,3\n315#1:428,2\n315#1:431\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u008c\u0001\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002\u001a\u00e0\u0001\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\t2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00042\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2/\u0010,\u001a+\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u0002000.\u00a2\u0006\u0002\u00081\u0012\u0004\u0012\u0002020-H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u00083\u00104\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u00065"
    }
    d2 = {
        "calculateItemsOffsets",
        "",
        "Landroidx/compose/foundation/lazy/LazyListPositionedItem;",
        "items",
        "",
        "Landroidx/compose/foundation/lazy/LazyMeasuredItem;",
        "extraItemsBefore",
        "extraItemsAfter",
        "layoutWidth",
        "",
        "layoutHeight",
        "finalMainAxisOffset",
        "maxOffset",
        "itemsScrollOffset",
        "isVertical",
        "",
        "verticalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "reverseLayout",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "measureLazyList",
        "Landroidx/compose/foundation/lazy/LazyListMeasureResult;",
        "itemsCount",
        "itemProvider",
        "Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;",
        "mainAxisAvailableSize",
        "beforeContentPadding",
        "afterContentPadding",
        "spaceBetweenItems",
        "firstVisibleItemIndex",
        "Landroidx/compose/foundation/lazy/DataIndex;",
        "firstVisibleItemScrollOffset",
        "scrollToBeConsumed",
        "",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "headerIndexes",
        "placementAnimator",
        "Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;",
        "beyondBoundsInfo",
        "Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;",
        "layout",
        "Lkotlin/Function3;",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "measureLazyList-nXYdgZc",
        "(ILandroidx/compose/foundation/lazy/LazyMeasuredItemProvider;IIIIIIFJZLjava/util/List;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;",
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
.method private static final calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItem;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItem;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItem;",
            ">;IIIIIZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListPositionedItem;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p9

    move/from16 v4, p11

    move/from16 v5, p6

    if-eqz p8, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v1

    .line 346
    :goto_0
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v7, 0x0

    move/from16 v8, p5

    if-ge v8, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    if-eqz v5, :cond_3

    if-nez p7, :cond_2

    goto :goto_2

    .line 348
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_3
    :goto_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v9, v10

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v5, :cond_e

    .line 355
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 357
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 361
    new-array v9, v5, [I

    move v10, v7

    :goto_3
    if-ge v10, v5, :cond_4

    .line 362
    invoke-static {v10, v4, v5}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v11

    invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSize()I

    move-result v11

    aput v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 364
    :cond_4
    new-array v10, v5, [I

    move v11, v7

    :goto_4
    if-ge v11, v5, :cond_5

    aput v7, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_5
    const-string v7, "Required value was null."

    if-eqz p8, :cond_7

    if-eqz v3, :cond_6

    move-object/from16 v11, p12

    .line 367
    invoke-interface {v3, v11, v6, v9, v10}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    goto :goto_5

    .line 366
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object/from16 v11, p12

    if-eqz p10, :cond_c

    .line 372
    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 p5, p10

    move-object/from16 p6, p12

    move/from16 p7, v6

    move-object/from16 p8, v9

    move-object/from16 p9, v3

    move-object/from16 p10, v10

    invoke-interface/range {p5 .. p10}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 377
    :goto_5
    invoke-static {v10}, Lkotlin/collections/ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object v3

    check-cast v3, Lkotlin/ranges/IntProgression;

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    invoke-static {v3}, Lkotlin/ranges/RangesKt;->reversed(Lkotlin/ranges/IntProgression;)Lkotlin/ranges/IntProgression;

    move-result-object v3

    .line 378
    :goto_6
    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v7

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v9

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v3

    if-lez v3, :cond_9

    if-le v7, v9, :cond_a

    :cond_9
    if-gez v3, :cond_11

    if-gt v9, v7, :cond_11

    .line 379
    :cond_a
    :goto_7
    aget v11, v10, v7

    .line 381
    invoke-static {v7, v4, v5}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v12

    invoke-interface {p0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    if-eqz v4, :cond_b

    sub-int v11, v6, v11

    .line 384
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSize()I

    move-result v13

    sub-int/2addr v11, v13

    .line 388
    :cond_b
    invoke-virtual {v12, v11, v1, v2}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->position(III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v7, v9, :cond_11

    add-int/2addr v7, v3

    goto :goto_7

    .line 370
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v5, p7

    move v4, v7

    :goto_8
    if-ge v4, v3, :cond_f

    move-object v6, p1

    .line 434
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 435
    check-cast v9, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    .line 393
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v10

    sub-int/2addr v5, v10

    .line 394
    invoke-virtual {v9, v5, v1, v2}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->position(III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 439
    :cond_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v4, p7

    move v5, v7

    :goto_9
    if-ge v5, v3, :cond_10

    .line 440
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 441
    check-cast v6, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    .line 399
    invoke-virtual {v6, v4, v1, v2}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->position(III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 445
    :cond_10
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    if-ge v7, v0, :cond_11

    move-object/from16 v3, p2

    .line 446
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 447
    check-cast v5, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    .line 404
    invoke-virtual {v5, v4, v1, v2}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->position(III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 408
    :cond_11
    check-cast v8, Ljava/util/List;

    return-object v8
.end method

.method private static final calculateItemsOffsets$reverseAware(IZI)I
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p0

    add-int/lit8 p0, p2, -0x1

    :goto_0
    return p0
.end method

.method public static final measureLazyList-nXYdgZc(ILandroidx/compose/foundation/lazy/LazyMeasuredItemProvider;IIIIIIFJZLjava/util/List;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;",
            "IIIIIIFJZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;",
            "Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
            "Lkotlin/Unit;",
            ">;+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;)",
            "Landroidx/compose/foundation/lazy/LazyListMeasureResult;"
        }
    .end annotation

    move/from16 v9, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v6, p3

    move-wide/from16 v0, p9

    move-object/from16 v5, p12

    move-object/from16 v2, p18

    move-object/from16 v4, p19

    const-string v3, "itemProvider"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "headerIndexes"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "density"

    move-object/from16 v15, p16

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "placementAnimator"

    move-object/from16 v14, p17

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "beyondBoundsInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "layout"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Failed requirement."

    if-ltz v6, :cond_25

    if-ltz p4, :cond_24

    if-gtz v9, :cond_1

    .line 64
    new-instance v13, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 69
    invoke-static/range {p9 .. p10}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p9 .. p10}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$1;->INSTANCE:Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$1;

    invoke-interface {v4, v9, v0, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/compose/ui/layout/MeasureResult;

    .line 70
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    neg-int v11, v6

    add-int v8, v8, p4

    const/4 v12, 0x0

    if-eqz p11, :cond_0

    .line 75
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_0
    move-object v14, v0

    move-object v0, v13

    move-object v1, v2

    move v2, v3

    move v3, v5

    move v4, v7

    move-object v5, v9

    move-object v6, v10

    move v7, v11

    move v9, v12

    move/from16 v10, p15

    move-object v11, v14

    move/from16 v12, p4

    .line 64
    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;I)V

    return-object v13

    :cond_1
    const/4 v13, 0x0

    move/from16 v10, p6

    if-lt v10, v9, :cond_2

    add-int/lit8 v10, v9, -0x1

    .line 84
    invoke-static {v10}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v10

    move v11, v13

    goto :goto_1

    :cond_2
    move/from16 v11, p7

    .line 89
    :goto_1
    invoke-static/range {p8 .. p8}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v12

    sub-int/2addr v11, v12

    .line 96
    invoke-static {v13}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v4

    invoke-static {v10, v4}, Landroidx/compose/foundation/lazy/DataIndex;->equals-impl0(II)Z

    move-result v4

    if-eqz v4, :cond_3

    if-gez v11, :cond_3

    add-int/2addr v12, v11

    move v11, v13

    .line 102
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    neg-int v13, v6

    if-gez p5, :cond_4

    move/from16 v17, p5

    goto :goto_2

    :cond_4
    const/16 v17, 0x0

    :goto_2
    add-int v5, v13, v17

    add-int/2addr v11, v5

    move/from16 v17, v13

    const/4 v13, 0x0

    :goto_3
    if-gez v11, :cond_5

    const/16 p6, 0x0

    .line 119
    invoke-static/range {p6 .. p6}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v16

    sub-int v16, v10, v16

    if-lez v16, :cond_5

    add-int/lit8 v10, v10, -0x1

    .line 120
    invoke-static {v10}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v10

    .line 121
    invoke-virtual {v7, v10}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->getAndMeasure-ZjPyQlc(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move-result-object v14

    move/from16 p7, v10

    move/from16 v10, p6

    .line 122
    invoke-interface {v4, v10, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 123
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getCrossAxisSize()I

    move-result v10

    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 124
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v10

    add-int/2addr v11, v10

    move/from16 v10, p7

    move-object/from16 v14, p17

    goto :goto_3

    :cond_5
    if-ge v11, v5, :cond_6

    add-int/2addr v12, v11

    move v11, v5

    :cond_6
    sub-int/2addr v11, v5

    add-int v14, v8, p4

    move/from16 p6, v10

    move/from16 v18, v13

    const/4 v10, 0x0

    .line 139
    invoke-static {v14, v10}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v13

    neg-int v10, v11

    move/from16 v19, v10

    .line 413
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    move/from16 v20, p6

    move/from16 p7, v11

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_7

    .line 414
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    .line 415
    check-cast v21, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    add-int/lit8 v20, v20, 0x1

    .line 416
    invoke-static/range {v20 .. v20}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v20

    .line 145
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v21

    add-int v19, v19, v21

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_7
    move/from16 v10, p7

    move/from16 p7, v14

    move/from16 v11, v18

    move/from16 v14, v19

    move/from16 v15, v20

    :goto_5
    if-le v14, v13, :cond_8

    .line 151
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_b

    :cond_8
    if-ge v15, v9, :cond_b

    move/from16 v18, v13

    .line 154
    invoke-virtual {v7, v15}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->getAndMeasure-ZjPyQlc(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move-result-object v13

    .line 155
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v19

    add-int v14, v14, v19

    if-gt v14, v5, :cond_9

    move/from16 v19, v5

    add-int/lit8 v5, v9, -0x1

    if-eq v15, v5, :cond_a

    add-int/lit8 v5, v15, 0x1

    .line 418
    invoke-static {v5}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v5

    .line 160
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v13

    sub-int/2addr v10, v13

    goto :goto_6

    :cond_9
    move/from16 v19, v5

    .line 162
    :cond_a
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getCrossAxisSize()I

    move-result v5

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 163
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v11, v5

    move/from16 v5, p6

    :goto_6
    add-int/lit8 v15, v15, 0x1

    .line 419
    invoke-static {v15}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v15

    move/from16 p6, v5

    move/from16 v13, v18

    move/from16 v5, v19

    goto :goto_5

    :cond_b
    if-ge v14, v8, :cond_e

    sub-int v5, v8, v14

    sub-int/2addr v10, v5

    add-int/2addr v14, v5

    move v13, v11

    move/from16 v11, p6

    :goto_7
    if-ge v10, v6, :cond_c

    const/4 v15, 0x0

    .line 176
    invoke-static {v15}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v16

    sub-int v16, v11, v16

    if-lez v16, :cond_c

    add-int/lit8 v11, v11, -0x1

    .line 178
    invoke-static {v11}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v11

    move-object/from16 v16, v3

    .line 179
    invoke-virtual {v7, v11}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->getAndMeasure-ZjPyQlc(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move-result-object v3

    .line 180
    invoke-interface {v4, v15, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 181
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getCrossAxisSize()I

    move-result v15

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 182
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v3

    add-int/2addr v10, v3

    move-object/from16 v3, v16

    goto :goto_7

    :cond_c
    move-object/from16 v16, v3

    add-int/2addr v12, v5

    if-gez v10, :cond_d

    add-int/2addr v12, v10

    add-int/2addr v14, v10

    move v11, v13

    move v5, v14

    const/4 v10, 0x0

    goto :goto_9

    :cond_d
    move v11, v13

    goto :goto_8

    :cond_e
    move-object/from16 v16, v3

    :goto_8
    move v5, v14

    .line 197
    :goto_9
    invoke-static/range {p8 .. p8}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    invoke-static {v3}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v3

    invoke-static {v12}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v13

    if-ne v3, v13, :cond_f

    .line 198
    invoke-static/range {p8 .. p8}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-lt v3, v13, :cond_f

    int-to-float v3, v12

    goto :goto_a

    :cond_f
    move/from16 v3, p8

    :goto_a
    if-ltz v10, :cond_23

    neg-int v15, v10

    .line 208
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    if-gtz v6, :cond_11

    if-gez p5, :cond_10

    goto :goto_b

    :cond_10
    move/from16 v23, v10

    move/from16 v18, v11

    move-object v6, v12

    goto :goto_d

    .line 213
    :cond_11
    :goto_b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    move-object v14, v12

    move v12, v10

    const/4 v10, 0x0

    :goto_c
    if-ge v10, v13, :cond_12

    .line 214
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v6

    if-eqz v12, :cond_12

    if-gt v6, v12, :cond_12

    move/from16 v18, v11

    .line 216
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v11

    if-eq v10, v11, :cond_13

    sub-int/2addr v12, v6

    add-int/lit8 v10, v10, 0x1

    .line 219
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move/from16 v6, p3

    move/from16 v11, v18

    goto :goto_c

    :cond_12
    move/from16 v18, v11

    :cond_13
    move/from16 v23, v12

    move-object v6, v14

    .line 230
    :goto_d
    invoke-virtual/range {p18 .. p18}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->hasIntervals()Z

    move-result v10

    const/16 v24, 0x1

    if-eqz v10, :cond_15

    .line 231
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getIndex()I

    move-result v10

    invoke-static {v2, v9}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->measureLazyList_nXYdgZc$startIndex(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;I)I

    move-result v11

    if-le v10, v11, :cond_15

    .line 232
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/List;

    .line 233
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getIndex()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v2, v9}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->measureLazyList_nXYdgZc$startIndex(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;I)I

    move-result v12

    if-gt v12, v11, :cond_14

    .line 234
    :goto_e
    invoke-static {v11}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v13

    invoke-virtual {v7, v13}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->getAndMeasure-ZjPyQlc(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v11, v12, :cond_14

    add-int/lit8 v11, v11, -0x1

    goto :goto_e

    .line 236
    :cond_14
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_f

    .line 238
    :cond_15
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    :goto_f
    move-object v11, v10

    .line 241
    invoke-virtual/range {p18 .. p18}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->hasIntervals()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 242
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getIndex()I

    move-result v10

    invoke-static {v2, v9}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->measureLazyList_nXYdgZc$endIndex(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;I)I

    move-result v12

    if-ge v10, v12, :cond_17

    .line 243
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/List;

    .line 244
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getIndex()I

    move-result v12

    invoke-static {v2, v9}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->measureLazyList_nXYdgZc$endIndex(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;I)I

    move-result v2

    :goto_10
    if-ge v12, v2, :cond_16

    add-int/lit8 v12, v12, 0x1

    .line 245
    invoke-static {v12}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v13

    invoke-virtual {v7, v13}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->getAndMeasure-ZjPyQlc(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 247
    :cond_16
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v12, v10

    goto :goto_11

    .line 249
    :cond_17
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    move-object v12, v2

    .line 252
    :goto_11
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 253
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 254
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    move/from16 v25, v24

    goto :goto_12

    :cond_18
    const/16 v25, 0x0

    :goto_12
    if-eqz p11, :cond_19

    move/from16 v2, v18

    goto :goto_13

    :cond_19
    move v2, v5

    .line 257
    :goto_13
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v26

    if-eqz p11, :cond_1a

    move v2, v5

    goto :goto_14

    :cond_1a
    move/from16 v2, v18

    .line 259
    :goto_14
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v27

    move-object v10, v4

    move/from16 v29, v17

    const/16 v28, 0x0

    move/from16 v13, v26

    move/from16 v30, p7

    move/from16 v14, v27

    move v0, v15

    move v15, v5

    move/from16 v16, p2

    move/from16 v17, v0

    move/from16 v18, p11

    move-object/from16 v19, p13

    move-object/from16 v20, p14

    move/from16 v21, p15

    move-object/from16 v22, p16

    .line 261
    invoke-static/range {v10 .. v22}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;

    move-result-object v10

    float-to-int v1, v3

    move-object/from16 v0, p17

    move/from16 v2, v26

    move v11, v3

    move/from16 v3, v27

    move-object/from16 v12, p19

    move-object v13, v4

    move/from16 v4, p15

    move v14, v5

    move-object v5, v10

    move-object v15, v6

    move-object/from16 v6, p1

    .line 277
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->onMeasured(IIIZLjava/util/List;Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;)V

    .line 286
    move-object/from16 v0, p12

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1b

    move-object/from16 p5, v10

    move-object/from16 p6, p1

    move-object/from16 p7, p12

    move/from16 p8, p3

    move/from16 p9, v26

    move/from16 p10, v27

    .line 287
    invoke-static/range {p5 .. p10}, Landroidx/compose/foundation/lazy/LazyListHeadersKt;->findOrComposeLazyListHeader(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;Ljava/util/List;III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    move-result-object v0

    goto :goto_15

    :cond_1b
    const/4 v0, 0x0

    .line 296
    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    :goto_15
    if-le v14, v8, :cond_1c

    move/from16 v3, v24

    goto :goto_16

    :cond_1c
    move/from16 v3, v28

    .line 304
    :goto_16
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;

    invoke-direct {v4, v10, v0}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;-><init>(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListPositionedItem;)V

    invoke-interface {v12, v1, v2, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/compose/ui/layout/MeasureResult;

    if-eqz v25, :cond_1d

    move-object v6, v10

    goto :goto_18

    .line 422
    :cond_1d
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 425
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v4, v28

    :goto_17
    if-ge v4, v2, :cond_21

    .line 426
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 428
    move-object v7, v6

    check-cast v7, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 316
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v8

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getIndex()I

    move-result v12

    if-lt v8, v12, :cond_1e

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v8

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getIndex()I

    move-result v12

    if-le v8, v12, :cond_1f

    :cond_1e
    if-ne v7, v0, :cond_20

    :cond_1f
    move-object v7, v1

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 431
    :cond_21
    check-cast v1, Ljava/util/List;

    move-object v6, v1

    :goto_18
    if-eqz p11, :cond_22

    .line 321
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_19

    :cond_22
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_19
    move-object v12, v0

    .line 299
    new-instance v13, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-object v0, v13

    move-object v1, v15

    move/from16 v2, v23

    move v4, v11

    move/from16 v7, v29

    move/from16 v8, v30

    move/from16 v9, p0

    move/from16 v10, p15

    move-object v11, v12

    move/from16 v12, p4

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;I)V

    return-object v13

    .line 206
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    move-object/from16 v16, v3

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    move-object/from16 v16, v3

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final measureLazyList_nXYdgZc$endIndex(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;I)I
    .locals 0

    .line 228
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->getEnd()I

    move-result p0

    add-int/lit8 p1, p1, -0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private static final measureLazyList_nXYdgZc$startIndex(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;I)I
    .locals 0

    .line 227
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->getStart()I

    move-result p0

    add-int/lit8 p1, p1, -0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method
