.class Landroidx/appcompat/widget/ActionBarOverlayLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionBarOverlayLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$1;->this$0:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 113
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$1;->this$0:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v0, 0x0

    .line 122
    iput-object v0, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$1;->this$0:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$1;->this$0:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v0, 0x0

    .line 116
    iput-object v0, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$1;->this$0:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    return-void
.end method
