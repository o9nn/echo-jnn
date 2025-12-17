.class final Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;
.super Ljava/lang/Object;
.source "ExoPlayerView.java"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brentvatne/exoplayer/ExoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brentvatne/exoplayer/ExoPlayerView;


# direct methods
.method private constructor <init>(Lcom/brentvatne/exoplayer/ExoPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;->this$0:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brentvatne/exoplayer/ExoPlayerView;Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;-><init>(Lcom/brentvatne/exoplayer/ExoPlayerView;)V

    return-void
.end method


# virtual methods
.method public onCues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;->this$0:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 268
    invoke-static {v0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->-$$Nest$fgetsubtitleLayout(Lcom/brentvatne/exoplayer/ExoPlayerView;)Landroidx/media3/ui/SubtitleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;->this$0:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 289
    invoke-static {v0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->-$$Nest$fgetshutterView(Lcom/brentvatne/exoplayer/ExoPlayerView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onTracksChanged(Landroidx/media3/common/Tracks;)V
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;->this$0:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 294
    invoke-static {v0, p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->-$$Nest$mupdateForCurrentTrackSelections(Lcom/brentvatne/exoplayer/ExoPlayerView;Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 4

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;->this$0:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 273
    invoke-static {v0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->-$$Nest$fgetlayout(Lcom/brentvatne/exoplayer/ExoPlayerView;)Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->getAspectRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 274
    :goto_0
    iget v1, p1, Landroidx/media3/common/VideoSize;->height:I

    if-eqz v1, :cond_2

    iget v1, p1, Landroidx/media3/common/VideoSize;->width:I

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;->this$0:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 279
    invoke-static {v1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->-$$Nest$fgetlayout(Lcom/brentvatne/exoplayer/ExoPlayerView;)Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    move-result-object v1

    iget v2, p1, Landroidx/media3/common/VideoSize;->width:I

    int-to-float v2, v2

    iget v3, p1, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    mul-float/2addr v2, v3

    iget p1, p1, Landroidx/media3/common/VideoSize;->height:I

    int-to-float p1, p1

    div-float/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->setAspectRatio(F)V

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;->this$0:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 283
    invoke-static {p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->-$$Nest$fgetmeasureAndLayout(Lcom/brentvatne/exoplayer/ExoPlayerView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method
