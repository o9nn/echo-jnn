.class public Lcom/brentvatne/exoplayer/FullScreenPlayerView;
.super Landroid/app/Dialog;
.source "FullScreenPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brentvatne/exoplayer/FullScreenPlayerView$KeepScreenOnUpdater;
    }
.end annotation


# instance fields
.field private final containerView:Landroid/widget/FrameLayout;

.field private final exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

.field private final mKeepScreenOnHandler:Landroid/os/Handler;

.field private final mKeepScreenOnUpdater:Ljava/lang/Runnable;

.field private final onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

.field private parent:Landroid/view/ViewGroup;

.field private final playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

.field private final reactExoplayerView:Lcom/brentvatne/exoplayer/ReactExoplayerView;


# direct methods
.method static bridge synthetic -$$Nest$fgetexoPlayerView(Lcom/brentvatne/exoplayer/FullScreenPlayerView;)Lcom/brentvatne/exoplayer/ExoPlayerView;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeepScreenOnHandler(Lcom/brentvatne/exoplayer/FullScreenPlayerView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->mKeepScreenOnHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/brentvatne/exoplayer/ExoPlayerView;Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroidx/media3/ui/LegacyPlayerControlView;Landroidx/activity/OnBackPressedCallback;)V
    .locals 1

    const v0, 0x103000a

    .line 63
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p4, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    iput-object p2, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    iput-object p3, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->reactExoplayerView:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    iput-object p5, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 68
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->containerView:Landroid/widget/FrameLayout;

    .line 69
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance p1, Lcom/brentvatne/exoplayer/FullScreenPlayerView$KeepScreenOnUpdater;

    invoke-direct {p1, p0}, Lcom/brentvatne/exoplayer/FullScreenPlayerView$KeepScreenOnUpdater;-><init>(Lcom/brentvatne/exoplayer/FullScreenPlayerView;)V

    iput-object p1, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->mKeepScreenOnUpdater:Ljava/lang/Runnable;

    .line 72
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->mKeepScreenOnHandler:Landroid/os/Handler;

    return-void
.end method

.method private generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 129
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 133
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .line 121
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->reactExoplayerView:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    .line 123
    invoke-virtual {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getPreventsDisplaySleepDuringVideoPlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->mKeepScreenOnHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->mKeepScreenOnUpdater:Ljava/lang/Runnable;

    .line 124
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 77
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 78
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedCallback;->handleOnBackPressed()V

    return-void
.end method

.method protected onStart()V
    .locals 3

    iget-object v0, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 83
    invoke-virtual {v0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->parent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->containerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 86
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    if-eqz v0, :cond_0

    .line 89
    sget v1, Lcom/brentvatne/react/R$id;->exo_fullscreen:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 90
    sget v1, Landroidx/media3/ui/R$drawable;->exo_icon_fullscreen_exit:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 91
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroidx/media3/ui/R$string;->exo_controls_fullscreen_exit_description:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->parent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->containerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 93
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 3

    iget-object v0, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->mKeepScreenOnHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->mKeepScreenOnUpdater:Ljava/lang/Runnable;

    .line 101
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->containerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->parent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 103
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    if-eqz v0, :cond_0

    .line 106
    sget v1, Lcom/brentvatne/react/R$id;->exo_fullscreen:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 107
    sget v1, Landroidx/media3/ui/R$drawable;->exo_icon_fullscreen_enter:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 108
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroidx/media3/ui/R$string;->exo_controls_fullscreen_enter_description:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->containerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->parent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 110
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->parent:Landroid/view/ViewGroup;

    .line 113
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->parent:Landroid/view/ViewGroup;

    .line 116
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method
