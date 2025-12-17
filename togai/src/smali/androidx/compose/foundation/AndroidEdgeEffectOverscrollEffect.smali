.class public final Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;
.super Ljava/lang/Object;
.source "AndroidOverscroll.kt"

# interfaces
.implements Landroidx/compose/foundation/OverscrollEffect;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidOverscroll.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidOverscroll.kt\nandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n+ 4 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,591:1\n33#2,6:592\n83#2,2:599\n33#2,6:601\n85#2:607\n33#2,6:609\n135#3:598\n245#4:608\n*S KotlinDebug\n*F\n+ 1 AndroidOverscroll.kt\nandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect\n*L\n125#1:592,6\n272#1:599,2\n272#1:601,6\n272#1:607\n453#1:609,6\n349#1:598\n359#1:608\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0007\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u00101\u001a\u00020&H\u0002J!\u00102\u001a\u00020&2\u0006\u00103\u001a\u000204H\u0096@\u00f8\u0001\u0001\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u00085\u00106J-\u00107\u001a\u00020&2\u0006\u00108\u001a\u00020*2\u0006\u00109\u001a\u00020*2\u0006\u0010:\u001a\u00020;H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008<\u0010=J!\u0010>\u001a\u0002042\u0006\u00103\u001a\u000204H\u0096@\u00f8\u0001\u0001\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008?\u00106J%\u0010@\u001a\u00020*2\u0006\u0010A\u001a\u00020*2\u0006\u0010:\u001a\u00020;H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008B\u0010CJ\u0008\u0010D\u001a\u00020&H\u0002J%\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020*2\u0006\u0010H\u001a\u00020*H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008I\u0010JJ%\u0010K\u001a\u00020F2\u0006\u0010G\u001a\u00020*2\u0006\u0010H\u001a\u00020*H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008L\u0010JJ%\u0010M\u001a\u00020F2\u0006\u0010G\u001a\u00020*2\u0006\u0010H\u001a\u00020*H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008N\u0010JJ%\u0010O\u001a\u00020F2\u0006\u0010G\u001a\u00020*2\u0006\u0010H\u001a\u00020*H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008P\u0010JJ\u001d\u0010Q\u001a\u00020\u00142\u0006\u0010R\u001a\u00020*H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008S\u0010TJ\u0008\u0010U\u001a\u00020\u0014H\u0002J \u0010V\u001a\u00020\u0014*\u00020W2\u0006\u0010X\u001a\u00020\t2\n\u0010Y\u001a\u00060Zj\u0002`[H\u0002J \u0010\\\u001a\u00020\u0014*\u00020W2\u0006\u0010]\u001a\u00020\t2\n\u0010Y\u001a\u00060Zj\u0002`[H\u0002J\n\u0010^\u001a\u00020&*\u00020WJ \u0010_\u001a\u00020\u0014*\u00020W2\u0006\u0010`\u001a\u00020\t2\n\u0010Y\u001a\u00060Zj\u0002`[H\u0002J \u0010a\u001a\u00020\u0014*\u00020W2\u0006\u0010b\u001a\u00020\t2\n\u0010Y\u001a\u00060Zj\u0002`[H\u0002R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u0010X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R$\u0010\u0013\u001a\u00020\u00148\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR&\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u00148V@VX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0018\"\u0004\u0008\u001d\u0010\u001aR\u0014\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u0018R\u000e\u0010!\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010#\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020&0$X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\'\u001a\u0004\u0018\u00010(X\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0002\n\u0000R\u0019\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0002\n\u0000R\u0014\u0010+\u001a\u0008\u0012\u0004\u0012\u00020&0\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006c"
    }
    d2 = {
        "Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;",
        "Landroidx/compose/foundation/OverscrollEffect;",
        "context",
        "Landroid/content/Context;",
        "overscrollConfig",
        "Landroidx/compose/foundation/OverscrollConfiguration;",
        "(Landroid/content/Context;Landroidx/compose/foundation/OverscrollConfiguration;)V",
        "allEffects",
        "",
        "Landroid/widget/EdgeEffect;",
        "bottomEffect",
        "bottomEffectNegation",
        "containerSize",
        "Landroidx/compose/ui/geometry/Size;",
        "J",
        "effectModifier",
        "Landroidx/compose/ui/Modifier;",
        "getEffectModifier",
        "()Landroidx/compose/ui/Modifier;",
        "invalidationEnabled",
        "",
        "getInvalidationEnabled$foundation_release$annotations",
        "()V",
        "getInvalidationEnabled$foundation_release",
        "()Z",
        "setInvalidationEnabled$foundation_release",
        "(Z)V",
        "value",
        "isEnabled",
        "setEnabled",
        "isEnabledState",
        "Landroidx/compose/runtime/MutableState;",
        "isInProgress",
        "leftEffect",
        "leftEffectNegation",
        "onNewSize",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/unit/IntSize;",
        "",
        "pointerId",
        "Landroidx/compose/ui/input/pointer/PointerId;",
        "pointerPosition",
        "Landroidx/compose/ui/geometry/Offset;",
        "redrawSignal",
        "rightEffect",
        "rightEffectNegation",
        "scrollCycleInProgress",
        "topEffect",
        "topEffectNegation",
        "animateToRelease",
        "consumePostFling",
        "velocity",
        "Landroidx/compose/ui/unit/Velocity;",
        "consumePostFling-sF-c-tU",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "consumePostScroll",
        "initialDragDelta",
        "overscrollDelta",
        "source",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;",
        "consumePostScroll-OMhpSzk",
        "(JJI)V",
        "consumePreFling",
        "consumePreFling-QWom1Mo",
        "consumePreScroll",
        "scrollDelta",
        "consumePreScroll-OzD1aCk",
        "(JI)J",
        "invalidateOverscroll",
        "pullBottom",
        "",
        "scroll",
        "displacement",
        "pullBottom-0a9Yr6o",
        "(JJ)F",
        "pullLeft",
        "pullLeft-0a9Yr6o",
        "pullRight",
        "pullRight-0a9Yr6o",
        "pullTop",
        "pullTop-0a9Yr6o",
        "releaseOppositeOverscroll",
        "delta",
        "releaseOppositeOverscroll-k-4lQ0M",
        "(J)Z",
        "stopOverscrollAnimation",
        "drawBottom",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "bottom",
        "canvas",
        "Landroid/graphics/Canvas;",
        "Landroidx/compose/ui/graphics/NativeCanvas;",
        "drawLeft",
        "left",
        "drawOverscroll",
        "drawRight",
        "right",
        "drawTop",
        "top",
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
.field private final allEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/EdgeEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final bottomEffect:Landroid/widget/EdgeEffect;

.field private final bottomEffectNegation:Landroid/widget/EdgeEffect;

.field private containerSize:J

.field private final effectModifier:Landroidx/compose/ui/Modifier;

.field private invalidationEnabled:Z

.field private isEnabled:Z

.field private final isEnabledState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final leftEffect:Landroid/widget/EdgeEffect;

.field private final leftEffectNegation:Landroid/widget/EdgeEffect;

.field private final onNewSize:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

.field private pointerId:Landroidx/compose/ui/input/pointer/PointerId;

.field private pointerPosition:Landroidx/compose/ui/geometry/Offset;

.field private final redrawSignal:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final rightEffect:Landroid/widget/EdgeEffect;

.field private final rightEffectNegation:Landroid/widget/EdgeEffect;

.field private scrollCycleInProgress:Z

.field private final topEffect:Landroid/widget/EdgeEffect;

.field private final topEffectNegation:Landroid/widget/EdgeEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/compose/foundation/OverscrollConfiguration;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overscrollConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

    .line 110
    sget-object p2, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 111
    sget-object v1, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    invoke-virtual {v1, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 112
    sget-object v2, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    invoke-virtual {v2, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 113
    sget-object v3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    invoke-virtual {v3, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/widget/EdgeEffect;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object p2, v4, v2

    const/4 p2, 0x2

    aput-object v3, v4, p2

    const/4 v3, 0x3

    aput-object v1, v4, v3

    .line 114
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->allEffects:Ljava/util/List;

    .line 119
    sget-object v3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    invoke-virtual {v3, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 120
    sget-object v3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    invoke-virtual {v3, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 121
    sget-object v3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    invoke-virtual {v3, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 122
    sget-object v3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    invoke-virtual {v3, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 593
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    move v3, v5

    :goto_0
    if-ge v3, p1, :cond_0

    .line 594
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 595
    check-cast v4, Landroid/widget/EdgeEffect;

    iget-object v6, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

    .line 125
    invoke-virtual {v6}, Landroidx/compose/foundation/OverscrollConfiguration;->getGlowColor-0d7_KjU()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/EdgeEffect;->setColor(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->neverEqualPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->redrawSignal:Landroidx/compose/runtime/MutableState;

    iput-boolean v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidationEnabled:Z

    .line 253
    sget-object p1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size$Companion;->getZero-NH-jbRc()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 255
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1, v0, p2, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->isEnabledState:Landroidx/compose/runtime/MutableState;

    .line 297
    new-instance p1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$onNewSize$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$onNewSize$1;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->onNewSize:Lkotlin/jvm/functions/Function1;

    .line 319
    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 320
    invoke-static {}, Landroidx/compose/foundation/AndroidOverscrollKt;->access$getStretchOverscrollNonClippingLayer$p()Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/compose/ui/Modifier$Companion;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    .line 321
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v2, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1;

    invoke-direct {v2, p0, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v1, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    .line 345
    invoke-static {p2, p1}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->onSizeChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    .line 347
    new-instance p2, Landroidx/compose/foundation/DrawOverscrollModifier;

    .line 598
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$special$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$special$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_1

    :cond_1
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 347
    :goto_1
    invoke-direct {p2, p0, v0}, Landroidx/compose/foundation/DrawOverscrollModifier;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;)V

    check-cast p2, Landroidx/compose/ui/Modifier;

    .line 346
    invoke-interface {p1, p2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->effectModifier:Landroidx/compose/ui/Modifier;

    return-void
.end method

.method public static final synthetic access$animateToRelease(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->animateToRelease()V

    return-void
.end method

.method public static final synthetic access$getBottomEffect$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method public static final synthetic access$getBottomEffectNegation$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method public static final synthetic access$getContainerSize$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)J
    .locals 2

    .line 103
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    return-wide v0
.end method

.method public static final synthetic access$getLeftEffect$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method public static final synthetic access$getLeftEffectNegation$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffectNegation:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method public static final synthetic access$getPointerId$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroidx/compose/ui/input/pointer/PointerId;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pointerId:Landroidx/compose/ui/input/pointer/PointerId;

    return-object p0
.end method

.method public static final synthetic access$getRightEffect$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method public static final synthetic access$getRightEffectNegation$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffectNegation:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method public static final synthetic access$getTopEffect$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method public static final synthetic access$getTopEffectNegation$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffectNegation:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method public static final synthetic access$invalidateOverscroll(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll()V

    return-void
.end method

.method public static final synthetic access$setContainerSize$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;J)V
    .locals 0

    .line 103
    iput-wide p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    return-void
.end method

.method public static final synthetic access$setPointerId$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/ui/input/pointer/PointerId;)V
    .locals 0

    .line 103
    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pointerId:Landroidx/compose/ui/input/pointer/PointerId;

    return-void
.end method

.method public static final synthetic access$setPointerPosition$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/ui/geometry/Offset;)V
    .locals 0

    .line 103
    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pointerPosition:Landroidx/compose/ui/geometry/Offset;

    return-void
.end method

.method private final animateToRelease()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->allEffects:Ljava/util/List;

    .line 610
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    .line 611
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 612
    check-cast v5, Landroid/widget/EdgeEffect;

    .line 454
    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 455
    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v2

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 457
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll()V

    :cond_3
    return-void
.end method

.method private final drawBottom(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 4

    .line 435
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    .line 436
    invoke-virtual {p3, v1}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

    .line 437
    invoke-virtual {v1}, Landroidx/compose/foundation/OverscrollConfiguration;->getDrawPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v1

    invoke-interface {p1, v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result p1

    iget-wide v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 438
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    neg-float v1, v1

    iget-wide v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v2

    neg-float v2, v2

    add-float/2addr v2, p1

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 439
    invoke-virtual {p2, p3}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p1

    .line 440
    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p1
.end method

.method private final drawLeft(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 4

    .line 404
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/high16 v1, 0x43870000    # 270.0f

    .line 405
    invoke-virtual {p3, v1}, Landroid/graphics/Canvas;->rotate(F)V

    iget-wide v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 407
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

    .line 408
    invoke-virtual {v2}, Landroidx/compose/foundation/OverscrollConfiguration;->getDrawPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v2

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v2

    invoke-interface {p1, v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result p1

    .line 406
    invoke-virtual {p3, v1, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 410
    invoke-virtual {p2, p3}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p1

    .line 411
    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p1
.end method

.method private final drawRight(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 4

    .line 424
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 425
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

    .line 426
    invoke-virtual {v2}, Landroidx/compose/foundation/OverscrollConfiguration;->getDrawPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v2

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v2

    const/high16 v3, 0x42b40000    # 90.0f

    .line 427
    invoke-virtual {p3, v3}, Landroid/graphics/Canvas;->rotate(F)V

    int-to-float v1, v1

    neg-float v1, v1

    .line 428
    invoke-interface {p1, v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result p1

    add-float/2addr v1, p1

    const/4 p1, 0x0

    invoke-virtual {p3, p1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 429
    invoke-virtual {p2, p3}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p1

    .line 430
    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p1
.end method

.method private final drawTop(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 2

    .line 416
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

    .line 417
    invoke-virtual {v1}, Landroidx/compose/foundation/OverscrollConfiguration;->getDrawPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v1

    invoke-interface {p1, v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p3, v1, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 418
    invoke-virtual {p2, p3}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p1

    .line 419
    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p1
.end method

.method public static synthetic getInvalidationEnabled$foundation_release$annotations()V
    .locals 0

    return-void
.end method

.method private final invalidateOverscroll()V
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->redrawSignal:Landroidx/compose/runtime/MutableState;

    .line 446
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final pullBottom-0a9Yr6o(JJ)F
    .locals 2

    .line 488
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p3

    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result p4

    div-float/2addr p3, p4

    .line 489
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p2

    div-float/2addr p1, p2

    .line 490
    sget-object p2, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object p4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    neg-float p1, p1

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p3

    invoke-virtual {p2, p4, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    neg-float p1, p1

    iget-wide p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 493
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p2

    mul-float/2addr p1, p2

    return p1
.end method

.method private final pullLeft-0a9Yr6o(JJ)F
    .locals 2

    .line 497
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p3

    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p4

    div-float/2addr p3, p4

    .line 498
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p1

    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result p2

    div-float/2addr p1, p2

    .line 499
    sget-object p2, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object p4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p3

    invoke-virtual {p2, p4, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    iget-wide p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result p2

    mul-float/2addr p1, p2

    return p1
.end method

.method private final pullRight-0a9Yr6o(JJ)F
    .locals 2

    .line 503
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p3

    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p4

    div-float/2addr p3, p4

    .line 504
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p1

    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result p2

    div-float/2addr p1, p2

    .line 505
    sget-object p2, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object p4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    neg-float p1, p1

    invoke-virtual {p2, p4, p1, p3}, Landroidx/compose/foundation/EdgeEffectCompat;->onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    neg-float p1, p1

    iget-wide p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result p2

    mul-float/2addr p1, p2

    return p1
.end method

.method private final pullTop-0a9Yr6o(JJ)F
    .locals 2

    .line 482
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p3

    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result p4

    div-float/2addr p3, p4

    .line 483
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p2

    div-float/2addr p1, p2

    .line 484
    sget-object p2, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object p4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {p2, p4, p1, p3}, Landroidx/compose/foundation/EdgeEffectCompat;->onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    iget-wide p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p2

    mul-float/2addr p1, p2

    return p1
.end method

.method private final releaseOppositeOverscroll-k-4lQ0M(J)Z
    .locals 7

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 462
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 463
    sget-object v0, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroidx/compose/foundation/EdgeEffectCompat;->onReleaseWithOppositeDelta(Landroid/widget/EdgeEffect;F)V

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 464
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 466
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_3

    .line 467
    sget-object v3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroidx/compose/foundation/EdgeEffectCompat;->onReleaseWithOppositeDelta(Landroid/widget/EdgeEffect;F)V

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 468
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v4

    :cond_3
    :goto_2
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 470
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v3

    cmpg-float v3, v3, v1

    if-gez v3, :cond_6

    .line 471
    sget-object v3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroidx/compose/foundation/EdgeEffectCompat;->onReleaseWithOppositeDelta(Landroid/widget/EdgeEffect;F)V

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 472
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    :goto_3
    move v0, v4

    :cond_6
    :goto_4
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 474
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v3

    cmpl-float v1, v3, v1

    if-lez v1, :cond_9

    .line 475
    sget-object v1, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    invoke-virtual {v1, v3, p1}, Landroidx/compose/foundation/EdgeEffectCompat;->onReleaseWithOppositeDelta(Landroid/widget/EdgeEffect;F)V

    if-nez v0, :cond_7

    iget-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 476
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    move v2, v4

    :cond_8
    move v0, v2

    :cond_9
    return v0
.end method

.method private final stopOverscrollAnimation()Z
    .locals 7

    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 277
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide v0

    .line 278
    sget-object v2, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v3}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    const/4 v4, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 279
    :cond_0
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v5

    invoke-direct {p0, v5, v6, v0, v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullLeft-0a9Yr6o(JJ)F

    move v2, v4

    .line 282
    :goto_0
    sget-object v5, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v6, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v6}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v5

    cmpg-float v5, v5, v3

    if-nez v5, :cond_1

    goto :goto_1

    .line 283
    :cond_1
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v5

    invoke-direct {p0, v5, v6, v0, v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullRight-0a9Yr6o(JJ)F

    move v2, v4

    .line 286
    :goto_1
    sget-object v5, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v6, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v6}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v5

    cmpg-float v5, v5, v3

    if-nez v5, :cond_2

    goto :goto_2

    .line 287
    :cond_2
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v5

    invoke-direct {p0, v5, v6, v0, v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullTop-0a9Yr6o(JJ)F

    move v2, v4

    .line 290
    :goto_2
    sget-object v5, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v6, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v6}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v5

    cmpg-float v3, v5, v3

    if-nez v3, :cond_3

    move v4, v2

    goto :goto_3

    .line 291
    :cond_3
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullBottom-0a9Yr6o(JJ)F

    :goto_3
    return v4
.end method


# virtual methods
.method public consumePostFling-sF-c-tU(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 235
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 236
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_0
    const/4 p3, 0x0

    iput-boolean p3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->scrollCycleInProgress:Z

    .line 239
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result p3

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-lez p3, :cond_1

    .line 240
    sget-object p3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    invoke-virtual {p3, v1, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->onAbsorbCompat(Landroid/widget/EdgeEffect;I)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result p3

    cmpg-float p3, p3, v0

    if-gez p3, :cond_2

    .line 242
    sget-object p3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p3, v1, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->onAbsorbCompat(Landroid/widget/EdgeEffect;I)V

    .line 244
    :cond_2
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result p3

    cmpl-float p3, p3, v0

    if-lez p3, :cond_3

    .line 245
    sget-object p3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroidx/compose/foundation/EdgeEffectCompat;->onAbsorbCompat(Landroid/widget/EdgeEffect;I)V

    goto :goto_1

    .line 246
    :cond_3
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result p3

    cmpg-float p3, p3, v0

    if-gez p3, :cond_4

    .line 247
    sget-object p3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p3, v0, v1}, Landroidx/compose/foundation/EdgeEffectCompat;->onAbsorbCompat(Landroid/widget/EdgeEffect;I)V

    .line 249
    :cond_4
    :goto_1
    sget-object p3, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/Velocity;->equals-impl0(JJ)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll()V

    .line 250
    :cond_5
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->animateToRelease()V

    .line 251
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public consumePostScroll-OMhpSzk(JJI)V
    .locals 3

    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 185
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 189
    :cond_0
    sget-object v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->getDrag-WNlRxjI()I

    move-result v0

    invoke-static {p5, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->equals-impl0(II)Z

    move-result p5

    if-eqz p5, :cond_6

    iget-object p5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pointerPosition:Landroidx/compose/ui/geometry/Offset;

    if-eqz p5, :cond_1

    .line 190
    invoke-virtual {p5}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide v0

    .line 191
    :goto_0
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p5

    const/4 v2, 0x0

    cmpl-float p5, p5, v2

    if-lez p5, :cond_2

    .line 192
    invoke-direct {p0, p3, p4, v0, v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullLeft-0a9Yr6o(JJ)F

    goto :goto_1

    .line 193
    :cond_2
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p5

    cmpg-float p5, p5, v2

    if-gez p5, :cond_3

    .line 194
    invoke-direct {p0, p3, p4, v0, v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullRight-0a9Yr6o(JJ)F

    .line 196
    :cond_3
    :goto_1
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p5

    cmpl-float p5, p5, v2

    if-lez p5, :cond_4

    .line 197
    invoke-direct {p0, p3, p4, v0, v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullTop-0a9Yr6o(JJ)F

    goto :goto_2

    .line 198
    :cond_4
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p5

    cmpg-float p5, p5, v2

    if-gez p5, :cond_5

    .line 199
    invoke-direct {p0, p3, p4, v0, v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullBottom-0a9Yr6o(JJ)F

    .line 201
    :cond_5
    :goto_2
    sget-object p5, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p5}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    invoke-static {p3, p4, v0, v1}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_6
    const/4 p3, 0x0

    .line 203
    :goto_3
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->releaseOppositeOverscroll-k-4lQ0M(J)Z

    move-result p1

    if-nez p1, :cond_7

    if-eqz p3, :cond_8

    .line 204
    :cond_7
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll()V

    :cond_8
    return-void
.end method

.method public consumePreFling-QWom1Mo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 208
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 209
    sget-object p1, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    move-result-wide p1

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object p1

    return-object p1

    .line 211
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result p3

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-lez p3, :cond_2

    sget-object p3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {p3, v1}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result p3

    cmpg-float p3, p3, v0

    if-nez p3, :cond_1

    goto :goto_0

    .line 212
    :cond_1
    sget-object p3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    invoke-virtual {p3, v1, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->onAbsorbCompat(Landroid/widget/EdgeEffect;I)V

    .line 213
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result p3

    goto :goto_2

    .line 214
    :cond_2
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result p3

    cmpg-float p3, p3, v0

    if-gez p3, :cond_4

    sget-object p3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {p3, v1}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result p3

    cmpg-float p3, p3, v0

    if-nez p3, :cond_3

    goto :goto_1

    .line 215
    :cond_3
    sget-object p3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p3, v1, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->onAbsorbCompat(Landroid/widget/EdgeEffect;I)V

    .line 216
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result p3

    goto :goto_2

    :cond_4
    :goto_1
    move p3, v0

    .line 220
    :goto_2
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_6

    sget-object v1, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v1

    cmpg-float v1, v1, v0

    if-nez v1, :cond_5

    goto :goto_3

    .line 221
    :cond_5
    sget-object v0, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->onAbsorbCompat(Landroid/widget/EdgeEffect;I)V

    .line 222
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v0

    goto :goto_4

    .line 223
    :cond_6
    :goto_3
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_8

    sget-object v1, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v1

    cmpg-float v1, v1, v0

    if-nez v1, :cond_7

    goto :goto_4

    .line 224
    :cond_7
    sget-object v0, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->onAbsorbCompat(Landroid/widget/EdgeEffect;I)V

    .line 225
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v0

    .line 229
    :cond_8
    :goto_4
    invoke-static {p3, v0}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide p1

    .line 230
    sget-object p3, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/Velocity;->equals-impl0(JJ)Z

    move-result p3

    if-nez p3, :cond_9

    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll()V

    .line 231
    :cond_9
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object p1

    return-object p1
.end method

.method public consumePreScroll-OzD1aCk(JI)J
    .locals 5

    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 139
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 140
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p1

    return-wide p1

    :cond_0
    iget-boolean p3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->scrollCycleInProgress:Z

    if-nez p3, :cond_1

    .line 143
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->stopOverscrollAnimation()Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->scrollCycleInProgress:Z

    :cond_1
    iget-object p3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pointerPosition:Landroidx/compose/ui/geometry/Offset;

    if-eqz p3, :cond_2

    .line 146
    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide v0

    .line 148
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p3

    const/4 v2, 0x0

    cmpg-float p3, p3, v2

    if-nez p3, :cond_3

    :goto_1
    move p3, v2

    goto :goto_2

    .line 149
    :cond_3
    sget-object p3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {p3, v3}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result p3

    cmpg-float p3, p3, v2

    if-nez p3, :cond_5

    .line 154
    sget-object p3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {p3, v3}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result p3

    cmpg-float p3, p3, v2

    if-nez p3, :cond_4

    goto :goto_1

    .line 155
    :cond_4
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullBottom-0a9Yr6o(JJ)F

    move-result p3

    .line 156
    sget-object v3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v4}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v3

    cmpg-float v3, v3, v2

    if-nez v3, :cond_6

    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_2

    .line 150
    :cond_5
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullTop-0a9Yr6o(JJ)F

    move-result p3

    .line 151
    sget-object v3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v4}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v3

    cmpg-float v3, v3, v2

    if-nez v3, :cond_6

    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 162
    :cond_6
    :goto_2
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v3

    cmpg-float v3, v3, v2

    if-nez v3, :cond_7

    goto :goto_4

    .line 163
    :cond_7
    sget-object v3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v4}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v3

    cmpg-float v3, v3, v2

    if-nez v3, :cond_9

    .line 168
    sget-object v3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v4}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v3

    cmpg-float v3, v3, v2

    if-nez v3, :cond_8

    goto :goto_4

    .line 169
    :cond_8
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullRight-0a9Yr6o(JJ)F

    move-result p1

    .line 170
    sget-object p2, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {p2, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpg-float p2, p2, v2

    if-nez p2, :cond_a

    iget-object p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_3

    .line 164
    :cond_9
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullLeft-0a9Yr6o(JJ)F

    move-result p1

    .line 165
    sget-object p2, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {p2, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpg-float p2, p2, v2

    if-nez p2, :cond_a

    iget-object p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_a
    :goto_3
    move v2, p1

    .line 175
    :goto_4
    invoke-static {v2, p3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p1

    .line 176
    sget-object p3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll()V

    :cond_b
    return-wide p1
.end method

.method public final drawOverscroll(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 9

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 356
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 608
    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->redrawSignal:Landroidx/compose/runtime/MutableState;

    .line 360
    invoke-interface {v1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 361
    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 367
    sget-object v1, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffectNegation:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 368
    invoke-direct {p0, p1, v1, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->drawRight(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 369
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    :goto_0
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 371
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 372
    invoke-direct {p0, p1, v1, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->drawLeft(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v1

    .line 373
    sget-object v4, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffectNegation:Landroid/widget/EdgeEffect;

    sget-object v6, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v7, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v7}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v6

    invoke-virtual {v4, v5, v6, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F

    goto :goto_1

    :cond_2
    move v1, v3

    .line 375
    :goto_1
    sget-object v4, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffectNegation:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v5}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v4

    cmpg-float v4, v4, v2

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 376
    invoke-direct {p0, p1, v4, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->drawBottom(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 377
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->finish()V

    :goto_2
    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 379
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_6

    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 380
    invoke-direct {p0, p1, v4, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->drawTop(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_4

    :cond_5
    :goto_3
    move v1, v5

    .line 381
    :goto_4
    sget-object v4, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v6, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffectNegation:Landroid/widget/EdgeEffect;

    sget-object v7, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v8, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v8}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v7

    invoke-virtual {v4, v6, v7, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F

    .line 383
    :cond_6
    sget-object v4, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v6, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffectNegation:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v6}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v4

    cmpg-float v4, v4, v2

    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 384
    invoke-direct {p0, p1, v4, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->drawLeft(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 385
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->finish()V

    :goto_5
    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 387
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 388
    invoke-direct {p0, p1, v4, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->drawRight(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v4

    if-nez v4, :cond_9

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    move v1, v3

    goto :goto_7

    :cond_9
    :goto_6
    move v1, v5

    .line 389
    :goto_7
    sget-object v4, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v6, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffectNegation:Landroid/widget/EdgeEffect;

    sget-object v7, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v8, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v8}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v7

    invoke-virtual {v4, v6, v7, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F

    .line 391
    :cond_a
    sget-object v4, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v6, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v6}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v4

    cmpg-float v4, v4, v2

    if-nez v4, :cond_b

    goto :goto_8

    :cond_b
    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 392
    invoke-direct {p0, p1, v4, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->drawTop(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 393
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->finish()V

    :goto_8
    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 395
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 396
    invoke-direct {p0, p1, v4, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->drawBottom(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result p1

    if-nez p1, :cond_c

    if-eqz v1, :cond_d

    :cond_c
    move v3, v5

    .line 397
    :cond_d
    sget-object p1, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    sget-object v1, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, v4}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v1

    invoke-virtual {p1, v0, v1, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F

    move v1, v3

    :cond_e
    if-eqz v1, :cond_f

    .line 399
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll()V

    :cond_f
    return-void
.end method

.method public getEffectModifier()Landroidx/compose/ui/Modifier;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->effectModifier:Landroidx/compose/ui/Modifier;

    return-object v0
.end method

.method public final getInvalidationEnabled$foundation_release()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidationEnabled:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->isEnabledState:Landroidx/compose/runtime/MutableState;

    .line 257
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isInProgress()Z
    .locals 6

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->allEffects:Ljava/util/List;

    .line 602
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 603
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 600
    check-cast v4, Landroid/widget/EdgeEffect;

    .line 272
    sget-object v5, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    invoke-virtual {v5, v4}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    const/4 v5, 0x1

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    xor-int/2addr v4, v5

    if-eqz v4, :cond_1

    move v2, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v2
.end method

.method public setEnabled(Z)V
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->isEnabled:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->isEnabledState:Landroidx/compose/runtime/MutableState;

    .line 261
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iput-boolean p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->isEnabled:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->scrollCycleInProgress:Z

    .line 266
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->animateToRelease()V

    :cond_1
    return-void
.end method

.method public final setInvalidationEnabled$foundation_release(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidationEnabled:Z

    return-void
.end method
