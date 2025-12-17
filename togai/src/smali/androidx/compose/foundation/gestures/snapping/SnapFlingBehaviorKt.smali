.class public final Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;
.super Ljava/lang/Object;
.source "SnapFlingBehavior.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapFlingBehavior.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapFlingBehavior.kt\nandroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,409:1\n76#2:410\n67#3,3:411\n66#3:414\n1057#4,6:415\n154#5:421\n*S KotlinDebug\n*F\n+ 1 SnapFlingBehavior.kt\nandroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt\n*L\n186#1:410\n188#1:411,3\n188#1:414\n188#1:415,6\n407#1:421\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a \u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0000\u001a\u0015\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000bH\u0007\u00a2\u0006\u0002\u0010\u0010\u001aK\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00130\u0012*\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00062\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00130\u00122\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0018H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019\u001aS\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00130\u0012*\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00130\u00122\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001dH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001e\u001aI\u0010\u001f\u001a\u00020 *\u00020\u00142\u0006\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u00062\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00130$2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010%\u001a\u0014\u0010&\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\'\u001a\u00020\u0006H\u0002\u001a(\u0010(\u001a\u0002H)\"\u000e\u0008\u0000\u0010)*\u0008\u0012\u0004\u0012\u0002H)0**\u0008\u0012\u0004\u0012\u0002H)0+H\u0082\u0002\u00a2\u0006\u0002\u0010,\u001a(\u0010-\u001a\u0002H)\"\u000e\u0008\u0000\u0010)*\u0008\u0012\u0004\u0012\u0002H)0**\u0008\u0012\u0004\u0012\u0002H)0+H\u0082\u0002\u00a2\u0006\u0002\u0010,\"\u0019\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0002\u0010\u0003\"\u000e\u0010\u0005\u001a\u00020\u0006X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0006X\u0080T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006."
    }
    d2 = {
        "MinFlingVelocityDp",
        "Landroidx/compose/ui/unit/Dp;",
        "getMinFlingVelocityDp",
        "()F",
        "F",
        "NoDistance",
        "",
        "NoVelocity",
        "findClosestOffset",
        "velocity",
        "snapLayoutInfoProvider",
        "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "rememberSnapFlingBehavior",
        "Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;",
        "(Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;",
        "animateDecay",
        "Landroidx/compose/animation/core/AnimationState;",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        "Landroidx/compose/foundation/gestures/ScrollScope;",
        "targetOffset",
        "animationState",
        "decayAnimationSpec",
        "Landroidx/compose/animation/core/DecayAnimationSpec;",
        "(Landroidx/compose/foundation/gestures/ScrollScope;FLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "animateSnap",
        "cancelOffset",
        "snapAnimationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "approach",
        "Landroidx/compose/foundation/gestures/snapping/ApproachStepResult;",
        "initialTargetOffset",
        "initialVelocity",
        "animation",
        "Landroidx/compose/foundation/gestures/snapping/ApproachAnimation;",
        "(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/foundation/gestures/snapping/ApproachAnimation;Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/ui/unit/Density;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "coerceToTarget",
        "target",
        "component1",
        "T",
        "",
        "Lkotlin/ranges/ClosedFloatingPointRange;",
        "(Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;",
        "component2",
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


# static fields
.field private static final MinFlingVelocityDp:F

.field public static final NoDistance:F

.field public static final NoVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x190

    int-to-float v0, v0

    .line 421
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->MinFlingVelocityDp:F

    return-void
.end method

.method public static final synthetic access$animateDecay(Landroidx/compose/foundation/gestures/ScrollScope;FLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->animateDecay(Landroidx/compose/foundation/gestures/ScrollScope;FLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$animateDecay$consumeDelta(Landroidx/compose/animation/core/AnimationScope;Landroidx/compose/foundation/gestures/ScrollScope;F)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->animateDecay$consumeDelta(Landroidx/compose/animation/core/AnimationScope;Landroidx/compose/foundation/gestures/ScrollScope;F)V

    return-void
.end method

.method public static final synthetic access$animateSnap(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->animateSnap(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$approach(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/foundation/gestures/snapping/ApproachAnimation;Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/ui/unit/Density;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->approach(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/foundation/gestures/snapping/ApproachAnimation;Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/ui/unit/Density;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$coerceToTarget(FF)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->coerceToTarget(FF)F

    move-result p0

    return p0
.end method

.method private static final animateDecay(Landroidx/compose/foundation/gestures/ScrollScope;FLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "F",
            "Landroidx/compose/animation/core/AnimationState<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/animation/core/AnimationState<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;

    invoke-direct {v0, p4}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 289
    iget v2, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;->L$0:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Landroidx/compose/animation/core/AnimationState;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 316
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 289
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 294
    new-instance p4, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {p4}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 303
    invoke-virtual {p2}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    xor-int/2addr v2, v3

    .line 301
    new-instance v4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$2;

    invoke-direct {v4, p1, p4, p0}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$2;-><init>(FLkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollScope;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    iput-object p2, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateDecay$1;->label:I

    invoke-static {p2, p3, v2, v4, v0}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateDecay(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    return-object p2
.end method

.method private static final animateDecay$consumeDelta(Landroidx/compose/animation/core/AnimationScope;Landroidx/compose/foundation/gestures/ScrollScope;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationScope<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "F)V"
        }
    .end annotation

    .line 297
    invoke-interface {p1, p2}, Landroidx/compose/foundation/gestures/ScrollScope;->scrollBy(F)F

    move-result p1

    sub-float/2addr p2, p1

    .line 298
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationScope;->cancelAnimation()V

    :cond_0
    return-void
.end method

.method private static final animateSnap(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "FF",
            "Landroidx/compose/animation/core/AnimationState<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/animation/core/AnimationState<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p5, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;->label:I

    sub-int/2addr p5, v2

    iput p5, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;

    invoke-direct {v0, p5}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p5, v6, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 323
    iget v1, v6, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget p0, v6, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;->F$0:F

    iget-object p1, v6, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;->L$0:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Landroidx/compose/animation/core/AnimationState;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p3

    goto :goto_2

    .line 348
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 323
    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 329
    new-instance p5, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {p5}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 330
    invoke-virtual {p3}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v7

    .line 332
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object p1

    .line 334
    invoke-virtual {p3}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    xor-int/lit8 v4, v1, 0x1

    .line 331
    new-instance v1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$2;

    invoke-direct {v1, p2, p5, p0}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$2;-><init>(FLkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollScope;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iput-object p3, v6, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;->L$0:Ljava/lang/Object;

    iput v7, v6, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;->F$0:F

    iput v2, v6, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$animateSnap$1;->label:I

    move-object v1, p3

    move-object v2, p1

    move-object v3, p4

    invoke-static/range {v1 .. v6}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateTo(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p3

    move p0, v7

    .line 347
    :goto_2
    invoke-virtual {v0}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1, p0}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->coerceToTarget(FF)F

    move-result v2

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1d

    const/4 v9, 0x0

    .line 348
    invoke-static/range {v0 .. v9}, Landroidx/compose/animation/core/AnimationStateKt;->copy$default(Landroidx/compose/animation/core/AnimationState;FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object p0

    return-object p0
.end method

.method private static final approach(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/foundation/gestures/snapping/ApproachAnimation;Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/ui/unit/Density;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "FF",
            "Landroidx/compose/foundation/gestures/snapping/ApproachAnimation<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;",
            "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;",
            "Landroidx/compose/ui/unit/Density;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/gestures/snapping/ApproachStepResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p6, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p6, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;->label:I

    sub-int/2addr p6, v2

    iput p6, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;

    invoke-direct {v0, p6}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p6, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 216
    iget v2, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;->L$1:Ljava/lang/Object;

    move-object p5, p0

    check-cast p5, Landroidx/compose/ui/unit/Density;

    iget-object p0, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;->L$0:Ljava/lang/Object;

    move-object p4, p0

    check-cast p4, Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 231
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 216
    :cond_2
    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 225
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p4, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;->L$0:Ljava/lang/Object;

    iput-object p5, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt$approach$1;->label:I

    invoke-interface {p3, p0, p1, p2, v0}, Landroidx/compose/foundation/gestures/snapping/ApproachAnimation;->approachAnimation(Landroidx/compose/foundation/gestures/ScrollScope;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p6

    if-ne p6, v1, :cond_3

    return-object v1

    .line 216
    :cond_3
    :goto_1
    check-cast p6, Landroidx/compose/animation/core/AnimationState;

    .line 228
    invoke-virtual {p6}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0, p4, p5}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->findClosestOffset(FLandroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/ui/unit/Density;)F

    move-result p0

    .line 231
    new-instance p1, Landroidx/compose/foundation/gestures/snapping/ApproachStepResult;

    invoke-direct {p1, p0, p6}, Landroidx/compose/foundation/gestures/snapping/ApproachStepResult;-><init>(FLandroidx/compose/animation/core/AnimationState;)V

    return-object p1
.end method

.method private static final coerceToTarget(FF)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 353
    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p0

    :goto_0
    return p0
.end method

.method private static final component1(Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-interface {p0}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method private static final component2(Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-interface {p0}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public static final findClosestOffset(FLandroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/ui/unit/Density;)F
    .locals 2

    const-string/jumbo v0, "snapLayoutInfoProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "density"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-interface {p1, p2}, Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;->calculateSnappingOffsetBounds(Landroidx/compose/ui/unit/Density;)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object p1

    .line 258
    invoke-static {p1}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->component1(Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-static {p1}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->component2(Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 262
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-nez v1, :cond_0

    .line 264
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_3

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v1

    if-nez v1, :cond_1

    :goto_0
    move p2, p1

    goto :goto_1

    :cond_1
    const/high16 p1, -0x40800000    # -1.0f

    cmpg-float p0, p0, p1

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move p2, v0

    .line 275
    :cond_3
    :goto_1
    invoke-static {p2}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->findClosestOffset$isValidDistance(F)Z

    move-result p0

    if-eqz p0, :cond_4

    move v0, p2

    :cond_4
    return v0
.end method

.method private static final findClosestOffset$isValidDistance(F)Z
    .locals 1

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpg-float v0, p0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpg-float p0, p0, v0

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final getMinFlingVelocityDp()F
    .locals 1

    sget v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->MinFlingVelocityDp:F

    return v0
.end method

.method public static final rememberSnapFlingBehavior(Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
    .locals 10
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    const-string/jumbo v0, "snapLayoutInfoProvider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x1c406e28

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberSnapFlingBehavior)185@7875L7,186@7945L26,187@7983L447:SnapFlingBehavior.kt#ppz6w6"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.gestures.snapping.rememberSnapFlingBehavior (SnapFlingBehavior.kt:182)"

    .line 185
    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 186
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p2

    check-cast p2, Landroidx/compose/runtime/CompositionLocal;

    const v0, 0x789c5f52

    const-string v1, "C:CompositionLocal.kt#9igjgp"

    .line 410
    invoke-static {p1, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 186
    move-object v5, p2

    check-cast v5, Landroidx/compose/ui/unit/Density;

    const/4 p2, 0x0

    .line 187
    invoke-static {p1, p2}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->rememberSplineBasedDecay(Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/DecayAnimationSpec;

    move-result-object v3

    const v0, 0x607fb4c4

    .line 188
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "C(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 411
    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 412
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 413
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 415
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1

    .line 416
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_2

    .line 193
    :cond_1
    new-instance v9, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 195
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getLinearEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p2, p2, v0, v1, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object p2

    check-cast p2, Landroidx/compose/animation/core/AnimationSpec;

    const/high16 v0, 0x43c80000    # 400.0f

    const/4 v1, 0x5

    const/4 v4, 0x0

    .line 197
    invoke-static {v4, v0, v2, v1, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/compose/animation/core/AnimationSpec;

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    .line 193
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/ui/unit/Density;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 418
    invoke-interface {p1, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v1, v9

    .line 414
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 188
    check-cast v1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method
