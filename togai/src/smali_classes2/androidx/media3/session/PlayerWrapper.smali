.class Landroidx/media3/session/PlayerWrapper;
.super Landroidx/media3/common/ForwardingPlayer;
.source "PlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;
    }
.end annotation


# static fields
.field private static final STATUS_CODE_SUCCESS_COMPAT:I = -0x1


# instance fields
.field private customLayout:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field private legacyErrorExtras:Landroid/os/Bundle;

.field private legacyErrorMessage:Ljava/lang/String;

.field private legacyStatusCode:I


# direct methods
.method public constructor <init>(Landroidx/media3/common/Player;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Landroidx/media3/common/ForwardingPlayer;-><init>(Landroidx/media3/common/Player;)V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/session/PlayerWrapper;->legacyStatusCode:I

    .line 75
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/PlayerWrapper;->customLayout:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method private static convertCommandToPlaybackStateActions(I)J
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_0
    const-wide/32 v0, 0x40000

    return-wide v0

    :pswitch_1
    const-wide/32 v0, 0x280000

    return-wide v0

    :pswitch_2
    const-wide/32 v0, 0x400000

    return-wide v0

    :pswitch_3
    const-wide/16 v0, 0x40

    return-wide v0

    :pswitch_4
    const-wide/16 v0, 0x8

    return-wide v0

    :pswitch_5
    const-wide/16 v0, 0x1000

    return-wide v0

    :pswitch_6
    const-wide/16 v0, 0x20

    return-wide v0

    :pswitch_7
    const-wide/16 v0, 0x10

    return-wide v0

    :pswitch_8
    const-wide/16 v0, 0x100

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x3ac00

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x1

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x4000

    return-wide v0

    :cond_3
    const-wide/16 v0, 0x206

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private verifyApplicationThread()V
    .locals 2

    .line 1197
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    return-void
.end method


# virtual methods
.method public addListener(Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 119
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->addListener(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public addMediaItem(ILandroidx/media3/common/MediaItem;)V
    .locals 0

    .line 441
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 442
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->addMediaItem(ILandroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public addMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 0

    .line 435
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 436
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->addMediaItem(Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public addMediaItems(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 453
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 454
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method public addMediaItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 447
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 448
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->addMediaItems(Ljava/util/List;)V

    return-void
.end method

.method public clearLegacyErrorStatus()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/session/PlayerWrapper;->legacyStatusCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/session/PlayerWrapper;->legacyErrorMessage:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/session/PlayerWrapper;->legacyErrorExtras:Landroid/os/Bundle;

    return-void
.end method

.method public clearMediaItems()V
    .locals 0

    .line 459
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 460
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->clearMediaItems()V

    return-void
.end method

.method public clearVideoSurface()V
    .locals 0

    .line 333
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 334
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->clearVideoSurface()V

    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 0

    .line 339
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 340
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->clearVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 357
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 358
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    .line 369
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 370
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 0

    .line 381
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 382
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->clearVideoTextureView(Landroid/view/TextureView;)V

    return-void
.end method

.method public createPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/media3/session/PlayerWrapper;->legacyStatusCode:I

    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 958
    new-instance v5, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v5}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const/4 v6, 0x7

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    .line 963
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 959
    invoke-virtual/range {v5 .. v11}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v1

    .line 964
    invoke-virtual {v1, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v1

    .line 965
    invoke-virtual {v1, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setBufferedPosition(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v1

    iget v2, v0, Landroidx/media3/session/PlayerWrapper;->legacyStatusCode:I

    iget-object v3, v0, Landroidx/media3/session/PlayerWrapper;->legacyErrorMessage:Ljava/lang/String;

    .line 966
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setErrorMessage(ILjava/lang/CharSequence;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/session/PlayerWrapper;->legacyErrorExtras:Landroid/os/Bundle;

    .line 967
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v1

    .line 968
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    return-object v1

    .line 970
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v1

    .line 973
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlaybackState()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlayWhenReady()Z

    move-result v5

    .line 972
    invoke-static {v1, v2, v5}, Landroidx/media3/session/MediaUtils;->convertToPlaybackStateCompatState(Landroidx/media3/common/PlaybackException;IZ)I

    move-result v7

    .line 976
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v2

    const/4 v5, 0x0

    const-wide/16 v8, 0x80

    move v6, v5

    move-wide v13, v8

    .line 977
    :goto_0
    invoke-virtual {v2}, Landroidx/media3/common/Player$Commands;->size()I

    move-result v8

    if-ge v6, v8, :cond_1

    .line 978
    invoke-virtual {v2, v6}, Landroidx/media3/common/Player$Commands;->get(I)I

    move-result v8

    invoke-static {v8}, Landroidx/media3/session/PlayerWrapper;->convertCommandToPlaybackStateActions(I)J

    move-result-wide v8

    or-long/2addr v13, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x11

    .line 981
    invoke-virtual {v0, v2}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v2

    const-wide/16 v8, -0x1

    if-eqz v2, :cond_2

    .line 982
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemIndex()I

    move-result v2

    invoke-static {v2}, Landroidx/media3/session/MediaUtils;->convertToQueueItemId(I)J

    move-result-wide v10

    move-wide v11, v10

    goto :goto_1

    :cond_2
    move-wide v11, v8

    .line 984
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 985
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_3

    move v10, v2

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    move v10, v6

    .line 986
    :goto_2
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    const-string v6, "EXO_SPEED"

    .line 987
    invoke-virtual {v15, v6, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 988
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemWithCommandCheck()Landroidx/media3/common/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v6, ""

    .line 989
    iget-object v3, v2, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "androidx.media.PlaybackStateCompat.Extras.KEY_MEDIA_ID"

    .line 990
    iget-object v2, v2, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    invoke-virtual {v15, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/16 v2, 0x10

    .line 992
    invoke-virtual {v0, v2}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 994
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentPosition()J

    move-result-wide v3

    move-wide v8, v3

    :cond_5
    if-eqz v2, :cond_6

    .line 995
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getBufferedPosition()J

    move-result-wide v3

    goto :goto_3

    :cond_6
    const-wide/16 v3, 0x0

    .line 996
    :goto_3
    new-instance v6, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v6}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    .line 998
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    move-object/from16 v18, v1

    move-wide v1, v11

    move-wide/from16 v11, v16

    invoke-virtual/range {v6 .. v12}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v6

    .line 999
    invoke-virtual {v6, v13, v14}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v6

    .line 1000
    invoke-virtual {v6, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActiveQueueItemId(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v1

    .line 1001
    invoke-virtual {v1, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setBufferedPosition(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v1

    .line 1002
    invoke-virtual {v1, v15}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v1

    move v2, v5

    :goto_4
    iget-object v3, v0, Landroidx/media3/session/PlayerWrapper;->customLayout:Lcom/google/common/collect/ImmutableList;

    .line 1004
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v3, v0, Landroidx/media3/session/PlayerWrapper;->customLayout:Lcom/google/common/collect/ImmutableList;

    .line 1005
    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/CommandButton;

    .line 1006
    iget-object v4, v3, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    if-eqz v4, :cond_7

    .line 1007
    iget-object v4, v3, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    .line 1008
    iget v6, v4, Landroidx/media3/session/SessionCommand;->commandCode:I

    if-nez v6, :cond_7

    .line 1009
    new-instance v6, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    iget-object v7, v4, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    iget-object v8, v3, Landroidx/media3/session/CommandButton;->displayName:Ljava/lang/CharSequence;

    iget v3, v3, Landroidx/media3/session/CommandButton;->iconResId:I

    invoke-direct {v6, v7, v8, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object v3, v4, Landroidx/media3/session/SessionCommand;->customExtras:Landroid/os/Bundle;

    .line 1014
    invoke-virtual {v6, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    move-result-object v3

    .line 1015
    invoke-virtual {v3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-result-object v3

    .line 1009
    invoke-virtual {v1, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->addCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    if-eqz v18, :cond_9

    .line 1021
    invoke-virtual/range {v18 .. v18}, Landroidx/media3/common/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 1020
    invoke-virtual {v1, v5, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setErrorMessage(ILjava/lang/CharSequence;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 1023
    :cond_9
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    return-object v1
.end method

.method public createPlayerInfoForBundling()Landroidx/media3/session/PlayerInfo;
    .locals 36

    .line 1162
    new-instance v35, Landroidx/media3/session/PlayerInfo;

    move-object/from16 v0, v35

    .line 1163
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v1

    const/4 v2, 0x0

    .line 1165
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->createSessionPositionInfoForBundling()Landroidx/media3/session/SessionPositionInfo;

    move-result-object v3

    .line 1166
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->createPositionInfoForBundling()Landroidx/media3/common/Player$PositionInfo;

    move-result-object v4

    .line 1167
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->createPositionInfoForBundling()Landroidx/media3/common/Player$PositionInfo;

    move-result-object v5

    const/4 v6, 0x0

    .line 1169
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v7

    .line 1170
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getRepeatMode()I

    move-result v8

    .line 1171
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getShuffleModeEnabled()Z

    move-result v9

    .line 1172
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getVideoSize()Landroidx/media3/common/VideoSize;

    move-result-object v10

    .line 1173
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentTimelineWithCommandCheck()Landroidx/media3/common/Timeline;

    move-result-object v11

    const/4 v12, 0x0

    .line 1175
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlaylistMetadataWithCommandCheck()Landroidx/media3/common/MediaMetadata;

    move-result-object v13

    .line 1176
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getVolumeWithCommandCheck()F

    move-result v14

    .line 1177
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getAudioAttributesWithCommandCheck()Landroidx/media3/common/AudioAttributes;

    move-result-object v15

    .line 1178
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentCuesWithCommandCheck()Landroidx/media3/common/text/CueGroup;

    move-result-object v16

    .line 1179
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v17

    .line 1180
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getDeviceVolumeWithCommandCheck()I

    move-result v18

    .line 1181
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->isDeviceMutedWithCommandCheck()Z

    move-result v19

    .line 1182
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlayWhenReady()Z

    move-result v20

    const/16 v21, 0x1

    .line 1184
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlaybackSuppressionReason()I

    move-result v22

    .line 1185
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getPlaybackState()I

    move-result v23

    .line 1186
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->isPlaying()Z

    move-result v24

    .line 1187
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->isLoading()Z

    move-result v25

    .line 1188
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getMediaMetadataWithCommandCheck()Landroidx/media3/common/MediaMetadata;

    move-result-object v26

    .line 1189
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getSeekBackIncrement()J

    move-result-wide v27

    .line 1190
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getSeekForwardIncrement()J

    move-result-wide v29

    .line 1191
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getMaxSeekToPreviousPosition()J

    move-result-wide v31

    .line 1192
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentTracksWithCommandCheck()Landroidx/media3/common/Tracks;

    move-result-object v33

    .line 1193
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v34

    invoke-direct/range {v0 .. v34}, Landroidx/media3/session/PlayerInfo;-><init>(Landroidx/media3/common/PlaybackException;ILandroidx/media3/session/SessionPositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;ILandroidx/media3/common/PlaybackParameters;IZLandroidx/media3/common/VideoSize;Landroidx/media3/common/Timeline;ILandroidx/media3/common/MediaMetadata;FLandroidx/media3/common/AudioAttributes;Landroidx/media3/common/text/CueGroup;Landroidx/media3/common/DeviceInfo;IZZIIIZZLandroidx/media3/common/MediaMetadata;JJJLandroidx/media3/common/Tracks;Landroidx/media3/common/TrackSelectionParameters;)V

    return-object v35
.end method

.method public createPositionInfoForBundling()Landroidx/media3/common/Player$PositionInfo;
    .locals 15

    const/16 v0, 0x10

    .line 1127
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    const/16 v1, 0x11

    .line 1128
    invoke-virtual {p0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v1

    .line 1129
    new-instance v14, Landroidx/media3/common/Player$PositionInfo;

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1131
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemIndex()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 1132
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    if-eqz v1, :cond_2

    .line 1134
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentPeriodIndex()I

    move-result v1

    move v7, v1

    goto :goto_2

    :cond_2
    move v7, v2

    :goto_2
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    .line 1135
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentPosition()J

    move-result-wide v8

    goto :goto_3

    :cond_3
    move-wide v8, v1

    :goto_3
    if-eqz v0, :cond_4

    .line 1136
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getContentPosition()J

    move-result-wide v1

    :cond_4
    move-wide v10, v1

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    .line 1137
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentAdGroupIndex()I

    move-result v2

    move v12, v2

    goto :goto_4

    :cond_5
    move v12, v1

    :goto_4
    if-eqz v0, :cond_6

    .line 1138
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentAdIndexInAdGroup()I

    move-result v0

    move v13, v0

    goto :goto_5

    :cond_6
    move v13, v1

    :goto_5
    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    return-object v14
.end method

.method public createSessionPositionInfoForBundling()Landroidx/media3/session/SessionPositionInfo;
    .locals 25

    const/16 v0, 0x10

    move-object/from16 v1, p0

    .line 1147
    invoke-virtual {v1, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    .line 1148
    new-instance v20, Landroidx/media3/session/SessionPositionInfo;

    .line 1149
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->createPositionInfoForBundling()Landroidx/media3/common/Player$PositionInfo;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1150
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->isPlayingAd()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v2

    .line 1151
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    .line 1152
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getDuration()J

    move-result-wide v9

    goto :goto_1

    :cond_1
    move-wide v9, v7

    :goto_1
    const-wide/16 v11, 0x0

    if-eqz v0, :cond_2

    .line 1153
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getBufferedPosition()J

    move-result-wide v13

    goto :goto_2

    :cond_2
    move-wide v13, v11

    :goto_2
    if-eqz v0, :cond_3

    .line 1154
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getBufferedPercentage()I

    move-result v2

    :cond_3
    move v15, v2

    if-eqz v0, :cond_4

    .line 1155
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getTotalBufferedDuration()J

    move-result-wide v16

    goto :goto_3

    :cond_4
    move-wide/from16 v16, v11

    :goto_3
    if-eqz v0, :cond_5

    .line 1156
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentLiveOffset()J

    move-result-wide v18

    goto :goto_4

    :cond_5
    move-wide/from16 v18, v7

    :goto_4
    if-eqz v0, :cond_6

    .line 1157
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getContentDuration()J

    move-result-wide v7

    :cond_6
    move-wide/from16 v21, v7

    if-eqz v0, :cond_7

    .line 1158
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getContentBufferedPosition()J

    move-result-wide v7

    move-wide/from16 v23, v7

    goto :goto_5

    :cond_7
    move-wide/from16 v23, v11

    :goto_5
    move-object/from16 v2, v20

    move-wide v7, v9

    move-wide v9, v13

    move v11, v15

    move-wide/from16 v12, v16

    move-wide/from16 v14, v18

    move-wide/from16 v16, v21

    move-wide/from16 v18, v23

    invoke-direct/range {v2 .. v19}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    return-object v20
.end method

.method public createVolumeProviderCompat()Landroidx/media/VolumeProviderCompat;
    .locals 10

    .line 1029
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/DeviceInfo;->playbackType:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1032
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    const/16 v1, 0x1a

    const/16 v2, 0x22

    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 1034
    invoke-virtual {v0, v1}, Landroidx/media3/common/Player$Commands;->containsAny([I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x19

    const/16 v2, 0x21

    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Landroidx/media3/common/Player$Commands;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    .line 1042
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1043
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getDeviceVolumeWithCommandCheck()I

    move-result v5

    const/4 v8, 0x1

    .line 1045
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    .line 1046
    new-instance v9, Landroidx/media3/session/PlayerWrapper$1;

    iget v4, v0, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    iget-object v6, v0, Landroidx/media3/common/DeviceInfo;->routingControllerId:Ljava/lang/String;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Landroidx/media3/session/PlayerWrapper$1;-><init>(Landroidx/media3/session/PlayerWrapper;IIILjava/lang/String;Landroid/os/Handler;I)V

    return-object v9
.end method

.method public decreaseDeviceVolume()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 792
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 793
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->decreaseDeviceVolume()V

    return-void
.end method

.method public decreaseDeviceVolume(I)V
    .locals 0

    .line 798
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 799
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->decreaseDeviceVolume(I)V

    return-void
.end method

.method public getAudioAttributes()Landroidx/media3/common/AudioAttributes;
    .locals 1

    .line 387
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 388
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getAudioAttributes()Landroidx/media3/common/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getAudioAttributesWithCommandCheck()Landroidx/media3/common/AudioAttributes;
    .locals 1

    const/16 v0, 0x15

    .line 392
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getAudioAttributes()Landroidx/media3/common/AudioAttributes;

    move-result-object v0

    goto :goto_0

    .line 394
    :cond_0
    sget-object v0, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    :goto_0
    return-object v0
.end method

.method public getAvailableCommands()Landroidx/media3/common/Player$Commands;
    .locals 1

    .line 875
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 876
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .line 267
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 268
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 261
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 262
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentBufferedPosition()J
    .locals 2

    .line 297
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 298
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getContentBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentDuration()J
    .locals 2

    .line 285
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 286
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 2

    .line 291
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 292
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getContentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 309
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 310
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentAdGroupIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 315
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 316
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentAdIndexInAdGroup()I

    move-result v0

    return v0
.end method

.method public getCurrentCues()Landroidx/media3/common/text/CueGroup;
    .locals 1

    .line 717
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 718
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentCues()Landroidx/media3/common/text/CueGroup;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCuesWithCommandCheck()Landroidx/media3/common/text/CueGroup;
    .locals 1

    const/16 v0, 0x1c

    .line 722
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentCues()Landroidx/media3/common/text/CueGroup;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    :goto_0
    return-object v0
.end method

.method public getCurrentLiveOffset()J
    .locals 2

    .line 279
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 280
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentLiveOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentManifest()Ljava/lang/Object;
    .locals 1

    .line 922
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 923
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentManifest()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaItem()Landroidx/media3/common/MediaItem;
    .locals 1

    .line 639
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 640
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaItemIndex()I
    .locals 1

    .line 669
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 670
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentMediaItemWithCommandCheck()Landroidx/media3/common/MediaItem;
    .locals 1

    const/16 v0, 0x10

    .line 645
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .line 928
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 929
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentPeriodIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 245
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 246
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Landroidx/media3/common/Timeline;
    .locals 1

    .line 599
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 600
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTimelineWithCommandCheck()Landroidx/media3/common/Timeline;
    .locals 1

    const/16 v0, 0x11

    .line 604
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x10

    .line 606
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    new-instance v0, Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;-><init>(Landroidx/media3/session/PlayerWrapper;)V

    return-object v0

    .line 609
    :cond_1
    sget-object v0, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    return-object v0
.end method

.method public getCurrentTracks()Landroidx/media3/common/Tracks;
    .locals 1

    .line 911
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 912
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTracksWithCommandCheck()Landroidx/media3/common/Tracks;
    .locals 1

    const/16 v0, 0x1e

    .line 916
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    :goto_0
    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 663
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 664
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentWindowIndex()I

    move-result v0

    return v0
.end method

.method public getDeviceInfo()Landroidx/media3/common/DeviceInfo;
    .locals 1

    .line 727
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 728
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceVolume()I
    .locals 1

    .line 733
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 734
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getDeviceVolume()I

    move-result v0

    return v0
.end method

.method public getDeviceVolumeWithCommandCheck()I
    .locals 1

    const/16 v0, 0x17

    .line 738
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getDeviceVolume()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 251
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 252
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationWithCommandCheck()J
    .locals 2

    const/16 v0, 0x10

    .line 256
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public getLegacyStatusCode()I
    .locals 1

    iget v0, p0, Landroidx/media3/session/PlayerWrapper;->legacyStatusCode:I

    return v0
.end method

.method public getMaxSeekToPreviousPosition()J
    .locals 2

    .line 899
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 900
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getMaxSeekToPreviousPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaItemAt(I)Landroidx/media3/common/MediaItem;
    .locals 0

    .line 656
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 657
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->getMediaItemAt(I)Landroidx/media3/common/MediaItem;

    move-result-object p1

    return-object p1
.end method

.method public getMediaItemCount()I
    .locals 1

    .line 650
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 651
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getMediaItemCount()I

    move-result v0

    return v0
.end method

.method public getMediaMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 1

    .line 859
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 860
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMediaMetadataWithCommandCheck()Landroidx/media3/common/MediaMetadata;
    .locals 1

    const/16 v0, 0x12

    .line 864
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    :goto_0
    return-object v0
.end method

.method public getNextMediaItemIndex()I
    .locals 1

    .line 695
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 696
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getNextMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public getNextWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 689
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 690
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getNextWindowIndex()I

    move-result v0

    return v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 827
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 828
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    .line 321
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 322
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 841
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 842
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 1

    .line 834
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 835
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getPlaybackSuppressionReason()I

    move-result v0

    return v0
.end method

.method public getPlayerError()Landroidx/media3/common/PlaybackException;
    .locals 1

    .line 131
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 132
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 1

    .line 614
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 615
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getPlaylistMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistMetadataWithCommandCheck()Landroidx/media3/common/MediaMetadata;
    .locals 1

    const/16 v0, 0x12

    .line 619
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getPlaylistMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    goto :goto_0

    .line 621
    :cond_0
    sget-object v0, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    :goto_0
    return-object v0
.end method

.method public getPreviousMediaItemIndex()I
    .locals 1

    .line 682
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 683
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getPreviousMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public getPreviousWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 676
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 677
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getPreviousWindowIndex()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 626
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 627
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getSeekBackIncrement()J
    .locals 2

    .line 209
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 210
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getSeekBackIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekForwardIncrement()J
    .locals 2

    .line 221
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 222
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getSeekForwardIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 632
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 633
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getShuffleModeEnabled()Z

    move-result v0

    return v0
.end method

.method public getSurfaceSize()Landroidx/media3/common/util/Size;
    .locals 1

    .line 952
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 953
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getSurfaceSize()Landroidx/media3/common/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    .line 273
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 274
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getTotalBufferedDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    .line 881
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 882
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    return-object v0
.end method

.method public getVideoSize()Landroidx/media3/common/VideoSize;
    .locals 1

    .line 327
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 328
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getVideoSize()Landroidx/media3/common/VideoSize;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 701
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 702
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getVolume()F

    move-result v0

    return v0
.end method

.method public getVolumeWithCommandCheck()F
    .locals 1

    const/16 v0, 0x16

    .line 706
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getVolume()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNext()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 509
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 510
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNextMediaItem()Z
    .locals 1

    .line 535
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 536
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->hasNextMediaItem()Z

    move-result v0

    return v0
.end method

.method public hasNextWindow()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 523
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 524
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->hasNextWindow()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 502
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 503
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public hasPreviousMediaItem()Z
    .locals 1

    .line 529
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 530
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->hasPreviousMediaItem()Z

    move-result v0

    return v0
.end method

.method public hasPreviousWindow()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 516
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 517
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->hasPreviousWindow()Z

    move-result v0

    return v0
.end method

.method public increaseDeviceVolume()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 775
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 776
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->increaseDeviceVolume()V

    return-void
.end method

.method public increaseDeviceVolume(I)V
    .locals 0

    .line 781
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 782
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->increaseDeviceVolume(I)V

    return-void
.end method

.method public isCommandAvailable(I)Z
    .locals 0

    .line 869
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 870
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->isCommandAvailable(I)Z

    move-result p1

    return p1
.end method

.method public isCurrentMediaItemDynamic()Z
    .locals 1

    .line 934
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 935
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->isCurrentMediaItemDynamic()Z

    move-result v0

    return v0
.end method

.method public isCurrentMediaItemLive()Z
    .locals 1

    .line 940
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 941
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->isCurrentMediaItemLive()Z

    move-result v0

    return v0
.end method

.method public isCurrentMediaItemSeekable()Z
    .locals 1

    .line 946
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 947
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->isCurrentMediaItemSeekable()Z

    move-result v0

    return v0
.end method

.method public isDeviceMuted()Z
    .locals 1

    .line 743
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 744
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->isDeviceMuted()Z

    move-result v0

    return v0
.end method

.method public isDeviceMutedWithCommandCheck()Z
    .locals 1

    const/16 v0, 0x17

    .line 748
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->isDeviceMuted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 853
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 854
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->isLoading()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 847
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 848
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 303
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 304
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->isPlayingAd()Z

    move-result v0

    return v0
.end method

.method public moveMediaItem(II)V
    .locals 0

    .line 477
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 478
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->moveMediaItem(II)V

    return-void
.end method

.method public moveMediaItems(III)V
    .locals 0

    .line 483
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 484
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/common/ForwardingPlayer;->moveMediaItems(III)V

    return-void
.end method

.method public next()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 549
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 550
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->next()V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 149
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 150
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->pause()V

    return-void
.end method

.method public play()V
    .locals 0

    .line 137
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 138
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->play()V

    return-void
.end method

.method public playIfCommandAvailable()V
    .locals 1

    const/4 v0, 0x1

    .line 142
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->play()V

    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 0

    .line 155
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 156
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->prepare()V

    return-void
.end method

.method public prepareIfCommandAvailable()V
    .locals 1

    const/4 v0, 0x2

    .line 160
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->prepare()V

    :cond_0
    return-void
.end method

.method public previous()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 542
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 543
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->previous()V

    return-void
.end method

.method public release()V
    .locals 0

    .line 173
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 174
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->release()V

    return-void
.end method

.method public removeListener(Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 125
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->removeListener(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public removeMediaItem(I)V
    .locals 0

    .line 465
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 466
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->removeMediaItem(I)V

    return-void
.end method

.method public removeMediaItems(II)V
    .locals 0

    .line 471
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 472
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->removeMediaItems(II)V

    return-void
.end method

.method public replaceMediaItem(ILandroidx/media3/common/MediaItem;)V
    .locals 0

    .line 489
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 490
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->replaceMediaItem(ILandroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public replaceMediaItems(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 495
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 496
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/common/ForwardingPlayer;->replaceMediaItems(IILjava/util/List;)V

    return-void
.end method

.method public seekBack()V
    .locals 0

    .line 215
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 216
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekBack()V

    return-void
.end method

.method public seekForward()V
    .locals 0

    .line 227
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 228
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekForward()V

    return-void
.end method

.method public seekTo(IJ)V
    .locals 0

    .line 203
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 204
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/common/ForwardingPlayer;->seekTo(IJ)V

    return-void
.end method

.method public seekTo(J)V
    .locals 0

    .line 197
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 198
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->seekTo(J)V

    return-void
.end method

.method public seekToDefaultPosition()V
    .locals 0

    .line 185
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 186
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekToDefaultPosition()V

    return-void
.end method

.method public seekToDefaultPosition(I)V
    .locals 0

    .line 179
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 180
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->seekToDefaultPosition(I)V

    return-void
.end method

.method public seekToDefaultPositionIfCommandAvailable()V
    .locals 1

    const/4 v0, 0x4

    .line 190
    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->seekToDefaultPosition()V

    :cond_0
    return-void
.end method

.method public seekToNext()V
    .locals 0

    .line 905
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 906
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekToNext()V

    return-void
.end method

.method public seekToNextMediaItem()V
    .locals 0

    .line 575
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 576
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekToNextMediaItem()V

    return-void
.end method

.method public seekToNextWindow()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 563
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 564
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekToNextWindow()V

    return-void
.end method

.method public seekToPrevious()V
    .locals 0

    .line 893
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 894
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekToPrevious()V

    return-void
.end method

.method public seekToPreviousMediaItem()V
    .locals 0

    .line 569
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 570
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekToPreviousMediaItem()V

    return-void
.end method

.method public seekToPreviousWindow()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 556
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 557
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->seekToPreviousWindow()V

    return-void
.end method

.method public setCustomLayout(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/media3/session/PlayerWrapper;->customLayout:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public setDeviceMuted(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 809
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 810
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setDeviceMuted(Z)V

    return-void
.end method

.method public setDeviceMuted(ZI)V
    .locals 0

    .line 815
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 816
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->setDeviceMuted(ZI)V

    return-void
.end method

.method public setDeviceVolume(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 758
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 759
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setDeviceVolume(I)V

    return-void
.end method

.method public setDeviceVolume(II)V
    .locals 0

    .line 764
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 765
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->setDeviceVolume(II)V

    return-void
.end method

.method public setLegacyErrorStatus(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 93
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput p1, p0, Landroidx/media3/session/PlayerWrapper;->legacyStatusCode:I

    iput-object p2, p0, Landroidx/media3/session/PlayerWrapper;->legacyErrorMessage:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media3/session/PlayerWrapper;->legacyErrorExtras:Landroid/os/Bundle;

    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 0

    .line 399
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 400
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setMediaItem(Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;J)V
    .locals 0

    .line 405
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 406
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/common/ForwardingPlayer;->setMediaItem(Landroidx/media3/common/MediaItem;J)V

    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;Z)V
    .locals 0

    .line 411
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 412
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->setMediaItem(Landroidx/media3/common/MediaItem;Z)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 417
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 418
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setMediaItems(Ljava/util/List;)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    .line 429
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 430
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/common/ForwardingPlayer;->setMediaItems(Ljava/util/List;IJ)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 423
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 424
    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->setMediaItems(Ljava/util/List;Z)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 0

    .line 821
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 822
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 0

    .line 233
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 234
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 0

    .line 239
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 240
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setPlaybackSpeed(F)V

    return-void
.end method

.method public setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    .line 581
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 582
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    .line 587
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 588
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setRepeatMode(I)V

    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 0

    .line 593
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 594
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setShuffleModeEnabled(Z)V

    return-void
.end method

.method public setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    .line 887
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 888
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 346
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 351
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 352
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    .line 363
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 364
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 0

    .line 375
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 376
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setVideoTextureView(Landroid/view/TextureView;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 0

    .line 711
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 712
    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->setVolume(F)V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 167
    invoke-direct {p0}, Landroidx/media3/session/PlayerWrapper;->verifyApplicationThread()V

    .line 168
    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->stop()V

    return-void
.end method
