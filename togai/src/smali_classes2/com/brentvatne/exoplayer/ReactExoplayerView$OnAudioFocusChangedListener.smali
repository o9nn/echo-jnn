.class Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;
.super Ljava/lang/Object;
.source "ReactExoplayerView.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brentvatne/exoplayer/ReactExoplayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnAudioFocusChangedListener"
.end annotation


# instance fields
.field private final themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

.field private final view:Lcom/brentvatne/exoplayer/ReactExoplayerView;


# direct methods
.method public static synthetic $r8$lambda$Uw9jEIe2doxzKDq6Fp0gNpGAuc8(Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;->lambda$onAudioFocusChange$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$vHzcj5mFMfMOpu9ijNKczrCJ7PM(Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;->lambda$onAudioFocusChange$1()V

    return-void
.end method

.method private constructor <init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 0

    .line 1168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;->view:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    return-void
.end method

.method synthetic constructor <init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/facebook/react/uimanager/ThemedReactContext;)V

    return-void
.end method

.method private synthetic lambda$onAudioFocusChange$0()V
    .locals 3

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;->view:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    .line 1200
    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->-$$Nest$fgetplayer(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;->view:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->-$$Nest$fgetaudioVolume(Lcom/brentvatne/exoplayer/ReactExoplayerView;)F

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setVolume(F)V

    return-void
.end method

.method private synthetic lambda$onAudioFocusChange$1()V
    .locals 3

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;->view:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    .line 1207
    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->-$$Nest$fgetplayer(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;->view:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->-$$Nest$fgetaudioVolume(Lcom/brentvatne/exoplayer/ReactExoplayerView;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setVolume(F)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    const/4 v0, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;->view:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    .line 1187
    invoke-static {v0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->-$$Nest$fputhasAudioFocus(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;->view:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    .line 1188
    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->-$$Nest$fgeteventEmitter(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/brentvatne/common/react/VideoEventEmitter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/brentvatne/common/react/VideoEventEmitter;->audioFocusChanged(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;->view:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    .line 1177
    invoke-static {v0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->-$$Nest$fputhasAudioFocus(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;->view:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    .line 1178
    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->-$$Nest$fgeteventEmitter(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/brentvatne/common/react/VideoEventEmitter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/brentvatne/common/react/VideoEventEmitter;->audioFocusChanged(Z)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;->view:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    .line 1180
    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->-$$Nest$mpausePlayback(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;->view:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    .line 1181
    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->-$$Nest$fgetaudioManager(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;->view:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    .line 1184
    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->-$$Nest$fgeteventEmitter(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/brentvatne/common/react/VideoEventEmitter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/brentvatne/common/react/VideoEventEmitter;->audioFocusChanged(Z)V

    :goto_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 1194
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;->view:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    .line 1195
    invoke-static {v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->-$$Nest$fgetplayer(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    const/4 v1, -0x3

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;->view:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    .line 1198
    invoke-static {p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->-$$Nest$fgetmuted(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1199
    new-instance p1, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener$$ExternalSyntheticLambda0;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;)V

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;->view:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    .line 1205
    invoke-static {p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->-$$Nest$fgetmuted(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1206
    new-instance p1, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener$$ExternalSyntheticLambda1;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;)V

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void
.end method
