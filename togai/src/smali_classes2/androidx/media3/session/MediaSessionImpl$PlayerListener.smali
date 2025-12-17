.class Landroidx/media3/session/MediaSessionImpl$PlayerListener;
.super Ljava/lang/Object;
.source "MediaSessionImpl.java"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayerListener"
.end annotation


# instance fields
.field private final player:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media3/session/PlayerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final session:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerWrapper;)V
    .locals 1

    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 867
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->session:Ljava/lang/ref/WeakReference;

    .line 868
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getSession()Landroidx/media3/session/MediaSessionImpl;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->session:Ljava/lang/ref/WeakReference;

    .line 1351
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    return-object v0
.end method

.method static synthetic lambda$onAudioAttributesChanged$15(Landroidx/media3/common/AudioAttributes;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1171
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onAudioAttributesChanged(ILandroidx/media3/common/AudioAttributes;)V

    return-void
.end method

.method static synthetic lambda$onDeviceInfoChanged$18(Landroidx/media3/common/DeviceInfo;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1233
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onDeviceInfoChanged(ILandroidx/media3/common/DeviceInfo;)V

    return-void
.end method

.method static synthetic lambda$onDeviceVolumeChanged$19(IZLandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1251
    invoke-interface {p2, p3, p0, p1}, Landroidx/media3/session/MediaSession$ControllerCb;->onDeviceVolumeChanged(IIZ)V

    return-void
.end method

.method static synthetic lambda$onIsLoadingChanged$6(ZLandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1006
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onIsLoadingChanged(IZ)V

    return-void
.end method

.method static synthetic lambda$onIsPlayingChanged$5(ZLandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 987
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onIsPlayingChanged(IZ)V

    return-void
.end method

.method static synthetic lambda$onMediaItemTransition$1(Landroidx/media3/common/MediaItem;ILandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 905
    invoke-interface {p2, p3, p0, p1}, Landroidx/media3/session/MediaSession$ControllerCb;->onMediaItemTransition(ILandroidx/media3/common/MediaItem;I)V

    return-void
.end method

.method static synthetic lambda$onMediaMetadataChanged$22(Landroidx/media3/common/MediaMetadata;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1319
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onMediaMetadataChanged(ILandroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$onPlayWhenReadyChanged$2(ZILandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 926
    invoke-interface {p2, p3, p0, p1}, Landroidx/media3/session/MediaSession$ControllerCb;->onPlayWhenReadyChanged(IZI)V

    return-void
.end method

.method static synthetic lambda$onPlaybackParametersChanged$8(Landroidx/media3/common/PlaybackParameters;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1047
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onPlaybackParametersChanged(ILandroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method static synthetic lambda$onPlaybackStateChanged$4(ILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 968
    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object p1

    invoke-interface {p2, p3, p0, p1}, Landroidx/media3/session/MediaSession$ControllerCb;->onPlaybackStateChanged(IILandroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$onPlaybackSuppressionReasonChanged$3(ILandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 948
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onPlaybackSuppressionReasonChanged(II)V

    return-void
.end method

.method static synthetic lambda$onPlayerError$0(Landroidx/media3/common/PlaybackException;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 886
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onPlayerError(ILandroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$onPlaylistMetadataChanged$12(Landroidx/media3/common/MediaMetadata;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1117
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onPlaylistMetadataChanged(ILandroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$onPositionDiscontinuity$7(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;ILandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1029
    invoke-interface {p3, p4, p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb;->onPositionDiscontinuity(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    return-void
.end method

.method static synthetic lambda$onRepeatModeChanged$13(ILandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1135
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onRepeatModeChanged(II)V

    return-void
.end method

.method static synthetic lambda$onSeekBackIncrementChanged$9(JLandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1065
    invoke-interface {p2, p3, p0, p1}, Landroidx/media3/session/MediaSession$ControllerCb;->onSeekBackIncrementChanged(IJ)V

    return-void
.end method

.method static synthetic lambda$onSeekForwardIncrementChanged$10(JLandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1083
    invoke-interface {p2, p3, p0, p1}, Landroidx/media3/session/MediaSession$ControllerCb;->onSeekForwardIncrementChanged(IJ)V

    return-void
.end method

.method static synthetic lambda$onShuffleModeEnabledChanged$14(ZLandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1153
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onShuffleModeEnabledChanged(IZ)V

    return-void
.end method

.method static synthetic lambda$onTimelineChanged$11(Landroidx/media3/common/Timeline;ILandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1103
    invoke-interface {p2, p3, p0, p1}, Landroidx/media3/session/MediaSession$ControllerCb;->onTimelineChanged(ILandroidx/media3/common/Timeline;I)V

    return-void
.end method

.method static synthetic lambda$onTrackSelectionParametersChanged$21(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1301
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onTrackSelectionParametersChanged(ILandroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method static synthetic lambda$onTracksChanged$20(Landroidx/media3/common/Tracks;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1283
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onTracksChanged(ILandroidx/media3/common/Tracks;)V

    return-void
.end method

.method static synthetic lambda$onVideoSizeChanged$16(Landroidx/media3/common/VideoSize;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1185
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onVideoSizeChanged(ILandroidx/media3/common/VideoSize;)V

    return-void
.end method

.method static synthetic lambda$onVolumeChanged$17(FLandroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1199
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onVolumeChanged(IF)V

    return-void
.end method


# virtual methods
.method public onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V
    .locals 3

    .line 1158
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1162
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    .line 1163
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    if-nez v1, :cond_1

    return-void

    .line 1167
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithAudioAttributes(Landroidx/media3/common/AudioAttributes;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1168
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1170
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/common/AudioAttributes;)V

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V
    .locals 2

    .line 1256
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1260
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    .line 1261
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    if-nez v1, :cond_1

    return-void

    .line 1265
    :cond_1
    invoke-static {v0, p1}, Landroidx/media3/session/MediaSessionImpl;->access$500(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method public onCues(Landroidx/media3/common/text/CueGroup;)V
    .locals 3

    .line 1204
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1208
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    .line 1209
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    if-nez v1, :cond_1

    return-void

    .line 1213
    :cond_1
    new-instance v1, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setCues(Landroidx/media3/common/text/CueGroup;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1214
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    return-void
.end method

.method public onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V
    .locals 3

    .line 1220
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1224
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    .line 1225
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    if-nez v1, :cond_1

    return-void

    .line 1229
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceInfo(Landroidx/media3/common/DeviceInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1230
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1232
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda16;-><init>(Landroidx/media3/common/DeviceInfo;)V

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .locals 3

    .line 1238
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1242
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    .line 1243
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    if-nez v1, :cond_1

    return-void

    .line 1247
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1248
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1250
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda22;

    invoke-direct {v1, p1, p2}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda22;-><init>(IZ)V

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public onIsLoadingChanged(Z)V
    .locals 3

    .line 993
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 997
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    .line 998
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    if-nez v1, :cond_1

    return-void

    .line 1002
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithIsLoading(Z)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1003
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1005
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda15;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda15;-><init>(Z)V

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1007
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$400(Landroidx/media3/session/MediaSessionImpl;)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 3

    .line 974
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 978
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    .line 979
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    if-nez v1, :cond_1

    return-void

    .line 983
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithIsPlaying(Z)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 984
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 986
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda8;-><init>(Z)V

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 988
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$400(Landroidx/media3/session/MediaSessionImpl;)V

    return-void
.end method

.method public onMaxSeekToPreviousPositionChanged(J)V
    .locals 2

    .line 1334
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1338
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    .line 1339
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    if-nez v1, :cond_1

    return-void

    .line 1344
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/PlayerInfo;->copyWithMaxSeekToPreviousPositionMs(J)Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    .line 1343
    invoke-static {v0, p1}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1345
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    return-void
.end method

.method public onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V
    .locals 3

    .line 892
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 896
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    .line 897
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    if-nez v1, :cond_1

    return-void

    .line 901
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroidx/media3/session/PlayerInfo;->copyWithMediaItemTransitionReason(I)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 902
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 904
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda17;

    invoke-direct {v1, p1, p2}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda17;-><init>(Landroidx/media3/common/MediaItem;I)V

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 3

    .line 1306
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1310
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    .line 1311
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    if-nez v1, :cond_1

    return-void

    .line 1315
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1316
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1318
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda21;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda21;-><init>(Landroidx/media3/common/MediaMetadata;)V

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 3

    .line 911
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 915
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    .line 916
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    if-nez v1, :cond_1

    return-void

    .line 921
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    .line 922
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    iget v2, v2, Landroidx/media3/session/PlayerInfo;->playbackSuppressionReason:I

    .line 921
    invoke-virtual {v1, p1, p2, v2}, Landroidx/media3/session/PlayerInfo;->copyWithPlayWhenReady(ZII)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    .line 920
    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 923
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 925
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1, p2}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda20;-><init>(ZI)V

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
    .locals 3

    .line 1034
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1038
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    .line 1039
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    if-nez v1, :cond_1

    return-void

    .line 1043
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1044
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1046
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda23;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda23;-><init>(Landroidx/media3/common/PlaybackParameters;)V

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 4

    .line 953
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 957
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    .line 958
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    if-nez v1, :cond_1

    return-void

    .line 963
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackState(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    .line 962
    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 964
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 966
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda11;

    invoke-direct {v2, p1, v1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda11;-><init>(ILandroidx/media3/session/PlayerWrapper;)V

    invoke-static {v0, v2}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(I)V
    .locals 4

    .line 931
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 935
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    .line 936
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    if-nez v1, :cond_1

    return-void

    .line 941
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    .line 942
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    iget-boolean v2, v2, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    .line 943
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v3

    iget v3, v3, Landroidx/media3/session/PlayerInfo;->playWhenReadyChangeReason:I

    .line 941
    invoke-virtual {v1, v2, v3, p1}, Landroidx/media3/session/PlayerInfo;->copyWithPlayWhenReady(ZII)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    .line 940
    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 945
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 947
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 3

    .line 873
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 877
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    .line 878
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    if-nez v1, :cond_1

    return-void

    .line 882
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithPlayerError(Landroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 883
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 885
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda19;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda19;-><init>(Landroidx/media3/common/PlaybackException;)V

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 3

    .line 1108
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1112
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1113
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1114
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1116
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/common/MediaMetadata;)V

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 3

    .line 1013
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1017
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    .line 1018
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    if-nez v1, :cond_1

    return-void

    .line 1024
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroidx/media3/session/PlayerInfo;->copyWithPositionInfos(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    .line 1023
    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1025
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1027
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1, p2, p3}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda12;-><init>(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    .line 1324
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1328
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1329
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda18;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 3

    .line 1122
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1126
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    .line 1127
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    if-nez v1, :cond_1

    return-void

    .line 1131
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithRepeatMode(I)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1132
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1134
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public onSeekBackIncrementChanged(J)V
    .locals 3

    .line 1052
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1056
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    .line 1057
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    if-nez v1, :cond_1

    return-void

    .line 1061
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/PlayerInfo;->copyWithSeekBackIncrement(J)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1062
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1064
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda2;-><init>(J)V

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public onSeekForwardIncrementChanged(J)V
    .locals 3

    .line 1070
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1074
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    .line 1075
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    if-nez v1, :cond_1

    return-void

    .line 1079
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/PlayerInfo;->copyWithSeekForwardIncrement(J)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1080
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1082
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 3

    .line 1140
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1144
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    .line 1145
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    if-nez v1, :cond_1

    return-void

    .line 1149
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithShuffleModeEnabled(Z)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1150
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1152
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda4;-><init>(Z)V

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public onTimelineChanged(Landroidx/media3/common/Timeline;I)V
    .locals 4

    .line 1088
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1092
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    .line 1093
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    if-nez v1, :cond_1

    return-void

    .line 1098
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    .line 1099
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->createSessionPositionInfoForBundling()Landroidx/media3/session/SessionPositionInfo;

    move-result-object v1

    .line 1098
    invoke-virtual {v2, p1, v1, p2}, Landroidx/media3/session/PlayerInfo;->copyWithTimelineAndSessionPositionInfo(Landroidx/media3/common/Timeline;Landroidx/media3/session/SessionPositionInfo;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    .line 1097
    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1100
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1102
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1, p2}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda13;-><init>(Landroidx/media3/common/Timeline;I)V

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 3

    .line 1288
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1292
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    .line 1293
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    if-nez v1, :cond_1

    return-void

    .line 1297
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1298
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1300
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda14;-><init>(Landroidx/media3/common/TrackSelectionParameters;)V

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public onTracksChanged(Landroidx/media3/common/Tracks;)V
    .locals 4

    .line 1270
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1274
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->player:Ljava/lang/ref/WeakReference;

    .line 1275
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/PlayerWrapper;

    if-nez v1, :cond_1

    return-void

    .line 1279
    :cond_1
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithCurrentTracks(Landroidx/media3/common/Tracks;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1280
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1282
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/common/Tracks;)V

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 3

    .line 1176
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1180
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1181
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithVideoSize(Landroidx/media3/common/VideoSize;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1182
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1184
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/common/VideoSize;)V

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 3

    .line 1190
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->getSession()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1194
    :cond_0
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$000(Landroidx/media3/session/MediaSessionImpl;)V

    .line 1195
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$100(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithVolume(F)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$102(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    .line 1196
    invoke-static {v0}, Landroidx/media3/session/MediaSessionImpl;->access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1198
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerListener$$ExternalSyntheticLambda6;-><init>(F)V

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->access$300(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method
