.class Lcom/brentvatne/exoplayer/FullScreenPlayerView$KeepScreenOnUpdater;
.super Ljava/lang/Object;
.source "FullScreenPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brentvatne/exoplayer/FullScreenPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeepScreenOnUpdater"
.end annotation


# static fields
.field private static final UPDATE_KEEP_SCREEN_ON_FLAG_MS:J = 0xc8L


# instance fields
.field private final mFullscreenPlayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/brentvatne/exoplayer/FullScreenPlayerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/brentvatne/exoplayer/FullScreenPlayerView;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView$KeepScreenOnUpdater;->mFullscreenPlayer:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/FullScreenPlayerView$KeepScreenOnUpdater;->mFullscreenPlayer:Ljava/lang/ref/WeakReference;

    .line 42
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;

    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {v0}, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 46
    invoke-static {v0}, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->-$$Nest$fgetexoPlayerView(Lcom/brentvatne/exoplayer/FullScreenPlayerView;)Lcom/brentvatne/exoplayer/ExoPlayerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/brentvatne/exoplayer/ExoPlayerView;->isPlaying()Z

    move-result v2

    const/16 v3, 0x80

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 53
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->-$$Nest$fgetmKeepScreenOnHandler(Lcom/brentvatne/exoplayer/FullScreenPlayerView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Failed to flag FLAG_KEEP_SCREEN_ON on fullscreeen."

    const-string v2, "ExoPlayer Exception"

    .line 56
    invoke-static {v2, v1}, Lcom/brentvatne/common/toolbox/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/brentvatne/common/toolbox/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
