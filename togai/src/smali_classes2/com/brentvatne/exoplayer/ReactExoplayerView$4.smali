.class Lcom/brentvatne/exoplayer/ReactExoplayerView$4;
.super Ljava/lang/Object;
.source "ReactExoplayerView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brentvatne/exoplayer/ReactExoplayerView;->setupPlaybackService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;


# direct methods
.method constructor <init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "ReactExoplayerView"

    const-string v0, "Cloud not register ExoPlayer"

    .line 903
    invoke-static {p1, v0}, Lcom/brentvatne/common/toolbox/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    .line 882
    check-cast p2, Lcom/brentvatne/exoplayer/PlaybackServiceBinder;

    invoke-static {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->-$$Nest$fputplaybackServiceBinder(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/brentvatne/exoplayer/PlaybackServiceBinder;)V

    :try_start_0
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    .line 885
    invoke-static {p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->-$$Nest$fgetplaybackServiceBinder(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/brentvatne/exoplayer/PlaybackServiceBinder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brentvatne/exoplayer/PlaybackServiceBinder;->getService()Lcom/brentvatne/exoplayer/VideoPlaybackService;

    move-result-object p1

    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->-$$Nest$fgetplayer(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->-$$Nest$fgetthemedReactContext(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    .line 886
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 885
    invoke-virtual {p1, p2, v0}, Lcom/brentvatne/exoplayer/VideoPlaybackService;->registerPlayer(Landroidx/media3/exoplayer/ExoPlayer;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ReactExoplayerView"

    const-string p2, "Cloud not register ExoPlayer"

    .line 888
    invoke-static {p1, p2}, Lcom/brentvatne/common/toolbox/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    .line 895
    invoke-static {p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->-$$Nest$fgetplaybackServiceBinder(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/brentvatne/exoplayer/PlaybackServiceBinder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brentvatne/exoplayer/PlaybackServiceBinder;->getService()Lcom/brentvatne/exoplayer/VideoPlaybackService;

    move-result-object p1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->-$$Nest$fgetplayer(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brentvatne/exoplayer/VideoPlaybackService;->unregisterPlayer(Landroidx/media3/exoplayer/ExoPlayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    const/4 v0, 0x0

    .line 898
    invoke-static {p1, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->-$$Nest$fputplaybackServiceBinder(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/brentvatne/exoplayer/PlaybackServiceBinder;)V

    return-void
.end method
