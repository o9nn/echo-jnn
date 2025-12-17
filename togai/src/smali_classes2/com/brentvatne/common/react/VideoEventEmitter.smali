.class public Lcom/brentvatne/common/react/VideoEventEmitter;
.super Ljava/lang/Object;
.source "VideoEventEmitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brentvatne/common/react/VideoEventEmitter$VideoEvents;
    }
.end annotation


# static fields
.field private static final EVENT_AUDIO_BECOMING_NOISY:Ljava/lang/String; = "onVideoAudioBecomingNoisy"

.field private static final EVENT_AUDIO_FOCUS_CHANGE:Ljava/lang/String; = "onAudioFocusChanged"

.field private static final EVENT_AUDIO_TRACKS:Ljava/lang/String; = "onAudioTracks"

.field private static final EVENT_BANDWIDTH:Ljava/lang/String; = "onVideoBandwidthUpdate"

.field private static final EVENT_BUFFER:Ljava/lang/String; = "onVideoBuffer"

.field private static final EVENT_END:Ljava/lang/String; = "onVideoEnd"

.field private static final EVENT_ERROR:Ljava/lang/String; = "onVideoError"

.field private static final EVENT_FULLSCREEN_DID_DISMISS:Ljava/lang/String; = "onVideoFullscreenPlayerDidDismiss"

.field private static final EVENT_FULLSCREEN_DID_PRESENT:Ljava/lang/String; = "onVideoFullscreenPlayerDidPresent"

.field private static final EVENT_FULLSCREEN_WILL_DISMISS:Ljava/lang/String; = "onVideoFullscreenPlayerWillDismiss"

.field private static final EVENT_FULLSCREEN_WILL_PRESENT:Ljava/lang/String; = "onVideoFullscreenPlayerWillPresent"

.field private static final EVENT_IDLE:Ljava/lang/String; = "onVideoIdle"

.field private static final EVENT_LOAD:Ljava/lang/String; = "onVideoLoad"

.field private static final EVENT_LOAD_START:Ljava/lang/String; = "onVideoLoadStart"

.field private static final EVENT_ON_RECEIVE_AD_EVENT:Ljava/lang/String; = "onReceiveAdEvent"

.field private static final EVENT_PLAYBACK_RATE_CHANGE:Ljava/lang/String; = "onPlaybackRateChange"

.field private static final EVENT_PLAYBACK_STATE_CHANGED:Ljava/lang/String; = "onVideoPlaybackStateChanged"

.field private static final EVENT_PROGRESS:Ljava/lang/String; = "onVideoProgress"

.field private static final EVENT_PROP_AUDIO_TRACKS:Ljava/lang/String; = "audioTracks"

.field private static final EVENT_PROP_BITRATE:Ljava/lang/String; = "bitrate"

.field private static final EVENT_PROP_CURRENT_PLAYBACK_TIME:Ljava/lang/String; = "currentPlaybackTime"

.field private static final EVENT_PROP_CURRENT_TIME:Ljava/lang/String; = "currentTime"

.field private static final EVENT_PROP_DURATION:Ljava/lang/String; = "duration"

.field private static final EVENT_PROP_ERROR:Ljava/lang/String; = "error"

.field private static final EVENT_PROP_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field private static final EVENT_PROP_ERROR_EXCEPTION:Ljava/lang/String; = "errorException"

.field private static final EVENT_PROP_ERROR_STRING:Ljava/lang/String; = "errorString"

.field private static final EVENT_PROP_ERROR_TRACE:Ljava/lang/String; = "errorStackTrace"

.field private static final EVENT_PROP_FAST_FORWARD:Ljava/lang/String; = "canPlayFastForward"

.field private static final EVENT_PROP_HAS_AUDIO_FOCUS:Ljava/lang/String; = "hasAudioFocus"

.field private static final EVENT_PROP_HEIGHT:Ljava/lang/String; = "height"

.field private static final EVENT_PROP_IS_BUFFERING:Ljava/lang/String; = "isBuffering"

.field private static final EVENT_PROP_IS_PLAYING:Ljava/lang/String; = "isPlaying"

.field private static final EVENT_PROP_NATURAL_SIZE:Ljava/lang/String; = "naturalSize"

.field private static final EVENT_PROP_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final EVENT_PROP_PLAYABLE_DURATION:Ljava/lang/String; = "playableDuration"

.field private static final EVENT_PROP_PLAYBACK_RATE:Ljava/lang/String; = "playbackRate"

.field private static final EVENT_PROP_REVERSE:Ljava/lang/String; = "canPlayReverse"

.field private static final EVENT_PROP_SEEKABLE_DURATION:Ljava/lang/String; = "seekableDuration"

.field private static final EVENT_PROP_SEEK_TIME:Ljava/lang/String; = "seekTime"

.field private static final EVENT_PROP_SLOW_FORWARD:Ljava/lang/String; = "canPlaySlowForward"

.field private static final EVENT_PROP_SLOW_REVERSE:Ljava/lang/String; = "canPlaySlowReverse"

.field private static final EVENT_PROP_STEP_BACKWARD:Ljava/lang/String; = "canStepBackward"

.field private static final EVENT_PROP_STEP_FORWARD:Ljava/lang/String; = "canStepForward"

.field private static final EVENT_PROP_TEXT_TRACKS:Ljava/lang/String; = "textTracks"

.field private static final EVENT_PROP_TEXT_TRACK_DATA:Ljava/lang/String; = "subtitleTracks"

.field private static final EVENT_PROP_TIMED_METADATA:Ljava/lang/String; = "metadata"

.field private static final EVENT_PROP_TRACK_ID:Ljava/lang/String; = "trackId"

.field private static final EVENT_PROP_VIDEO_TRACKS:Ljava/lang/String; = "videoTracks"

.field private static final EVENT_PROP_VOLUME:Ljava/lang/String; = "volume"

.field private static final EVENT_PROP_WIDTH:Ljava/lang/String; = "width"

.field private static final EVENT_READY:Ljava/lang/String; = "onReadyForDisplay"

.field private static final EVENT_RESUME:Ljava/lang/String; = "onPlaybackResume"

.field private static final EVENT_SEEK:Ljava/lang/String; = "onVideoSeek"

.field private static final EVENT_STALLED:Ljava/lang/String; = "onPlaybackStalled"

.field private static final EVENT_TEXT_TRACKS:Ljava/lang/String; = "onTextTracks"

.field private static final EVENT_TEXT_TRACK_DATA_CHANGED:Ljava/lang/String; = "onTextTrackDataChanged"

.field private static final EVENT_TIMED_METADATA:Ljava/lang/String; = "onTimedMetadata"

.field private static final EVENT_VIDEO_TRACKS:Ljava/lang/String; = "onVideoTracks"

.field private static final EVENT_VOLUME_CHANGE:Ljava/lang/String; = "onVolumeChange"

.field public static final Events:[Ljava/lang/String;


# instance fields
.field private final mReactContext:Lcom/facebook/react/bridge/ReactContext;

.field private viewId:I


# direct methods
.method static constructor <clinit>()V
    .locals 27

    const-string v0, "onVideoLoadStart"

    const-string v1, "onVideoLoad"

    const-string v2, "onVideoError"

    const-string v3, "onVideoProgress"

    const-string v4, "onVideoSeek"

    const-string v5, "onVideoEnd"

    const-string v6, "onVideoFullscreenPlayerWillPresent"

    const-string v7, "onVideoFullscreenPlayerDidPresent"

    const-string v8, "onVideoFullscreenPlayerWillDismiss"

    const-string v9, "onVideoFullscreenPlayerDidDismiss"

    const-string v10, "onPlaybackStalled"

    const-string v11, "onPlaybackResume"

    const-string v12, "onReadyForDisplay"

    const-string v13, "onVideoBuffer"

    const-string v14, "onVideoPlaybackStateChanged"

    const-string v15, "onVideoIdle"

    const-string v16, "onTimedMetadata"

    const-string v17, "onVideoAudioBecomingNoisy"

    const-string v18, "onAudioFocusChanged"

    const-string v19, "onPlaybackRateChange"

    const-string v20, "onVolumeChange"

    const-string v21, "onAudioTracks"

    const-string v22, "onTextTracks"

    const-string v23, "onTextTrackDataChanged"

    const-string v24, "onVideoTracks"

    const-string v25, "onVideoBandwidthUpdate"

    const-string v26, "onReceiveAdEvent"

    .line 65
    filled-new-array/range {v0 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brentvatne/common/react/VideoEventEmitter;->Events:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/brentvatne/common/react/VideoEventEmitter;->viewId:I

    iput-object p1, p0, Lcom/brentvatne/common/react/VideoEventEmitter;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    return-void
.end method

.method private receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 3

    iget-object v0, p0, Lcom/brentvatne/common/react/VideoEventEmitter;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    iget v1, p0, Lcom/brentvatne/common/react/VideoEventEmitter;->viewId:I

    .line 472
    invoke-static {v1}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/brentvatne/common/react/VideoEventEmitter;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 475
    invoke-static {v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result v1

    iget v2, p0, Lcom/brentvatne/common/react/VideoEventEmitter;->viewId:I

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/facebook/react/bridge/UIManager;->receiveEvent(IILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :cond_0
    return-void
.end method


# virtual methods
.method _error(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 3

    .line 383
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 384
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 385
    invoke-virtual {p2, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 386
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "errorString"

    .line 389
    invoke-interface {v1, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "errorException"

    .line 390
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "errorCode"

    .line 391
    invoke-interface {v1, p1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "errorStackTrace"

    .line 392
    invoke-interface {v1, p1, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string p2, "error"

    .line 394
    invoke-interface {p1, p2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string p2, "onVideoError"

    .line 395
    invoke-direct {p0, p2, p1}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method arrayToObject(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)Lcom/facebook/react/bridge/WritableMap;
    .locals 1

    .line 285
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 286
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-object v0
.end method

.method aspectRatioToNaturalSize(II)Lcom/facebook/react/bridge/WritableMap;
    .locals 2

    .line 176
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string/jumbo v1, "width"

    .line 177
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v1, "height"

    .line 178
    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v1, "orientation"

    if-le p1, p2, :cond_0

    const-string p1, "landscape"

    .line 180
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ge p1, p2, :cond_1

    const-string p1, "portrait"

    .line 182
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "square"

    .line 184
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public audioBecomingNoisy()V
    .locals 2

    const-string v0, "onVideoAudioBecomingNoisy"

    const/4 v1, 0x0

    .line 435
    invoke-direct {p0, v0, v1}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public audioFocusChanged(Z)V
    .locals 2

    .line 429
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "hasAudioFocus"

    .line 430
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "onAudioFocusChanged"

    .line 431
    invoke-direct {p0, p1, v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public audioTracks(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/brentvatne/common/api/Track;",
            ">;)V"
        }
    .end annotation

    const-string v0, "audioTracks"

    .line 291
    invoke-virtual {p0, p1}, Lcom/brentvatne/common/react/VideoEventEmitter;->audioTracksToArray(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/brentvatne/common/react/VideoEventEmitter;->arrayToObject(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v0, "onAudioTracks"

    invoke-direct {p0, v0, p1}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method audioTracksToArray(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/WritableArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/brentvatne/common/api/Track;",
            ">;)",
            "Lcom/facebook/react/bridge/WritableArray;"
        }
    .end annotation

    .line 190
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 192
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 193
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brentvatne/common/api/Track;

    .line 194
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    const-string v4, "index"

    .line 195
    invoke-interface {v3, v4, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "title"

    .line 196
    invoke-virtual {v2}, Lcom/brentvatne/common/api/Track;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2}, Lcom/brentvatne/common/api/Track;->getMimeType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "type"

    .line 198
    invoke-virtual {v2}, Lcom/brentvatne/common/api/Track;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    invoke-virtual {v2}, Lcom/brentvatne/common/api/Track;->getLanguage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, "language"

    .line 201
    invoke-virtual {v2}, Lcom/brentvatne/common/api/Track;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_1
    invoke-virtual {v2}, Lcom/brentvatne/common/api/Track;->getBitrate()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, "bitrate"

    .line 204
    invoke-virtual {v2}, Lcom/brentvatne/common/api/Track;->getBitrate()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    :cond_2
    const-string v4, "selected"

    .line 206
    invoke-virtual {v2}, Lcom/brentvatne/common/api/Track;->isSelected()Z

    move-result v2

    invoke-interface {v3, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 207
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public bandwidthReport(DIILjava/lang/String;)V
    .locals 2

    .line 318
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "bitrate"

    .line 319
    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo p1, "width"

    .line 320
    invoke-interface {v0, p1, p4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p1, "height"

    .line 321
    invoke-interface {v0, p1, p3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "trackId"

    .line 322
    invoke-interface {v0, p1, p5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "onVideoBandwidthUpdate"

    .line 323
    invoke-direct {p0, p1, v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public buffering(Z)V
    .locals 2

    .line 338
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "isBuffering"

    .line 339
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "onVideoBuffer"

    .line 340
    invoke-direct {p0, p1, v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public end()V
    .locals 2

    const-string v0, "onVideoEnd"

    const/4 v1, 0x0

    .line 354
    invoke-direct {p0, v0, v1}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "0001"

    .line 374
    invoke-virtual {p0, p1, p2, v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->_error(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    .line 378
    invoke-virtual {p0, p1, p2, p3}, Lcom/brentvatne/common/react/VideoEventEmitter;->_error(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method public fullscreenDidDismiss()V
    .locals 2

    const-string v0, "onVideoFullscreenPlayerDidDismiss"

    const/4 v1, 0x0

    .line 370
    invoke-direct {p0, v0, v1}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public fullscreenDidPresent()V
    .locals 2

    const-string v0, "onVideoFullscreenPlayerDidPresent"

    const/4 v1, 0x0

    .line 362
    invoke-direct {p0, v0, v1}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public fullscreenWillDismiss()V
    .locals 2

    const-string v0, "onVideoFullscreenPlayerWillDismiss"

    const/4 v1, 0x0

    .line 366
    invoke-direct {p0, v0, v1}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public fullscreenWillPresent()V
    .locals 2

    const-string v0, "onVideoFullscreenPlayerWillPresent"

    const/4 v1, 0x0

    .line 358
    invoke-direct {p0, v0, v1}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public idle()V
    .locals 2

    const-string v0, "onVideoIdle"

    const/4 v1, 0x0

    .line 350
    invoke-direct {p0, v0, v1}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method load(DDIILcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;Ljava/lang/String;)V
    .locals 4

    .line 261
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v1

    const-string v3, "duration"

    .line 262
    invoke-interface {v0, v3, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p1, "currentTime"

    div-double/2addr p3, v1

    .line 263
    invoke-interface {v0, p1, p3, p4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 265
    invoke-virtual {p0, p5, p6}, Lcom/brentvatne/common/react/VideoEventEmitter;->aspectRatioToNaturalSize(II)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string p2, "naturalSize"

    .line 266
    invoke-interface {v0, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string/jumbo p1, "trackId"

    .line 267
    invoke-interface {v0, p1, p10}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "videoTracks"

    .line 268
    invoke-interface {v0, p1, p9}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    const-string p1, "audioTracks"

    .line 269
    invoke-interface {v0, p1, p7}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    const-string/jumbo p1, "textTracks"

    .line 270
    invoke-interface {v0, p1, p8}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    const-string p1, "canPlayFastForward"

    const/4 p2, 0x1

    .line 273
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "canPlaySlowForward"

    .line 274
    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "canPlaySlowReverse"

    .line 275
    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "canPlayReverse"

    .line 276
    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 277
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "canStepBackward"

    .line 278
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "canStepForward"

    .line 279
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "onVideoLoad"

    .line 281
    invoke-direct {p0, p1, v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public load(DDIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDII",
            "Ljava/util/ArrayList<",
            "Lcom/brentvatne/common/api/Track;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/brentvatne/common/api/Track;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/brentvatne/common/api/VideoTrack;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v11, p0

    move-object/from16 v0, p7

    .line 252
    invoke-virtual {p0, v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->audioTracksToArray(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v7

    move-object/from16 v0, p9

    .line 253
    invoke-virtual {p0, v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->videoTracksToArray(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v9

    move-object/from16 v0, p8

    .line 254
    invoke-virtual {p0, v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->textTracksToArray(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v8

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v10, p10

    .line 256
    invoke-virtual/range {v0 .. v10}, Lcom/brentvatne/common/react/VideoEventEmitter;->load(DDIILcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;Ljava/lang/String;)V

    return-void
.end method

.method public loadStart()V
    .locals 2

    const-string v0, "onVideoLoadStart"

    const/4 v1, 0x0

    .line 172
    invoke-direct {p0, v0, v1}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public playbackRateChange(F)V
    .locals 4

    .line 399
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "playbackRate"

    float-to-double v2, p1

    .line 400
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p1, "onPlaybackRateChange"

    .line 401
    invoke-direct {p0, p1, v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public playbackStateChanged(Z)V
    .locals 2

    .line 344
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "isPlaying"

    .line 345
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "onVideoPlaybackStateChanged"

    .line 346
    invoke-direct {p0, p1, v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public progressChanged(DDDD)V
    .locals 4

    .line 309
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v1

    const-string v3, "currentTime"

    .line 310
    invoke-interface {v0, v3, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p1, "playableDuration"

    div-double/2addr p3, v1

    .line 311
    invoke-interface {v0, p1, p3, p4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p1, "seekableDuration"

    div-double/2addr p5, v1

    .line 312
    invoke-interface {v0, p1, p5, p6}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p1, "currentPlaybackTime"

    .line 313
    invoke-interface {v0, p1, p7, p8}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p1, "onVideoProgress"

    .line 314
    invoke-direct {p0, p1, v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public ready()V
    .locals 2

    const-string v0, "onReadyForDisplay"

    const/4 v1, 0x0

    .line 334
    invoke-direct {p0, v0, v1}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public receiveAdErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 459
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "event"

    const-string v2, "ERROR"

    .line 460
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "message"

    .line 463
    invoke-interface {v1, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "code"

    .line 464
    invoke-interface {v1, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "type"

    .line 465
    invoke-interface {v1, p1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data"

    .line 466
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string p1, "onReceiveAdEvent"

    .line 468
    invoke-direct {p0, p1, v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public receiveAdEvent(Ljava/lang/String;)V
    .locals 2

    .line 452
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "event"

    .line 453
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "onReceiveAdEvent"

    .line 455
    invoke-direct {p0, p1, v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public receiveAdEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 439
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "event"

    .line 440
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 443
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 444
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "data"

    .line 446
    invoke-interface {v0, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string p1, "onReceiveAdEvent"

    .line 448
    invoke-direct {p0, p1, v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public seek(JJ)V
    .locals 4

    .line 327
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    long-to-double p1, p1

    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v1

    const-string v3, "currentTime"

    .line 328
    invoke-interface {v0, v3, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    long-to-double p1, p3

    div-double/2addr p1, v1

    const-string p3, "seekTime"

    .line 329
    invoke-interface {v0, p3, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p1, "onVideoSeek"

    .line 330
    invoke-direct {p0, p1, v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public setViewId(I)V
    .locals 0

    iput p1, p0, Lcom/brentvatne/common/react/VideoEventEmitter;->viewId:I

    return-void
.end method

.method public textTrackDataChanged(Ljava/lang/String;)V
    .locals 2

    .line 299
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "subtitleTracks"

    .line 300
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "onTextTrackDataChanged"

    .line 301
    invoke-direct {p0, p1, v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public textTracks(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/brentvatne/common/api/Track;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "textTracks"

    .line 295
    invoke-virtual {p0, p1}, Lcom/brentvatne/common/react/VideoEventEmitter;->textTracksToArray(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/brentvatne/common/react/VideoEventEmitter;->arrayToObject(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v0, "onTextTracks"

    invoke-direct {p0, v0, p1}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method textTracksToArray(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/WritableArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/brentvatne/common/api/Track;",
            ">;)",
            "Lcom/facebook/react/bridge/WritableArray;"
        }
    .end annotation

    .line 234
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 236
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 237
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brentvatne/common/api/Track;

    .line 238
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    const-string v4, "index"

    .line 239
    invoke-interface {v3, v4, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "title"

    .line 240
    invoke-virtual {v2}, Lcom/brentvatne/common/api/Track;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "type"

    .line 241
    invoke-virtual {v2}, Lcom/brentvatne/common/api/Track;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "language"

    .line 242
    invoke-virtual {v2}, Lcom/brentvatne/common/api/Track;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "selected"

    .line 243
    invoke-virtual {v2}, Lcom/brentvatne/common/api/Track;->isSelected()Z

    move-result v2

    invoke-interface {v3, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public timedMetadata(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/brentvatne/common/api/TimedMetadata;",
            ">;)V"
        }
    .end annotation

    .line 411
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 416
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 417
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 418
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brentvatne/common/api/TimedMetadata;

    invoke-virtual {v3}, Lcom/brentvatne/common/api/TimedMetadata;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    const-string v4, "identifier"

    invoke-interface {v2, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brentvatne/common/api/TimedMetadata;

    invoke-virtual {v3}, Lcom/brentvatne/common/api/TimedMetadata;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "value"

    invoke-interface {v2, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 423
    :cond_1
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v1, "metadata"

    .line 424
    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    const-string v0, "onTimedMetadata"

    .line 425
    invoke-direct {p0, v0, p1}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public videoTracks(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/brentvatne/common/api/VideoTrack;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "videoTracks"

    .line 305
    invoke-virtual {p0, p1}, Lcom/brentvatne/common/react/VideoEventEmitter;->videoTracksToArray(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/brentvatne/common/react/VideoEventEmitter;->arrayToObject(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v0, "onVideoTracks"

    invoke-direct {p0, v0, p1}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method videoTracksToArray(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/WritableArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/brentvatne/common/api/VideoTrack;",
            ">;)",
            "Lcom/facebook/react/bridge/WritableArray;"
        }
    .end annotation

    .line 214
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 216
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 217
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brentvatne/common/api/VideoTrack;

    .line 218
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    const-string/jumbo v4, "width"

    .line 219
    invoke-virtual {v2}, Lcom/brentvatne/common/api/VideoTrack;->getWidth()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v4, "height"

    .line 220
    invoke-virtual {v2}, Lcom/brentvatne/common/api/VideoTrack;->getHeight()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v4, "bitrate"

    .line 221
    invoke-virtual {v2}, Lcom/brentvatne/common/api/VideoTrack;->getBitrate()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v4, "codecs"

    .line 222
    invoke-virtual {v2}, Lcom/brentvatne/common/api/VideoTrack;->getCodecs()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "trackId"

    .line 223
    invoke-virtual {v2}, Lcom/brentvatne/common/api/VideoTrack;->getTrackId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "index"

    .line 224
    invoke-virtual {v2}, Lcom/brentvatne/common/api/VideoTrack;->getIndex()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v4, "selected"

    .line 225
    invoke-virtual {v2}, Lcom/brentvatne/common/api/VideoTrack;->isSelected()Z

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "rotation"

    .line 226
    invoke-virtual {v2}, Lcom/brentvatne/common/api/VideoTrack;->getRotation()I

    move-result v2

    invoke-interface {v3, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 227
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public volumeChange(F)V
    .locals 4

    .line 405
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string/jumbo v1, "volume"

    float-to-double v2, p1

    .line 406
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p1, "onVolumeChange"

    .line 407
    invoke-direct {p0, p1, v0}, Lcom/brentvatne/common/react/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method
