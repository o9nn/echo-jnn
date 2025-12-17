.class public final Lcom/brentvatne/exoplayer/ExoPlayerView;
.super Landroid/widget/FrameLayout;
.source "ExoPlayerView.java"

# interfaces
.implements Landroidx/media3/common/AdViewProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;
    }
.end annotation


# instance fields
.field private final adOverlayFrameLayout:Landroid/widget/FrameLayout;

.field private final componentListener:Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;

.field private final context:Landroid/content/Context;

.field private hideShutterView:Z

.field private final layout:Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

.field private final layoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private final measureAndLayout:Ljava/lang/Runnable;

.field private player:Landroidx/media3/exoplayer/ExoPlayer;

.field private final shutterView:Landroid/view/View;

.field private final subtitleLayout:Landroidx/media3/ui/SubtitleView;

.field private surfaceView:Landroid/view/View;

.field private useSecureView:Z

.field private useTextureView:Z


# direct methods
.method public static synthetic $r8$lambda$TlS3GRys71PaWc5zTkanqRHnHhg(Lcom/brentvatne/exoplayer/ExoPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetlayout(Lcom/brentvatne/exoplayer/ExoPlayerView;)Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layout:Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmeasureAndLayout(Lcom/brentvatne/exoplayer/ExoPlayerView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->measureAndLayout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshutterView(Lcom/brentvatne/exoplayer/ExoPlayerView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->shutterView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsubtitleLayout(Lcom/brentvatne/exoplayer/ExoPlayerView;)Landroidx/media3/ui/SubtitleView;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->subtitleLayout:Landroidx/media3/ui/SubtitleView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateForCurrentTrackSelections(Lcom/brentvatne/exoplayer/ExoPlayerView;Landroidx/media3/common/Tracks;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->updateForCurrentTrackSelections(Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/brentvatne/exoplayer/ExoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/brentvatne/exoplayer/ExoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->useTextureView:Z

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->useSecureView:Z

    iput-boolean p3, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->hideShutterView:Z

    .line 233
    new-instance v0, Lcom/brentvatne/exoplayer/ExoPlayerView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/brentvatne/exoplayer/ExoPlayerView$$ExternalSyntheticLambda0;-><init>(Lcom/brentvatne/exoplayer/ExoPlayerView;)V

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->measureAndLayout:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->context:Landroid/content/Context;

    .line 62
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 66
    new-instance v2, Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;-><init>(Lcom/brentvatne/exoplayer/ExoPlayerView;Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener-IA;)V

    iput-object v2, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->componentListener:Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;

    .line 68
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 71
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 72
    new-instance v1, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    invoke-direct {v1, p1}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layout:Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    .line 73
    invoke-virtual {v1, v2}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->shutterView:Landroid/view/View;

    .line 76
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x106000c

    .line 77
    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 79
    new-instance v4, Landroidx/media3/ui/SubtitleView;

    invoke-direct {v4, p1}, Landroidx/media3/ui/SubtitleView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->subtitleLayout:Landroidx/media3/ui/SubtitleView;

    .line 80
    invoke-virtual {v4, v0}, Landroidx/media3/ui/SubtitleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    invoke-virtual {v4}, Landroidx/media3/ui/SubtitleView;->setUserDefaultStyle()V

    .line 82
    invoke-virtual {v4}, Landroidx/media3/ui/SubtitleView;->setUserDefaultTextSize()V

    .line 84
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->updateSurfaceView()V

    .line 86
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    .line 88
    invoke-virtual {v1, v3, p2, v0}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x2

    .line 89
    invoke-virtual {v1, v5, p1, v0}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 91
    invoke-virtual {p0, v1, p3, v2}, Lcom/brentvatne/exoplayer/ExoPlayerView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 92
    invoke-virtual {p0, v4, p2, v0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    return-void
.end method

.method private clearVideoView()V
    .locals 2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->surfaceView:Landroid/view/View;

    .line 96
    instance-of v1, v0, Landroid/view/TextureView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 97
    check-cast v0, Landroid/view/TextureView;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/ExoPlayer;->clearVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_0

    .line 98
    :cond_0
    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 99
    check-cast v0, Landroid/view/SurfaceView;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/ExoPlayer;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 4

    .line 235
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 236
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->getHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 234
    invoke-virtual {p0, v0, v1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->measure(II)V

    .line 237
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/brentvatne/exoplayer/ExoPlayerView;->layout(IIII)V

    return-void
.end method

.method private setVideoView()V
    .locals 2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->surfaceView:Landroid/view/View;

    .line 104
    instance-of v1, v0, Landroid/view/TextureView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 105
    check-cast v0, Landroid/view/TextureView;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/ExoPlayer;->setVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_0

    .line 106
    :cond_0
    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 107
    check-cast v0, Landroid/view/SurfaceView;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/ExoPlayer;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateForCurrentTrackSelections(Landroidx/media3/common/Tracks;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 244
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Tracks$Group;

    .line 246
    invoke-virtual {v0}, Landroidx/media3/common/Tracks$Group;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget v2, v0, Landroidx/media3/common/Tracks$Group;->length:I

    if-lez v2, :cond_1

    .line 248
    invoke-virtual {v0, v1}, Landroidx/media3/common/Tracks$Group;->getTrackFormat(I)Landroidx/media3/common/Format;

    move-result-object p1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layout:Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    .line 251
    iget v1, p1, Landroidx/media3/common/Format;->height:I

    if-nez v1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    iget v1, p1, Landroidx/media3/common/Format;->width:I

    int-to-float v1, v1

    iget v2, p1, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    mul-float/2addr v1, v2

    iget p1, p1, Landroidx/media3/common/Format;->height:I

    int-to-float p1, p1

    div-float p1, v1, p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->setAspectRatio(F)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->shutterView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->hideShutterView:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    .line 256
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateShutterViewVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->shutterView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->hideShutterView:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 163
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateSurfaceView()V
    .locals 4

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->useTextureView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->useSecureView:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    new-instance v0, Landroid/view/TextureView;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 147
    move-object v2, v0

    check-cast v2, Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOpaque(Z)V

    goto :goto_1

    .line 140
    :cond_1
    :goto_0
    new-instance v0, Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iget-boolean v2, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->useSecureView:Z

    if-eqz v2, :cond_2

    .line 142
    move-object v2, v0

    check-cast v2, Landroid/view/SurfaceView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setSecure(Z)V

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 149
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->surfaceView:Landroid/view/View;

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layout:Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    .line 152
    invoke-virtual {v0, v1}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layout:Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    .line 153
    invoke-virtual {v0, v1}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->removeViewAt(I)V

    :cond_3
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layout:Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->surfaceView:Landroid/view/View;

    iget-object v3, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 155
    invoke-virtual {v0, v2, v1, v3}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_4

    .line 158
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setVideoView()V

    :cond_4
    return-void
.end method


# virtual methods
.method public getAdViewGroup()Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    const-string v1, "exo_ad_overlay must be present for ad playback"

    .line 176
    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public invalidateAspectRatio()V
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layout:Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    .line 261
    invoke-virtual {v0}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->invalidateAspectRatio()V

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requestLayout()V
    .locals 1

    .line 168
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->measureAndLayout:Ljava/lang/Runnable;

    .line 169
    invoke-virtual {p0, v0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setHideShutterView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->hideShutterView:Z

    .line 230
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->updateShutterViewVisibility()V

    return-void
.end method

.method public setPlayer(Landroidx/media3/exoplayer/ExoPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->componentListener:Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;

    .line 191
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->removeListener(Landroidx/media3/common/Player$Listener;)V

    .line 192
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->clearVideoView()V

    :cond_1
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->shutterView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->hideShutterView:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 195
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_3

    .line 197
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setVideoView()V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->componentListener:Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;

    .line 198
    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer;->addListener(Landroidx/media3/common/Player$Listener;)V

    :cond_3
    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layout:Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    .line 208
    invoke-virtual {v0}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->getResizeMode()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layout:Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    .line 209
    invoke-virtual {v0, p1}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->setResizeMode(I)V

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->measureAndLayout:Ljava/lang/Runnable;

    .line 210
    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setShutterColor(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->shutterView:Landroid/view/View;

    .line 134
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setSubtitleStyle(Lcom/brentvatne/common/api/SubtitleStyle;)V
    .locals 5

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->subtitleLayout:Landroidx/media3/ui/SubtitleView;

    .line 117
    invoke-virtual {v0}, Landroidx/media3/ui/SubtitleView;->setUserDefaultStyle()V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->subtitleLayout:Landroidx/media3/ui/SubtitleView;

    .line 118
    invoke-virtual {v0}, Landroidx/media3/ui/SubtitleView;->setUserDefaultTextSize()V

    .line 120
    invoke-virtual {p1}, Lcom/brentvatne/common/api/SubtitleStyle;->getFontSize()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->subtitleLayout:Landroidx/media3/ui/SubtitleView;

    .line 121
    invoke-virtual {p1}, Lcom/brentvatne/common/api/SubtitleStyle;->getFontSize()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroidx/media3/ui/SubtitleView;->setFixedTextSize(IF)V

    :cond_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->subtitleLayout:Landroidx/media3/ui/SubtitleView;

    .line 123
    invoke-virtual {p1}, Lcom/brentvatne/common/api/SubtitleStyle;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Lcom/brentvatne/common/api/SubtitleStyle;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Lcom/brentvatne/common/api/SubtitleStyle;->getPaddingRight()I

    move-result v3

    invoke-virtual {p1}, Lcom/brentvatne/common/api/SubtitleStyle;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media3/ui/SubtitleView;->setPadding(IIII)V

    .line 124
    invoke-virtual {p1}, Lcom/brentvatne/common/api/SubtitleStyle;->getOpacity()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->subtitleLayout:Landroidx/media3/ui/SubtitleView;

    .line 125
    invoke-virtual {p1}, Lcom/brentvatne/common/api/SubtitleStyle;->getOpacity()F

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/media3/ui/SubtitleView;->setAlpha(F)V

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->subtitleLayout:Landroidx/media3/ui/SubtitleView;

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p1, v0}, Landroidx/media3/ui/SubtitleView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->subtitleLayout:Landroidx/media3/ui/SubtitleView;

    const/16 v0, 0x8

    .line 128
    invoke-virtual {p1, v0}, Landroidx/media3/ui/SubtitleView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setUseTextureView(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->useTextureView:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->useTextureView:Z

    .line 217
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->updateSurfaceView()V

    :cond_0
    return-void
.end method

.method public useSecureView(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->useSecureView:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->useSecureView:Z

    .line 224
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->updateSurfaceView()V

    :cond_0
    return-void
.end method
