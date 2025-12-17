.class public Lcom/brentvatne/exoplayer/ReactExoplayerViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "ReactExoplayerViewManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/brentvatne/exoplayer/ReactExoplayerView;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROP_AD_TAG_URL:Ljava/lang/String; = "adTagUrl"

.field private static final PROP_AUDIO_OUTPUT:Ljava/lang/String; = "audioOutput"

.field private static final PROP_BUFFERING_STRATEGY:Ljava/lang/String; = "bufferingStrategy"

.field private static final PROP_BUFFER_CONFIG:Ljava/lang/String; = "bufferConfig"

.field private static final PROP_CONTENT_START_TIME:Ljava/lang/String; = "contentStartTime"

.field private static final PROP_CONTROLS:Ljava/lang/String; = "controls"

.field private static final PROP_CONTROLS_STYLES:Ljava/lang/String; = "controlsStyles"

.field private static final PROP_DEBUG:Ljava/lang/String; = "debug"

.field private static final PROP_DISABLE_DISCONNECT_ERROR:Ljava/lang/String; = "disableDisconnectError"

.field private static final PROP_DISABLE_FOCUS:Ljava/lang/String; = "disableFocus"

.field private static final PROP_DRM:Ljava/lang/String; = "drm"

.field private static final PROP_DRM_HEADERS:Ljava/lang/String; = "headers"

.field private static final PROP_DRM_LICENSE_SERVER:Ljava/lang/String; = "licenseServer"

.field private static final PROP_DRM_TYPE:Ljava/lang/String; = "type"

.field private static final PROP_FOCUSABLE:Ljava/lang/String; = "focusable"

.field private static final PROP_FULLSCREEN:Ljava/lang/String; = "fullscreen"

.field private static final PROP_HIDE_SHUTTER_VIEW:Ljava/lang/String; = "hideShutterView"

.field private static final PROP_MAXIMUM_BIT_RATE:Ljava/lang/String; = "maxBitRate"

.field private static final PROP_MIN_LOAD_RETRY_COUNT:Ljava/lang/String; = "minLoadRetryCount"

.field private static final PROP_MUTED:Ljava/lang/String; = "muted"

.field private static final PROP_PAUSED:Ljava/lang/String; = "paused"

.field private static final PROP_PLAY_IN_BACKGROUND:Ljava/lang/String; = "playInBackground"

.field private static final PROP_PREVENTS_DISPLAY_SLEEP_DURING_VIDEO_PLAYBACK:Ljava/lang/String; = "preventsDisplaySleepDuringVideoPlayback"

.field private static final PROP_PROGRESS_UPDATE_INTERVAL:Ljava/lang/String; = "progressUpdateInterval"

.field private static final PROP_RATE:Ljava/lang/String; = "rate"

.field private static final PROP_REPEAT:Ljava/lang/String; = "repeat"

.field private static final PROP_REPORT_BANDWIDTH:Ljava/lang/String; = "reportBandwidth"

.field private static final PROP_RESIZE_MODE:Ljava/lang/String; = "resizeMode"

.field private static final PROP_SECURE_VIEW:Ljava/lang/String; = "useSecureView"

.field private static final PROP_SELECTED_AUDIO_TRACK:Ljava/lang/String; = "selectedAudioTrack"

.field private static final PROP_SELECTED_AUDIO_TRACK_TYPE:Ljava/lang/String; = "type"

.field private static final PROP_SELECTED_AUDIO_TRACK_VALUE:Ljava/lang/String; = "value"

.field private static final PROP_SELECTED_TEXT_TRACK:Ljava/lang/String; = "selectedTextTrack"

.field private static final PROP_SELECTED_TEXT_TRACK_TYPE:Ljava/lang/String; = "type"

.field private static final PROP_SELECTED_TEXT_TRACK_VALUE:Ljava/lang/String; = "value"

.field private static final PROP_SELECTED_VIDEO_TRACK:Ljava/lang/String; = "selectedVideoTrack"

.field private static final PROP_SELECTED_VIDEO_TRACK_TYPE:Ljava/lang/String; = "type"

.field private static final PROP_SELECTED_VIDEO_TRACK_VALUE:Ljava/lang/String; = "value"

.field private static final PROP_SHOW_NOTIFICATION_CONTROLS:Ljava/lang/String; = "showNotificationControls"

.field private static final PROP_SHUTTER_COLOR:Ljava/lang/String; = "shutterColor"

.field private static final PROP_SRC:Ljava/lang/String; = "src"

.field private static final PROP_SUBTITLE_STYLE:Ljava/lang/String; = "subtitleStyle"

.field private static final PROP_TEXT_TRACKS:Ljava/lang/String; = "textTracks"

.field private static final PROP_USE_TEXTURE_VIEW:Ljava/lang/String; = "useTextureView"

.field private static final PROP_VOLUME:Ljava/lang/String; = "volume"

.field private static final REACT_CLASS:Ljava/lang/String; = "RCTVideo"

.field private static final TAG:Ljava/lang/String; = "ExoViewManager"


# instance fields
.field private final config:Lcom/brentvatne/exoplayer/ReactExoplayerConfig;


# direct methods
.method public constructor <init>(Lcom/brentvatne/exoplayer/ReactExoplayerConfig;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerViewManager;->config:Lcom/brentvatne/exoplayer/ReactExoplayerConfig;

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/brentvatne/exoplayer/ReactExoplayerView;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/brentvatne/exoplayer/ReactExoplayerView;
    .locals 2

    .line 101
    new-instance v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerViewManager;->config:Lcom/brentvatne/exoplayer/ReactExoplayerConfig;

    invoke-direct {v0, p1, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/brentvatne/exoplayer/ReactExoplayerConfig;)V

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 111
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->builder()Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 112
    sget-object v1, Lcom/brentvatne/common/react/VideoEventEmitter;->Events:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    const-string v5, "registrationName"

    .line 113
    invoke-static {v5, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/react/common/MapBuilder$Builder;->build()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RCTVideo"

    return-object v0
.end method

.method public minLoadRetryCount(Lcom/brentvatne/exoplayer/ReactExoplayerView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "minLoadRetryCount"
    .end annotation

    .line 282
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setMinLoadRetryCountModifier(I)V

    return-void
.end method

.method public bridge synthetic onDropViewInstance(Landroid/view/View;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerViewManager;->onDropViewInstance(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    return-void
.end method

.method public onDropViewInstance(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 0

    .line 106
    invoke-virtual {p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->cleanUpResources()V

    return-void
.end method

.method public setAdTagUrl(Lcom/brentvatne/exoplayer/ReactExoplayerView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "adTagUrl"
    .end annotation

    .line 157
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 158
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setAdTagUrl(Landroid/net/Uri;)V

    return-void

    .line 162
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 164
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setAdTagUrl(Landroid/net/Uri;)V

    return-void
.end method

.method public setAudioOutput(Lcom/brentvatne/exoplayer/ReactExoplayerView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "audioOutput"
    .end annotation

    .line 252
    invoke-static {p2}, Lcom/brentvatne/exoplayer/AudioOutput;->get(Ljava/lang/String;)Lcom/brentvatne/exoplayer/AudioOutput;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setAudioOutput(Lcom/brentvatne/exoplayer/AudioOutput;)V

    return-void
.end method

.method public setBufferConfig(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .param p2    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "bufferConfig"
    .end annotation

    .line 354
    invoke-static {p2}, Lcom/brentvatne/common/api/BufferConfig;->parse(Lcom/facebook/react/bridge/ReadableMap;)Lcom/brentvatne/common/api/BufferConfig;

    move-result-object p2

    .line 355
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setBufferConfig(Lcom/brentvatne/common/api/BufferConfig;)V

    return-void
.end method

.method public setBufferingStrategy(Lcom/brentvatne/exoplayer/ReactExoplayerView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "bufferingStrategy"
    .end annotation

    .line 307
    sget-object v0, Lcom/brentvatne/common/api/BufferingStrategy;->Companion:Lcom/brentvatne/common/api/BufferingStrategy$Companion;

    invoke-virtual {v0, p2}, Lcom/brentvatne/common/api/BufferingStrategy$Companion;->parse(Ljava/lang/String;)Lcom/brentvatne/common/api/BufferingStrategy$BufferingStrategyEnum;

    move-result-object p2

    .line 308
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setBufferingStrategy(Lcom/brentvatne/common/api/BufferingStrategy$BufferingStrategyEnum;)V

    return-void
.end method

.method public setContentStartTime(Lcom/brentvatne/exoplayer/ReactExoplayerView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = -0x1
        name = "contentStartTime"
    .end annotation

    .line 302
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setContentStartTime(I)V

    return-void
.end method

.method public setControls(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "controls"
    .end annotation

    .line 338
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setControls(Z)V

    return-void
.end method

.method public setControlsStyles(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .param p2    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "controlsStyles"
    .end annotation

    .line 378
    invoke-static {p2}, Lcom/brentvatne/common/api/ControlsConfig;->parse(Lcom/facebook/react/bridge/ReadableMap;)Lcom/brentvatne/common/api/ControlsConfig;

    move-result-object p2

    .line 379
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setControlsStyles(Lcom/brentvatne/common/api/ControlsConfig;)V

    return-void
.end method

.method public setDRM(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 8
    .param p2    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "drm"
    .end annotation

    if-eqz p2, :cond_4

    const-string/jumbo v0, "type"

    .line 120
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 121
    invoke-static {p2, v0}, Lcom/brentvatne/common/toolbox/ReactBridgeUtils;->safeGetString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "licenseServer"

    .line 122
    invoke-static {p2, v1}, Lcom/brentvatne/common/toolbox/ReactBridgeUtils;->safeGetString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "headers"

    .line 123
    invoke-static {p2, v2}, Lcom/brentvatne/common/toolbox/ReactBridgeUtils;->safeGetArray(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 124
    invoke-static {v0}, Landroidx/media3/common/util/Util;->getDrmUuid(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 125
    invoke-static {v0}, Landroidx/media3/common/util/Util;->getDrmUuid(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 126
    invoke-virtual {p1, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setDrmType(Ljava/util/UUID;)V

    .line 127
    invoke-virtual {p1, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setDrmLicenseUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    .line 130
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 131
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    const-string v4, "key"

    .line 132
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    move-object v4, v6

    :goto_1
    const-string/jumbo v5, "value"

    .line 133
    invoke-interface {v3, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 134
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-array p2, v0, [Ljava/lang/String;

    .line 137
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setDrmLicenseHeader([Ljava/lang/String;)V

    .line 139
    :cond_3
    invoke-virtual {p1, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setUseTextureView(Z)V

    :cond_4
    return-void
.end method

.method public setDebug(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .param p2    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "debug"
    .end annotation

    const-string v0, "enable"

    const/4 v1, 0x0

    .line 366
    invoke-static {p2, v0, v1}, Lcom/brentvatne/common/toolbox/ReactBridgeUtils;->safeGetBool(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v2, "thread"

    .line 367
    invoke-static {p2, v2, v1}, Lcom/brentvatne/common/toolbox/ReactBridgeUtils;->safeGetBool(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 369
    invoke-static {v1, p2}, Lcom/brentvatne/common/toolbox/DebugLog;->setConfig(IZ)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    .line 371
    invoke-static {v1, p2}, Lcom/brentvatne/common/toolbox/DebugLog;->setConfig(IZ)V

    .line 373
    :goto_0
    invoke-virtual {p1, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setDebug(Z)V

    return-void
.end method

.method public setDisableDisconnectError(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "disableDisconnectError"
    .end annotation

    .line 313
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setDisableDisconnectError(Z)V

    return-void
.end method

.method public setDisableFocus(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "disableFocus"
    .end annotation

    .line 292
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setDisableFocus(Z)V

    return-void
.end method

.method public setFocusable(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "focusable"
    .end annotation

    .line 297
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setFocusable(Z)V

    return-void
.end method

.method public setFullscreen(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "fullscreen"
    .end annotation

    .line 318
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setFullscreen(Z)V

    return-void
.end method

.method public setHideShutterView(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "hideShutterView"
    .end annotation

    .line 333
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setHideShutterView(Z)V

    return-void
.end method

.method public setMaxBitRate(Lcom/brentvatne/exoplayer/ReactExoplayerView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "maxBitRate"
    .end annotation

    .line 277
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setMaxBitRateModifier(I)V

    return-void
.end method

.method public setMuted(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "muted"
    .end annotation

    .line 247
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setMutedModifier(Z)V

    return-void
.end method

.method public setPaused(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "paused"
    .end annotation

    .line 242
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPausedModifier(Z)V

    return-void
.end method

.method public setPlayInBackground(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "playInBackground"
    .end annotation

    .line 287
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPlayInBackground(Z)V

    return-void
.end method

.method public setPreventsDisplaySleepDuringVideoPlayback(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "preventsDisplaySleepDuringVideoPlayback"
    .end annotation

    .line 194
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPreventsDisplaySleepDuringVideoPlayback(Z)V

    return-void
.end method

.method public setProgressUpdateInterval(Lcom/brentvatne/exoplayer/ReactExoplayerView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 250.0f
        name = "progressUpdateInterval"
    .end annotation

    .line 262
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setProgressUpdateInterval(F)V

    return-void
.end method

.method public setPropTextTracks(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p2    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "textTracks"
    .end annotation

    .line 236
    sget-object v0, Lcom/brentvatne/common/api/SideLoadedTextTrackList;->Companion:Lcom/brentvatne/common/api/SideLoadedTextTrackList$Companion;

    invoke-virtual {v0, p2}, Lcom/brentvatne/common/api/SideLoadedTextTrackList$Companion;->parse(Lcom/facebook/react/bridge/ReadableArray;)Lcom/brentvatne/common/api/SideLoadedTextTrackList;

    move-result-object p2

    .line 237
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setTextTracks(Lcom/brentvatne/common/api/SideLoadedTextTrackList;)V

    return-void
.end method

.method public setRate(Lcom/brentvatne/exoplayer/ReactExoplayerView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "rate"
    .end annotation

    .line 272
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setRateModifier(F)V

    return-void
.end method

.method public setRepeat(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "repeat"
    .end annotation

    .line 189
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setRepeatModifier(Z)V

    return-void
.end method

.method public setReportBandwidth(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "reportBandwidth"
    .end annotation

    .line 267
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setReportBandwidth(Z)V

    return-void
.end method

.method public setResizeMode(Lcom/brentvatne/exoplayer/ReactExoplayerView;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "resizeMode"
    .end annotation

    .line 169
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "contain"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "cover"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "none"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "stretch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported resize mode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " - falling back to fit"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ExoViewManager"

    invoke-static {v0, p2}, Lcom/brentvatne/common/toolbox/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setResizeModeModifier(I)V

    goto :goto_1

    :pswitch_0
    const/4 p2, 0x4

    .line 175
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setResizeModeModifier(I)V

    goto :goto_1

    .line 172
    :pswitch_1
    invoke-virtual {p1, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setResizeModeModifier(I)V

    goto :goto_1

    .line 178
    :pswitch_2
    invoke-virtual {p1, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setResizeModeModifier(I)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x702b18fb -> :sswitch_3
        0x33af38 -> :sswitch_2
        0x5a753b7 -> :sswitch_1
        0x38b724d4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSelectedAudioTrack(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .param p2    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "selectedAudioTrack"
    .end annotation

    if-eqz p2, :cond_0

    const-string/jumbo v0, "type"

    .line 215
    invoke-static {p2, v0}, Lcom/brentvatne/common/toolbox/ReactBridgeUtils;->safeGetString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "value"

    .line 216
    invoke-static {p2, v1}, Lcom/brentvatne/common/toolbox/ReactBridgeUtils;->safeGetString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object p2, v0

    .line 218
    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedAudioTrack(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSelectedTextTrack(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .param p2    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "selectedTextTrack"
    .end annotation

    if-eqz p2, :cond_0

    const-string/jumbo v0, "type"

    .line 227
    invoke-static {p2, v0}, Lcom/brentvatne/common/toolbox/ReactBridgeUtils;->safeGetString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "value"

    .line 228
    invoke-static {p2, v1}, Lcom/brentvatne/common/toolbox/ReactBridgeUtils;->safeGetString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object p2, v0

    .line 230
    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedTextTrack(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSelectedVideoTrack(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .param p2    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "selectedVideoTrack"
    .end annotation

    if-eqz p2, :cond_0

    const-string/jumbo v0, "type"

    .line 203
    invoke-static {p2, v0}, Lcom/brentvatne/common/toolbox/ReactBridgeUtils;->safeGetString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "value"

    .line 204
    invoke-static {p2, v1}, Lcom/brentvatne/common/toolbox/ReactBridgeUtils;->safeGetString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object p2, v0

    .line 206
    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedVideoTrack(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setShowNotificationControls(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "showNotificationControls"
    .end annotation

    .line 360
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setShowNotificationControls(Z)V

    return-void
.end method

.method public setShutterColor(Lcom/brentvatne/exoplayer/ReactExoplayerView;Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "shutterColor"
    .end annotation

    if-nez p2, :cond_0

    const/high16 p2, -0x1000000

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setShutterColor(Ljava/lang/Integer;)V

    return-void
.end method

.method public setSrc(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .param p2    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "src"
    .end annotation

    .line 146
    invoke-virtual {p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 147
    invoke-static {p2, v0}, Lcom/brentvatne/common/api/Source;->parse(Lcom/facebook/react/bridge/ReadableMap;Landroid/content/Context;)Lcom/brentvatne/common/api/Source;

    move-result-object p2

    .line 148
    invoke-virtual {p2}, Lcom/brentvatne/common/api/Source;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->clearSrc()V

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSrc(Lcom/brentvatne/common/api/Source;)V

    :goto_0
    return-void
.end method

.method public setSubtitleStyle(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .param p2    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "subtitleStyle"
    .end annotation

    .line 343
    invoke-static {p2}, Lcom/brentvatne/common/api/SubtitleStyle;->parse(Lcom/facebook/react/bridge/ReadableMap;)Lcom/brentvatne/common/api/SubtitleStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSubtitleStyle(Lcom/brentvatne/common/api/SubtitleStyle;)V

    return-void
.end method

.method public setUseTextureView(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "useTextureView"
    .end annotation

    .line 323
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setUseTextureView(Z)V

    return-void
.end method

.method public setVolume(Lcom/brentvatne/exoplayer/ReactExoplayerView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "volume"
    .end annotation

    .line 257
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setVolumeModifier(F)V

    return-void
.end method

.method public useSecureView(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "useSecureView"
    .end annotation

    .line 328
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->useSecureView(Z)V

    return-void
.end method
