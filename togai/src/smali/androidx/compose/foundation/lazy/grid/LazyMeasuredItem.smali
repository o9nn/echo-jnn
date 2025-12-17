.class public final Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;
.super Ljava/lang/Object;
.source "LazyMeasuredItem.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyMeasuredItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyMeasuredItem.kt\nandroidx/compose/foundation/lazy/grid/LazyMeasuredItem\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,230:1\n33#2,6:231\n*S KotlinDebug\n*F\n+ 1 LazyMeasuredItem.kt\nandroidx/compose/foundation/lazy/grid/LazyMeasuredItem\n*L\n66#1:231,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001Bn\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0006\u0010\u000e\u001a\u00020\u0008\u0012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016J>\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\u00082\u0006\u0010)\u001a\u00020\u00082\u0006\u0010*\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u00082\u0006\u0010,\u001a\u00020\u00082\u0006\u0010-\u001a\u00020\u0008R\u000e\u0010\u000e\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u001a\u001a\u0004\u0008\u0019\u0010\u0018R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001d\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0018R\u0011\u0010\u001f\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0018R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0018R\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010$\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006."
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;",
        "",
        "index",
        "Landroidx/compose/foundation/lazy/grid/ItemIndex;",
        "key",
        "isVertical",
        "",
        "crossAxisSize",
        "",
        "mainAxisSpacing",
        "reverseLayout",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "beforeContentPadding",
        "afterContentPadding",
        "placeables",
        "",
        "Landroidx/compose/ui/layout/Placeable;",
        "placementAnimator",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;",
        "visualOffset",
        "Landroidx/compose/ui/unit/IntOffset;",
        "(ILjava/lang/Object;ZIIZLandroidx/compose/ui/unit/LayoutDirection;IILjava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;JLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getCrossAxisSize",
        "()I",
        "getIndex-VZbfaAc",
        "I",
        "getKey",
        "()Ljava/lang/Object;",
        "mainAxisSize",
        "getMainAxisSize",
        "mainAxisSizeWithSpacings",
        "getMainAxisSizeWithSpacings",
        "getMainAxisSpacing",
        "getPlaceables",
        "()Ljava/util/List;",
        "J",
        "position",
        "Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;",
        "rawMainAxisOffset",
        "rawCrossAxisOffset",
        "layoutWidth",
        "layoutHeight",
        "row",
        "column",
        "lineMainAxisSize",
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
.field private final afterContentPadding:I

.field private final beforeContentPadding:I

.field private final crossAxisSize:I

.field private final index:I

.field private final isVertical:Z

.field private final key:Ljava/lang/Object;

.field private final layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private final mainAxisSize:I

.field private final mainAxisSizeWithSpacings:I

.field private final mainAxisSpacing:I

.field private final placeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field private final placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

.field private final reverseLayout:Z

.field private final visualOffset:J


# direct methods
.method private constructor <init>(ILjava/lang/Object;ZIIZLandroidx/compose/ui/unit/LayoutDirection;IILjava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "ZIIZ",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "II",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;",
            "J)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->index:I

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->key:Ljava/lang/Object;

    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->isVertical:Z

    iput p4, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->crossAxisSize:I

    iput p5, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSpacing:I

    iput-boolean p6, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->reverseLayout:Z

    iput-object p7, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput p8, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->beforeContentPadding:I

    iput p9, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->afterContentPadding:I

    iput-object p10, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->placeables:Ljava/util/List;

    iput-object p11, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    iput-wide p12, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->visualOffset:J

    .line 232
    invoke-interface {p10}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    move p4, p3

    :goto_0
    if-ge p3, p1, :cond_1

    .line 233
    invoke-interface {p10, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    .line 234
    check-cast p5, Landroidx/compose/ui/layout/Placeable;

    iget-boolean p6, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->isVertical:Z

    if-eqz p6, :cond_0

    .line 67
    invoke-virtual {p5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p5

    goto :goto_1

    :cond_0
    invoke-virtual {p5}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p5

    :goto_1
    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    iput p4, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSize:I

    iget p1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSpacing:I

    add-int/2addr p4, p1

    .line 70
    invoke-static {p4, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSizeWithSpacings:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;ZIIZLandroidx/compose/ui/unit/LayoutDirection;IILjava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;-><init>(ILjava/lang/Object;ZIIZLandroidx/compose/ui/unit/LayoutDirection;IILjava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;J)V

    return-void
.end method


# virtual methods
.method public final getCrossAxisSize()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->crossAxisSize:I

    return v0
.end method

.method public final getIndex-VZbfaAc()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->index:I

    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getMainAxisSize()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSize:I

    return v0
.end method

.method public final getMainAxisSizeWithSpacings()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSizeWithSpacings:I

    return v0
.end method

.method public final getMainAxisSpacing()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSpacing:I

    return v0
.end method

.method public final getPlaceables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->placeables:Ljava/util/List;

    return-object v0
.end method

.method public final position(IIIIIII)Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 89
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    iget-boolean v4, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->isVertical:Z

    if-eqz v4, :cond_0

    move/from16 v5, p4

    goto :goto_0

    :cond_0
    move/from16 v5, p3

    :goto_0
    iget-boolean v6, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->reverseLayout:Z

    if-eqz v6, :cond_1

    sub-int v6, v5, v1

    iget v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSize:I

    sub-int/2addr v6, v7

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    if-eqz v4, :cond_2

    move/from16 v7, p3

    goto :goto_2

    :cond_2
    move/from16 v7, p4

    :goto_2
    if-eqz v4, :cond_3

    iget-object v4, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 98
    sget-object v8, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v4, v8, :cond_3

    sub-int/2addr v7, v2

    iget v4, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->crossAxisSize:I

    sub-int/2addr v7, v4

    goto :goto_3

    :cond_3
    move v7, v2

    :goto_3
    iget-boolean v4, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->isVertical:Z

    if-eqz v4, :cond_4

    .line 104
    invoke-static {v7, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v6

    goto :goto_4

    .line 106
    :cond_4
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v6

    :goto_4
    move-wide v14, v6

    iget-boolean v4, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->reverseLayout:Z

    if-eqz v4, :cond_5

    iget-object v4, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->placeables:Ljava/util/List;

    .line 109
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_5
    iget-boolean v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->reverseLayout:Z

    if-eqz v7, :cond_6

    if-ltz v4, :cond_9

    goto :goto_6

    :cond_6
    iget-object v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->placeables:Ljava/util/List;

    .line 110
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_9

    :goto_6
    iget-object v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->placeables:Ljava/util/List;

    .line 111
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Landroidx/compose/ui/layout/Placeable;

    iget-boolean v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->reverseLayout:Z

    if-eqz v7, :cond_7

    const/4 v7, 0x0

    goto :goto_7

    .line 112
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    .line 115
    :goto_7
    new-instance v13, Landroidx/compose/foundation/lazy/grid/LazyGridPlaceableWrapper;

    iget-object v8, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getParentData()Ljava/lang/Object;

    move-result-object v12

    const/16 v16, 0x0

    move-object v8, v13

    move-wide v9, v14

    move-object v6, v13

    move-object/from16 v13, v16

    invoke-direct/range {v8 .. v13}, Landroidx/compose/foundation/lazy/grid/LazyGridPlaceableWrapper;-><init>(JLandroidx/compose/ui/layout/Placeable;Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 113
    invoke-interface {v3, v7, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-boolean v6, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->reverseLayout:Z

    if-eqz v6, :cond_8

    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 120
    :cond_9
    new-instance v25, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    iget-boolean v4, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->isVertical:Z

    if-eqz v4, :cond_a

    .line 122
    invoke-static {v2, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v1

    goto :goto_8

    .line 124
    :cond_a
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v1

    :goto_8
    iget v9, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->index:I

    iget-object v10, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->key:Ljava/lang/Object;

    iget-boolean v4, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->isVertical:Z

    if-eqz v4, :cond_b

    iget v4, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->crossAxisSize:I

    iget v6, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSize:I

    .line 132
    invoke-static {v4, v6}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v6

    goto :goto_9

    :cond_b
    iget v4, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSize:I

    iget v6, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->crossAxisSize:I

    .line 134
    invoke-static {v4, v6}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v6

    :goto_9
    move-wide/from16 v16, v6

    iget v13, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSpacing:I

    iget-boolean v4, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->reverseLayout:Z

    if-nez v4, :cond_c

    iget v6, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->beforeContentPadding:I

    goto :goto_a

    :cond_c
    iget v6, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->afterContentPadding:I

    :goto_a
    neg-int v12, v6

    if-nez v4, :cond_d

    iget v4, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->afterContentPadding:I

    goto :goto_b

    :cond_d
    iget v4, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->beforeContentPadding:I

    :goto_b
    add-int v18, v5, v4

    iget-boolean v4, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->isVertical:Z

    move/from16 v19, v4

    iget-object v4, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    move-object/from16 v21, v4

    iget-wide v4, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->visualOffset:J

    move-wide/from16 v22, v4

    const/16 v24, 0x0

    move-object/from16 v4, v25

    move-wide v5, v1

    move-wide v7, v14

    move/from16 v11, p5

    move v1, v12

    move/from16 v12, p6

    move v2, v13

    move-wide/from16 v13, v16

    move/from16 v15, p7

    move/from16 v16, v2

    move/from16 v17, v1

    move-object/from16 v20, v3

    .line 120
    invoke-direct/range {v4 .. v24}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;-><init>(JJILjava/lang/Object;IIJIIIIZLjava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v25
.end method
