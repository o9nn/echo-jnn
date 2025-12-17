.class public final Landroidx/compose/foundation/gestures/ContentInViewModifier;
.super Ljava/lang/Object;
.source "ContentInViewModifier.kt"

# interfaces
.implements Landroidx/compose/foundation/relocation/BringIntoViewResponder;
.implements Landroidx/compose/ui/layout/OnRemeasuredModifier;
.implements Landroidx/compose/ui/layout/OnPlacedModifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/ContentInViewModifier$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContentInViewModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentInViewModifier.kt\nandroidx/compose/foundation/gestures/ContentInViewModifier\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,270:1\n76#2:271\n102#2,2:272\n1#3:274\n*S KotlinDebug\n*F\n+ 1 ContentInViewModifier.kt\nandroidx/compose/foundation/gestures/ContentInViewModifier\n*L\n59#1:271\n59#1:272,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ!\u0010\"\u001a\u00020#2\u000e\u0010$\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120%H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010&J\u0010\u0010\'\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u0012H\u0016J%\u0010(\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\u00122\u0006\u0010*\u001a\u00020!H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008+\u0010,J\u0010\u0010-\u001a\u00020#2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001d\u0010.\u001a\u00020#2\u0006\u0010/\u001a\u00020!H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u00080\u00101J%\u00102\u001a\u00020#2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020!H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u00083\u00104J!\u00105\u001a\u00020#2\u0006\u00106\u001a\u00020\u00122\u0006\u00107\u001a\u00020\u0012H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00108J \u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020:2\u0006\u0010=\u001a\u00020:H\u0002R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R/\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00128B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001c\u001a\u00020\u001d\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0019\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006>"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/ContentInViewModifier;",
        "Landroidx/compose/foundation/relocation/BringIntoViewResponder;",
        "Landroidx/compose/ui/layout/OnRemeasuredModifier;",
        "Landroidx/compose/ui/layout/OnPlacedModifier;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "scrollableState",
        "Landroidx/compose/foundation/gestures/ScrollableState;",
        "reverseDirection",
        "",
        "(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Z)V",
        "coordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "focusAnimationJob",
        "Lkotlinx/coroutines/Job;",
        "<set-?>",
        "Landroidx/compose/ui/geometry/Rect;",
        "focusTargetBounds",
        "getFocusTargetBounds",
        "()Landroidx/compose/ui/geometry/Rect;",
        "setFocusTargetBounds",
        "(Landroidx/compose/ui/geometry/Rect;)V",
        "focusTargetBounds$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "focusedChild",
        "focusedChildBeingAnimated",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "getModifier",
        "()Landroidx/compose/ui/Modifier;",
        "oldSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "bringChildIntoView",
        "",
        "localRect",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "calculateRectForParent",
        "computeDestination",
        "childBounds",
        "containerSize",
        "computeDestination-O0kMr_c",
        "(Landroidx/compose/ui/geometry/Rect;J)Landroidx/compose/ui/geometry/Rect;",
        "onPlaced",
        "onRemeasured",
        "size",
        "onRemeasured-ozmzZPI",
        "(J)V",
        "onSizeChanged",
        "onSizeChanged-O0kMr_c",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;J)V",
        "performBringIntoView",
        "source",
        "destination",
        "(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "relocationDistance",
        "",
        "leadingEdge",
        "trailingEdge",
        "parentSize",
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
.field private coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

.field private focusAnimationJob:Lkotlinx/coroutines/Job;

.field private final focusTargetBounds$delegate:Landroidx/compose/runtime/MutableState;

.field private focusedChild:Landroidx/compose/ui/layout/LayoutCoordinates;

.field private focusedChildBeingAnimated:Landroidx/compose/ui/layout/LayoutCoordinates;

.field private final modifier:Landroidx/compose/ui/Modifier;

.field private oldSize:Landroidx/compose/ui/unit/IntSize;

.field private final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private final reverseDirection:Z

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Z)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scrollableState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    iput-boolean p4, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->reverseDirection:Z

    const/4 p1, 0x0

    const/4 p2, 0x2

    .line 59
    invoke-static {p1, p1, p2, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->focusTargetBounds$delegate:Landroidx/compose/runtime/MutableState;

    .line 62
    move-object p1, p0

    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 63
    new-instance p2, Landroidx/compose/foundation/gestures/ContentInViewModifier$modifier$1;

    invoke-direct {p2, p0}, Landroidx/compose/foundation/gestures/ContentInViewModifier$modifier$1;-><init>(Landroidx/compose/foundation/gestures/ContentInViewModifier;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p2}, Landroidx/compose/foundation/FocusedBoundsKt;->onFocusedBoundsChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    .line 64
    move-object p2, p0

    check-cast p2, Landroidx/compose/foundation/relocation/BringIntoViewResponder;

    invoke-static {p1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderKt;->bringIntoViewResponder(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewResponder;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->modifier:Landroidx/compose/ui/Modifier;

    return-void
.end method

.method public static final synthetic access$getFocusAnimationJob$p(Landroidx/compose/foundation/gestures/ContentInViewModifier;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 45
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->focusAnimationJob:Lkotlinx/coroutines/Job;

    return-object p0
.end method

.method public static final synthetic access$performBringIntoView(Landroidx/compose/foundation/gestures/ContentInViewModifier;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->performBringIntoView(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setFocusAnimationJob$p(Landroidx/compose/foundation/gestures/ContentInViewModifier;Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 45
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->focusAnimationJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$setFocusTargetBounds(Landroidx/compose/foundation/gestures/ContentInViewModifier;Landroidx/compose/ui/geometry/Rect;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->setFocusTargetBounds(Landroidx/compose/ui/geometry/Rect;)V

    return-void
.end method

.method public static final synthetic access$setFocusedChild$p(Landroidx/compose/foundation/gestures/ContentInViewModifier;Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0

    .line 45
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->focusedChild:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-void
.end method

.method public static final synthetic access$setFocusedChildBeingAnimated$p(Landroidx/compose/foundation/gestures/ContentInViewModifier;Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0

    .line 45
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->focusedChildBeingAnimated:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-void
.end method

.method private final computeDestination-O0kMr_c(Landroidx/compose/ui/geometry/Rect;J)Landroidx/compose/ui/geometry/Rect;
    .locals 3

    .line 213
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide p2

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 214
    sget-object v1, Landroidx/compose/foundation/gestures/ContentInViewModifier$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/Orientation;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 227
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    .line 228
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v1

    .line 229
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result p2

    .line 226
    invoke-direct {p0, v0, v1, p2}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->relocationDistance(FFF)F

    move-result p2

    neg-float p2, p2

    .line 225
    invoke-virtual {p1, p2, v2}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 219
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    .line 220
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v1

    .line 221
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p2

    .line 218
    invoke-direct {p0, v0, v1, p2}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->relocationDistance(FFF)F

    move-result p2

    neg-float p2, p2

    .line 216
    invoke-virtual {p1, v2, p2}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final getFocusTargetBounds()Landroidx/compose/ui/geometry/Rect;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->focusTargetBounds$delegate:Landroidx/compose/runtime/MutableState;

    .line 59
    check-cast v0, Landroidx/compose/runtime/State;

    .line 271
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Rect;

    return-object v0
.end method

.method private final onSizeChanged-O0kMr_c(Landroidx/compose/ui/layout/LayoutCoordinates;J)V
    .locals 9

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 124
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v1, :cond_0

    .line 125
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v0

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v1

    if-ge v0, v1, :cond_7

    goto :goto_0

    .line 127
    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v0

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v1

    if-ge v0, v1, :cond_7

    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->focusedChild:Landroidx/compose/ui/layout/LayoutCoordinates;

    if-eqz v0, :cond_7

    .line 133
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    .line 134
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    iget-object v3, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->focusedChildBeingAnimated:Landroidx/compose/ui/layout/LayoutCoordinates;

    if-ne v0, v3, :cond_4

    .line 147
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->getFocusTargetBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Required value was null."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    move-object v3, v1

    .line 152
    :goto_2
    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v4

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide p2

    invoke-static {v4, v5, p2, p3}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object p2

    .line 153
    invoke-virtual {p2, v3}, Landroidx/compose/ui/geometry/Rect;->overlaps(Landroidx/compose/ui/geometry/Rect;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    .line 159
    :cond_5
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide p1

    invoke-direct {p0, v3, p1, p2}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->computeDestination-O0kMr_c(Landroidx/compose/ui/geometry/Rect;J)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    .line 160
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    :cond_6
    iput-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->focusedChildBeingAnimated:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 170
    invoke-direct {p0, p1}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->setFocusTargetBounds(Landroidx/compose/ui/geometry/Rect;)V

    iget-object v3, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 171
    sget-object p2, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    move-object v4, p2

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    const/4 v5, 0x0

    new-instance p2, Landroidx/compose/foundation/gestures/ContentInViewModifier$onSizeChanged$1;

    invoke-direct {p2, p0, v1, p1, v2}, Landroidx/compose/foundation/gestures/ContentInViewModifier$onSizeChanged$1;-><init>(Landroidx/compose/foundation/gestures/ContentInViewModifier;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)V

    move-object v6, p2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_7
    :goto_3
    return-void
.end method

.method private final performBringIntoView(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/geometry/Rect;",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 240
    sget-object v1, Landroidx/compose/foundation/gestures/ContentInViewModifier$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/Orientation;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 242
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result p2

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 241
    :cond_1
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result p2

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result p1

    :goto_0
    sub-float/2addr p2, p1

    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->reverseDirection:Z

    if-eqz p1, :cond_2

    neg-float p2, p2

    :cond_2
    move v1, p2

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v3, p3

    .line 248
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/ScrollExtensionsKt;->animateScrollBy$default(Landroidx/compose/foundation/gestures/ScrollableState;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_3

    return-object p1

    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final relocationDistance(FFF)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    cmpg-float v1, p2, p3

    if-gtz v1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    cmpl-float v1, p2, p3

    if-lez v1, :cond_1

    goto :goto_0

    .line 267
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, v0, p3

    if-gez p3, :cond_2

    goto :goto_1

    :cond_2
    move p1, p2

    :goto_1
    return p1
.end method

.method private final setFocusTargetBounds(Landroidx/compose/ui/geometry/Rect;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->focusTargetBounds$delegate:Landroidx/compose/runtime/MutableState;

    .line 272
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bringChildIntoView(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 92
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/geometry/Rect;

    if-nez p1, :cond_0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->calculateRectForParent(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 93
    invoke-direct {p0, p1, v0, p2}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->performBringIntoView(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public calculateRectForParent(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;
    .locals 2

    const-string v0, "localRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->oldSize:Landroidx/compose/ui/unit/IntSize;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v0

    .line 86
    invoke-direct {p0, p1, v0, v1}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->computeDestination-O0kMr_c(Landroidx/compose/ui/geometry/Rect;J)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    return-object p1

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Expected BringIntoViewRequester to not be used before parents are placed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getModifier()Landroidx/compose/ui/Modifier;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->modifier:Landroidx/compose/ui/Modifier;

    return-object v0
.end method

.method public onPlaced(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 1

    const-string v0, "coordinates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-void
.end method

.method public onRemeasured-ozmzZPI(J)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->oldSize:Landroidx/compose/ui/unit/IntSize;

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 72
    invoke-virtual {v1}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->onSizeChanged-O0kMr_c(Landroidx/compose/ui/layout/LayoutCoordinates;J)V

    .line 74
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->oldSize:Landroidx/compose/ui/unit/IntSize;

    return-void
.end method
