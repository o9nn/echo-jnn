.class public final Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;
.super Ljava/lang/Object;
.source "ScreenAnimationDelegate.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;,
        Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$Companion;,
        Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$LifecycleState;,
        Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u00142\u00020\u0001:\u0003\u0013\u0014\u0015B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u0012\u001a\u00020\u000cH\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;",
        "Landroid/animation/Animator$AnimatorListener;",
        "wrapper",
        "Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;",
        "eventEmitter",
        "Lcom/swmansion/rnscreens/events/ScreenEventEmitter;",
        "animationType",
        "Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;",
        "(Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;Lcom/swmansion/rnscreens/events/ScreenEventEmitter;Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;)V",
        "currentState",
        "Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$LifecycleState;",
        "onAnimationCancel",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
        "onAnimationRepeat",
        "onAnimationStart",
        "progressState",
        "AnimationType",
        "Companion",
        "LifecycleState",
        "react-native-screens_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$Companion;

.field public static final TAG:Ljava/lang/String; = "ScreenEventDelegate"


# instance fields
.field private final animationType:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;

.field private currentState:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$LifecycleState;

.field private final eventEmitter:Lcom/swmansion/rnscreens/events/ScreenEventEmitter;

.field private final wrapper:Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;->Companion:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;Lcom/swmansion/rnscreens/events/ScreenEventEmitter;Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;)V
    .locals 1

    const-string v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;->wrapper:Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    iput-object p2, p0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;->eventEmitter:Lcom/swmansion/rnscreens/events/ScreenEventEmitter;

    iput-object p3, p0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;->animationType:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;

    .line 19
    sget-object p1, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$LifecycleState;->INITIALIZED:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$LifecycleState;

    iput-object p1, p0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;->currentState:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$LifecycleState;

    return-void
.end method

.method private final progressState()V
    .locals 2

    iget-object v0, p0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;->currentState:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$LifecycleState;

    .line 23
    sget-object v1, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$LifecycleState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 26
    sget-object v0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$LifecycleState;->END_DISPATCHED:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$LifecycleState;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 25
    :cond_1
    sget-object v0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$LifecycleState;->END_DISPATCHED:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$LifecycleState;

    goto :goto_0

    .line 24
    :cond_2
    sget-object v0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$LifecycleState;->START_DISPATCHED:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$LifecycleState;

    :goto_0
    iput-object v0, p0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;->currentState:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$LifecycleState;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;->currentState:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$LifecycleState;

    .line 53
    sget-object v1, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$LifecycleState;->START_DISPATCHED:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$LifecycleState;

    if-ne v0, v1, :cond_5

    .line 54
    invoke-direct {p0}, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;->progressState()V

    .line 55
    move-object v0, p0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;->animationType:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;

    .line 59
    sget-object v0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;->eventEmitter:Lcom/swmansion/rnscreens/events/ScreenEventEmitter;

    if-eqz p1, :cond_2

    .line 61
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/events/ScreenEventEmitter;->dispatchOnDisappear()Lkotlin/Unit;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;->eventEmitter:Lcom/swmansion/rnscreens/events/ScreenEventEmitter;

    if-eqz p1, :cond_2

    .line 60
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/events/ScreenEventEmitter;->dispatchOnAppear()Lkotlin/Unit;

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;->animationType:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;

    .line 64
    sget-object v1, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;->EXIT:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object p1, p0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;->eventEmitter:Lcom/swmansion/rnscreens/events/ScreenEventEmitter;

    if-eqz p1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    .line 65
    invoke-virtual {p1, v1, v0, v0}, Lcom/swmansion/rnscreens/events/ScreenEventEmitter;->dispatchTransitionProgress(FZZ)V

    :cond_4
    iget-object p1, p0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;->wrapper:Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    .line 71
    invoke-interface {p1}, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->endRemovalTransition()V

    :cond_5
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;->currentState:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$LifecycleState;

    .line 31
    sget-object v0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$LifecycleState;->INITIALIZED:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$LifecycleState;

    if-ne p1, v0, :cond_4

    .line 32
    invoke-direct {p0}, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;->progressState()V

    iget-object p1, p0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;->animationType:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;

    .line 38
    sget-object v0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;->eventEmitter:Lcom/swmansion/rnscreens/events/ScreenEventEmitter;

    if-eqz p1, :cond_2

    .line 40
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/events/ScreenEventEmitter;->dispatchOnWillDisappear()Lkotlin/Unit;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;->eventEmitter:Lcom/swmansion/rnscreens/events/ScreenEventEmitter;

    if-eqz p1, :cond_2

    .line 39
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/events/ScreenEventEmitter;->dispatchOnWillAppear()Lkotlin/Unit;

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;->animationType:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;

    .line 43
    sget-object v1, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;->EXIT:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object p1, p0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;->eventEmitter:Lcom/swmansion/rnscreens/events/ScreenEventEmitter;

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v1, v0, v0}, Lcom/swmansion/rnscreens/events/ScreenEventEmitter;->dispatchTransitionProgress(FZZ)V

    :cond_4
    return-void
.end method
