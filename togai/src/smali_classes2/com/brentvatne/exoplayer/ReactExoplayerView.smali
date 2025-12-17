.class public Lcom/brentvatne/exoplayer/ReactExoplayerView;
.super Landroid/widget/FrameLayout;
.source "ReactExoplayerView.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;
.implements Landroidx/media3/common/Player$Listener;
.implements Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;
.implements Lcom/brentvatne/receiver/BecomingNoisyListener;
.implements Landroidx/media3/exoplayer/drm/DrmSessionEventListener;
.implements Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;
.implements Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;,
        Lcom/brentvatne/exoplayer/ReactExoplayerView$RNVLoadControl;
    }
.end annotation


# static fields
.field private static final DEFAULT_COOKIE_MANAGER:Ljava/net/CookieManager;

.field public static final DEFAULT_MAX_HEAP_ALLOCATION_PERCENT:D = 1.0

.field public static final DEFAULT_MIN_BUFFER_MEMORY_RESERVE:D = 0.0

.field private static final SHOW_PROGRESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ReactExoplayerView"

.field private static final TAG_EVENT_LOGGER:Ljava/lang/String; = "RNVExoplayer"


# instance fields
.field private adTagUrl:Landroid/net/Uri;

.field private adsLoader:Landroidx/media3/exoplayer/ima/ImaAdsLoader;

.field private final audioBecomingNoisyReceiver:Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;

.field private final audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final audioManager:Landroid/media/AudioManager;

.field private audioOutput:Lcom/brentvatne/exoplayer/AudioOutput;

.field private audioTrackType:Ljava/lang/String;

.field private audioTrackValue:Ljava/lang/String;

.field private audioVolume:F

.field private final bandwidthMeter:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

.field private bufferConfig:Lcom/brentvatne/common/api/BufferConfig;

.field private bufferingStrategy:Lcom/brentvatne/common/api/BufferingStrategy$BufferingStrategyEnum;

.field private final config:Lcom/brentvatne/exoplayer/ReactExoplayerConfig;

.field private contentStartTime:J

.field private controls:Z

.field private controlsConfig:Lcom/brentvatne/common/api/ControlsConfig;

.field private customMetadata:Landroidx/media3/common/MediaMetadata;

.field private debugEventLogger:Landroidx/media3/exoplayer/util/EventLogger;

.field private disableDisconnectError:Z

.field private disableFocus:Z

.field private drmLicenseHeader:[Ljava/lang/String;

.field private drmLicenseUrl:Ljava/lang/String;

.field private drmUUID:Ljava/util/UUID;

.field private enableDebug:Z

.field private final eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

.field private eventListener:Landroidx/media3/common/Player$Listener;

.field private exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

.field private focusable:Z

.field private fullScreenPlayerView:Lcom/brentvatne/exoplayer/FullScreenPlayerView;

.field private hasAudioFocus:Z

.field private hasDrmFailed:Z

.field private isBuffering:Z

.field private isFullscreen:Z

.field private isInBackground:Z

.field private isPaused:Z

.field private isUsingContentResolution:Z

.field private lastBufferDuration:J

.field private lastDuration:J

.field private lastPos:J

.field private loadVideoStarted:Z

.field private mProgressUpdateInterval:F

.field private mReportBandwidth:Z

.field private mainHandler:Landroid/os/Handler;

.field private mainRunnable:Ljava/lang/Runnable;

.field private maxBitRate:I

.field private mediaDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private minLoadRetryCount:I

.field private muted:Z

.field private playInBackground:Z

.field private playPauseControlContainer:Landroid/view/View;

.field private playbackServiceBinder:Lcom/brentvatne/exoplayer/PlaybackServiceBinder;

.field private playbackServiceConnection:Landroid/content/ServiceConnection;

.field private player:Landroidx/media3/exoplayer/ExoPlayer;

.field private playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

.field private playerNeedsSource:Z

.field private preventsDisplaySleepDuringVideoPlayback:Z

.field private final progressHandler:Landroid/os/Handler;

.field private rate:F

.field private repeat:Z

.field private resumePosition:J

.field private resumeWindow:I

.field private selectTrackWhenReady:Z

.field private showNotificationControls:Z

.field private source:Lcom/brentvatne/common/api/Source;

.field private textTrackType:Ljava/lang/String;

.field private textTrackValue:Ljava/lang/String;

.field private textTracks:Lcom/brentvatne/common/api/SideLoadedTextTrackList;

.field private final themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

.field private trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

.field private useCache:Z

.field private videoTrackType:Ljava/lang/String;

.field private videoTrackValue:Ljava/lang/String;

.field private viewHasDropped:Z


# direct methods
.method public static synthetic $r8$lambda$-qgu5PAYH99KdQSb0XaZX6Dau-c(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroidx/media3/common/MediaItem$AdsConfiguration;)Landroidx/media3/exoplayer/source/ads/AdsLoader;
    .locals 0

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$initializePlayerSource$10(Landroidx/media3/common/MediaItem$AdsConfiguration;)Landroidx/media3/exoplayer/source/ads/AdsLoader;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3bZXOgrWaH5kF1V6NN9ci1MSXTM(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/app/Activity;Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$initializePlayer$7(Landroid/app/Activity;Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5G7J65LC7YDvPLv-nEFpZlOF0vQ(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/view/Window;Landroidx/core/view/WindowInsetsControllerCompat;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$setFullscreen$15(Landroid/view/Window;Landroidx/core/view/WindowInsetsControllerCompat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CmLk1POlizDjARVrkea3Gsb1vzc(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$initializePlayer$6(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O1-KBtDSvmmXgOYEq1XAmhlOsOs(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroidx/media3/common/MediaItem$AdsConfiguration;)Landroidx/media3/exoplayer/source/ads/AdsLoader;
    .locals 0

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$initializePlayerCore$9(Landroidx/media3/common/MediaItem$AdsConfiguration;)Landroidx/media3/exoplayer/source/ads/AdsLoader;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TUi7vfxkhbIM3SWMVhu2BiGK-OU(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/view/Window;Landroidx/core/view/WindowInsetsControllerCompat;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$setFullscreen$14(Landroid/view/Window;Landroidx/core/view/WindowInsetsControllerCompat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VFsbCWXacmrOnIXVuf8TDhb5W6Y(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$initializePlayerControl$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$avL970y_ko6eJL5htu5nCwjckfw(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$initializePlayerControl$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cnwoinAEEdrMVBoBx1zRMHKDD90(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$initializePlayerControl$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f9wNCEwjgRqSsMxPmiKzBsg40tc(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$initializePlayer$8(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oFXyWcDVHvNDV-DycJnXH81MSV4(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$initializePlayerControl$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vlrJX5ZRkysl30-Kp1xSlW8CBu4(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$initializePlayerControl$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wnsnm7g0Xx8vorTWhwcnzTxphFQ(Lcom/brentvatne/exoplayer/ReactExoplayerView;JJIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$videoLoaded$13(JJIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x6K7lNB5UP4nR8h0kEVfqSo3iUA(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$initializePlayerControl$5(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetaudioManager(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaudioVolume(Lcom/brentvatne/exoplayer/ReactExoplayerView;)F
    .locals 0

    iget p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioVolume:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbufferConfig(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/brentvatne/common/api/BufferConfig;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bufferConfig:Lcom/brentvatne/common/api/BufferConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbufferingStrategy(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/brentvatne/common/api/BufferingStrategy$BufferingStrategyEnum;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bufferingStrategy:Lcom/brentvatne/common/api/BufferingStrategy$BufferingStrategyEnum;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteventEmitter(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/brentvatne/common/react/VideoEventEmitter;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteventListener(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Landroidx/media3/common/Player$Listener;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventListener:Landroidx/media3/common/Player$Listener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressUpdateInterval(Lcom/brentvatne/exoplayer/ReactExoplayerView;)F
    .locals 0

    iget p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mProgressUpdateInterval:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmuted(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->muted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetplayPauseControlContainer(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playPauseControlContainer:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplaybackServiceBinder(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/brentvatne/exoplayer/PlaybackServiceBinder;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playbackServiceBinder:Lcom/brentvatne/exoplayer/PlaybackServiceBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplayer(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Landroidx/media3/exoplayer/ExoPlayer;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplayerControlView(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Landroidx/media3/ui/LegacyPlayerControlView;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetthemedReactContext(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/facebook/react/uimanager/ThemedReactContext;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputhasAudioFocus(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->hasAudioFocus:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputplaybackServiceBinder(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/brentvatne/exoplayer/PlaybackServiceBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playbackServiceBinder:Lcom/brentvatne/exoplayer/PlaybackServiceBinder;

    return-void
.end method

.method static bridge synthetic -$$Nest$mexoplayerVideoTrackToGenericVideoTrack(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroidx/media3/common/Format;I)Lcom/brentvatne/common/api/VideoTrack;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoplayerVideoTrackToGenericVideoTrack(Landroidx/media3/common/Format;I)Lcom/brentvatne/common/api/VideoTrack;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misFormatSupported(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroidx/media3/common/Format;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isFormatSupported(Landroidx/media3/common/Format;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mpausePlayback(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->pausePlayback()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreLayout(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->reLayout(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateProgress(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateProgress()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 170
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    sput-object v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->DEFAULT_COOKIE_MANAGER:Ljava/net/CookieManager;

    .line 171
    sget-object v1, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    invoke-virtual {v0, v1}, Ljava/net/CookieManager;->setCookiePolicy(Ljava/net/CookiePolicy;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/brentvatne/exoplayer/ReactExoplayerConfig;)V
    .locals 5

    .line 305
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->debugEventLogger:Landroidx/media3/exoplayer/util/EventLogger;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->enableDebug:Z

    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->muted:Z

    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->hasAudioFocus:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->rate:F

    .line 209
    sget-object v3, Lcom/brentvatne/exoplayer/AudioOutput;->SPEAKER:Lcom/brentvatne/exoplayer/AudioOutput;

    iput-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioOutput:Lcom/brentvatne/exoplayer/AudioOutput;

    iput v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioVolume:F

    const/4 v2, 0x3

    iput v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->minLoadRetryCount:I

    .line 212
    new-instance v2, Lcom/brentvatne/common/api/BufferConfig;

    invoke-direct {v2}, Lcom/brentvatne/common/api/BufferConfig;-><init>()V

    iput-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bufferConfig:Lcom/brentvatne/common/api/BufferConfig;

    iput v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->maxBitRate:I

    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->hasDrmFailed:Z

    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isUsingContentResolution:Z

    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->selectTrackWhenReady:Z

    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->useCache:Z

    .line 220
    new-instance v2, Lcom/brentvatne/common/api/ControlsConfig;

    invoke-direct {v2}, Lcom/brentvatne/common/api/ControlsConfig;-><init>()V

    iput-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controlsConfig:Lcom/brentvatne/common/api/ControlsConfig;

    .line 223
    new-instance v2, Lcom/brentvatne/common/api/Source;

    invoke-direct {v2}, Lcom/brentvatne/common/api/Source;-><init>()V

    iput-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->focusable:Z

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->contentStartTime:J

    iput-boolean v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->preventsDisplaySleepDuringVideoPlayback:Z

    const/high16 v2, 0x437a0000    # 250.0f

    iput v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mProgressUpdateInterval:F

    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playInBackground:Z

    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mReportBandwidth:Z

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->drmUUID:Ljava/util/UUID;

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->drmLicenseUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->drmLicenseHeader:[Ljava/lang/String;

    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->showNotificationControls:Z

    iput-wide v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lastPos:J

    iput-wide v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lastBufferDuration:J

    iput-wide v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lastDuration:J

    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->viewHasDropped:Z

    .line 285
    new-instance v1, Lcom/brentvatne/exoplayer/ReactExoplayerView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView$1;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->progressHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 307
    new-instance v1, Lcom/brentvatne/common/react/VideoEventEmitter;

    invoke-direct {v1, p1}, Lcom/brentvatne/common/react/VideoEventEmitter;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    iput-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->config:Lcom/brentvatne/exoplayer/ReactExoplayerConfig;

    .line 309
    invoke-interface {p2}, Lcom/brentvatne/exoplayer/ReactExoplayerConfig;->getBandwidthMeter()Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    move-result-object p2

    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    .line 311
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->createViews()V

    const-string p2, "audio"

    .line 313
    invoke-virtual {p1, p2}, Lcom/facebook/react/uimanager/ThemedReactContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioManager:Landroid/media/AudioManager;

    .line 314
    invoke-virtual {p1, p0}, Lcom/facebook/react/uimanager/ThemedReactContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 315
    new-instance p2, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;

    invoke-direct {p2, p1}, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioBecomingNoisyReceiver:Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;

    .line 316
    new-instance p2, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;

    invoke-direct {p2, p0, p1, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener-IA;)V

    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method private addPlayerControl()V
    .locals 3

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    if-nez v0, :cond_0

    return-void

    .line 506
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 509
    invoke-virtual {v2, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 510
    invoke-virtual {p0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 512
    invoke-virtual {p0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->removeViewAt(I)V

    :cond_1
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    const/4 v2, 0x1

    .line 514
    invoke-virtual {p0, v1, v2, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 515
    invoke-direct {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->reLayout(Landroid/view/View;)V

    return-void
.end method

.method private applyModifiers()V
    .locals 1

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->repeat:Z

    .line 1811
    invoke-virtual {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setRepeatModifier(Z)V

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->muted:Z

    .line 1812
    invoke-virtual {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setMutedModifier(Z)V

    return-void
.end method

.method private buildDataSourceFactory(Z)Landroidx/media3/datasource/DataSource$Factory;
    .locals 2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    .line 1293
    invoke-virtual {v1}, Lcom/brentvatne/common/api/Source;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 1292
    invoke-static {v0, p1, v1}, Lcom/brentvatne/exoplayer/DataSourceUtil;->getDefaultDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;Ljava/util/Map;)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method private buildDrmSessionManager(Ljava/util/UUID;Ljava/lang/String;[Ljava/lang/String;)Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 939
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildDrmSessionManager(Ljava/util/UUID;Ljava/lang/String;[Ljava/lang/String;I)Landroidx/media3/exoplayer/drm/DrmSessionManager;

    move-result-object p1

    return-object p1
.end method

.method private buildDrmSessionManager(Ljava/util/UUID;Ljava/lang/String;[Ljava/lang/String;I)Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 943
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 947
    :cond_0
    :try_start_0
    new-instance v0, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;

    const/4 v1, 0x0

    .line 948
    invoke-direct {p0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildHttpDataSourceFactory(Z)Landroidx/media3/datasource/HttpDataSource$Factory;

    move-result-object v3

    invoke-direct {v0, p2, v3}, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;Landroidx/media3/datasource/DataSource$Factory;)V

    if-eqz p3, :cond_1

    move v3, v1

    .line 950
    :goto_0
    array-length v4, p3

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 951
    aget-object v4, p3, v3

    add-int/lit8 v5, v3, 0x1

    aget-object v5, p3, v5

    invoke-virtual {v0, v4, v5}, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;->setKeyRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 954
    :cond_1
    invoke-static {p1}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->newInstance(Ljava/util/UUID;)Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;

    move-result-object v3

    iget-boolean v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->hasDrmFailed:Z

    if-eqz v4, :cond_2

    const-string v4, "securityLevel"

    const-string v5, "L3"

    .line 957
    invoke-virtual {v3, v4, v5}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    :cond_2
    new-instance v4, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;

    invoke-direct {v4}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;-><init>()V

    new-instance v5, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda6;

    invoke-direct {v5, v3}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;)V

    .line 960
    invoke-virtual {v4, p1, v5}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->setUuidAndExoMediaDrmProvider(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/ExoMediaDrm$Provider;)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;

    move-result-object v3

    .line 961
    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->setKeyRequestParameters(Ljava/util/Map;)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;

    move-result-object v3

    .line 962
    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->setMultiSession(Z)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;

    move-result-object v1

    .line 963
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->build(Landroidx/media3/exoplayer/drm/MediaDrmCallback;)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    move-result-object p1
    :try_end_0
    .catch Landroidx/media3/exoplayer/drm/UnsupportedDrmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const/4 v1, 0x3

    if-ge p4, v1, :cond_3

    add-int/lit8 p4, p4, 0x1

    .line 970
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildDrmSessionManager(Ljava/util/UUID;Ljava/lang/String;[Ljava/lang/String;I)Landroidx/media3/exoplayer/drm/DrmSessionManager;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 973
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "3006"

    invoke-virtual {p1, p2, v0, p3}, Lcom/brentvatne/common/react/VideoEventEmitter;->error(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v2

    :catch_1
    move-exception p1

    .line 966
    throw p1
.end method

.method private buildHttpDataSourceFactory(Z)Landroidx/media3/datasource/HttpDataSource$Factory;
    .locals 2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    .line 1304
    invoke-virtual {v1}, Lcom/brentvatne/common/api/Source;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/brentvatne/exoplayer/DataSourceUtil;->getDefaultHttpDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;Ljava/util/Map;)Landroidx/media3/datasource/HttpDataSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method private buildMediaSource(Landroid/net/Uri;Ljava/lang/String;Landroidx/media3/exoplayer/drm/DrmSessionManager;JJ)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 6

    if-eqz p1, :cond_10

    const-string v0, "rtsp"

    .line 983
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    move p2, v1

    goto :goto_1

    .line 986
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 987
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    .line 986
    :goto_0
    invoke-static {p2}, Landroidx/media3/common/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result p2

    :goto_1
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->config:Lcom/brentvatne/exoplayer/ReactExoplayerConfig;

    iget-boolean v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->disableDisconnectError:Z

    .line 989
    invoke-interface {v0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerConfig;->setDisableDisconnectError(Z)V

    .line 991
    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 992
    invoke-virtual {v0, p1}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    .line 995
    invoke-virtual {v2}, Lcom/brentvatne/common/api/Source;->getMetadata()Lcom/brentvatne/common/api/Source$Metadata;

    move-result-object v2

    invoke-static {v2}, Lcom/brentvatne/exoplayer/ConfigurationUtils;->buildCustomMetadata(Lcom/brentvatne/common/api/Source$Metadata;)Landroidx/media3/common/MediaMetadata;

    move-result-object v2

    iput-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->customMetadata:Landroidx/media3/common/MediaMetadata;

    if-eqz v2, :cond_2

    .line 997
    invoke-virtual {v0, v2}, Landroidx/media3/common/MediaItem$Builder;->setMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaItem$Builder;

    :cond_2
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adTagUrl:Landroid/net/Uri;

    if-eqz v2, :cond_3

    .line 1001
    new-instance v2, Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;

    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adTagUrl:Landroid/net/Uri;

    invoke-direct {v2, v3}, Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;-><init>(Landroid/net/Uri;)V

    .line 1002
    invoke-virtual {v2}, Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$AdsConfiguration;

    move-result-object v2

    .line 1001
    invoke-virtual {v0, v2}, Landroidx/media3/common/MediaItem$Builder;->setAdsConfiguration(Landroidx/media3/common/MediaItem$AdsConfiguration;)Landroidx/media3/common/MediaItem$Builder;

    :cond_3
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bufferConfig:Lcom/brentvatne/common/api/BufferConfig;

    .line 1006
    invoke-static {v2}, Lcom/brentvatne/exoplayer/ConfigurationUtils;->getLiveConfiguration(Lcom/brentvatne/common/api/BufferConfig;)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v2

    .line 1007
    invoke-virtual {v2}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$LiveConfiguration;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/common/MediaItem$Builder;->setLiveConfiguration(Landroidx/media3/common/MediaItem$LiveConfiguration;)Landroidx/media3/common/MediaItem$Builder;

    .line 1011
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_4

    .line 1013
    new-instance v3, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda1;

    invoke-direct {v3, p3}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/drm/DrmSessionManager;)V

    goto :goto_2

    .line 1015
    :cond_4
    new-instance v3, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    invoke-direct {v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;-><init>()V

    :goto_2
    const/4 p3, 0x0

    if-eqz p2, :cond_c

    const/4 v4, 0x1

    if-eq p2, v4, :cond_b

    const/4 p3, 0x2

    if-eq p2, p3, :cond_a

    if-eq p2, v1, :cond_9

    const/4 p3, 0x4

    if-ne p2, p3, :cond_8

    const-string p2, "asset"

    .line 1052
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :try_start_0
    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 1054
    invoke-static {p2, p1}, Lcom/brentvatne/exoplayer/DataSourceUtil;->buildAssetDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;Landroid/net/Uri;)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object p2

    .line 1055
    new-instance p3, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    invoke-direct {p3, p2}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 1057
    :catch_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "cannot open input file"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    const-string p2, "file"

    .line 1059
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->useCache:Z

    if-nez p1, :cond_6

    goto :goto_3

    .line 1065
    :cond_6
    new-instance p3, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    sget-object p1, Lcom/brentvatne/exoplayer/RNVSimpleCache;->INSTANCE:Lcom/brentvatne/exoplayer/RNVSimpleCache;

    .line 1066
    invoke-direct {p0, v4}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildHttpDataSourceFactory(Z)Landroidx/media3/datasource/HttpDataSource$Factory;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/RNVSimpleCache;->getCacheFactory(Landroidx/media3/datasource/HttpDataSource$Factory;)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object p1

    invoke-direct {p3, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    goto :goto_5

    .line 1061
    :cond_7
    :goto_3
    new-instance p3, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-direct {p3, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    goto :goto_5

    .line 1080
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unsupported type: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const-string p1, "Exo Player Exception"

    const-string p2, "RTSP is not enabled!"

    .line 1073
    invoke-static {p1, p2}, Lcom/brentvatne/common/toolbox/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1047
    :cond_a
    new-instance p1, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    .line 1049
    invoke-virtual {p2}, Lcom/brentvatne/common/api/Source;->getTextTracksAllowChuncklessPreparation()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->setAllowChunklessPreparation(Z)Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    move-result-object p3

    goto :goto_5

    .line 1025
    :cond_b
    new-instance p1, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;

    new-instance p2, Landroidx/media3/exoplayer/smoothstreaming/DefaultSsChunkSource$Factory;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-direct {p2, v1}, Landroidx/media3/exoplayer/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    .line 1027
    invoke-direct {p0, p3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildDataSourceFactory(Z)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;-><init>(Landroidx/media3/exoplayer/smoothstreaming/SsChunkSource$Factory;Landroidx/media3/datasource/DataSource$Factory;)V

    goto :goto_4

    .line 1036
    :cond_c
    new-instance p1, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

    new-instance p2, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$Factory;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-direct {p2, v1}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    .line 1038
    invoke-direct {p0, p3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildDataSourceFactory(Z)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;-><init>(Landroidx/media3/exoplayer/dash/DashChunkSource$Factory;Landroidx/media3/datasource/DataSource$Factory;)V

    :goto_4
    move-object p3, p1

    .line 1084
    :goto_5
    invoke-virtual {v0, v2}, Landroidx/media3/common/MediaItem$Builder;->setStreamKeys(Ljava/util/List;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p1

    .line 1086
    invoke-interface {p3, v3}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p2

    iget-object p3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->config:Lcom/brentvatne/exoplayer/ReactExoplayerConfig;

    iget v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->minLoadRetryCount:I

    .line 1088
    invoke-interface {p3, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerConfig;->buildLoadErrorHandlingPolicy(I)Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    move-result-object p3

    .line 1087
    invoke-interface {p2, p3}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p2

    .line 1090
    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v1

    const-wide/16 p1, 0x0

    cmp-long p3, p4, p1

    const-wide/16 v2, 0x3e8

    if-ltz p3, :cond_d

    cmp-long v0, p6, p1

    if-ltz v0, :cond_d

    .line 1093
    new-instance p1, Landroidx/media3/exoplayer/source/ClippingMediaSource;

    mul-long p2, p4, v2

    mul-long v4, p6, v2

    move-object v0, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;JJ)V

    return-object p1

    :cond_d
    if-ltz p3, :cond_e

    .line 1095
    new-instance p1, Landroidx/media3/exoplayer/source/ClippingMediaSource;

    mul-long/2addr v2, p4

    const-wide/high16 v4, -0x8000000000000000L

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;JJ)V

    return-object p1

    :cond_e
    cmp-long p1, p6, p1

    if-ltz p1, :cond_f

    .line 1097
    new-instance p1, Landroidx/media3/exoplayer/source/ClippingMediaSource;

    const-wide/16 p2, 0x0

    mul-long v4, p6, v2

    move-object v0, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;JJ)V

    return-object p1

    :cond_f
    return-object v1

    .line 980
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid video uri"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private buildTextSource(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 1

    .line 1120
    new-instance v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;

    invoke-direct {v0, p2}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;-><init>(Landroid/net/Uri;)V

    .line 1121
    invoke-virtual {v0, p3}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->setMimeType(Ljava/lang/String;)Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;

    move-result-object p2

    .line 1122
    invoke-virtual {p2, p4}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;

    move-result-object p2

    const/4 p3, 0x1

    .line 1123
    invoke-virtual {p2, p3}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->setSelectionFlags(I)Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;

    move-result-object p2

    const/16 p3, 0x80

    .line 1124
    invoke-virtual {p2, p3}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->setRoleFlags(I)Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;

    move-result-object p2

    .line 1125
    invoke-virtual {p2, p1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;

    move-result-object p1

    .line 1126
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    move-result-object p1

    .line 1127
    new-instance p2, Landroidx/media3/exoplayer/source/SingleSampleMediaSource$Factory;

    iget-object p3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-direct {p2, p3}, Landroidx/media3/exoplayer/source/SingleSampleMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 1128
    invoke-virtual {p2, p1, p3, p4}, Landroidx/media3/exoplayer/source/SingleSampleMediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem$SubtitleConfiguration;J)Landroidx/media3/exoplayer/source/SingleSampleMediaSource;

    move-result-object p1

    return-object p1
.end method

.method private buildTextSources()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;"
        }
    .end annotation

    .line 1104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->textTracks:Lcom/brentvatne/common/api/SideLoadedTextTrackList;

    if-nez v1, :cond_0

    return-object v0

    .line 1109
    :cond_0
    invoke-virtual {v1}, Lcom/brentvatne/common/api/SideLoadedTextTrackList;->getTracks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brentvatne/common/api/SideLoadedTextTrack;

    .line 1110
    invoke-virtual {v2}, Lcom/brentvatne/common/api/SideLoadedTextTrack;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1111
    invoke-virtual {v2}, Lcom/brentvatne/common/api/SideLoadedTextTrack;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 1112
    invoke-virtual {v2}, Lcom/brentvatne/common/api/SideLoadedTextTrack;->getType()Ljava/lang/String;

    move-result-object v5

    .line 1113
    invoke-virtual {v2}, Lcom/brentvatne/common/api/SideLoadedTextTrack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 1110
    invoke-direct {p0, v3, v4, v5, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildTextSource(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v2

    .line 1114
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private changeAudioOutput(Lcom/brentvatne/exoplayer/AudioOutput;)V
    .locals 3

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_2

    .line 2075
    invoke-virtual {p1}, Lcom/brentvatne/exoplayer/AudioOutput;->getStreamType()I

    move-result v0

    .line 2076
    invoke-static {v0}, Landroidx/media3/common/util/Util;->getAudioUsageForStreamType(I)I

    move-result v1

    .line 2077
    invoke-static {v0}, Landroidx/media3/common/util/Util;->getAudioContentTypeForStreamType(I)I

    move-result v0

    .line 2078
    new-instance v2, Landroidx/media3/common/AudioAttributes$Builder;

    invoke-direct {v2}, Landroidx/media3/common/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v2, v1}, Landroidx/media3/common/AudioAttributes$Builder;->setUsage(I)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object v1

    .line 2079
    invoke-virtual {v1, v0}, Landroidx/media3/common/AudioAttributes$Builder;->setContentType(I)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object v0

    .line 2080
    invoke-virtual {v0}, Landroidx/media3/common/AudioAttributes$Builder;->build()Landroidx/media3/common/AudioAttributes;

    move-result-object v0

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v2, 0x0

    .line 2081
    invoke-interface {v1, v0, v2}, Landroidx/media3/exoplayer/ExoPlayer;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    const-string v1, "audio"

    .line 2082
    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2083
    sget-object v1, Lcom/brentvatne/exoplayer/AudioOutput;->SPEAKER:Lcom/brentvatne/exoplayer/AudioOutput;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    .line 2084
    :goto_1
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 2087
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :cond_2
    return-void
.end method

.method private cleanupPlaybackService()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playbackServiceBinder:Lcom/brentvatne/exoplayer/PlaybackServiceBinder;

    if-eqz v0, :cond_0

    .line 925
    invoke-virtual {v0}, Lcom/brentvatne/exoplayer/PlaybackServiceBinder;->getService()Lcom/brentvatne/exoplayer/VideoPlaybackService;

    move-result-object v0

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {v0, v1}, Lcom/brentvatne/exoplayer/VideoPlaybackService;->unregisterPlayer(Landroidx/media3/exoplayer/ExoPlayer;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playbackServiceBinder:Lcom/brentvatne/exoplayer/PlaybackServiceBinder;

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playbackServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 931
    invoke-virtual {v1, v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "ReactExoplayerView"

    const-string v1, "Cloud not cleanup playback service"

    .line 934
    invoke-static {v0, v1}, Lcom/brentvatne/common/toolbox/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private clearProgressMessageHandler()V
    .locals 2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->progressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 1383
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private clearResumePosition()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->resumeWindow:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->resumePosition:J

    return-void
.end method

.method private createViews()V
    .locals 3

    .line 330
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    sget-object v1, Lcom/brentvatne/exoplayer/ReactExoplayerView;->DEFAULT_COOKIE_MANAGER:Ljava/net/CookieManager;

    if-eq v0, v1, :cond_0

    .line 331
    invoke-static {v1}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 334
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 337
    new-instance v1, Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/brentvatne/exoplayer/ExoPlayerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 338
    invoke-virtual {v1, v0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    const/4 v2, 0x0

    .line 340
    invoke-virtual {p0, v1, v2, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    iget-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->focusable:Z

    .line 342
    invoke-virtual {v0, v1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setFocusable(Z)V

    .line 344
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private exoplayerTrackToGenericTrack(Landroidx/media3/common/Format;ILandroidx/media3/exoplayer/trackselection/TrackSelection;Landroidx/media3/common/TrackGroup;)Lcom/brentvatne/common/api/Track;
    .locals 1

    .line 1572
    new-instance v0, Lcom/brentvatne/common/api/Track;

    invoke-direct {v0}, Lcom/brentvatne/common/api/Track;-><init>()V

    .line 1573
    invoke-virtual {v0, p2}, Lcom/brentvatne/common/api/Track;->setIndex(I)V

    .line 1574
    iget-object p2, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object p2, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/brentvatne/common/api/Track;->setMimeType(Ljava/lang/String;)V

    .line 1575
    :cond_0
    iget-object p2, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-eqz p2, :cond_1

    iget-object p2, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/brentvatne/common/api/Track;->setLanguage(Ljava/lang/String;)V

    .line 1576
    :cond_1
    iget-object p2, p1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    if-eqz p2, :cond_2

    iget-object p1, p1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/brentvatne/common/api/Track;->setTitle(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    .line 1577
    invoke-static {p3, p4, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isTrackSelected(Landroidx/media3/exoplayer/trackselection/TrackSelection;Landroidx/media3/common/TrackGroup;I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/brentvatne/common/api/Track;->setSelected(Z)V

    return-object v0
.end method

.method private exoplayerVideoTrackToGenericVideoTrack(Landroidx/media3/common/Format;I)Lcom/brentvatne/common/api/VideoTrack;
    .locals 4

    .line 1465
    new-instance v0, Lcom/brentvatne/common/api/VideoTrack;

    invoke-direct {v0}, Lcom/brentvatne/common/api/VideoTrack;-><init>()V

    .line 1466
    iget v1, p1, Landroidx/media3/common/Format;->width:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget v1, p1, Landroidx/media3/common/Format;->width:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/brentvatne/common/api/VideoTrack;->setWidth(I)V

    .line 1467
    iget v1, p1, Landroidx/media3/common/Format;->height:I

    if-ne v1, v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    iget v1, p1, Landroidx/media3/common/Format;->height:I

    :goto_1
    invoke-virtual {v0, v1}, Lcom/brentvatne/common/api/VideoTrack;->setHeight(I)V

    .line 1468
    iget v1, p1, Landroidx/media3/common/Format;->bitrate:I

    if-ne v1, v3, :cond_2

    goto :goto_2

    :cond_2
    iget v2, p1, Landroidx/media3/common/Format;->bitrate:I

    :goto_2
    invoke-virtual {v0, v2}, Lcom/brentvatne/common/api/VideoTrack;->setBitrate(I)V

    .line 1469
    iget v1, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    invoke-virtual {v0, v1}, Lcom/brentvatne/common/api/VideoTrack;->setRotation(I)V

    .line 1470
    iget-object v1, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/brentvatne/common/api/VideoTrack;->setCodecs(Ljava/lang/String;)V

    .line 1471
    :cond_3
    iget-object v1, p1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    if-nez v1, :cond_4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    iget-object p1, p1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, p1}, Lcom/brentvatne/common/api/VideoTrack;->setTrackId(Ljava/lang/String;)V

    .line 1472
    invoke-virtual {v0, p2}, Lcom/brentvatne/common/api/VideoTrack;->setIndex(I)V

    return-object v0
.end method

.method private finishPlayerInitialization()V
    .locals 1

    .line 869
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayerControl()V

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controls:Z

    .line 870
    invoke-virtual {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setControls(Z)V

    .line 871
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->applyModifiers()V

    return-void
.end method

.method private getAudioTrackInfo()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/brentvatne/common/api/Track;",
            ">;"
        }
    .end annotation

    .line 1439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    if-nez v1, :cond_0

    return-object v0

    .line 1445
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v1

    const/4 v2, 0x1

    .line 1446
    invoke-virtual {p0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getTrackRendererIndex(I)I

    move-result v3

    if-eqz v1, :cond_3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    goto :goto_2

    .line 1450
    :cond_1
    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v1

    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 1451
    invoke-interface {v3}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentTrackSelections()Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;

    move-result-object v3

    .line 1452
    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;->get(I)Landroidx/media3/exoplayer/trackselection/TrackSelection;

    move-result-object v2

    const/4 v3, 0x0

    move v5, v3

    .line 1454
    :goto_0
    iget v6, v1, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v5, v6, :cond_3

    .line 1455
    invoke-virtual {v1, v5}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v6

    .line 1456
    invoke-virtual {v6, v3}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v7

    .line 1457
    invoke-direct {p0, v7, v5, v2, v6}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoplayerTrackToGenericTrack(Landroidx/media3/common/Format;ILandroidx/media3/exoplayer/trackselection/TrackSelection;Landroidx/media3/common/TrackGroup;)Lcom/brentvatne/common/api/Track;

    move-result-object v6

    .line 1458
    iget v8, v7, Landroidx/media3/common/Format;->bitrate:I

    if-ne v8, v4, :cond_2

    move v7, v3

    goto :goto_1

    :cond_2
    iget v7, v7, Landroidx/media3/common/Format;->bitrate:I

    :goto_1
    invoke-virtual {v6, v7}, Lcom/brentvatne/common/api/Track;->setBitrate(I)V

    .line 1459
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private getGroupIndexForDefaultLocale(Landroidx/media3/exoplayer/source/TrackGroupArray;)I
    .locals 6

    .line 2019
    iget v0, p1, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2024
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2025
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 2026
    :goto_0
    iget v4, p1, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v3, v4, :cond_3

    .line 2027
    invoke-virtual {p1, v3}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v4

    .line 2028
    iget-object v4, v4, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 2029
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method

.method private getTextTrackInfo()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/brentvatne/common/api/Track;",
            ">;"
        }
    .end annotation

    .line 1582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    if-nez v1, :cond_0

    return-object v0

    .line 1586
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v1

    const/4 v2, 0x3

    .line 1587
    invoke-virtual {p0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getTrackRendererIndex(I)I

    move-result v2

    if-eqz v1, :cond_2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 1591
    invoke-interface {v3}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentTrackSelections()Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;

    move-result-object v3

    const/4 v4, 0x2

    .line 1592
    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;->get(I)Landroidx/media3/exoplayer/trackselection/TrackSelection;

    move-result-object v3

    .line 1593
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v1

    const/4 v2, 0x0

    move v4, v2

    .line 1595
    :goto_0
    iget v5, v1, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v4, v5, :cond_2

    .line 1596
    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v5

    .line 1597
    invoke-virtual {v5, v2}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v6

    .line 1598
    invoke-direct {p0, v6, v4, v3, v5}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoplayerTrackToGenericTrack(Landroidx/media3/common/Format;ILandroidx/media3/exoplayer/trackselection/TrackSelection;Landroidx/media3/common/TrackGroup;)Lcom/brentvatne/common/api/Track;

    move-result-object v5

    .line 1599
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private getVideoTrackInfo()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/brentvatne/common/api/VideoTrack;",
            ">;"
        }
    .end annotation

    .line 1477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    if-nez v1, :cond_0

    return-object v0

    .line 1482
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v1

    const/4 v2, 0x2

    .line 1483
    invoke-virtual {p0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getTrackRendererIndex(I)I

    move-result v2

    if-eqz v1, :cond_4

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_2

    .line 1488
    :cond_1
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 1489
    :goto_0
    iget v4, v1, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v3, v4, :cond_4

    .line 1490
    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v4

    move v5, v2

    .line 1492
    :goto_1
    iget v6, v4, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v5, v6, :cond_3

    .line 1493
    invoke-virtual {v4, v5}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v6

    .line 1494
    invoke-direct {p0, v6}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isFormatSupported(Landroidx/media3/common/Format;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1495
    invoke-direct {p0, v6, v5}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoplayerVideoTrackToGenericVideoTrack(Landroidx/media3/common/Format;I)Lcom/brentvatne/common/api/VideoTrack;

    move-result-object v6

    .line 1496
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v0
.end method

.method private getVideoTrackInfoFromManifest()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/brentvatne/common/api/VideoTrack;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1504
    invoke-direct {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getVideoTrackInfoFromManifest(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getVideoTrackInfoFromManifest(I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/brentvatne/common/api/VideoTrack;",
            ">;"
        }
    .end annotation

    .line 1510
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 1511
    invoke-interface {v1}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v4

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    .line 1512
    invoke-virtual {v1}, Lcom/brentvatne/common/api/Source;->getUri()Landroid/net/Uri;

    move-result-object v5

    iget-wide v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->contentStartTime:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v1, v6

    const-wide/16 v6, 0x64

    sub-long v6, v1, v6

    .line 1515
    new-instance v1, Lcom/brentvatne/exoplayer/ReactExoplayerView$5;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/brentvatne/exoplayer/ReactExoplayerView$5;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroidx/media3/datasource/DataSource;Landroid/net/Uri;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 1558
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xbb8

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    add-int/2addr p1, v2

    .line 1560
    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getVideoTrackInfoFromManifest(I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 1562
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 1565
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error in getVideoTrackInfoFromManifest handling request:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReactExoplayerView"

    invoke-static {v0, p1}, Lcom/brentvatne/common/toolbox/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private initializePlayer()V
    .locals 4

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 650
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 652
    new-instance v1, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda15;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mainRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    .line 704
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initializePlayerControl()V
    .locals 7

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    :cond_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->fullScreenPlayerView:Lcom/brentvatne/exoplayer/FullScreenPlayerView;

    if-nez v0, :cond_1

    .line 423
    new-instance v0, Lcom/brentvatne/exoplayer/FullScreenPlayerView;

    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    iget-object v5, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    new-instance v6, Lcom/brentvatne/exoplayer/ReactExoplayerView$2;

    const/4 v1, 0x1

    invoke-direct {v6, p0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView$2;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V

    move-object v1, v0

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/brentvatne/exoplayer/FullScreenPlayerView;-><init>(Landroid/content/Context;Lcom/brentvatne/exoplayer/ExoPlayerView;Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroidx/media3/ui/LegacyPlayerControlView;Landroidx/activity/OnBackPressedCallback;)V

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->fullScreenPlayerView:Lcom/brentvatne/exoplayer/FullScreenPlayerView;

    :cond_1
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 432
    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->setPlayer(Landroidx/media3/common/Player;)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 433
    sget v1, Lcom/brentvatne/react/R$id;->exo_play_pause_container:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playPauseControlContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 436
    new-instance v1, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda0;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    invoke-virtual {v0, v1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 443
    sget v1, Lcom/brentvatne/react/R$id;->exo_play:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 444
    new-instance v1, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda7;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 452
    sget v1, Lcom/brentvatne/react/R$id;->exo_rew:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 453
    sget v2, Lcom/brentvatne/react/R$id;->exo_ffwd:I

    invoke-virtual {v1, v2}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 454
    new-instance v2, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda8;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    new-instance v0, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda9;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 463
    sget v1, Lcom/brentvatne/react/R$id;->exo_pause:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 464
    new-instance v1, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda10;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 469
    sget v1, Lcom/brentvatne/react/R$id;->exo_fullscreen:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 470
    new-instance v1, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda11;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateFullScreenButtonVisbility()V

    .line 472
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->refreshProgressBarVisibility()V

    .line 475
    new-instance v0, Lcom/brentvatne/exoplayer/ReactExoplayerView$3;

    invoke-direct {v0, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$3;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventListener:Landroidx/media3/common/Player$Listener;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 498
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/ExoPlayer;->addListener(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private initializePlayerCore(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 6

    .line 717
    new-instance v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    .line 718
    new-instance v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;)V

    iput-object v1, p1, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 719
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->buildUponParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    iget v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->maxBitRate:I

    if-nez v2, :cond_0

    const v2, 0x7fffffff

    .line 720
    :cond_0
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxVideoBitrate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 719
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    .line 722
    new-instance v0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    const/high16 v1, 0x10000

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;-><init>(ZI)V

    .line 723
    new-instance v1, Lcom/brentvatne/exoplayer/ReactExoplayerView$RNVLoadControl;

    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bufferConfig:Lcom/brentvatne/common/api/BufferConfig;

    invoke-direct {v1, p0, v0, v3}, Lcom/brentvatne/exoplayer/ReactExoplayerView$RNVLoadControl;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroidx/media3/exoplayer/upstream/DefaultAllocator;Lcom/brentvatne/common/api/BufferConfig;)V

    .line 727
    new-instance v0, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    .line 728
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 729
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->setExtensionRendererMode(I)Landroidx/media3/exoplayer/DefaultRenderersFactory;

    move-result-object v0

    .line 730
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->setEnableDecoderFallback(Z)Landroidx/media3/exoplayer/DefaultRenderersFactory;

    move-result-object v0

    .line 731
    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->forceEnableMediaCodecAsynchronousQueueing()Landroidx/media3/exoplayer/DefaultRenderersFactory;

    move-result-object v0

    .line 734
    new-instance v3, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;

    iget-object v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-direct {v3, v4}, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;-><init>(Landroid/content/Context;)V

    .line 736
    invoke-virtual {v3, p0}, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->setAdEventListener(Ljava/lang/Object;)Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;

    move-result-object v3

    .line 737
    invoke-virtual {v3, p0}, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->setAdErrorListener(Ljava/lang/Object;)Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;

    move-result-object v3

    .line 738
    invoke-virtual {v3}, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->build()Landroidx/media3/exoplayer/ima/ImaAdsLoader;

    move-result-object v3

    iput-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adsLoader:Landroidx/media3/exoplayer/ima/ImaAdsLoader;

    .line 739
    new-instance v3, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    iget-object v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-direct {v3, v4}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    iget-boolean v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->useCache:Z

    if-eqz v4, :cond_1

    .line 741
    sget-object v4, Lcom/brentvatne/exoplayer/RNVSimpleCache;->INSTANCE:Lcom/brentvatne/exoplayer/RNVSimpleCache;

    invoke-direct {p0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildHttpDataSourceFactory(Z)Landroidx/media3/datasource/HttpDataSource$Factory;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/brentvatne/exoplayer/RNVSimpleCache;->getCacheFactory(Landroidx/media3/datasource/HttpDataSource$Factory;)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->setDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    :cond_1
    iget-object v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adsLoader:Landroidx/media3/exoplayer/ima/ImaAdsLoader;

    if-eqz v4, :cond_2

    .line 745
    new-instance v4, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda5;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    iget-object v5, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {v3, v4, v5}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->setLocalAdInsertionComponents(Landroidx/media3/exoplayer/source/ads/AdsLoader$Provider;Landroidx/media3/common/AdViewProvider;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    .line 748
    :cond_2
    new-instance v4, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/RenderersFactory;)V

    iget-object v0, p1, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 749
    invoke-virtual {v4, v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setTrackSelector(Landroidx/media3/exoplayer/trackselection/TrackSelector;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    .line 750
    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setBandwidthMeter(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    .line 751
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setLoadControl(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    .line 752
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setMediaSourceFactory(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    .line 753
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 754
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->refreshDebugState()V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 755
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->addListener(Landroidx/media3/common/Player$Listener;)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    iget-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->muted:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioVolume:F

    mul-float/2addr v1, v3

    .line 756
    :goto_0
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setVolume(F)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 757
    invoke-virtual {v0, v1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setPlayer(Landroidx/media3/exoplayer/ExoPlayer;)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adsLoader:Landroidx/media3/exoplayer/ima/ImaAdsLoader;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 759
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->setPlayer(Landroidx/media3/exoplayer/ExoPlayer;)V

    :cond_4
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioBecomingNoisyReceiver:Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;

    .line 761
    invoke-virtual {v0, p1}, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;->setListener(Lcom/brentvatne/receiver/BecomingNoisyListener;)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    .line 762
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->addEventListener(Landroid/os/Handler;Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    iget-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isPaused:Z

    xor-int/2addr p1, v2

    .line 763
    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPlayWhenReady(Z)V

    iput-boolean v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerNeedsSource:Z

    .line 766
    new-instance p1, Landroidx/media3/common/PlaybackParameters;

    iget v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->rate:F

    invoke-direct {p1, v0, v3}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 767
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioOutput:Lcom/brentvatne/exoplayer/AudioOutput;

    .line 768
    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->changeAudioOutput(Lcom/brentvatne/exoplayer/AudioOutput;)V

    iget-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->showNotificationControls:Z

    if-eqz p1, :cond_5

    .line 771
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setupPlaybackService()V

    :cond_5
    return-void
.end method

.method private initializePlayerDrm(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .locals 4

    .line 777
    iget-object v0, p1, Lcom/brentvatne/exoplayer/ReactExoplayerView;->drmUUID:Ljava/util/UUID;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 779
    :try_start_0
    iget-object v2, p1, Lcom/brentvatne/exoplayer/ReactExoplayerView;->drmLicenseUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/brentvatne/exoplayer/ReactExoplayerView;->drmLicenseHeader:[Ljava/lang/String;

    invoke-direct {p1, v0, v2, v3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildDrmSessionManager(Ljava/util/UUID;Ljava/lang/String;[Ljava/lang/String;)Landroidx/media3/exoplayer/drm/DrmSessionManager;

    move-result-object v1
    :try_end_0
    .catch Landroidx/media3/exoplayer/drm/UnsupportedDrmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 782
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    sget v0, Lcom/brentvatne/react/R$string;->error_drm_not_supported:I

    goto :goto_0

    .line 783
    :cond_0
    iget v0, p1, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;->reason:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 784
    sget v0, Lcom/brentvatne/react/R$string;->error_drm_unsupported_scheme:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/brentvatne/react/R$string;->error_drm_unknown:I

    :goto_0
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 785
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "3003"

    invoke-virtual {v2, v0, p1, v3}, Lcom/brentvatne/common/react/VideoEventEmitter;->error(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v1
.end method

.method private initializePlayerSource()V
    .locals 18

    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    .line 793
    invoke-virtual {v0}, Lcom/brentvatne/common/api/Source;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 796
    :cond_0
    invoke-direct {v9, v9}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayerDrm(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Landroidx/media3/exoplayer/drm/DrmSessionManager;

    move-result-object v4

    const-string v10, "ReactExoplayerView"

    if-nez v4, :cond_1

    iget-object v0, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->drmUUID:Ljava/util/UUID;

    if-eqz v0, :cond_1

    const-string v0, "Failed to initialize DRM Session Manager Framework!"

    .line 799
    invoke-static {v10, v0}, Lcom/brentvatne/common/toolbox/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 800
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "DRM Session Manager Framework failure!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v3, "3003"

    invoke-virtual {v1, v0, v2, v3}, Lcom/brentvatne/common/react/VideoEventEmitter;->error(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void

    .line 804
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildTextSources()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    .line 805
    invoke-virtual {v1}, Lcom/brentvatne/common/api/Source;->getUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v1, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {v1}, Lcom/brentvatne/common/api/Source;->getExtension()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {v1}, Lcom/brentvatne/common/api/Source;->getCropStartMs()I

    move-result v1

    int-to-long v5, v1

    iget-object v1, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {v1}, Lcom/brentvatne/common/api/Source;->getCropEndMs()I

    move-result v1

    int-to-long v7, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildMediaSource(Landroid/net/Uri;Ljava/lang/String;Landroidx/media3/exoplayer/drm/DrmSessionManager;JJ)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v1

    iget-object v2, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adTagUrl:Landroid/net/Uri;

    if-eqz v2, :cond_2

    iget-object v3, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adsLoader:Landroidx/media3/exoplayer/ima/ImaAdsLoader;

    if-eqz v3, :cond_2

    .line 808
    new-instance v2, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    iget-object v3, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-direct {v2, v3}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    new-instance v3, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda4;

    invoke-direct {v3, v9}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda4;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    iget-object v4, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 809
    invoke-virtual {v2, v3, v4}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->setLocalAdInsertionComponents(Landroidx/media3/exoplayer/source/ads/AdsLoader$Provider;Landroidx/media3/common/AdViewProvider;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    move-result-object v15

    .line 810
    new-instance v13, Landroidx/media3/datasource/DataSpec;

    iget-object v2, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adTagUrl:Landroid/net/Uri;

    invoke-direct {v13, v2}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;)V

    .line 811
    new-instance v2, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    iget-object v3, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {v3}, Lcom/brentvatne/common/api/Source;->getUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adTagUrl:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v14

    iget-object v3, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adsLoader:Landroidx/media3/exoplayer/ima/ImaAdsLoader;

    iget-object v4, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    move-object v11, v2

    move-object v12, v1

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-direct/range {v11 .. v17}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/datasource/DataSpec;Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/exoplayer/source/ads/AdsLoader;Landroidx/media3/common/AdViewProvider;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-object v2, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adsLoader:Landroidx/media3/exoplayer/ima/ImaAdsLoader;

    if-eqz v2, :cond_3

    .line 814
    invoke-virtual {v2}, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->release()V

    iput-object v3, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adsLoader:Landroidx/media3/exoplayer/ima/ImaAdsLoader;

    :cond_3
    move-object v2, v3

    .line 819
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    if-eqz v2, :cond_6

    move-object v1, v2

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    .line 827
    invoke-virtual {v0, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 829
    :cond_5
    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 832
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroidx/media3/exoplayer/source/MediaSource;

    .line 831
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/exoplayer/source/MediaSource;

    .line 834
    new-instance v1, Landroidx/media3/exoplayer/source/MergingMediaSource;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>([Landroidx/media3/exoplayer/source/MediaSource;)V

    :cond_6
    :goto_2
    iget-object v0, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_7

    .line 840
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 842
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 843
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/brentvatne/common/toolbox/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget v2, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->resumeWindow:I

    const/4 v3, -0x1

    const/4 v5, 0x1

    if-eq v2, v3, :cond_8

    iget-wide v6, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->resumePosition:J

    .line 849
    invoke-interface {v0, v2, v6, v7}, Landroidx/media3/exoplayer/ExoPlayer;->seekTo(IJ)V

    iget-object v0, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 850
    invoke-interface {v0, v1, v4}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;Z)V

    goto :goto_3

    :cond_8
    iget-object v0, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    .line 851
    invoke-virtual {v0}, Lcom/brentvatne/common/api/Source;->getStartPositionMs()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v2, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    .line 852
    invoke-virtual {v2}, Lcom/brentvatne/common/api/Source;->getStartPositionMs()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;J)V

    goto :goto_3

    :cond_9
    iget-object v0, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 854
    invoke-interface {v0, v1, v5}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;Z)V

    :goto_3
    iget-object v0, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 856
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->prepare()V

    iput-boolean v4, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerNeedsSource:Z

    .line 859
    invoke-direct/range {p0 .. p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->reLayoutControls()V

    iget-object v0, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 861
    invoke-virtual {v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->loadStart()V

    iput-boolean v5, v9, Lcom/brentvatne/exoplayer/ReactExoplayerView;->loadVideoStarted:Z

    .line 864
    invoke-direct/range {p0 .. p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->finishPlayerInitialization()V

    return-void
.end method

.method private static isBehindLiveWindow(Landroidx/media3/common/PlaybackException;)Z
    .locals 1

    .line 1704
    iget p0, p0, Landroidx/media3/common/PlaybackException;->errorCode:I

    const/16 v0, 0x3ea

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFormatSupported(Landroidx/media3/common/Format;)Z
    .locals 7

    .line 2000
    iget v0, p1, Landroidx/media3/common/Format;->width:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, p1, Landroidx/media3/common/Format;->width:I

    .line 2001
    :goto_0
    iget v3, p1, Landroidx/media3/common/Format;->height:I

    if-ne v3, v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget v2, p1, Landroidx/media3/common/Format;->height:I

    .line 2002
    :goto_1
    iget v3, p1, Landroidx/media3/common/Format;->frameRate:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    iget v3, p1, Landroidx/media3/common/Format;->frameRate:F

    .line 2003
    :goto_2
    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez p1, :cond_3

    return v4

    .line 2009
    :cond_3
    :try_start_0
    invoke-static {p1, v1, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;ZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object p1

    float-to-double v5, v3

    .line 2010
    invoke-virtual {p1, v0, v2, v5, v6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v4
.end method

.method private isPlayingAd()Z
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    .line 320
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isTrackSelected(Landroidx/media3/exoplayer/trackselection/TrackSelection;Landroidx/media3/common/TrackGroup;I)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1434
    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1435
    invoke-interface {p0, p2}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->indexOf(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$buildDrmSessionManager$11(Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;Ljava/util/UUID;)Landroidx/media3/exoplayer/drm/ExoMediaDrm;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$buildMediaSource$12(Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .locals 0

    return-object p0
.end method

.method private synthetic lambda$initializePlayer$6(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 3

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->viewHasDropped:Z

    if-eqz v0, :cond_0

    return-void

    .line 683
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayerSource()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 685
    iput-boolean v1, p1, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerNeedsSource:Z

    const-string v1, "Failed to initialize Player! 1"

    const-string v2, "ReactExoplayerView"

    .line 686
    invoke-static {v2, v1}, Lcom/brentvatne/common/toolbox/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/brentvatne/common/toolbox/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 689
    iget-object p1, p1, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1001"

    invoke-virtual {p1, v1, v0, v2}, Lcom/brentvatne/common/react/VideoEventEmitter;->error(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$initializePlayer$7(Landroid/app/Activity;Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 2

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->viewHasDropped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "ReactExoplayerView"

    const-string p2, "Failed to initialize Player!, null activity"

    .line 671
    invoke-static {p1, p2}, Lcom/brentvatne/common/toolbox/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 672
    new-instance p2, Ljava/lang/Exception;

    const-string v0, "Current Activity is null!"

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v0, "1001"

    const-string v1, "Failed to initialize Player!"

    invoke-virtual {p1, v1, p2, v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->error(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void

    .line 677
    :cond_1
    new-instance v0, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda2;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$initializePlayer$8(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/app/Activity;)V
    .locals 2

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->viewHasDropped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_1

    .line 659
    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayerCore(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    :cond_1
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerNeedsSource:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    .line 661
    invoke-virtual {v0}, Lcom/brentvatne/common/api/Source;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 662
    invoke-virtual {v0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->invalidateAspectRatio()V

    .line 664
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 665
    new-instance v1, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda3;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/app/Activity;Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    .line 693
    invoke-virtual {p2}, Lcom/brentvatne/common/api/Source;->getUri()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 694
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayerSource()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const/4 v0, 0x1

    .line 697
    iput-boolean v0, p1, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerNeedsSource:Z

    const-string p1, "Failed to initialize Player! 2"

    const-string v0, "ReactExoplayerView"

    .line 698
    invoke-static {v0, p1}, Lcom/brentvatne/common/toolbox/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/brentvatne/common/toolbox/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 701
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1001"

    invoke-virtual {p1, v0, p2, v1}, Lcom/brentvatne/common/react/VideoEventEmitter;->error(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$initializePlayerControl$0(Landroid/view/View;)V
    .locals 0

    .line 437
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isPlayingAd()Z

    move-result p1

    if-nez p1, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->togglePlayerControlVisibility()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initializePlayerControl$1(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p1, :cond_0

    .line 445
    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const-wide/16 v0, 0x0

    .line 446
    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->seekTo(J)V

    :cond_0
    const/4 p1, 0x0

    .line 448
    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPausedModifier(Z)V

    return-void
.end method

.method private synthetic lambda$initializePlayerControl$2(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 455
    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controlsConfig:Lcom/brentvatne/common/api/ControlsConfig;

    invoke-virtual {p1}, Lcom/brentvatne/common/api/ControlsConfig;->getSeekIncrementMS()I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->seekTo(J)V

    return-void
.end method

.method private synthetic lambda$initializePlayerControl$3(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 459
    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controlsConfig:Lcom/brentvatne/common/api/ControlsConfig;

    invoke-virtual {p1}, Lcom/brentvatne/common/api/ControlsConfig;->getSeekIncrementMS()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->seekTo(J)V

    return-void
.end method

.method private synthetic lambda$initializePlayerControl$4(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 465
    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPausedModifier(Z)V

    return-void
.end method

.method private synthetic lambda$initializePlayerControl$5(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isFullscreen:Z

    xor-int/lit8 p1, p1, 0x1

    .line 470
    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setFullscreen(Z)V

    return-void
.end method

.method private synthetic lambda$initializePlayerCore$9(Landroidx/media3/common/MediaItem$AdsConfiguration;)Landroidx/media3/exoplayer/source/ads/AdsLoader;
    .locals 0

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adsLoader:Landroidx/media3/exoplayer/ima/ImaAdsLoader;

    return-object p1
.end method

.method private synthetic lambda$initializePlayerSource$10(Landroidx/media3/common/MediaItem$AdsConfiguration;)Landroidx/media3/exoplayer/source/ads/AdsLoader;
    .locals 0

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adsLoader:Landroidx/media3/exoplayer/ima/ImaAdsLoader;

    return-object p1
.end method

.method private synthetic lambda$setFullscreen$14(Landroid/view/Window;Landroidx/core/view/WindowInsetsControllerCompat;)V
    .locals 1

    const/4 v0, 0x0

    .line 2213
    invoke-static {p1, v0}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 2214
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    const/4 p1, 0x2

    .line 2215
    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 2216
    invoke-virtual {p1}, Lcom/brentvatne/common/react/VideoEventEmitter;->fullscreenDidPresent()V

    return-void
.end method

.method private synthetic lambda$setFullscreen$15(Landroid/view/Window;Landroidx/core/view/WindowInsetsControllerCompat;)V
    .locals 1

    const/4 v0, 0x1

    .line 2225
    invoke-static {p1, v0}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 2226
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsControllerCompat;->show(I)V

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 2227
    invoke-virtual {p1}, Lcom/brentvatne/common/react/VideoEventEmitter;->fullscreenDidDismiss()V

    return-void
.end method

.method private synthetic lambda$videoLoaded$13(JJIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 12

    move-object v0, p0

    .line 1414
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getVideoTrackInfoFromManifest()Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isUsingContentResolution:Z

    :cond_0
    iget-object v1, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    move-wide v2, p1

    long-to-double v2, v2

    move-wide v4, p3

    long-to-double v4, v4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p9

    .line 1418
    invoke-virtual/range {v1 .. v11}, Lcom/brentvatne/common/react/VideoEventEmitter;->load(DDIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method private onBuffering(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isBuffering:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isBuffering:Z

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 1610
    invoke-virtual {v0, p1}, Lcom/brentvatne/common/react/VideoEventEmitter;->buffering(Z)V

    return-void
.end method

.method private onStopPlayback()V
    .locals 2

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isFullscreen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1268
    invoke-virtual {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setFullscreen(Z)V

    :cond_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1270
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method private pausePlayback()V
    .locals 2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1254
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1255
    invoke-direct {p0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPlayWhenReady(Z)V

    .line 1258
    :cond_0
    invoke-virtual {p0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setKeepScreenOn(Z)V

    return-void
.end method

.method private reLayout(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 527
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 526
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 528
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private reLayoutControls()V
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 561
    invoke-direct {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->reLayout(Landroid/view/View;)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 562
    invoke-direct {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->reLayout(Landroid/view/View;)V

    return-void
.end method

.method private refreshDebugState()V
    .locals 2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->enableDebug:Z

    if-eqz v1, :cond_1

    .line 575
    new-instance v0, Landroidx/media3/exoplayer/util/EventLogger;

    const-string v1, "RNVExoplayer"

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/util/EventLogger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->debugEventLogger:Landroidx/media3/exoplayer/util/EventLogger;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 576
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/ExoPlayer;->addAnalyticsListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->debugEventLogger:Landroidx/media3/exoplayer/util/EventLogger;

    if-eqz v1, :cond_2

    .line 578
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->removeAnalyticsListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->debugEventLogger:Landroidx/media3/exoplayer/util/EventLogger;

    :cond_2
    :goto_0
    return-void
.end method

.method private refreshProgressBarVisibility()V
    .locals 6

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    if-nez v0, :cond_0

    return-void

    .line 536
    :cond_0
    sget v1, Lcom/brentvatne/react/R$id;->exo_progress:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/media3/ui/DefaultTimeBar;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 537
    sget v2, Lcom/brentvatne/react/R$id;->exo_duration:I

    invoke-virtual {v1, v2}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 538
    sget v3, Lcom/brentvatne/react/R$id;->exo_position:I

    invoke-virtual {v2, v3}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controlsConfig:Lcom/brentvatne/common/api/ControlsConfig;

    .line 539
    invoke-virtual {v3}, Lcom/brentvatne/common/api/ControlsConfig;->getHideSeekBar()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 540
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v4, 0x8

    .line 545
    invoke-virtual {v0, v4}, Landroidx/media3/ui/DefaultTimeBar;->setVisibility(I)V

    .line 546
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 547
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 549
    invoke-virtual {v0, v3}, Landroidx/media3/ui/DefaultTimeBar;->setVisibility(I)V

    .line 550
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 556
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private releasePlayer()V
    .locals 3

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adsLoader:Landroidx/media3/exoplayer/ima/ImaAdsLoader;

    if-eqz v0, :cond_0

    .line 1134
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->setPlayer(Landroidx/media3/exoplayer/ExoPlayer;)V

    :cond_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playbackServiceBinder:Lcom/brentvatne/exoplayer/PlaybackServiceBinder;

    if-eqz v0, :cond_1

    .line 1138
    invoke-virtual {v0}, Lcom/brentvatne/exoplayer/PlaybackServiceBinder;->getService()Lcom/brentvatne/exoplayer/VideoPlaybackService;

    move-result-object v0

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {v0, v2}, Lcom/brentvatne/exoplayer/VideoPlaybackService;->unregisterPlayer(Landroidx/media3/exoplayer/ExoPlayer;)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playbackServiceConnection:Landroid/content/ServiceConnection;

    .line 1139
    invoke-virtual {v0, v2}, Lcom/facebook/react/uimanager/ThemedReactContext;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1142
    :cond_1
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateResumePosition()V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 1143
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 1144
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/ExoPlayer;->removeListener(Landroidx/media3/common/Player$Listener;)V

    iput-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    iput-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    :cond_2
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adsLoader:Landroidx/media3/exoplayer/ima/ImaAdsLoader;

    if-eqz v0, :cond_3

    .line 1151
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->release()V

    :cond_3
    iput-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adsLoader:Landroidx/media3/exoplayer/ima/ImaAdsLoader;

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->progressHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    .line 1154
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioBecomingNoisyReceiver:Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;

    .line 1155
    invoke-virtual {v0}, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;->removeListener()V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    .line 1156
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->removeEventListener(Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mainRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    .line 1159
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mainRunnable:Ljava/lang/Runnable;

    :cond_4
    return-void
.end method

.method private reloadSource()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerNeedsSource:Z

    .line 1803
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayer()V

    return-void
.end method

.method private requestAudioFocus()Z
    .locals 4

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->disableFocus:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    .line 1216
    invoke-virtual {v0}, Lcom/brentvatne/common/api/Source;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->hasAudioFocus:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    .line 1219
    invoke-virtual {v0, v2, v3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private resumePlayback()V
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    .line 1245
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1246
    invoke-direct {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPlayWhenReady(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->preventsDisplaySleepDuringVideoPlayback:Z

    .line 1248
    invoke-virtual {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setKeepScreenOn(Z)V

    :cond_1
    return-void
.end method

.method private setPlayWhenReady(Z)V
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1231
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->requestAudioFocus()Z

    move-result p1

    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->hasAudioFocus:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v0, 0x1

    .line 1233
    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_0

    .line 1237
    :cond_1
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v0, 0x0

    .line 1238
    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setupPlaybackService()V
    .locals 4

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->showNotificationControls:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_0

    goto :goto_1

    .line 879
    :cond_0
    new-instance v0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;

    invoke-direct {v0, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playbackServiceConnection:Landroid/content/ServiceConnection;

    .line 907
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    const-class v2, Lcom/brentvatne/exoplayer/VideoPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "androidx.media3.session.MediaSessionService"

    .line 908
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 910
    invoke-virtual {v1, v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    const/16 v1, 0x1001

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playbackServiceConnection:Landroid/content/ServiceConnection;

    .line 919
    invoke-virtual {v2, v0, v3, v1}, Lcom/facebook/react/uimanager/ThemedReactContext;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private startProgressHandler()V
    .locals 2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->progressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 1374
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private stopPlayback()V
    .locals 0

    .line 1262
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->onStopPlayback()V

    .line 1263
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->releasePlayer()V

    return-void
.end method

.method private togglePlayerControlVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 406
    :cond_0
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->reLayoutControls()V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 407
    invoke-virtual {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 408
    invoke-virtual {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->hide()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 410
    invoke-virtual {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->show()V

    :goto_0
    return-void
.end method

.method private updateFullScreenButtonVisbility()V
    .locals 3

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    if-eqz v0, :cond_2

    .line 2176
    sget v1, Lcom/brentvatne/react/R$id;->exo_fullscreen:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controls:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isFullscreen:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->fullScreenPlayerView:Lcom/brentvatne/exoplayer/FullScreenPlayerView;

    if-eqz v1, :cond_0

    .line 2179
    invoke-virtual {v1}, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2180
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2182
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 2185
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateProgress()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    if-eqz v1, :cond_0

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controls:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 265
    invoke-virtual {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->hide()V

    :cond_0
    iget-object v1, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 267
    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->getBufferedPercentage()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v3}, Landroidx/media3/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v3

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x64

    div-long/2addr v1, v3

    iget-object v3, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 268
    invoke-interface {v3}, Landroidx/media3/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v3

    iget-object v5, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 269
    invoke-interface {v5}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-lez v7, :cond_1

    move-wide v5, v3

    :cond_1
    iget-wide v7, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lastPos:J

    cmp-long v7, v7, v5

    if-nez v7, :cond_2

    iget-wide v7, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lastBufferDuration:J

    cmp-long v7, v7, v1

    if-nez v7, :cond_2

    iget-wide v7, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lastDuration:J

    cmp-long v7, v7, v3

    if-eqz v7, :cond_3

    :cond_2
    iput-wide v5, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lastPos:J

    iput-wide v1, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lastBufferDuration:J

    iput-wide v3, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lastDuration:J

    iget-object v8, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    long-to-double v9, v5

    long-to-double v11, v1

    iget-object v1, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 280
    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v1

    long-to-double v13, v1

    invoke-virtual {v0, v5, v6}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getPositionInFirstPeriodMsForCurrentWindow(J)D

    move-result-wide v15

    invoke-virtual/range {v8 .. v16}, Lcom/brentvatne/common/react/VideoEventEmitter;->progressChanged(DDDD)V

    :cond_3
    return-void
.end method

.method private updateResumePosition()V
    .locals 4

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 1274
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentMediaItemIndex()I

    move-result v0

    iput v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->resumeWindow:I

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 1275
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->isCurrentMediaItemSeekable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->resumePosition:J

    return-void
.end method

.method private videoLoaded()V
    .locals 23

    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 1387
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->isPlayingAd()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, v11, Lcom/brentvatne/exoplayer/ReactExoplayerView;->loadVideoStarted:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, v11, Lcom/brentvatne/exoplayer/ReactExoplayerView;->loadVideoStarted:Z

    iget-object v1, v11, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioTrackType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, v11, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioTrackValue:Ljava/lang/String;

    .line 1390
    invoke-virtual {v11, v1, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedAudioTrack(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, v11, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackType:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, v11, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackValue:Ljava/lang/String;

    .line 1393
    invoke-virtual {v11, v1, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedVideoTrack(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, v11, Lcom/brentvatne/exoplayer/ReactExoplayerView;->textTrackType:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, v11, Lcom/brentvatne/exoplayer/ReactExoplayerView;->textTrackValue:Ljava/lang/String;

    .line 1396
    invoke-virtual {v11, v1, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedTextTrack(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, v11, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 1398
    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->getVideoFormat()Landroidx/media3/common/Format;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1399
    iget v2, v1, Landroidx/media3/common/Format;->rotationDegrees:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_3

    iget v2, v1, Landroidx/media3/common/Format;->rotationDegrees:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_4

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v0

    :goto_0
    if-eqz v1, :cond_6

    if-eqz v2, :cond_5

    .line 1400
    iget v3, v1, Landroidx/media3/common/Format;->height:I

    goto :goto_1

    :cond_5
    iget v3, v1, Landroidx/media3/common/Format;->width:I

    :goto_1
    move/from16 v17, v3

    goto :goto_2

    :cond_6
    move/from16 v17, v0

    :goto_2
    if-eqz v1, :cond_8

    if-eqz v2, :cond_7

    .line 1401
    iget v0, v1, Landroidx/media3/common/Format;->width:I

    goto :goto_3

    :cond_7
    iget v0, v1, Landroidx/media3/common/Format;->height:I

    :cond_8
    :goto_3
    move/from16 v18, v0

    if-eqz v1, :cond_9

    .line 1402
    iget-object v0, v1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    goto :goto_4

    :cond_9
    const-string v0, "-1"

    :goto_4
    move-object/from16 v22, v0

    iget-object v0, v11, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 1405
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v2

    iget-object v0, v11, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 1406
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v4

    .line 1407
    invoke-direct/range {p0 .. p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getAudioTrackInfo()Ljava/util/ArrayList;

    move-result-object v19

    .line 1408
    invoke-direct/range {p0 .. p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getTextTrackInfo()Ljava/util/ArrayList;

    move-result-object v20

    iget-wide v0, v11, Lcom/brentvatne/exoplayer/ReactExoplayerView;->contentStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v0, v0, v6

    if-eqz v0, :cond_a

    .line 1411
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v12

    .line 1412
    new-instance v13, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda14;

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v6, v17

    move/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v22

    invoke-direct/range {v0 .. v10}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda14;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;JJIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-interface {v12, v13}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1425
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getVideoTrackInfo()Ljava/util/ArrayList;

    move-result-object v21

    iget-object v12, v11, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    long-to-double v13, v2

    long-to-double v0, v4

    move-wide v15, v0

    .line 1427
    invoke-virtual/range {v12 .. v22}, Lcom/brentvatne/common/react/VideoEventEmitter;->load(DDIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public cleanUpResources()V
    .locals 1

    .line 377
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->stopPlayback()V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 378
    invoke-virtual {v0, p0}, Lcom/facebook/react/uimanager/ThemedReactContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 379
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->releasePlayer()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->viewHasDropped:Z

    return-void
.end method

.method public clearSrc()V
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    .line 1773
    invoke-virtual {v0}, Lcom/brentvatne/common/api/Source;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    .line 1775
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->stop()V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 1776
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->clearMediaItems()V

    .line 1778
    :cond_0
    new-instance v0, Lcom/brentvatne/common/api/Source;

    invoke-direct {v0}, Lcom/brentvatne/common/api/Source;-><init>()V

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 1780
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->clearResumePosition()V

    :cond_1
    return-void
.end method

.method public disableTrack(I)V
    .locals 2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 1831
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    .line 1832
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1833
    invoke-virtual {v0, p1, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setRendererDisabled(IZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p1

    .line 1834
    invoke-virtual {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 1835
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public getCurrentPosition(Lcom/facebook/react/bridge/Promise;)V
    .locals 4

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    .line 709
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-double v0, v0

    .line 710
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "PLAYER_NOT_AVAILABLE"

    const-string v1, "Player is not initialized."

    .line 712
    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getPositionInFirstPeriodMsForCurrentWindow(J)D
    .locals 3

    .line 297
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 298
    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 299
    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentMediaItemIndex()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 301
    :cond_0
    iget-wide v0, v0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    add-long/2addr v0, p1

    long-to-double p1, v0

    return-wide p1
.end method

.method public getPreventsDisplaySleepDuringVideoPlayback()Z
    .locals 1

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->preventsDisplaySleepDuringVideoPlayback:Z

    return v0
.end method

.method public getTrackRendererIndex(I)I
    .locals 3

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    .line 1709
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getRendererCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 1711
    invoke-interface {v2, v1}, Landroidx/media3/exoplayer/ExoPlayer;->getRendererType(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 3

    .line 2342
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;->getError()Lcom/google/ads/interactivemedia/v3/api/AdError;

    move-result-object p1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 2343
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getErrorCode()Landroidx/annotation/InspectableProperty;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getErrorType()Landroidx/annotation/InspectableProperty;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveAdErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 2

    .line 2333
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getAdData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 2334
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Landroidx/annotation/InspectableProperty;

    move-result-object v1

    invoke-interface {v1}, Landroidx/annotation/InspectableProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getAdData()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveAdEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 2336
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Landroidx/annotation/InspectableProperty;

    move-result-object p1

    invoke-interface {p1}, Landroidx/annotation/InspectableProperty;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveAdEvent(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onAudioBecomingNoisy()V
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 1310
    invoke-virtual {v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->audioBecomingNoisy()V

    return-void
.end method

.method public onBandwidthSample(IJJ)V
    .locals 6

    iget-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mReportBandwidth:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    long-to-double v1, p4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "-1"

    .line 388
    invoke-virtual/range {v0 .. v5}, Lcom/brentvatne/common/react/VideoEventEmitter;->bandwidthReport(DIILjava/lang/String;)V

    goto :goto_2

    .line 390
    :cond_0
    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->getVideoFormat()Landroidx/media3/common/Format;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 391
    iget p3, p1, Landroidx/media3/common/Format;->width:I

    move v4, p3

    goto :goto_0

    :cond_1
    move v4, p2

    :goto_0
    if-eqz p1, :cond_2

    .line 392
    iget p2, p1, Landroidx/media3/common/Format;->height:I

    :cond_2
    move v3, p2

    if-eqz p1, :cond_3

    .line 393
    iget-object p1, p1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string p1, "-1"

    :goto_1
    move-object v5, p1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    long-to-double v1, p4

    .line 394
    invoke-virtual/range {v0 .. v5}, Lcom/brentvatne/common/react/VideoEventEmitter;->bandwidthReport(DIILjava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onCues(Landroidx/media3/common/text/CueGroup;)V
    .locals 2

    .line 1748
    iget-object v0, p1, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/text/Cue;

    iget-object v0, v0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 1749
    iget-object p1, p1, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/text/Cue;

    iget-object p1, p1, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 1750
    invoke-virtual {v0, p1}, Lcom/brentvatne/common/react/VideoEventEmitter;->textTrackDataChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 372
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->cleanupPlaybackService()V

    .line 373
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onDrmKeysLoaded(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    const-string p1, "DRM Info"

    const-string p2, "onDrmKeysLoaded"

    .line 2276
    invoke-static {p1, p2}, Lcom/brentvatne/common/toolbox/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDrmKeysRemoved(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    const-string p1, "DRM Info"

    const-string p2, "onDrmKeysRemoved"

    .line 2302
    invoke-static {p1, p2}, Lcom/brentvatne/common/toolbox/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDrmKeysRestored(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    const-string p1, "DRM Info"

    const-string p2, "onDrmKeysRestored"

    .line 2297
    invoke-static {p1, p2}, Lcom/brentvatne/common/toolbox/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDrmSessionAcquired(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;I)V
    .locals 0

    const-string p1, "DRM Info"

    const-string p2, "onDrmSessionAcquired"

    .line 2281
    invoke-static {p1, p2}, Lcom/brentvatne/common/toolbox/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDrmSessionManagerError(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .locals 1

    const-string p1, "DRM Info"

    const-string p2, "onDrmSessionManagerError"

    .line 2291
    invoke-static {p1, p2}, Lcom/brentvatne/common/toolbox/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    const-string v0, "3002"

    .line 2292
    invoke-virtual {p1, p2, p3, v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->error(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method public onDrmSessionReleased(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    const-string p1, "DRM Info"

    const-string p2, "onDrmSessionReleased"

    .line 2286
    invoke-static {p1, p2}, Lcom/brentvatne/common/toolbox/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 5

    const/4 v0, 0x4

    .line 1321
    invoke-virtual {p2, v0}, Landroidx/media3/common/Player$Events;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Landroidx/media3/common/Player$Events;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1322
    :cond_0
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result p2

    .line 1323
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v1

    .line 1324
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStateChanged: playWhenReady="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", playbackState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    const/4 v4, 0x3

    if-eqz v1, :cond_1

    if-ne p2, v4, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1325
    :goto_0
    invoke-virtual {v3, v1}, Lcom/brentvatne/common/react/VideoEventEmitter;->playbackRateChange(F)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eq p2, v1, :cond_7

    const/4 p1, 0x2

    if-eq p2, p1, :cond_6

    if-eq p2, v4, :cond_3

    if-eq p2, v0, :cond_2

    .line 1366
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo p2, "unknown"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 1359
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "ended"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1360
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateProgress()V

    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 1361
    invoke-virtual {p2}, Lcom/brentvatne/common/react/VideoEventEmitter;->end()V

    .line 1362
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->onStopPlayback()V

    .line 1363
    invoke-virtual {p0, v3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setKeepScreenOn(Z)V

    goto/16 :goto_2

    .line 1342
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "ready"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 1343
    invoke-virtual {v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->ready()V

    .line 1344
    invoke-direct {p0, v3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->onBuffering(Z)V

    .line 1345
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->clearProgressMessageHandler()V

    .line 1346
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->startProgressHandler()V

    .line 1347
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoLoaded()V

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->selectTrackWhenReady:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isUsingContentResolution:Z

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->selectTrackWhenReady:Z

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackType:Ljava/lang/String;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackValue:Ljava/lang/String;

    .line 1350
    invoke-virtual {p0, p1, v0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedTrack(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    if-eqz p1, :cond_5

    .line 1354
    invoke-virtual {p1}, Landroidx/media3/ui/LegacyPlayerControlView;->show()V

    :cond_5
    iget-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->preventsDisplaySleepDuringVideoPlayback:Z

    .line 1356
    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setKeepScreenOn(Z)V

    goto :goto_1

    .line 1336
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "buffering"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1337
    invoke-direct {p0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->onBuffering(Z)V

    .line 1338
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->clearProgressMessageHandler()V

    iget-boolean p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->preventsDisplaySleepDuringVideoPlayback:Z

    .line 1339
    invoke-virtual {p0, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setKeepScreenOn(Z)V

    goto :goto_2

    .line 1328
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "idle"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 1329
    invoke-virtual {v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->idle()V

    .line 1330
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->clearProgressMessageHandler()V

    .line 1331
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1332
    invoke-virtual {p0, v3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setKeepScreenOn(Z)V

    :cond_8
    :goto_1
    move-object p1, p2

    :goto_2
    const-string p2, "ReactExoplayerView"

    .line 1369
    invoke-static {p2, p1}, Lcom/brentvatne/common/toolbox/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    .line 367
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->cleanUpResources()V

    return-void
.end method

.method public onHostPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isInBackground:Z

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playInBackground:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 362
    invoke-direct {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPlayWhenReady(Z)V

    return-void
.end method

.method public onHostResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playInBackground:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isInBackground:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isPaused:Z

    xor-int/lit8 v0, v0, 0x1

    .line 351
    invoke-direct {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPlayWhenReady(Z)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isInBackground:Z

    return-void
.end method

.method public onIsLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 1667
    invoke-virtual {v0, p1}, Lcom/brentvatne/common/react/VideoEventEmitter;->playbackStateChanged(Z)V

    return-void
.end method

.method public onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 5

    .line 1721
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1722
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/Metadata;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1723
    invoke-virtual {p1, v1}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v2

    .line 1725
    instance-of v3, v2, Landroidx/media3/extractor/metadata/id3/Id3Frame;

    if-eqz v3, :cond_1

    .line 1726
    invoke-virtual {p1, v1}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/metadata/id3/Id3Frame;

    .line 1730
    instance-of v3, v2, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    if-eqz v3, :cond_0

    .line 1731
    move-object v3, v2

    check-cast v3, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 1732
    iget-object v3, v3, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v3, ""

    .line 1734
    :goto_1
    new-instance v4, Lcom/brentvatne/common/api/TimedMetadata;

    iget-object v2, v2, Landroidx/media3/extractor/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    invoke-direct {v4, v2, v3}, Lcom/brentvatne/common/api/TimedMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1736
    :cond_1
    instance-of v3, v2, Landroidx/media3/extractor/metadata/emsg/EventMessage;

    if-eqz v3, :cond_2

    .line 1737
    check-cast v2, Landroidx/media3/extractor/metadata/emsg/EventMessage;

    .line 1738
    new-instance v3, Lcom/brentvatne/common/api/TimedMetadata;

    iget-object v4, v2, Landroidx/media3/extractor/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    iget-object v2, v2, Landroidx/media3/extractor/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/brentvatne/common/api/TimedMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1741
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unhandled metadata "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ReactExoplayerView"

    invoke-static {v3, v2}, Lcom/brentvatne/common/toolbox/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 1744
    invoke-virtual {p1, v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->timedMetadata(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 1657
    iget p1, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-virtual {v0, p1}, Lcom/brentvatne/common/react/VideoEventEmitter;->playbackRateChange(F)V

    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 5

    .line 1672
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExoPlaybackException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroidx/media3/common/PlaybackException;->errorCode:I

    invoke-static {v1}, Landroidx/media3/common/PlaybackException;->getErrorCodeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1673
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "2"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroidx/media3/common/PlaybackException;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1674
    iget v2, p1, Landroidx/media3/common/PlaybackException;->errorCode:I

    const/16 v3, 0x1770

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    const/16 v3, 0x1772

    if-eq v2, v3, :cond_0

    const/16 v3, 0x1774

    if-eq v2, v3, :cond_0

    const/16 v3, 0x1776

    if-eq v2, v3, :cond_0

    const/16 v3, 0x1777

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->hasDrmFailed:Z

    if-nez v2, :cond_1

    iput-boolean v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->hasDrmFailed:Z

    iput-boolean v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerNeedsSource:Z

    .line 1684
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateResumePosition()V

    .line 1685
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayer()V

    .line 1686
    invoke-direct {p0, v4}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPlayWhenReady(Z)V

    return-void

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 1693
    invoke-virtual {v2, v0, p1, v1}, Lcom/brentvatne/common/react/VideoEventEmitter;->error(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerNeedsSource:Z

    .line 1695
    invoke-static {p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isBehindLiveWindow(Landroidx/media3/common/PlaybackException;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1696
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->clearResumePosition()V

    .line 1697
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayer()V

    goto :goto_1

    .line 1699
    :cond_2
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateResumePosition()V

    :goto_1
    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 8

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 1616
    invoke-interface {v2}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    iget-wide v4, p2, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    const-wide/16 v6, 0x3e8

    rem-long/2addr v4, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/brentvatne/common/react/VideoEventEmitter;->seek(JJ)V

    iget-boolean p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isUsingContentResolution:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackType:Ljava/lang/String;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackValue:Ljava/lang/String;

    .line 1619
    invoke-virtual {p0, p1, p2, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedTrack(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerNeedsSource:Z

    if-eqz p2, :cond_1

    .line 1627
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateResumePosition()V

    :cond_1
    iget-boolean p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isUsingContentResolution:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackType:Ljava/lang/String;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackValue:Ljava/lang/String;

    .line 1631
    invoke-virtual {p0, p1, p2, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedTrack(ILjava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->selectTrackWhenReady:Z

    :cond_2
    if-nez p3, :cond_3

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 1637
    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->getRepeatMode()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 1638
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateProgress()V

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 1639
    invoke-virtual {p1}, Lcom/brentvatne/common/react/VideoEventEmitter;->end()V

    :cond_3
    return-void
.end method

.method public onTimelineChanged(Landroidx/media3/common/Timeline;I)V
    .locals 0

    return-void
.end method

.method public onTracksChanged(Landroidx/media3/common/Tracks;)V
    .locals 1

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 1650
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getTextTrackInfo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->textTracks(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 1651
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getAudioTrackInfo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->audioTracks(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 1652
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getVideoTrackInfo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->videoTracks(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 1662
    invoke-virtual {v0, p1}, Lcom/brentvatne/common/react/VideoEventEmitter;->volumeChange(F)V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    .line 2107
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayer;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public setAdTagUrl(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adTagUrl:Landroid/net/Uri;

    return-void
.end method

.method public setAudioOutput(Lcom/brentvatne/exoplayer/AudioOutput;)V
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioOutput:Lcom/brentvatne/exoplayer/AudioOutput;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioOutput:Lcom/brentvatne/exoplayer/AudioOutput;

    .line 2094
    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->changeAudioOutput(Lcom/brentvatne/exoplayer/AudioOutput;)V

    :cond_0
    return-void
.end method

.method public setBufferConfig(Lcom/brentvatne/common/api/BufferConfig;)V
    .locals 2

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bufferConfig:Lcom/brentvatne/common/api/BufferConfig;

    .line 2249
    invoke-virtual {p1}, Lcom/brentvatne/common/api/BufferConfig;->getCacheSize()I

    move-result p1

    if-lez p1, :cond_0

    .line 2250
    sget-object p1, Lcom/brentvatne/exoplayer/RNVSimpleCache;->INSTANCE:Lcom/brentvatne/exoplayer/RNVSimpleCache;

    .line 2251
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bufferConfig:Lcom/brentvatne/common/api/BufferConfig;

    .line 2252
    invoke-virtual {v1}, Lcom/brentvatne/common/api/BufferConfig;->getCacheSize()I

    move-result v1

    .line 2250
    invoke-virtual {p1, v0, v1}, Lcom/brentvatne/exoplayer/RNVSimpleCache;->setSimpleCache(Landroid/content/Context;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->useCache:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->useCache:Z

    .line 2258
    :goto_0
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->releasePlayer()V

    .line 2259
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayer()V

    return-void
.end method

.method public setBufferingStrategy(Lcom/brentvatne/common/api/BufferingStrategy$BufferingStrategyEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bufferingStrategy:Lcom/brentvatne/common/api/BufferingStrategy$BufferingStrategyEnum;

    return-void
.end method

.method public setContentStartTime(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->contentStartTime:J

    return-void
.end method

.method public setControls(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controls:Z

    if-eqz p1, :cond_0

    .line 2313
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->addPlayerControl()V

    .line 2314
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateFullScreenButtonVisbility()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 2316
    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 2318
    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->removeViewAt(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setControlsStyles(Lcom/brentvatne/common/api/ControlsConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controlsConfig:Lcom/brentvatne/common/api/ControlsConfig;

    .line 2348
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->refreshProgressBarVisibility()V

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->enableDebug:Z

    .line 567
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->refreshDebugState()V

    return-void
.end method

.method public setDisableDisconnectError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->disableDisconnectError:Z

    return-void
.end method

.method public setDisableFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->disableFocus:Z

    return-void
.end method

.method public setDrmLicenseHeader([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->drmLicenseHeader:[Ljava/lang/String;

    return-void
.end method

.method public setDrmLicenseUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->drmLicenseUrl:Ljava/lang/String;

    return-void
.end method

.method public setDrmType(Ljava/util/UUID;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->drmUUID:Ljava/util/UUID;

    return-void
.end method

.method public setFocusable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->focusable:Z

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 2149
    invoke-virtual {v0, p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setFocusable(Z)V

    return-void
.end method

.method public setFullscreen(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isFullscreen:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isFullscreen:Z

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 2200
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 2205
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 2206
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isFullscreen:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 2208
    invoke-virtual {v1}, Lcom/brentvatne/common/react/VideoEventEmitter;->fullscreenWillPresent()V

    iget-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controls:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->fullScreenPlayerView:Lcom/brentvatne/exoplayer/FullScreenPlayerView;

    if-eqz v1, :cond_2

    .line 2210
    invoke-virtual {v1}, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->show()V

    .line 2212
    :cond_2
    new-instance v1, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda12;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/view/Window;Landroidx/core/view/WindowInsetsControllerCompat;)V

    invoke-static {v1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 2219
    invoke-virtual {v1}, Lcom/brentvatne/common/react/VideoEventEmitter;->fullscreenWillDismiss()V

    iget-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controls:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->fullScreenPlayerView:Lcom/brentvatne/exoplayer/FullScreenPlayerView;

    if-eqz v1, :cond_4

    .line 2221
    invoke-virtual {v1}, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->dismiss()V

    .line 2222
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->reLayoutControls()V

    .line 2224
    :cond_4
    new-instance v1, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda13;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/view/Window;Landroidx/core/view/WindowInsetsControllerCompat;)V

    invoke-static {v1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 2231
    :goto_0
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateFullScreenButtonVisbility()V

    return-void
.end method

.method public setHideShutterView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 2244
    invoke-virtual {v0, p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setHideShutterView(Z)V

    return-void
.end method

.method public setId(I)V
    .locals 1

    .line 325
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 326
    invoke-virtual {v0, p1}, Lcom/brentvatne/common/react/VideoEventEmitter;->setViewId(I)V

    return-void
.end method

.method public setMaxBitRateModifier(I)V
    .locals 2

    iput p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->maxBitRate:I

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 2128
    invoke-virtual {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->buildUponParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    iget v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->maxBitRate:I

    if-nez v1, :cond_0

    const v1, 0x7fffffff

    .line 2129
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxVideoBitrate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 2128
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    :cond_1
    return-void
.end method

.method public setMinLoadRetryCountModifier(I)V
    .locals 0

    iput p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->minLoadRetryCount:I

    .line 2135
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->releasePlayer()V

    .line 2136
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayer()V

    return-void
.end method

.method public setMutedModifier(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->muted:Z

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioVolume:F

    .line 2069
    :goto_0
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->setVolume(F)V

    :cond_1
    return-void
.end method

.method public setPausedModifier(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isPaused:Z

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 2059
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->resumePlayback()V

    goto :goto_0

    .line 2061
    :cond_0
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->pausePlayback()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPlayInBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playInBackground:Z

    return-void
.end method

.method public setPreventsDisplaySleepDuringVideoPlayback(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->preventsDisplaySleepDuringVideoPlayback:Z

    return-void
.end method

.method public setProgressUpdateInterval(F)V
    .locals 0

    iput p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mProgressUpdateInterval:F

    return-void
.end method

.method public setRateModifier(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const-string p1, "ReactExoplayerView"

    const-string v0, "cannot set rate <= 0"

    .line 2113
    invoke-static {p1, v0}, Lcom/brentvatne/common/toolbox/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->rate:F

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p1, :cond_1

    .line 2120
    new-instance p1, Landroidx/media3/common/PlaybackParameters;

    iget v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->rate:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2121
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    :cond_1
    return-void
.end method

.method public setRepeatModifier(Z)V
    .locals 2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 1818
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setRepeatMode(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1820
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setRepeatMode(I)V

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->repeat:Z

    return-void
.end method

.method public setReportBandwidth(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mReportBandwidth:Z

    return-void
.end method

.method public setResizeModeModifier(I)V
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 1807
    invoke-virtual {v0, p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setResizeMode(I)V

    return-void
.end method

.method public setSelectedAudioTrack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioTrackType:Ljava/lang/String;

    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioTrackValue:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2046
    invoke-virtual {p0, v0, p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedTrack(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSelectedTextTrack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->textTrackType:Ljava/lang/String;

    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->textTrackValue:Ljava/lang/String;

    const/4 v0, 0x3

    .line 2052
    invoke-virtual {p0, v0, p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedTrack(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSelectedTrack(ILjava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v3, :cond_0

    return-void

    .line 1840
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getTrackRendererIndex(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    return-void

    :cond_1
    iget-object v5, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 1844
    invoke-virtual {v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v5

    if-nez v5, :cond_2

    return-void

    .line 1849
    :cond_2
    invoke-virtual {v5, v3}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v5

    .line 1851
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 1852
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1854
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "default"

    goto :goto_0

    :cond_3
    move-object/from16 v8, p2

    :goto_0
    const-string v9, "disabled"

    .line 1858
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1859
    invoke-virtual {v0, v3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->disableTrack(I)V

    return-void

    :cond_4
    const-string v9, "language"

    .line 1861
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v9, :cond_8

    move v8, v7

    .line 1862
    :goto_1
    iget v9, v5, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v8, v9, :cond_6

    .line 1863
    invoke-virtual {v5, v8}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v9

    .line 1864
    iget-object v12, v9, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-eqz v12, :cond_5

    iget-object v9, v9, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    move v8, v4

    :cond_7
    :goto_2
    move v2, v4

    goto/16 :goto_a

    :cond_8
    const-string/jumbo v9, "title"

    .line 1869
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v8, v7

    .line 1870
    :goto_3
    iget v9, v5, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v8, v9, :cond_6

    .line 1871
    invoke-virtual {v5, v8}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v9

    .line 1872
    iget-object v12, v9, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    if-eqz v12, :cond_9

    iget-object v9, v9, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_2

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_a
    const-string v9, "index"

    .line 1877
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1878
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v10, :cond_c

    .line 1880
    iget v8, v5, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ne v8, v11, :cond_c

    .line 1882
    invoke-virtual {v5, v7}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v8

    iget v8, v8, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v2, v8, :cond_b

    .line 1883
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v7, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_b
    move v8, v7

    goto :goto_2

    .line 1885
    :cond_c
    iget v8, v5, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v2, v8, :cond_6

    move v8, v2

    goto :goto_2

    :cond_d
    const-string v9, "resolution"

    .line 1888
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1889
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v8, v4

    move v9, v7

    .line 1890
    :goto_4
    iget v12, v5, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v9, v12, :cond_7

    .line 1891
    invoke-virtual {v5, v9}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v12

    move/from16 v16, v4

    move v14, v7

    const/4 v15, 0x0

    .line 1895
    :goto_5
    iget v13, v12, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v14, v13, :cond_12

    .line 1896
    invoke-virtual {v12, v14}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v13

    .line 1897
    iget v10, v13, Landroidx/media3/common/Format;->height:I

    if-ne v10, v2, :cond_e

    .line 1899
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v10, v4

    move v8, v9

    const/4 v13, 0x0

    goto :goto_7

    :cond_e
    iget-boolean v10, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isUsingContentResolution:Z

    if-eqz v10, :cond_11

    if-eqz v15, :cond_10

    .line 1907
    iget v10, v13, Landroidx/media3/common/Format;->bitrate:I

    iget v11, v15, Landroidx/media3/common/Format;->bitrate:I

    if-gt v10, v11, :cond_f

    iget v10, v13, Landroidx/media3/common/Format;->height:I

    iget v11, v15, Landroidx/media3/common/Format;->height:I

    if-le v10, v11, :cond_11

    :cond_f
    iget v10, v13, Landroidx/media3/common/Format;->height:I

    if-ge v10, v2, :cond_11

    goto :goto_6

    .line 1912
    :cond_10
    iget v10, v13, Landroidx/media3/common/Format;->height:I

    if-ge v10, v2, :cond_11

    :goto_6
    move-object v15, v13

    move/from16 v16, v14

    :cond_11
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x1

    goto :goto_5

    :cond_12
    move v11, v7

    move-object v13, v15

    move/from16 v10, v16

    :goto_7
    if-nez v13, :cond_14

    iget-boolean v14, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isUsingContentResolution:Z

    if-eqz v14, :cond_14

    if-nez v11, :cond_14

    const v11, 0x7fffffff

    move v14, v7

    .line 1922
    :goto_8
    iget v15, v12, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v14, v15, :cond_14

    .line 1923
    invoke-virtual {v12, v14}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v15

    .line 1924
    iget v4, v15, Landroidx/media3/common/Format;->height:I

    if-ge v4, v11, :cond_13

    .line 1925
    iget v4, v15, Landroidx/media3/common/Format;->height:I

    .line 1927
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v11, v4

    move v8, v9

    :cond_13
    add-int/lit8 v14, v14, 0x1

    const/4 v4, -0x1

    goto :goto_8

    :cond_14
    if-eqz v13, :cond_15

    const/4 v4, -0x1

    if-eq v10, v4, :cond_15

    .line 1935
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v8, v9

    :cond_15
    add-int/lit8 v9, v9, 0x1

    const/4 v4, -0x1

    const/4 v10, 0x2

    const/4 v11, 0x1

    goto/16 :goto_4

    :cond_16
    const/4 v2, 0x3

    if-ne v1, v2, :cond_18

    .line 1938
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x12

    if-le v2, v4, :cond_18

    iget-object v2, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    const-string v4, "captioning"

    .line 1941
    invoke-virtual {v2, v4}, Lcom/facebook/react/uimanager/ThemedReactContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/CaptioningManager;

    if-eqz v2, :cond_17

    .line 1942
    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1943
    invoke-direct {v0, v5}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getGroupIndexForDefaultLocale(Landroidx/media3/exoplayer/source/TrackGroupArray;)I

    move-result v2

    move v8, v2

    goto :goto_9

    :cond_17
    const/4 v8, -0x1

    goto :goto_9

    :cond_18
    const/4 v2, 0x1

    if-ne v3, v2, :cond_19

    .line 1946
    invoke-direct {v0, v5}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getGroupIndexForDefaultLocale(Landroidx/media3/exoplayer/source/TrackGroupArray;)I

    move-result v8

    :goto_9
    const/4 v2, -0x1

    goto :goto_a

    :cond_19
    const/4 v2, -0x1

    const/4 v8, -0x1

    :goto_a
    if-ne v8, v2, :cond_20

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    .line 1949
    iget v1, v5, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-eqz v1, :cond_20

    .line 1951
    invoke-virtual {v5, v7}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v1

    .line 1952
    new-instance v6, Ljava/util/ArrayList;

    iget v2, v1, Landroidx/media3/common/TrackGroup;->length:I

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v7

    .line 1954
    :goto_b
    iget v4, v1, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v2, v4, :cond_1a

    .line 1955
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1a
    move v2, v7

    move v4, v2

    .line 1960
    :goto_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_1c

    .line 1961
    invoke-virtual {v1, v2}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v8

    .line 1962
    invoke-direct {v0, v8}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isFormatSupported(Landroidx/media3/common/Format;)Z

    move-result v8

    if-eqz v8, :cond_1b

    add-int/lit8 v4, v4, 0x1

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1966
    :cond_1c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1d

    :goto_d
    move v8, v7

    goto :goto_f

    .line 1970
    :cond_1d
    new-instance v2, Ljava/util/ArrayList;

    add-int/2addr v4, v8

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v7

    .line 1971
    :goto_e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_1f

    .line 1972
    invoke-virtual {v1, v4}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v8

    .line 1973
    invoke-direct {v0, v8}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isFormatSupported(Landroidx/media3/common/Format;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 1974
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_1f
    move-object v6, v2

    goto :goto_d

    :cond_20
    :goto_f
    const/4 v1, -0x1

    if-ne v8, v1, :cond_21

    .line 1981
    invoke-virtual {v0, v3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->disableTrack(I)V

    return-void

    .line 1985
    :cond_21
    new-instance v1, Landroidx/media3/common/TrackSelectionOverride;

    invoke-virtual {v5, v8}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    iget-object v2, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 1987
    invoke-virtual {v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v2

    .line 1988
    invoke-virtual {v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v2

    const/4 v4, 0x1

    .line 1989
    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setExceedAudioConstraintsIfNecessary(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v2

    .line 1990
    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setExceedRendererCapabilitiesIfNecessary(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v2

    .line 1991
    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setExceedVideoConstraintsIfNecessary(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v2

    .line 1992
    invoke-virtual {v2, v3, v7}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setRendererDisabled(IZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v2

    .line 1993
    invoke-virtual {v1}, Landroidx/media3/common/TrackSelectionOverride;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->clearOverridesOfType(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v2

    .line 1994
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v1

    .line 1995
    invoke-virtual {v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    iget-object v2, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 1996
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public setSelectedVideoTrack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackType:Ljava/lang/String;

    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackValue:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->loadVideoStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 2040
    invoke-virtual {p0, v0, p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedTrack(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setShowNotificationControls(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->showNotificationControls:Z

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playbackServiceConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2160
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setupPlaybackService()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 2162
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->cleanupPlaybackService()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setShutterColor(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 2328
    invoke-virtual {v0, p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setShutterColor(Ljava/lang/Integer;)V

    return-void
.end method

.method public setSrc(Lcom/brentvatne/common/api/Source;)V
    .locals 3

    .line 1757
    invoke-virtual {p1}, Lcom/brentvatne/common/api/Source;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1758
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->clearResumePosition()V

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    .line 1759
    invoke-virtual {p1, v0}, Lcom/brentvatne/common/api/Source;->isEquals(Lcom/brentvatne/common/api/Source;)Z

    move-result v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->hasDrmFailed:Z

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    .line 1764
    invoke-virtual {p1}, Lcom/brentvatne/common/api/Source;->getHeaders()Ljava/util/Map;

    move-result-object p1

    .line 1763
    invoke-static {v1, v2, p1}, Lcom/brentvatne/exoplayer/DataSourceUtil;->getDefaultDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;Ljava/util/Map;)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    if-nez v0, :cond_0

    .line 1767
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->reloadSource()V

    :cond_0
    return-void
.end method

.method public setSubtitleStyle(Lcom/brentvatne/common/api/SubtitleStyle;)V
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 2324
    invoke-virtual {v0, p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setSubtitleStyle(Lcom/brentvatne/common/api/SubtitleStyle;)V

    return-void
.end method

.method public setTextTracks(Lcom/brentvatne/common/api/SideLoadedTextTrackList;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->textTracks:Lcom/brentvatne/common/api/SideLoadedTextTrackList;

    .line 1798
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->reloadSource()V

    return-void
.end method

.method public setUseTextureView(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->drmUUID:Ljava/util/UUID;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 2236
    invoke-virtual {v0, p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setUseTextureView(Z)V

    return-void
.end method

.method public setVolumeModifier(F)V
    .locals 1

    iput p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioVolume:F

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    .line 2101
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public useSecureView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 2240
    invoke-virtual {v0, p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->useSecureView(Z)V

    return-void
.end method
