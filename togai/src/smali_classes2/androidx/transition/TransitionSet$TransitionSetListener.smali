.class Landroidx/transition/TransitionSet$TransitionSetListener;
.super Landroidx/transition/TransitionListenerAdapter;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/TransitionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionSetListener"
.end annotation


# instance fields
.field mTransitionSet:Landroidx/transition/TransitionSet;


# direct methods
.method constructor <init>(Landroidx/transition/TransitionSet;)V
    .locals 0

    .line 432
    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    iput-object p1, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 2

    iget-object v0, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    .line 446
    iget v1, v0, Landroidx/transition/TransitionSet;->mCurrentListeners:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroidx/transition/TransitionSet;->mCurrentListeners:I

    iget-object v0, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    .line 447
    iget v0, v0, Landroidx/transition/TransitionSet;->mCurrentListeners:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    const/4 v1, 0x0

    .line 449
    iput-boolean v1, v0, Landroidx/transition/TransitionSet;->mStarted:Z

    iget-object v0, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    .line 450
    invoke-virtual {v0}, Landroidx/transition/TransitionSet;->end()V

    .line 452
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .locals 1

    iget-object p1, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    .line 438
    iget-boolean p1, p1, Landroidx/transition/TransitionSet;->mStarted:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    .line 439
    invoke-virtual {p1}, Landroidx/transition/TransitionSet;->start()V

    iget-object p1, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    const/4 v0, 0x1

    .line 440
    iput-boolean v0, p1, Landroidx/transition/TransitionSet;->mStarted:Z

    :cond_0
    return-void
.end method
