.class Landroidx/media3/session/PlayerInfo;
.super Ljava/lang/Object;
.source "PlayerInfo.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/PlayerInfo$Builder;,
        Landroidx/media3/session/PlayerInfo$BundlingExclusions;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/session/PlayerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Landroidx/media3/session/PlayerInfo;

.field public static final DISCONTINUITY_REASON_DEFAULT:I = 0x0

.field private static final FIELD_AUDIO_ATTRIBUTES:Ljava/lang/String;

.field private static final FIELD_CUE_GROUP:Ljava/lang/String;

.field private static final FIELD_CURRENT_TRACKS:Ljava/lang/String;

.field private static final FIELD_DEVICE_INFO:Ljava/lang/String;

.field private static final FIELD_DEVICE_MUTED:Ljava/lang/String;

.field private static final FIELD_DEVICE_VOLUME:Ljava/lang/String;

.field private static final FIELD_DISCONTINUITY_REASON:Ljava/lang/String;

.field private static final FIELD_IS_LOADING:Ljava/lang/String;

.field private static final FIELD_IS_PLAYING:Ljava/lang/String;

.field private static final FIELD_MAX_SEEK_TO_PREVIOUS_POSITION_MS:Ljava/lang/String;

.field private static final FIELD_MEDIA_ITEM_TRANSITION_REASON:Ljava/lang/String;

.field private static final FIELD_MEDIA_METADATA:Ljava/lang/String;

.field private static final FIELD_NEW_POSITION_INFO:Ljava/lang/String;

.field private static final FIELD_OLD_POSITION_INFO:Ljava/lang/String;

.field private static final FIELD_PLAYBACK_ERROR:Ljava/lang/String;

.field private static final FIELD_PLAYBACK_PARAMETERS:Ljava/lang/String;

.field private static final FIELD_PLAYBACK_STATE:Ljava/lang/String;

.field private static final FIELD_PLAYBACK_SUPPRESSION_REASON:Ljava/lang/String;

.field private static final FIELD_PLAYLIST_METADATA:Ljava/lang/String;

.field private static final FIELD_PLAY_WHEN_READY:Ljava/lang/String;

.field private static final FIELD_PLAY_WHEN_READY_CHANGE_REASON:Ljava/lang/String;

.field private static final FIELD_REPEAT_MODE:Ljava/lang/String;

.field private static final FIELD_SEEK_BACK_INCREMENT_MS:Ljava/lang/String;

.field private static final FIELD_SEEK_FORWARD_INCREMENT_MS:Ljava/lang/String;

.field private static final FIELD_SESSION_POSITION_INFO:Ljava/lang/String;

.field private static final FIELD_SHUFFLE_MODE_ENABLED:Ljava/lang/String;

.field private static final FIELD_TIMELINE:Ljava/lang/String;

.field private static final FIELD_TIMELINE_CHANGE_REASON:Ljava/lang/String;

.field private static final FIELD_TRACK_SELECTION_PARAMETERS:Ljava/lang/String;

.field private static final FIELD_VIDEO_SIZE:Ljava/lang/String;

.field private static final FIELD_VOLUME:Ljava/lang/String;

.field public static final MEDIA_ITEM_TRANSITION_REASON_DEFAULT:I = 0x0

.field public static final PLAY_WHEN_READY_CHANGE_REASON_DEFAULT:I = 0x1

.field public static final TIMELINE_CHANGE_REASON_DEFAULT:I


# instance fields
.field public final audioAttributes:Landroidx/media3/common/AudioAttributes;

.field public final cueGroup:Landroidx/media3/common/text/CueGroup;

.field public final currentTracks:Landroidx/media3/common/Tracks;

.field public final deviceInfo:Landroidx/media3/common/DeviceInfo;

.field public final deviceMuted:Z

.field public final deviceVolume:I

.field public final discontinuityReason:I

.field public final isLoading:Z

.field public final isPlaying:Z

.field public final maxSeekToPreviousPositionMs:J

.field public final mediaItemTransitionReason:I

.field public final mediaMetadata:Landroidx/media3/common/MediaMetadata;

.field public final newPositionInfo:Landroidx/media3/common/Player$PositionInfo;

.field public final oldPositionInfo:Landroidx/media3/common/Player$PositionInfo;

.field public final playWhenReady:Z

.field public final playWhenReadyChangeReason:I

.field public final playbackParameters:Landroidx/media3/common/PlaybackParameters;

.field public final playbackState:I

.field public final playbackSuppressionReason:I

.field public final playerError:Landroidx/media3/common/PlaybackException;

.field public final playlistMetadata:Landroidx/media3/common/MediaMetadata;

.field public final repeatMode:I

.field public final seekBackIncrementMs:J

.field public final seekForwardIncrementMs:J

.field public final sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

.field public final shuffleModeEnabled:Z

.field public final timeline:Landroidx/media3/common/Timeline;

.field public final timelineChangeReason:I

.field public final trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

.field public final videoSize:Landroidx/media3/common/VideoSize;

.field public final volume:F


# direct methods
.method public static synthetic $r8$lambda$UYUSO7JOpKqYSM-ZlCuW_lSgFks(Landroid/os/Bundle;)Landroidx/media3/session/PlayerInfo;
    .locals 0

    invoke-static {p0}, Landroidx/media3/session/PlayerInfo;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 36

    .line 430
    new-instance v35, Landroidx/media3/session/PlayerInfo;

    move-object/from16 v0, v35

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Landroidx/media3/session/SessionPositionInfo;->DEFAULT:Landroidx/media3/session/SessionPositionInfo;

    sget-object v4, Landroidx/media3/session/SessionPositionInfo;->DEFAULT_POSITION_INFO:Landroidx/media3/common/Player$PositionInfo;

    sget-object v5, Landroidx/media3/session/SessionPositionInfo;->DEFAULT_POSITION_INFO:Landroidx/media3/common/Player$PositionInfo;

    const/4 v6, 0x0

    sget-object v7, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    sget-object v11, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    const/4 v12, 0x0

    sget-object v13, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    const/high16 v14, 0x3f800000    # 1.0f

    sget-object v15, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    sget-object v16, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    sget-object v17, Landroidx/media3/common/DeviceInfo;->UNKNOWN:Landroidx/media3/common/DeviceInfo;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    sget-object v26, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    sget-object v33, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    sget-object v34, Landroidx/media3/common/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Landroidx/media3/common/TrackSelectionParameters;

    invoke-direct/range {v0 .. v34}, Landroidx/media3/session/PlayerInfo;-><init>(Landroidx/media3/common/PlaybackException;ILandroidx/media3/session/SessionPositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;ILandroidx/media3/common/PlaybackParameters;IZLandroidx/media3/common/VideoSize;Landroidx/media3/common/Timeline;ILandroidx/media3/common/MediaMetadata;FLandroidx/media3/common/AudioAttributes;Landroidx/media3/common/text/CueGroup;Landroidx/media3/common/DeviceInfo;IZZIIIZZLandroidx/media3/common/MediaMetadata;JJJLandroidx/media3/common/Tracks;Landroidx/media3/common/TrackSelectionParameters;)V

    sput-object v35, Landroidx/media3/session/PlayerInfo;->DEFAULT:Landroidx/media3/session/PlayerInfo;

    const/4 v0, 0x1

    .line 794
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_PLAYBACK_PARAMETERS:Ljava/lang/String;

    const/4 v0, 0x2

    .line 795
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_REPEAT_MODE:Ljava/lang/String;

    const/4 v0, 0x3

    .line 796
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_SHUFFLE_MODE_ENABLED:Ljava/lang/String;

    const/4 v0, 0x4

    .line 797
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_TIMELINE:Ljava/lang/String;

    const/4 v0, 0x5

    .line 798
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_VIDEO_SIZE:Ljava/lang/String;

    const/4 v0, 0x6

    .line 799
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_PLAYLIST_METADATA:Ljava/lang/String;

    const/4 v0, 0x7

    .line 800
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_VOLUME:Ljava/lang/String;

    const/16 v0, 0x8

    .line 801
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_AUDIO_ATTRIBUTES:Ljava/lang/String;

    const/16 v0, 0x9

    .line 802
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_DEVICE_INFO:Ljava/lang/String;

    const/16 v0, 0xa

    .line 803
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_DEVICE_VOLUME:Ljava/lang/String;

    const/16 v0, 0xb

    .line 804
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_DEVICE_MUTED:Ljava/lang/String;

    const/16 v0, 0xc

    .line 805
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_PLAY_WHEN_READY:Ljava/lang/String;

    const/16 v0, 0xd

    .line 806
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_PLAY_WHEN_READY_CHANGE_REASON:Ljava/lang/String;

    const/16 v0, 0xe

    .line 807
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_PLAYBACK_SUPPRESSION_REASON:Ljava/lang/String;

    const/16 v0, 0xf

    .line 808
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_PLAYBACK_STATE:Ljava/lang/String;

    const/16 v0, 0x10

    .line 809
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_IS_PLAYING:Ljava/lang/String;

    const/16 v0, 0x11

    .line 810
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_IS_LOADING:Ljava/lang/String;

    const/16 v0, 0x12

    .line 811
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_PLAYBACK_ERROR:Ljava/lang/String;

    const/16 v0, 0x13

    .line 812
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_SESSION_POSITION_INFO:Ljava/lang/String;

    const/16 v0, 0x14

    .line 813
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_MEDIA_ITEM_TRANSITION_REASON:Ljava/lang/String;

    const/16 v0, 0x15

    .line 814
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_OLD_POSITION_INFO:Ljava/lang/String;

    const/16 v0, 0x16

    .line 815
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_NEW_POSITION_INFO:Ljava/lang/String;

    const/16 v0, 0x17

    .line 816
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_DISCONTINUITY_REASON:Ljava/lang/String;

    const/16 v0, 0x18

    .line 817
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_CUE_GROUP:Ljava/lang/String;

    const/16 v0, 0x19

    .line 818
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_MEDIA_METADATA:Ljava/lang/String;

    const/16 v0, 0x1a

    .line 819
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_SEEK_BACK_INCREMENT_MS:Ljava/lang/String;

    const/16 v0, 0x1b

    .line 820
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_SEEK_FORWARD_INCREMENT_MS:Ljava/lang/String;

    const/16 v0, 0x1c

    .line 821
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_MAX_SEEK_TO_PREVIOUS_POSITION_MS:Ljava/lang/String;

    const/16 v0, 0x1d

    .line 822
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_TRACK_SELECTION_PARAMETERS:Ljava/lang/String;

    const/16 v0, 0x1e

    .line 823
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_CURRENT_TRACKS:Ljava/lang/String;

    const/16 v0, 0x1f

    .line 824
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo;->FIELD_TIMELINE_CHANGE_REASON:Ljava/lang/String;

    .line 903
    new-instance v0, Landroidx/media3/session/PlayerInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/session/PlayerInfo$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/session/PlayerInfo;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/PlaybackException;ILandroidx/media3/session/SessionPositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;ILandroidx/media3/common/PlaybackParameters;IZLandroidx/media3/common/VideoSize;Landroidx/media3/common/Timeline;ILandroidx/media3/common/MediaMetadata;FLandroidx/media3/common/AudioAttributes;Landroidx/media3/common/text/CueGroup;Landroidx/media3/common/DeviceInfo;IZZIIIZZLandroidx/media3/common/MediaMetadata;JJJLandroidx/media3/common/Tracks;Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 3

    move-object v0, p0

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Landroidx/media3/session/PlayerInfo;->playerError:Landroidx/media3/common/PlaybackException;

    move v1, p2

    iput v1, v0, Landroidx/media3/session/PlayerInfo;->mediaItemTransitionReason:I

    move-object v1, p3

    iput-object v1, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    move-object v1, p4

    iput-object v1, v0, Landroidx/media3/session/PlayerInfo;->oldPositionInfo:Landroidx/media3/common/Player$PositionInfo;

    move-object v1, p5

    iput-object v1, v0, Landroidx/media3/session/PlayerInfo;->newPositionInfo:Landroidx/media3/common/Player$PositionInfo;

    move v1, p6

    iput v1, v0, Landroidx/media3/session/PlayerInfo;->discontinuityReason:I

    move-object v1, p7

    iput-object v1, v0, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    move v1, p8

    iput v1, v0, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    move v1, p9

    iput-boolean v1, v0, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    move-object v1, p10

    iput-object v1, v0, Landroidx/media3/session/PlayerInfo;->videoSize:Landroidx/media3/common/VideoSize;

    move-object v1, p11

    iput-object v1, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    move v1, p12

    iput v1, v0, Landroidx/media3/session/PlayerInfo;->timelineChangeReason:I

    move-object/from16 v1, p13

    iput-object v1, v0, Landroidx/media3/session/PlayerInfo;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    move/from16 v1, p14

    iput v1, v0, Landroidx/media3/session/PlayerInfo;->volume:F

    move-object/from16 v1, p15

    iput-object v1, v0, Landroidx/media3/session/PlayerInfo;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/media3/session/PlayerInfo;->cueGroup:Landroidx/media3/common/text/CueGroup;

    move-object/from16 v1, p17

    iput-object v1, v0, Landroidx/media3/session/PlayerInfo;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    move/from16 v1, p18

    iput v1, v0, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    move/from16 v1, p19

    iput-boolean v1, v0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    move/from16 v1, p20

    iput-boolean v1, v0, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    move/from16 v1, p21

    iput v1, v0, Landroidx/media3/session/PlayerInfo;->playWhenReadyChangeReason:I

    move/from16 v1, p22

    iput v1, v0, Landroidx/media3/session/PlayerInfo;->playbackSuppressionReason:I

    move/from16 v1, p23

    iput v1, v0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    move/from16 v1, p24

    iput-boolean v1, v0, Landroidx/media3/session/PlayerInfo;->isPlaying:Z

    move/from16 v1, p25

    iput-boolean v1, v0, Landroidx/media3/session/PlayerInfo;->isLoading:Z

    move-object/from16 v1, p26

    iput-object v1, v0, Landroidx/media3/session/PlayerInfo;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    move-wide/from16 v1, p27

    iput-wide v1, v0, Landroidx/media3/session/PlayerInfo;->seekBackIncrementMs:J

    move-wide/from16 v1, p29

    iput-wide v1, v0, Landroidx/media3/session/PlayerInfo;->seekForwardIncrementMs:J

    move-wide/from16 v1, p31

    iput-wide v1, v0, Landroidx/media3/session/PlayerInfo;->maxSeekToPreviousPositionMs:J

    move-object/from16 v1, p33

    iput-object v1, v0, Landroidx/media3/session/PlayerInfo;->currentTracks:Landroidx/media3/common/Tracks;

    move-object/from16 v1, p34

    iput-object v1, v0, Landroidx/media3/session/PlayerInfo;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/PlayerInfo;
    .locals 38

    move-object/from16 v0, p0

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_PLAYBACK_ERROR:Ljava/lang/String;

    .line 906
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 909
    :cond_0
    sget-object v2, Landroidx/media3/common/PlaybackException;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v2, v1}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/PlaybackException;

    :goto_0
    move-object v3, v1

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_MEDIA_ITEM_TRANSITION_REASON:Ljava/lang/String;

    const/4 v2, 0x0

    .line 911
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_SESSION_POSITION_INFO:Ljava/lang/String;

    .line 912
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    .line 915
    sget-object v1, Landroidx/media3/session/SessionPositionInfo;->DEFAULT:Landroidx/media3/session/SessionPositionInfo;

    goto :goto_1

    .line 916
    :cond_1
    sget-object v5, Landroidx/media3/session/SessionPositionInfo;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v5, v1}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/SessionPositionInfo;

    :goto_1
    move-object v5, v1

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_OLD_POSITION_INFO:Ljava/lang/String;

    .line 917
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    .line 920
    sget-object v1, Landroidx/media3/session/SessionPositionInfo;->DEFAULT_POSITION_INFO:Landroidx/media3/common/Player$PositionInfo;

    goto :goto_2

    .line 921
    :cond_2
    sget-object v6, Landroidx/media3/common/Player$PositionInfo;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v6, v1}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Player$PositionInfo;

    :goto_2
    move-object v6, v1

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_NEW_POSITION_INFO:Ljava/lang/String;

    .line 922
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_3

    .line 925
    sget-object v1, Landroidx/media3/session/SessionPositionInfo;->DEFAULT_POSITION_INFO:Landroidx/media3/common/Player$PositionInfo;

    goto :goto_3

    .line 926
    :cond_3
    sget-object v7, Landroidx/media3/common/Player$PositionInfo;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v7, v1}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Player$PositionInfo;

    :goto_3
    move-object v7, v1

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_DISCONTINUITY_REASON:Ljava/lang/String;

    .line 928
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_PLAYBACK_PARAMETERS:Ljava/lang/String;

    .line 929
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_4

    .line 932
    sget-object v1, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    goto :goto_4

    .line 933
    :cond_4
    sget-object v9, Landroidx/media3/common/PlaybackParameters;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v9, v1}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/PlaybackParameters;

    :goto_4
    move-object v9, v1

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_REPEAT_MODE:Ljava/lang/String;

    .line 935
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_SHUFFLE_MODE_ENABLED:Ljava/lang/String;

    .line 937
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_TIMELINE:Ljava/lang/String;

    .line 938
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_5

    .line 940
    sget-object v1, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    goto :goto_5

    :cond_5
    sget-object v12, Landroidx/media3/common/Timeline;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v12, v1}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Timeline;

    :goto_5
    move-object v13, v1

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_TIMELINE_CHANGE_REASON:Ljava/lang/String;

    .line 942
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_VIDEO_SIZE:Ljava/lang/String;

    .line 944
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_6

    .line 946
    sget-object v1, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    goto :goto_6

    :cond_6
    sget-object v12, Landroidx/media3/common/VideoSize;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v12, v1}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/VideoSize;

    :goto_6
    move-object v12, v1

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_PLAYLIST_METADATA:Ljava/lang/String;

    .line 947
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_7

    .line 950
    sget-object v1, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    goto :goto_7

    .line 951
    :cond_7
    sget-object v15, Landroidx/media3/common/MediaMetadata;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v15, v1}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/MediaMetadata;

    :goto_7
    move-object v15, v1

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_VOLUME:Ljava/lang/String;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 952
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    sget-object v2, Landroidx/media3/session/PlayerInfo;->FIELD_AUDIO_ATTRIBUTES:Ljava/lang/String;

    .line 953
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_8

    .line 956
    sget-object v2, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    move/from16 v17, v1

    move-object v1, v2

    goto :goto_8

    :cond_8
    move/from16 v17, v1

    .line 957
    sget-object v1, Landroidx/media3/common/AudioAttributes;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v1, v2}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/AudioAttributes;

    :goto_8
    sget-object v2, Landroidx/media3/session/PlayerInfo;->FIELD_CUE_GROUP:Ljava/lang/String;

    .line 958
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_9

    .line 961
    sget-object v2, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    move-object/from16 v18, v1

    move-object v1, v2

    goto :goto_9

    :cond_9
    move-object/from16 v18, v1

    .line 962
    sget-object v1, Landroidx/media3/common/text/CueGroup;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v1, v2}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/text/CueGroup;

    :goto_9
    sget-object v2, Landroidx/media3/session/PlayerInfo;->FIELD_DEVICE_INFO:Ljava/lang/String;

    .line 963
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_a

    .line 966
    sget-object v2, Landroidx/media3/common/DeviceInfo;->UNKNOWN:Landroidx/media3/common/DeviceInfo;

    move-object/from16 v19, v1

    move-object v1, v2

    goto :goto_a

    :cond_a
    move-object/from16 v19, v1

    .line 967
    sget-object v1, Landroidx/media3/common/DeviceInfo;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v1, v2}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/DeviceInfo;

    :goto_a
    sget-object v2, Landroidx/media3/session/PlayerInfo;->FIELD_DEVICE_VOLUME:Ljava/lang/String;

    move-object/from16 v20, v1

    const/4 v1, 0x0

    .line 968
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    sget-object v2, Landroidx/media3/session/PlayerInfo;->FIELD_DEVICE_MUTED:Ljava/lang/String;

    .line 969
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    sget-object v2, Landroidx/media3/session/PlayerInfo;->FIELD_PLAY_WHEN_READY:Ljava/lang/String;

    .line 970
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    sget-object v2, Landroidx/media3/session/PlayerInfo;->FIELD_PLAY_WHEN_READY_CHANGE_REASON:Ljava/lang/String;

    const/4 v1, 0x1

    .line 972
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v24

    sget-object v2, Landroidx/media3/session/PlayerInfo;->FIELD_PLAYBACK_SUPPRESSION_REASON:Ljava/lang/String;

    const/4 v1, 0x0

    .line 977
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v26

    sget-object v2, Landroidx/media3/session/PlayerInfo;->FIELD_PLAYBACK_STATE:Ljava/lang/String;

    const/4 v1, 0x1

    .line 981
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_IS_PLAYING:Ljava/lang/String;

    const/4 v2, 0x0

    .line 982
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move/from16 v27, v1

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_IS_LOADING:Ljava/lang/String;

    .line 983
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v2, Landroidx/media3/session/PlayerInfo;->FIELD_MEDIA_METADATA:Ljava/lang/String;

    .line 984
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_b

    .line 987
    sget-object v2, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    move/from16 v28, v1

    move-object v1, v2

    goto :goto_b

    :cond_b
    move/from16 v28, v1

    .line 988
    sget-object v1, Landroidx/media3/common/MediaMetadata;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v1, v2}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/MediaMetadata;

    :goto_b
    sget-object v2, Landroidx/media3/session/PlayerInfo;->FIELD_SEEK_BACK_INCREMENT_MS:Ljava/lang/String;

    move/from16 v16, v14

    move-object/from16 v29, v15

    const-wide/16 v14, 0x0

    .line 989
    invoke-virtual {v0, v2, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v30

    sget-object v2, Landroidx/media3/session/PlayerInfo;->FIELD_SEEK_FORWARD_INCREMENT_MS:Ljava/lang/String;

    .line 991
    invoke-virtual {v0, v2, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v32

    sget-object v2, Landroidx/media3/session/PlayerInfo;->FIELD_MAX_SEEK_TO_PREVIOUS_POSITION_MS:Ljava/lang/String;

    .line 993
    invoke-virtual {v0, v2, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    sget-object v2, Landroidx/media3/session/PlayerInfo;->FIELD_CURRENT_TRACKS:Ljava/lang/String;

    .line 994
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_c

    .line 996
    sget-object v2, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    goto :goto_c

    :cond_c
    sget-object v14, Landroidx/media3/common/Tracks;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v14, v2}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Tracks;

    :goto_c
    move-object/from16 v36, v2

    sget-object v2, Landroidx/media3/session/PlayerInfo;->FIELD_TRACK_SELECTION_PARAMETERS:Ljava/lang/String;

    .line 998
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_d

    .line 1001
    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Landroidx/media3/common/TrackSelectionParameters;

    goto :goto_d

    .line 1002
    :cond_d
    invoke-static {v0}, Landroidx/media3/common/TrackSelectionParameters;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    .line 1003
    :goto_d
    new-instance v37, Landroidx/media3/session/PlayerInfo;

    move-object/from16 v2, v37

    move/from16 v14, v16

    move-object/from16 v15, v29

    move/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v26

    move/from16 v26, v27

    move/from16 v27, v28

    move-object/from16 v28, v1

    move-wide/from16 v29, v30

    move-wide/from16 v31, v32

    move-wide/from16 v33, v34

    move-object/from16 v35, v36

    move-object/from16 v36, v0

    invoke-direct/range {v2 .. v36}, Landroidx/media3/session/PlayerInfo;-><init>(Landroidx/media3/common/PlaybackException;ILandroidx/media3/session/SessionPositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;ILandroidx/media3/common/PlaybackParameters;IZLandroidx/media3/common/VideoSize;Landroidx/media3/common/Timeline;ILandroidx/media3/common/MediaMetadata;FLandroidx/media3/common/AudioAttributes;Landroidx/media3/common/text/CueGroup;Landroidx/media3/common/DeviceInfo;IZZIIIZZLandroidx/media3/common/MediaMetadata;JJJLandroidx/media3/common/Tracks;Landroidx/media3/common/TrackSelectionParameters;)V

    return-object v37
.end method

.method private isPlaying(IZI)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public copyWithAudioAttributes(Landroidx/media3/common/AudioAttributes;)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 658
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public copyWithCurrentTracks(Landroidx/media3/common/Tracks;)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 702
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setCurrentTracks(Landroidx/media3/common/Tracks;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public copyWithDeviceInfo(Landroidx/media3/common/DeviceInfo;)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 673
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setDeviceInfo(Landroidx/media3/common/DeviceInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 678
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setDeviceVolume(I)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/media3/session/PlayerInfo$Builder;->setDeviceMuted(Z)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public copyWithIsLoading(Z)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 567
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setIsLoading(Z)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public copyWithIsPlaying(Z)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 562
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setIsPlaying(Z)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public copyWithMaxSeekToPreviousPositionMs(J)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 698
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/PlayerInfo$Builder;->setMaxSeekToPreviousPositionMs(J)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public copyWithMediaItemTransitionReason(I)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 542
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setMediaItemTransitionReason(I)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public copyWithMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 683
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public copyWithPlayWhenReady(ZII)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 531
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    .line 532
    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setPlayWhenReady(Z)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object v0

    .line 533
    invoke-virtual {v0, p2}, Landroidx/media3/session/PlayerInfo$Builder;->setPlayWhenReadyChangeReason(I)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p2

    .line 534
    invoke-virtual {p2, p3}, Landroidx/media3/session/PlayerInfo$Builder;->setPlaybackSuppressionReason(I)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p2

    iget v0, p0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    .line 535
    invoke-direct {p0, v0, p1, p3}, Landroidx/media3/session/PlayerInfo;->isPlaying(IZI)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setIsPlaying(Z)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    .line 536
    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public copyWithPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 572
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public copyWithPlaybackState(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;
    .locals 2

    .line 553
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    .line 554
    invoke-virtual {v0, p2}, Landroidx/media3/session/PlayerInfo$Builder;->setPlayerError(Landroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p2

    .line 555
    invoke-virtual {p2, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setPlaybackState(I)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p2

    iget-boolean v0, p0, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    iget v1, p0, Landroidx/media3/session/PlayerInfo;->playbackSuppressionReason:I

    .line 556
    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/session/PlayerInfo;->isPlaying(IZI)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setIsPlaying(Z)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    .line 557
    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public copyWithPlayerError(Landroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 547
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setPlayerError(Landroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public copyWithPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 643
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public copyWithPositionInfos(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 580
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    .line 581
    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setOldPositionInfo(Landroidx/media3/common/Player$PositionInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    .line 582
    invoke-virtual {p1, p2}, Landroidx/media3/session/PlayerInfo$Builder;->setNewPositionInfo(Landroidx/media3/common/Player$PositionInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    .line 583
    invoke-virtual {p1, p3}, Landroidx/media3/session/PlayerInfo$Builder;->setDiscontinuityReason(I)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    .line 584
    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public copyWithRepeatMode(I)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 648
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setRepeatMode(I)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public copyWithSeekBackIncrement(J)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 688
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/PlayerInfo$Builder;->setSeekBackIncrement(J)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public copyWithSeekForwardIncrement(J)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 693
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/PlayerInfo$Builder;->setSeekForwardIncrement(J)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public copyWithSessionPositionInfo(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 589
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setSessionPositionInfo(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public copyWithShuffleModeEnabled(Z)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 653
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setShuffleModeEnabled(Z)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public copyWithTimeline(Landroidx/media3/common/Timeline;)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 594
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setTimeline(Landroidx/media3/common/Timeline;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public copyWithTimelineAndMediaItemIndex(Landroidx/media3/common/Timeline;II)Landroidx/media3/session/PlayerInfo;
    .locals 28

    move-object/from16 v0, p0

    .line 614
    new-instance v1, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v1, v0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    move-object/from16 v2, p1

    .line 615
    invoke-virtual {v1, v2}, Landroidx/media3/session/PlayerInfo$Builder;->setTimeline(Landroidx/media3/common/Timeline;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object v1

    move/from16 v2, p3

    .line 616
    invoke-virtual {v1, v2}, Landroidx/media3/session/PlayerInfo$Builder;->setTimelineChangeReason(I)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object v1

    new-instance v14, Landroidx/media3/session/SessionPositionInfo;

    move-object v2, v14

    new-instance v15, Landroidx/media3/common/Player$PositionInfo;

    move-object v3, v15

    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v4, v4, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-object v4, v4, Landroidx/media3/common/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    iget-object v5, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v5, v5, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-object v5, v5, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v6, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v6, v6, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-object v6, v6, Landroidx/media3/common/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    iget-object v7, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v7, v7, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v7, v7, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    iget-object v8, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v8, v8, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v8, v8, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    iget-object v10, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v10, v10, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v10, v10, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    iget-object v12, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v12, v12, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v12, v12, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    iget-object v13, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v13, v13, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v13, v13, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    move-object/from16 v16, v4

    move/from16 v17, p2

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move/from16 v20, v7

    move-wide/from16 v21, v8

    move-wide/from16 v23, v10

    move/from16 v25, v12

    move/from16 v26, v13

    invoke-direct/range {v15 .. v26}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-boolean v4, v4, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    .line 630
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v7, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v7, v7, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    iget-object v9, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v9, v9, Landroidx/media3/session/SessionPositionInfo;->bufferedPositionMs:J

    iget-object v11, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget v11, v11, Landroidx/media3/session/SessionPositionInfo;->bufferedPercentage:I

    iget-object v12, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v12, v12, Landroidx/media3/session/SessionPositionInfo;->totalBufferedDurationMs:J

    iget-object v15, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    move-object/from16 p1, v14

    iget-wide v14, v15, Landroidx/media3/session/SessionPositionInfo;->currentLiveOffsetMs:J

    move-object/from16 v27, p1

    move-object/from16 p1, v1

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    move-object/from16 p3, v2

    iget-wide v1, v1, Landroidx/media3/session/SessionPositionInfo;->contentDurationMs:J

    move-wide/from16 v16, v1

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v1, v1, Landroidx/media3/session/SessionPositionInfo;->contentBufferedPositionMs:J

    move-wide/from16 v18, v1

    move-object/from16 v2, p3

    invoke-direct/range {v2 .. v19}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    .line 617
    invoke-virtual {v1, v2}, Landroidx/media3/session/PlayerInfo$Builder;->setSessionPositionInfo(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object v1

    .line 638
    invoke-virtual {v1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    return-object v1
.end method

.method public copyWithTimelineAndSessionPositionInfo(Landroidx/media3/common/Timeline;Landroidx/media3/session/SessionPositionInfo;I)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 602
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    .line 603
    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setTimeline(Landroidx/media3/common/Timeline;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    .line 604
    invoke-virtual {p1, p2}, Landroidx/media3/session/PlayerInfo$Builder;->setSessionPositionInfo(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    .line 605
    invoke-virtual {p1, p3}, Landroidx/media3/session/PlayerInfo$Builder;->setTimelineChangeReason(I)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    .line 606
    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public copyWithTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 707
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public copyWithVideoSize(Landroidx/media3/common/VideoSize;)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 663
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setVideoSize(Landroidx/media3/common/VideoSize;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public copyWithVolume(F)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 668
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setVolume(F)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentMediaItem()Landroidx/media3/common/MediaItem;
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 777
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, p0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    .line 780
    iget-object v1, v1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    new-instance v2, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 779
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    :goto_0
    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 2

    .line 896
    new-instance v0, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    .line 897
    invoke-virtual {v0}, Landroidx/media3/common/Player$Commands$Builder;->addAllCommands()Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    const/4 v1, 0x0

    .line 896
    invoke-virtual {p0, v0, v1, v1}, Landroidx/media3/session/PlayerInfo;->toBundle(Landroidx/media3/common/Player$Commands;ZZ)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public toBundle(Landroidx/media3/common/Player$Commands;ZZ)Landroid/os/Bundle;
    .locals 5

    .line 829
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x10

    .line 831
    invoke-virtual {p1, v1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v1

    const/16 v2, 0x11

    .line 832
    invoke-virtual {p1, v2}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v2

    iget-object v3, p0, Landroidx/media3/session/PlayerInfo;->playerError:Landroidx/media3/common/PlaybackException;

    if-eqz v3, :cond_0

    sget-object v4, Landroidx/media3/session/PlayerInfo;->FIELD_PLAYBACK_ERROR:Ljava/lang/String;

    .line 834
    invoke-virtual {v3}, Landroidx/media3/common/PlaybackException;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    sget-object v3, Landroidx/media3/session/PlayerInfo;->FIELD_MEDIA_ITEM_TRANSITION_REASON:Ljava/lang/String;

    iget v4, p0, Landroidx/media3/session/PlayerInfo;->mediaItemTransitionReason:I

    .line 836
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v3, Landroidx/media3/session/PlayerInfo;->FIELD_SESSION_POSITION_INFO:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    .line 839
    invoke-virtual {v4, v1, v2}, Landroidx/media3/session/SessionPositionInfo;->toBundle(ZZ)Landroid/os/Bundle;

    move-result-object v4

    .line 837
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v3, Landroidx/media3/session/PlayerInfo;->FIELD_OLD_POSITION_INFO:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media3/session/PlayerInfo;->oldPositionInfo:Landroidx/media3/common/Player$PositionInfo;

    .line 842
    invoke-virtual {v4, v1, v2}, Landroidx/media3/common/Player$PositionInfo;->toBundle(ZZ)Landroid/os/Bundle;

    move-result-object v4

    .line 840
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v3, Landroidx/media3/session/PlayerInfo;->FIELD_NEW_POSITION_INFO:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media3/session/PlayerInfo;->newPositionInfo:Landroidx/media3/common/Player$PositionInfo;

    .line 845
    invoke-virtual {v4, v1, v2}, Landroidx/media3/common/Player$PositionInfo;->toBundle(ZZ)Landroid/os/Bundle;

    move-result-object v4

    .line 843
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v3, Landroidx/media3/session/PlayerInfo;->FIELD_DISCONTINUITY_REASON:Ljava/lang/String;

    iget v4, p0, Landroidx/media3/session/PlayerInfo;->discontinuityReason:I

    .line 846
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v3, Landroidx/media3/session/PlayerInfo;->FIELD_PLAYBACK_PARAMETERS:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 847
    invoke-virtual {v4}, Landroidx/media3/common/PlaybackParameters;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v3, Landroidx/media3/session/PlayerInfo;->FIELD_REPEAT_MODE:Ljava/lang/String;

    iget v4, p0, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    .line 848
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v3, Landroidx/media3/session/PlayerInfo;->FIELD_SHUFFLE_MODE_ENABLED:Ljava/lang/String;

    iget-boolean v4, p0, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    .line 849
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p2, :cond_1

    if-eqz v2, :cond_1

    sget-object p2, Landroidx/media3/session/PlayerInfo;->FIELD_TIMELINE:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 851
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    iget-object p2, p0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 852
    invoke-virtual {p2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Landroidx/media3/session/PlayerInfo;->FIELD_TIMELINE:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v2, p0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    .line 853
    iget-object v2, v2, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v2, v2, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    .line 855
    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline;->toBundleWithOneWindowOnly(I)Landroid/os/Bundle;

    move-result-object v1

    .line 853
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    sget-object p2, Landroidx/media3/session/PlayerInfo;->FIELD_TIMELINE_CHANGE_REASON:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/session/PlayerInfo;->timelineChangeReason:I

    .line 857
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p2, Landroidx/media3/session/PlayerInfo;->FIELD_VIDEO_SIZE:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/session/PlayerInfo;->videoSize:Landroidx/media3/common/VideoSize;

    .line 858
    invoke-virtual {v1}, Landroidx/media3/common/VideoSize;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p2, 0x12

    .line 859
    invoke-virtual {p1, p2}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_PLAYLIST_METADATA:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/PlayerInfo;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    .line 860
    invoke-virtual {v2}, Landroidx/media3/common/MediaMetadata;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    const/16 v1, 0x16

    .line 862
    invoke-virtual {p1, v1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_VOLUME:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/PlayerInfo;->volume:F

    .line 863
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_4
    const/16 v1, 0x15

    .line 865
    invoke-virtual {p1, v1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_AUDIO_ATTRIBUTES:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/PlayerInfo;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 866
    invoke-virtual {v2}, Landroidx/media3/common/AudioAttributes;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    const/16 v1, 0x1c

    .line 868
    invoke-virtual {p1, v1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_CUE_GROUP:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/PlayerInfo;->cueGroup:Landroidx/media3/common/text/CueGroup;

    .line 869
    invoke-virtual {v2}, Landroidx/media3/common/text/CueGroup;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_DEVICE_INFO:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/PlayerInfo;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    .line 871
    invoke-virtual {v2}, Landroidx/media3/common/DeviceInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 v1, 0x17

    .line 872
    invoke-virtual {p1, v1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_DEVICE_VOLUME:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    .line 873
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_DEVICE_MUTED:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    .line 874
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_PLAY_WHEN_READY:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    .line 876
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_PLAYBACK_SUPPRESSION_REASON:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/PlayerInfo;->playbackSuppressionReason:I

    .line 877
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_PLAYBACK_STATE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    .line 878
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_IS_PLAYING:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/session/PlayerInfo;->isPlaying:Z

    .line 879
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/session/PlayerInfo;->FIELD_IS_LOADING:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/session/PlayerInfo;->isLoading:Z

    .line 880
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 881
    invoke-virtual {p1, p2}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p2, Landroidx/media3/session/PlayerInfo;->FIELD_MEDIA_METADATA:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/session/PlayerInfo;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 882
    invoke-virtual {v1}, Landroidx/media3/common/MediaMetadata;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    sget-object p2, Landroidx/media3/session/PlayerInfo;->FIELD_SEEK_BACK_INCREMENT_MS:Ljava/lang/String;

    iget-wide v1, p0, Landroidx/media3/session/PlayerInfo;->seekBackIncrementMs:J

    .line 884
    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object p2, Landroidx/media3/session/PlayerInfo;->FIELD_SEEK_FORWARD_INCREMENT_MS:Ljava/lang/String;

    iget-wide v1, p0, Landroidx/media3/session/PlayerInfo;->seekForwardIncrementMs:J

    .line 885
    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object p2, Landroidx/media3/session/PlayerInfo;->FIELD_MAX_SEEK_TO_PREVIOUS_POSITION_MS:Ljava/lang/String;

    iget-wide v1, p0, Landroidx/media3/session/PlayerInfo;->maxSeekToPreviousPositionMs:J

    .line 886
    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-nez p3, :cond_9

    const/16 p2, 0x1e

    .line 887
    invoke-virtual {p1, p2}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Landroidx/media3/session/PlayerInfo;->FIELD_CURRENT_TRACKS:Ljava/lang/String;

    iget-object p2, p0, Landroidx/media3/session/PlayerInfo;->currentTracks:Landroidx/media3/common/Tracks;

    .line 888
    invoke-virtual {p2}, Landroidx/media3/common/Tracks;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_9
    sget-object p1, Landroidx/media3/session/PlayerInfo;->FIELD_TRACK_SELECTION_PARAMETERS:Ljava/lang/String;

    iget-object p2, p0, Landroidx/media3/session/PlayerInfo;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 890
    invoke-virtual {p2}, Landroidx/media3/common/TrackSelectionParameters;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method
