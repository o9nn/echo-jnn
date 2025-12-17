.class Landroidx/media3/session/MediaControllerImplLegacy;
.super Ljava/lang/Object;
.source "MediaControllerImplLegacy.java"

# interfaces
.implements Landroidx/media3/session/MediaController$MediaControllerImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;,
        Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;,
        Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;,
        Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;
    }
.end annotation


# static fields
.field private static final AGGREGATES_CALLBACKS_WITHIN_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "MCImplLegacy"


# instance fields
.field private final bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

.field private browserCompat:Landroid/support/v4/media/MediaBrowserCompat;

.field private connected:Z

.field final context:Landroid/content/Context;

.field private controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

.field private final controllerCompatCallback:Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;

.field private controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

.field private final instance:Landroidx/media3/session/MediaController;

.field private legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

.field private final listeners:Landroidx/media3/common/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/ListenerSet<",
            "Landroidx/media3/common/Player$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private pendingLegacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

.field private released:Z

.field private final token:Landroidx/media3/session/SessionToken;


# direct methods
.method public static synthetic $r8$lambda$xMC8M6LLEeW997bBmO6BCC6GGAM(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionToken;Landroid/os/Looper;Landroidx/media3/common/util/BitmapLoader;)V
    .locals 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    invoke-direct {v0}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    .line 119
    new-instance v0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    invoke-direct {v0}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->pendingLegacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    .line 120
    new-instance v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    invoke-direct {v0}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 121
    new-instance v0, Landroidx/media3/common/util/ListenerSet;

    sget-object v1, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    new-instance v2, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;)V

    invoke-direct {v0, p4, v1, v2}, Landroidx/media3/common/util/ListenerSet;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->instance:Landroidx/media3/session/MediaController;

    .line 130
    new-instance p1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;

    invoke-direct {p1, p0, p4}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompatCallback:Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;

    iput-object p3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->token:Landroidx/media3/session/SessionToken;

    iput-object p5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/session/MediaControllerImplLegacy;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaControllerImplLegacy;->connectToSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/session/MediaControllerImplLegacy;)Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->connected:Z

    return p0
.end method

.method static synthetic access$200(Landroidx/media3/session/MediaControllerImplLegacy;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .locals 0

    .line 89
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->pendingLegacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    return-object p0
.end method

.method static synthetic access$202(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .locals 0

    .line 89
    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->pendingLegacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    return-object p1
.end method

.method static synthetic access$300(Landroidx/media3/session/MediaControllerImplLegacy;)Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 0

    .line 89
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    return-object p0
.end method

.method static synthetic access$400(Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 0

    .line 89
    invoke-static {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->convertToSafePlaybackStateCompat(Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Landroidx/media3/session/MediaControllerImplLegacy;ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaControllerImplLegacy;->handleNewLegacyParameters(ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)V

    return-void
.end method

.method static synthetic access$600(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 89
    invoke-static {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->convertToNonNullQueueItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Ljava/util/concurrent/Future;)V
    .locals 0

    .line 89
    invoke-static {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->ignoreFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method private addQueueItems(Ljava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;I)V"
        }
    .end annotation

    .line 1427
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1428
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1429
    new-instance v8, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda11;

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, v6

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda11;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Ljava/util/List;I)V

    .line 1438
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v7, p2, :cond_1

    .line 1439
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/common/MediaItem;

    .line 1440
    iget-object p2, p2, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 1441
    iget-object v0, p2, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    if-nez v0, :cond_0

    const/4 p2, 0x0

    .line 1442
    invoke-interface {v6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1443
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    .line 1445
    iget-object p2, p2, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    invoke-interface {v0, p2}, Landroidx/media3/common/util/BitmapLoader;->decodeBitmap([B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    .line 1446
    invoke-interface {v6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1447
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/session/MediaController;->applicationHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda18;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda18;-><init>(Landroid/os/Handler;)V

    invoke-interface {p2, v8, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static buildNewControllerInfo(ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;JZIJLjava/lang/String;)Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .locals 48

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p6

    move/from16 v4, p7

    move-wide/from16 v5, p8

    .line 1885
    iget-object v7, v0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    iget-object v8, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    if-eq v7, v8, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1

    .line 1888
    iget-object v8, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    invoke-static {v8}, Landroidx/media3/session/QueueTimeline;->create(Ljava/util/List;)Landroidx/media3/session/QueueTimeline;

    move-result-object v8

    goto :goto_1

    .line 1889
    :cond_1
    iget-object v8, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v8, v8, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    check-cast v8, Landroidx/media3/session/QueueTimeline;

    invoke-virtual {v8}, Landroidx/media3/session/QueueTimeline;->copy()Landroidx/media3/session/QueueTimeline;

    move-result-object v8

    .line 1891
    :goto_1
    iget-object v11, v0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    iget-object v12, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    if-ne v11, v12, :cond_3

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v11, 0x1

    .line 1894
    :goto_3
    iget-object v12, v0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-static {v12}, Landroidx/media3/session/MediaControllerImplLegacy;->getActiveQueueId(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    move-result-wide v12

    .line 1895
    iget-object v14, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-static {v14}, Landroidx/media3/session/MediaControllerImplLegacy;->getActiveQueueId(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_5

    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v12, 0x1

    .line 1897
    :goto_5
    iget-object v13, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-static {v13}, Landroidx/media3/session/MediaUtils;->convertToDurationMs(Landroid/support/v4/media/MediaMetadataCompat;)J

    move-result-wide v9

    if-nez v11, :cond_7

    if-nez v12, :cond_7

    if-eqz v7, :cond_6

    goto :goto_6

    .line 1950
    :cond_6
    iget-object v4, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v4, v4, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v4, v4, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v4, v4, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    .line 1952
    iget-object v7, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v7, v7, Landroidx/media3/session/PlayerInfo;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    move/from16 v18, v4

    move-object/from16 v16, v8

    goto/16 :goto_b

    .line 1899
    :cond_7
    :goto_6
    iget-object v7, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    invoke-static {v7, v14, v15}, Landroidx/media3/session/MediaControllerImplLegacy;->findQueueItemIndex(Ljava/util/List;J)I

    move-result v7

    .line 1900
    iget-object v13, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    goto :goto_7

    :cond_8
    const/4 v13, 0x0

    :goto_7
    const/4 v14, -0x1

    if-eqz v13, :cond_9

    if-eqz v11, :cond_9

    .line 1902
    iget-object v12, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    .line 1903
    invoke-static {v12, v4}, Landroidx/media3/session/MediaUtils;->convertToMediaMetadata(Landroid/support/v4/media/MediaMetadataCompat;I)Landroidx/media3/common/MediaMetadata;

    move-result-object v12

    goto :goto_8

    :cond_9
    if-nez v13, :cond_b

    if-eqz v12, :cond_b

    if-ne v7, v14, :cond_a

    .line 1907
    sget-object v12, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    goto :goto_8

    .line 1908
    :cond_a
    iget-object v12, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    .line 1909
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-virtual {v12}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v12

    .line 1908
    invoke-static {v12, v4}, Landroidx/media3/session/MediaUtils;->convertToMediaMetadata(Landroid/support/v4/media/MediaDescriptionCompat;I)Landroidx/media3/common/MediaMetadata;

    move-result-object v12

    goto :goto_8

    .line 1912
    :cond_b
    iget-object v12, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v12, v12, Landroidx/media3/session/PlayerInfo;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    :goto_8
    if-ne v7, v14, :cond_d

    if-eqz v11, :cond_d

    if-eqz v13, :cond_c

    const-string v7, "MCImplLegacy"

    const-string v11, "Adding a fake MediaItem at the end of the list because there\'s no QueueItem with the active queue id and current Timeline should have currently playing MediaItem."

    .line 1916
    invoke-static {v7, v11}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    iget-object v7, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    .line 1922
    invoke-static {v7, v4}, Landroidx/media3/session/MediaUtils;->convertToMediaItem(Landroid/support/v4/media/MediaMetadataCompat;I)Landroidx/media3/common/MediaItem;

    move-result-object v4

    .line 1923
    invoke-virtual {v8, v4, v9, v10}, Landroidx/media3/session/QueueTimeline;->copyWithFakeMediaItem(Landroidx/media3/common/MediaItem;J)Landroidx/media3/session/QueueTimeline;

    move-result-object v8

    .line 1924
    invoke-virtual {v8}, Landroidx/media3/session/QueueTimeline;->getWindowCount()I

    move-result v4

    const/4 v7, 0x1

    add-int/lit8 v7, v4, -0x1

    goto :goto_a

    .line 1926
    :cond_c
    invoke-virtual {v8}, Landroidx/media3/session/QueueTimeline;->copyWithClearedFakeMediaItem()Landroidx/media3/session/QueueTimeline;

    move-result-object v8

    goto :goto_9

    :cond_d
    if-eq v7, v14, :cond_e

    .line 1933
    invoke-virtual {v8}, Landroidx/media3/session/QueueTimeline;->copyWithClearedFakeMediaItem()Landroidx/media3/session/QueueTimeline;

    move-result-object v8

    if-eqz v13, :cond_f

    .line 1937
    invoke-virtual {v8, v7}, Landroidx/media3/session/QueueTimeline;->getMediaItemAt(I)Landroidx/media3/common/MediaItem;

    move-result-object v11

    invoke-static {v11}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/common/MediaItem;

    iget-object v11, v11, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    iget-object v13, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    .line 1936
    invoke-static {v11, v13, v4}, Landroidx/media3/session/MediaUtils;->convertToMediaItem(Ljava/lang/String;Landroid/support/v4/media/MediaMetadataCompat;I)Landroidx/media3/common/MediaItem;

    move-result-object v4

    .line 1941
    invoke-virtual {v8, v7, v4, v9, v10}, Landroidx/media3/session/QueueTimeline;->copyWithNewMediaItem(ILandroidx/media3/common/MediaItem;J)Landroidx/media3/session/QueueTimeline;

    move-result-object v8

    goto :goto_a

    :cond_e
    :goto_9
    const/4 v7, 0x0

    :cond_f
    :goto_a
    move/from16 v18, v7

    move-object/from16 v16, v8

    move-object v7, v12

    .line 1956
    :goto_b
    iget-object v4, v0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    iget-object v8, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    if-ne v4, v8, :cond_10

    .line 1957
    iget-object v4, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v4, v4, Landroidx/media3/session/PlayerInfo;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    goto :goto_c

    .line 1958
    :cond_10
    iget-object v4, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroidx/media3/session/MediaUtils;->convertToMediaMetadata(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata;

    move-result-object v4

    :goto_c
    move-object/from16 v19, v4

    .line 1959
    iget v4, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->repeatMode:I

    invoke-static {v4}, Landroidx/media3/session/MediaUtils;->convertToRepeatMode(I)I

    move-result v20

    .line 1960
    iget v4, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->shuffleMode:I

    invoke-static {v4}, Landroidx/media3/session/MediaUtils;->convertToShuffleModeEnabled(I)Z

    move-result v21

    .line 1961
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    iget-object v4, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eq v0, v4, :cond_11

    .line 1962
    iget-object v0, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1963
    invoke-static {v0, v3}, Landroidx/media3/session/MediaUtils;->convertToSessionCommands(Landroid/support/v4/media/session/PlaybackStateCompat;Z)Landroidx/media3/session/SessionCommands;

    move-result-object v0

    .line 1965
    iget-object v4, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-static {v4}, Landroidx/media3/session/MediaUtils;->convertToCustomLayout(Landroid/support/v4/media/session/PlaybackStateCompat;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    goto :goto_d

    .line 1967
    :cond_11
    iget-object v0, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    .line 1968
    iget-object v4, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    :goto_d
    move-object/from16 v22, v0

    move-object/from16 v24, v4

    .line 1974
    iget-object v0, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    if-eqz v0, :cond_12

    .line 1975
    iget-object v0, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->getVolumeControl()I

    move-result v0

    goto :goto_e

    :cond_12
    const/4 v0, 0x0

    .line 1977
    :goto_e
    iget-object v4, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    move-wide/from16 v11, p4

    .line 1978
    invoke-static {v4, v0, v11, v12, v3}, Landroidx/media3/session/MediaUtils;->convertToPlayerCommands(Landroid/support/v4/media/session/PlaybackStateCompat;IJZ)Landroidx/media3/common/Player$Commands;

    move-result-object v23

    .line 1984
    iget-object v0, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1985
    invoke-static {v0}, Landroidx/media3/session/MediaUtils;->convertToPlaybackException(Landroid/support/v4/media/session/PlaybackStateCompat;)Landroidx/media3/common/PlaybackException;

    move-result-object v25

    .line 1987
    iget-object v0, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    iget-object v3, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    .line 1988
    invoke-static {v0, v3, v5, v6}, Landroidx/media3/session/MediaUtils;->convertToCurrentPositionMs(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)J

    move-result-wide v28

    .line 1992
    iget-object v0, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    iget-object v3, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    .line 1993
    invoke-static {v0, v3, v5, v6}, Landroidx/media3/session/MediaUtils;->convertToBufferedPositionMs(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)J

    move-result-wide v30

    .line 1997
    iget-object v0, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    iget-object v3, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    .line 1998
    invoke-static {v0, v3, v5, v6}, Landroidx/media3/session/MediaUtils;->convertToBufferedPercentage(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)I

    move-result v32

    .line 2002
    iget-object v0, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    iget-object v3, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    .line 2003
    invoke-static {v0, v3, v5, v6}, Landroidx/media3/session/MediaUtils;->convertToTotalBufferedDurationMs(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)J

    move-result-wide v33

    .line 2007
    iget-object v0, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-static {v0}, Landroidx/media3/session/MediaUtils;->convertToIsPlayingAd(Landroid/support/v4/media/MediaMetadataCompat;)Z

    move-result v35

    .line 2008
    iget-object v0, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 2009
    invoke-static {v0}, Landroidx/media3/session/MediaUtils;->convertToPlaybackParameters(Landroid/support/v4/media/session/PlaybackStateCompat;)Landroidx/media3/common/PlaybackParameters;

    move-result-object v36

    .line 2010
    iget-object v0, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    .line 2011
    invoke-static {v0}, Landroidx/media3/session/MediaUtils;->convertToAudioAttributes(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)Landroidx/media3/common/AudioAttributes;

    move-result-object v37

    .line 2012
    iget-object v0, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 2013
    invoke-static {v0}, Landroidx/media3/session/MediaUtils;->convertToPlayWhenReady(Landroid/support/v4/media/session/PlaybackStateCompat;)Z

    move-result v38

    .line 2015
    iget-object v0, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    iget-object v3, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    .line 2016
    invoke-static {v0, v3, v5, v6}, Landroidx/media3/session/MediaUtils;->convertToPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)I

    move-result v39

    .line 2020
    iget-object v0, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-static {v0}, Landroidx/media3/session/MediaUtils;->convertToIsPlaying(Landroid/support/v4/media/session/PlaybackStateCompat;)Z

    move-result v40

    .line 2021
    iget-object v0, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    move-object/from16 v3, p10

    .line 2022
    invoke-static {v0, v3}, Landroidx/media3/session/MediaUtils;->convertToDeviceInfo(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;Ljava/lang/String;)Landroidx/media3/common/DeviceInfo;

    move-result-object v41

    .line 2023
    iget-object v0, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    invoke-static {v0}, Landroidx/media3/session/MediaUtils;->convertToDeviceVolume(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)I

    move-result v42

    .line 2024
    iget-object v0, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    invoke-static {v0}, Landroidx/media3/session/MediaUtils;->convertToIsDeviceMuted(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)Z

    move-result v43

    .line 2025
    iget-object v0, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-wide v2, v0, Landroidx/media3/session/PlayerInfo;->seekBackIncrementMs:J

    move-wide/from16 v44, v2

    .line 2026
    iget-object v0, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-wide v0, v0, Landroidx/media3/session/PlayerInfo;->seekForwardIncrementMs:J

    move-wide/from16 v46, v0

    move-object/from16 v17, v7

    move-wide/from16 v26, v9

    .line 2028
    invoke-static/range {v16 .. v47}, Landroidx/media3/session/MediaControllerImplLegacy;->createControllerInfo(Landroidx/media3/session/QueueTimeline;Landroidx/media3/common/MediaMetadata;ILandroidx/media3/common/MediaMetadata;IZLandroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroidx/media3/common/PlaybackException;JJJIJZLandroidx/media3/common/PlaybackParameters;Landroidx/media3/common/AudioAttributes;ZIZLandroidx/media3/common/DeviceInfo;IZJJ)Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    move-result-object v0

    return-object v0
.end method

.method private static calculateCurrentItemIndexAfterAddItems(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p0, p2

    :goto_0
    return p0
.end method

.method private static calculateCurrentItemIndexAfterRemoveItems(III)I
    .locals 1

    sub-int v0, p2, p1

    if-ge p0, p1, :cond_0

    return p0

    :cond_0
    if-ge p0, p2, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    sub-int/2addr p0, v0

    return p0
.end method

.method private static calculateDiscontinuityAndTransitionReason(Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;J)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;",
            "Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;",
            "Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;",
            "Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2076
    iget-object v0, p1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    .line 2077
    iget-object v1, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v1, v1, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    move-object p0, v2

    goto/16 :goto_2

    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 2084
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2085
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_2

    .line 2087
    :cond_1
    iget-object p1, p1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2088
    invoke-virtual {p1}, Landroidx/media3/session/PlayerInfo;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/MediaItem;

    .line 2089
    iget-object v0, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    check-cast v0, Landroidx/media3/session/QueueTimeline;

    .line 2090
    invoke-virtual {v0, p1}, Landroidx/media3/session/QueueTimeline;->contains(Landroidx/media3/common/MediaItem;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x4

    .line 2093
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2094
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    .line 2095
    :cond_2
    iget-object v0, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v0}, Landroidx/media3/session/PlayerInfo;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 2097
    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    .line 2098
    invoke-static {p1, p0, p4, p5}, Landroidx/media3/session/MediaUtils;->convertToCurrentPositionMs(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)J

    move-result-wide p0

    .line 2102
    iget-object v1, p2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    iget-object p2, p2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    .line 2103
    invoke-static {v1, p2, p4, p5}, Landroidx/media3/session/MediaUtils;->convertToCurrentPositionMs(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)J

    move-result-wide p4

    const-wide/16 v5, 0x0

    cmp-long p2, p4, v5

    if-nez p2, :cond_3

    .line 2107
    iget-object p2, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget p2, p2, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    if-ne p2, v0, :cond_3

    .line 2110
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 2111
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_3
    sub-long/2addr p0, p4

    .line 2112
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    const-wide/16 p2, 0x64

    cmp-long p0, p0, p2

    if-lez p0, :cond_4

    const/4 p0, 0x5

    .line 2115
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    move-object p1, v2

    :goto_0
    move-object v2, p0

    goto :goto_1

    :cond_4
    move-object p1, v2

    :goto_1
    move-object p0, p1

    goto :goto_2

    .line 2124
    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 2128
    :goto_2
    invoke-static {v2, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private connectToService()V
    .locals 2

    .line 1329
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda17;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;)V

    .line 1330
    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaController;->runOnApplicationLooper(Ljava/lang/Runnable;)V

    return-void
.end method

.method private connectToSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 2

    .line 1304
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda15;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 1305
    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaController;->runOnApplicationLooper(Ljava/lang/Runnable;)V

    .line 1316
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object p1

    iget-object p1, p1, Landroidx/media3/session/MediaController;->applicationHandler:Landroid/os/Handler;

    new-instance v0, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda16;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;)V

    .line 1318
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static convertToNonNullQueueItemList(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 2133
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/media3/session/MediaUtils;->removeNullElements(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static convertToSafePlaybackStateCompat(Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2142
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const-string v0, "MCImplLegacy"

    const-string v1, "Adjusting playback speed to 1.0f because negative playback speed isn\'t supported."

    .line 2143
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v2, p0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 2147
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v3

    .line 2148
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v4

    const/high16 v6, 0x3f800000    # 1.0f

    .line 2150
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J

    move-result-wide v7

    .line 2146
    invoke-virtual/range {v2 .. v8}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object p0

    .line 2151
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static createControllerInfo(Landroidx/media3/session/QueueTimeline;Landroidx/media3/common/MediaMetadata;ILandroidx/media3/common/MediaMetadata;IZLandroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroidx/media3/common/PlaybackException;JJJIJZLandroidx/media3/common/PlaybackParameters;Landroidx/media3/common/AudioAttributes;ZIZLandroidx/media3/common/DeviceInfo;IZJJ)Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/QueueTimeline;",
            "Landroidx/media3/common/MediaMetadata;",
            "I",
            "Landroidx/media3/common/MediaMetadata;",
            "IZ",
            "Landroidx/media3/session/SessionCommands;",
            "Landroidx/media3/common/Player$Commands;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroidx/media3/common/PlaybackException;",
            "JJJIJZ",
            "Landroidx/media3/common/PlaybackParameters;",
            "Landroidx/media3/common/AudioAttributes;",
            "ZIZ",
            "Landroidx/media3/common/DeviceInfo;",
            "IZJJ)",
            "Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;"
        }
    .end annotation

    move/from16 v0, p2

    move-object/from16 v12, p0

    move-object/from16 v27, p1

    move-object/from16 v14, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v2, p9

    move-object/from16 v8, p20

    move-object/from16 v16, p21

    move/from16 v21, p22

    move/from16 v24, p23

    move/from16 v25, p24

    move-object/from16 v18, p25

    move/from16 v19, p26

    move/from16 v20, p27

    move-wide/from16 v28, p28

    move-wide/from16 v30, p30

    move-wide/from16 v37, p10

    move-wide/from16 v46, p10

    move-wide/from16 v48, p14

    move-wide/from16 v39, p14

    move/from16 v41, p16

    move-wide/from16 v42, p17

    move/from16 v34, p19

    move-object/from16 v1, p0

    .line 2223
    invoke-virtual {v1, v0}, Landroidx/media3/session/QueueTimeline;->getMediaItemAt(I)Landroidx/media3/common/MediaItem;

    move-result-object v1

    move-wide/from16 v3, p12

    move/from16 v5, p19

    .line 2225
    invoke-static {v0, v1, v3, v4, v5}, Landroidx/media3/session/MediaControllerImplLegacy;->createPositionInfo(ILandroidx/media3/common/MediaItem;JZ)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v33

    .line 2227
    new-instance v32, Landroidx/media3/session/SessionPositionInfo;

    move-object/from16 v4, v32

    const-wide v35, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v44, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v32 .. v49}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    .line 2240
    new-instance v0, Landroidx/media3/session/PlayerInfo;

    move-object v1, v0

    const/4 v3, 0x0

    sget-object v5, Landroidx/media3/session/SessionPositionInfo;->DEFAULT_POSITION_INFO:Landroidx/media3/common/Player$PositionInfo;

    sget-object v6, Landroidx/media3/session/SessionPositionInfo;->DEFAULT_POSITION_INFO:Landroidx/media3/common/Player$PositionInfo;

    const/4 v7, 0x0

    sget-object v11, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    const/4 v13, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    sget-object v17, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v26, 0x0

    const-wide/16 v32, 0x0

    sget-object v34, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    sget-object v35, Landroidx/media3/common/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Landroidx/media3/common/TrackSelectionParameters;

    invoke-direct/range {v1 .. v35}, Landroidx/media3/session/PlayerInfo;-><init>(Landroidx/media3/common/PlaybackException;ILandroidx/media3/session/SessionPositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;ILandroidx/media3/common/PlaybackParameters;IZLandroidx/media3/common/VideoSize;Landroidx/media3/common/Timeline;ILandroidx/media3/common/MediaMetadata;FLandroidx/media3/common/AudioAttributes;Landroidx/media3/common/text/CueGroup;Landroidx/media3/common/DeviceInfo;IZZIIIZZLandroidx/media3/common/MediaMetadata;JJJLandroidx/media3/common/Tracks;Landroidx/media3/common/TrackSelectionParameters;)V

    .line 2274
    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-direct {v1, v0, v2, v3, v4}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method private static createPositionInfo(ILandroidx/media3/common/MediaItem;JZ)Landroidx/media3/common/Player$PositionInfo;
    .locals 13

    .line 2283
    new-instance v12, Landroidx/media3/common/Player$PositionInfo;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-eqz p4, :cond_0

    move v10, v0

    goto :goto_0

    :cond_0
    move v10, v2

    :goto_0
    if-eqz p4, :cond_1

    move v11, v0

    goto :goto_1

    :cond_1
    move v11, v2

    :goto_1
    move-object v0, v12

    move v2, p0

    move-object v3, p1

    move v5, p0

    move-wide v6, p2

    move-wide v8, p2

    .line 2292
    invoke-direct/range {v0 .. v11}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    return-object v12
.end method

.method private static createSessionPositionInfo(Landroidx/media3/common/Player$PositionInfo;ZJJIJ)Landroidx/media3/session/SessionPositionInfo;
    .locals 19

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v5, p2

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move-wide/from16 v10, p7

    .line 2302
    new-instance v18, Landroidx/media3/session/SessionPositionInfo;

    move-object/from16 v0, v18

    .line 2305
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v0 .. v17}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    return-object v18
.end method

.method private static findQueueItemIndex(Ljava/util/List;J)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;J)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p0, :cond_2

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 2170
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2171
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getQueueId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static getActiveQueueId(Landroid/support/v4/media/session/PlaybackStateCompat;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 2163
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActiveQueueItemId()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private static getOrEmptyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    if-nez p0, :cond_0

    .line 2157
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_0
    return-object p0
.end method

.method private static getRoutingControllerId(Landroid/support/v4/media/session/MediaControllerCompat;)Ljava/lang/String;
    .locals 3

    .line 1685
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 1689
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMediaController()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/session/MediaController;

    .line 1692
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v2

    .line 1696
    :cond_1
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControlId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleBitmapFuturesAllCompletedAndAddQueueItems(Ljava/util/List;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/graphics/Bitmap;",
            ">;>;",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1456
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1457
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v1, :cond_0

    .line 1461
    :try_start_0
    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    const-string v2, "MCImplLegacy"

    const-string v3, "Failed to get bitmap"

    .line 1463
    invoke-static {v2, v3, v1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1467
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/MediaItem;

    invoke-static {v3, v1}, Landroidx/media3/session/MediaUtils;->convertToMediaDescriptionCompat(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v1

    add-int v3, p3, v0

    .line 1466
    invoke-virtual {v2, v1, v3}, Landroid/support/v4/media/session/MediaControllerCompat;->addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleNewLegacyParameters(ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)V
    .locals 18

    move-object/from16 v6, p0

    iget-boolean v0, v6, Landroidx/media3/session/MediaControllerImplLegacy;->released:Z

    if-nez v0, :cond_1

    iget-boolean v0, v6, Landroidx/media3/session/MediaControllerImplLegacy;->connected:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v8, v6, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v9, v6, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1484
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getFlags()J

    move-result-wide v11

    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1485
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->isSessionReady()Z

    move-result v13

    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1486
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getRatingType()I

    move-result v14

    .line 1487
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->getTimeDiffMs()J

    move-result-wide v15

    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1488
    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->getRoutingControllerId(Landroid/support/v4/media/session/MediaControllerCompat;)Ljava/lang/String;

    move-result-object v17

    move/from16 v7, p1

    move-object/from16 v10, p2

    .line 1479
    invoke-static/range {v7 .. v17}, Landroidx/media3/session/MediaControllerImplLegacy;->buildNewControllerInfo(ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;JZIJLjava/lang/String;)Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    move-result-object v7

    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v1, v6, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 1495
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/session/MediaController;->getTimeDiffMs()J

    move-result-wide v4

    move-object/from16 v2, p2

    move-object v3, v7

    .line 1490
    invoke-static/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplLegacy;->calculateDiscontinuityAndTransitionReason(Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;J)Landroid/util/Pair;

    move-result-object v0

    .line 1496
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/Integer;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/Integer;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplLegacy;->updateControllerInfo(ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private hasMedia()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 1346
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static ignoreFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method private initializeLegacyPlaylist()V
    .locals 11

    .line 1350
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 1351
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->isPrepared()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->hasMedia()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 1352
    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v1, v1, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    check-cast v1, Landroidx/media3/session/QueueTimeline;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 1354
    iget-object v3, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v3, v3, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v3, v3, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v3, v3, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    .line 1355
    invoke-virtual {v1, v3, v0}, Landroidx/media3/session/QueueTimeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v4

    iget-object v4, v4, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 1356
    invoke-virtual {v1, v3}, Landroidx/media3/session/QueueTimeline;->getQueueId(I)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 1358
    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v4, v4, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1359
    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    goto/16 :goto_1

    :cond_1
    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1361
    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->prepare()V

    goto/16 :goto_1

    .line 1363
    :cond_2
    iget-object v5, v4, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v5, v5, Landroidx/media3/common/MediaItem$RequestMetadata;->mediaUri:Landroid/net/Uri;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 1364
    iget-object v5, v5, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v5, v5, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1366
    invoke-virtual {v5}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v5

    iget-object v6, v4, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v6, v6, Landroidx/media3/common/MediaItem$RequestMetadata;->mediaUri:Landroid/net/Uri;

    iget-object v4, v4, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v4, v4, Landroidx/media3/common/MediaItem$RequestMetadata;->extras:Landroid/os/Bundle;

    .line 1369
    invoke-static {v4}, Landroidx/media3/session/MediaControllerImplLegacy;->getOrEmptyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 1367
    invoke-virtual {v5, v6, v4}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_3
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1372
    invoke-virtual {v5}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v5

    iget-object v6, v4, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v6, v6, Landroidx/media3/common/MediaItem$RequestMetadata;->mediaUri:Landroid/net/Uri;

    iget-object v4, v4, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v4, v4, Landroidx/media3/common/MediaItem$RequestMetadata;->extras:Landroid/os/Bundle;

    .line 1375
    invoke-static {v4}, Landroidx/media3/session/MediaControllerImplLegacy;->getOrEmptyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 1373
    invoke-virtual {v5, v6, v4}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_1

    .line 1377
    :cond_4
    iget-object v5, v4, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v5, v5, Landroidx/media3/common/MediaItem$RequestMetadata;->searchQuery:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 1378
    iget-object v5, v5, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v5, v5, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1380
    invoke-virtual {v5}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v5

    iget-object v6, v4, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v6, v6, Landroidx/media3/common/MediaItem$RequestMetadata;->searchQuery:Ljava/lang/String;

    iget-object v4, v4, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v4, v4, Landroidx/media3/common/MediaItem$RequestMetadata;->extras:Landroid/os/Bundle;

    .line 1383
    invoke-static {v4}, Landroidx/media3/session/MediaControllerImplLegacy;->getOrEmptyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 1381
    invoke-virtual {v5, v6, v4}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1386
    invoke-virtual {v5}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v5

    iget-object v6, v4, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v6, v6, Landroidx/media3/common/MediaItem$RequestMetadata;->searchQuery:Ljava/lang/String;

    iget-object v4, v4, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v4, v4, Landroidx/media3/common/MediaItem$RequestMetadata;->extras:Landroid/os/Bundle;

    .line 1389
    invoke-static {v4}, Landroidx/media3/session/MediaControllerImplLegacy;->getOrEmptyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 1387
    invoke-virtual {v5, v6, v4}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_6
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 1392
    iget-object v5, v5, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v5, v5, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1394
    invoke-virtual {v5}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v5

    iget-object v6, v4, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    iget-object v4, v4, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v4, v4, Landroidx/media3/common/MediaItem$RequestMetadata;->extras:Landroid/os/Bundle;

    .line 1397
    invoke-static {v4}, Landroidx/media3/session/MediaControllerImplLegacy;->getOrEmptyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 1395
    invoke-virtual {v5, v6, v4}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_7
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1400
    invoke-virtual {v5}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v5

    iget-object v6, v4, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    iget-object v4, v4, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v4, v4, Landroidx/media3/common/MediaItem$RequestMetadata;->extras:Landroid/os/Bundle;

    .line 1403
    invoke-static {v4}, Landroidx/media3/session/MediaControllerImplLegacy;->getOrEmptyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 1401
    invoke-virtual {v5, v6, v4}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 1407
    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v4, v4, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v4, v4, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v4, v4, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    const-wide/16 v9, 0x0

    cmp-long v4, v4, v9

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1409
    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v5, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v5, v5, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v5, v5, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v5, v5, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    .line 1410
    invoke-virtual {v4, v5, v6}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->seekTo(J)V

    .line 1413
    :cond_8
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1414
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v2

    .line 1415
    :goto_2
    invoke-virtual {v1}, Landroidx/media3/session/QueueTimeline;->getWindowCount()I

    move-result v6

    if-ge v5, v6, :cond_b

    if-eq v5, v3, :cond_a

    .line 1416
    invoke-virtual {v1, v5}, Landroidx/media3/session/QueueTimeline;->getQueueId(I)J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-eqz v6, :cond_9

    goto :goto_3

    .line 1420
    :cond_9
    invoke-virtual {v1, v5, v0}, Landroidx/media3/session/QueueTimeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v6

    iget-object v6, v6, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1422
    :cond_b
    invoke-direct {p0, v4, v2}, Landroidx/media3/session/MediaControllerImplLegacy;->addQueueItems(Ljava/util/List;I)V

    :cond_c
    return-void
.end method

.method private isPrepared()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 1342
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$updateControllerInfo$10(Landroidx/media3/common/PlaybackException;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1584
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$11(Landroidx/media3/common/PlaybackException;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1587
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlayerError(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$13(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1599
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget p0, p0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaybackStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$14(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 1605
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    const/4 v0, 0x4

    invoke-interface {p1, p0, v0}, Landroidx/media3/common/Player$Listener;->onPlayWhenReadyChanged(ZI)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$15(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1612
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->isPlaying:Z

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onIsPlayingChanged(Z)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$16(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1619
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$17(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1625
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget p0, p0, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onRepeatModeChanged(I)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$18(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1632
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$19(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1640
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$20(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1645
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$21(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 1652
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-interface {p1, v0, p0}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$22(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1661
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$6(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 1553
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget p0, p0, Landroidx/media3/session/PlayerInfo;->timelineChangeReason:I

    invoke-interface {p1, v0, p0}, Landroidx/media3/common/Player$Listener;->onTimelineChanged(Landroidx/media3/common/Timeline;I)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$7(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1561
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$8(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1567
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object p0, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-object p1, p1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object p1, p1, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object p1, p1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    .line 1570
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1567
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    return-void
.end method

.method static synthetic lambda$updateControllerInfo$9(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1576
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1577
    invoke-virtual {p0}, Landroidx/media3/session/PlayerInfo;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1576
    invoke-interface {p2, p0, p1}, Landroidx/media3/common/Player$Listener;->onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V

    return-void
.end method

.method private seekToInternal(IJ)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v1, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    .line 322
    :goto_0
    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 323
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getCurrentMediaItemIndex()I

    move-result v6

    iget-object v7, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 324
    iget-object v7, v7, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v7, v7, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 325
    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 326
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->isPlayingAd()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v8, 0x2

    if-eq v1, v6, :cond_5

    iget-object v10, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 334
    iget-object v10, v10, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v10, v10, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    check-cast v10, Landroidx/media3/session/QueueTimeline;

    .line 335
    invoke-virtual {v10, v1}, Landroidx/media3/session/QueueTimeline;->getQueueId(I)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v12, v10, v12

    if-eqz v12, :cond_4

    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 337
    invoke-virtual {v6}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToQueueItem(J)V

    .line 339
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    .line 341
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Cannot seek to new media item due to the missing queue Id at media item, mediaItemIndex="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v10, "MCImplLegacy"

    invoke-static {v10, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move v1, v6

    const/4 v6, 0x0

    .line 351
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getCurrentPosition()J

    move-result-wide v10

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v14, v2, v12

    if-nez v14, :cond_6

    move-wide v2, v10

    const/4 v14, 0x0

    goto :goto_2

    :cond_6
    iget-object v14, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 357
    invoke-virtual {v14}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->seekTo(J)V

    .line 359
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_2
    if-nez v6, :cond_9

    .line 368
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getBufferedPosition()J

    move-result-wide v8

    .line 369
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getDuration()J

    move-result-wide v15

    cmp-long v10, v2, v10

    if-gez v10, :cond_7

    move-wide v8, v2

    goto :goto_3

    .line 373
    :cond_7
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    :goto_3
    cmp-long v10, v15, v12

    if-nez v10, :cond_8

    move v10, v5

    goto :goto_4

    :cond_8
    const-wide/16 v10, 0x64

    mul-long/2addr v10, v8

    .line 377
    div-long/2addr v10, v15

    long-to-int v10, v10

    :goto_4
    sub-long v11, v8, v2

    move-wide/from16 v19, v8

    move/from16 v21, v10

    move-wide/from16 v22, v11

    move-wide/from16 v17, v15

    goto :goto_5

    :cond_9
    const-wide/16 v8, 0x0

    move/from16 v21, v5

    move-wide/from16 v19, v8

    move-wide/from16 v22, v19

    move-wide/from16 v17, v12

    .line 388
    :goto_5
    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    .line 389
    new-instance v8, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v8}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {v7, v1, v8}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v7

    iget-object v7, v7, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    .line 386
    :goto_6
    invoke-static {v1, v7, v2, v3, v5}, Landroidx/media3/session/MediaControllerImplLegacy;->createPositionInfo(ILandroidx/media3/common/MediaItem;JZ)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v15

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 393
    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    const/16 v16, 0x0

    .line 395
    invoke-static/range {v15 .. v23}, Landroidx/media3/session/MediaControllerImplLegacy;->createSessionPositionInfo(Landroidx/media3/common/Player$PositionInfo;ZJJIJ)Landroidx/media3/session/SessionPositionInfo;

    move-result-object v2

    .line 394
    invoke-virtual {v1, v2}, Landroidx/media3/session/PlayerInfo;->copyWithSessionPositionInfo(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    .line 402
    iget v2, v1, Landroidx/media3/session/PlayerInfo;->playbackState:I

    if-eq v2, v4, :cond_b

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 404
    invoke-virtual {v1, v2, v3}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackState(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    .line 406
    :cond_b
    new-instance v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v4, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v5, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v5, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v2, v1, v3, v4, v5}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;)V

    .line 412
    invoke-direct {v0, v2, v14, v6}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private updateControllerInfo(ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    if-eq v0, p2, :cond_0

    .line 1531
    new-instance v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    invoke-direct {v2, p2}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)V

    iput-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    :cond_0
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iput-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->pendingLegacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iput-object p3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    if-eqz p1, :cond_2

    .line 1537
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/MediaController;->notifyAccepted()V

    .line 1538
    iget-object p1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    iget-object p2, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1539
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object p1

    new-instance p2, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda19;

    invoke-direct {p2, p0, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda19;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    .line 1540
    invoke-virtual {p1, p2}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    :cond_1
    return-void

    .line 1549
    :cond_2
    iget-object p1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object p1, p1, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v2, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p1, v2}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1550
    new-instance v2, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda5;

    invoke-direct {v2, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1557
    :cond_3
    iget-object p1, v0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    iget-object v2, p2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1558
    new-instance v2, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda6;

    invoke-direct {v2, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    const/16 v3, 0xf

    invoke-virtual {p1, v3, v2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_4
    if-eqz p4, :cond_5

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1564
    new-instance v2, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1, p3, p4}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;)V

    const/16 p4, 0xb

    invoke-virtual {p1, p4, v2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_5
    if-eqz p5, :cond_6

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1573
    new-instance p4, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda8;

    invoke-direct {p4, p3, p5}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;)V

    const/4 p5, 0x1

    invoke-virtual {p1, p5, p4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1579
    :cond_6
    iget-object p1, v0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    iget-object p4, p2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-static {p1, p4}, Landroidx/media3/session/MediaUtils;->areEqualError(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/session/PlaybackStateCompat;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1581
    iget-object p1, p2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1582
    invoke-static {p1}, Landroidx/media3/session/MediaUtils;->convertToPlaybackException(Landroid/support/v4/media/session/PlaybackStateCompat;)Landroidx/media3/common/PlaybackException;

    move-result-object p1

    iget-object p4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1583
    new-instance p5, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda9;

    invoke-direct {p5, p1}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/common/PlaybackException;)V

    const/16 v2, 0xa

    invoke-virtual {p4, v2, p5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    if-eqz p1, :cond_7

    iget-object p4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1586
    new-instance p5, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda10;

    invoke-direct {p5, p1}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda10;-><init>(Landroidx/media3/common/PlaybackException;)V

    invoke-virtual {p4, v2, p5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1590
    :cond_7
    iget-object p1, v0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    iget-object p2, p2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    if-eq p1, p2, :cond_8

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1591
    new-instance p2, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda12;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;)V

    const/16 p4, 0xe

    invoke-virtual {p1, p4, p2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1595
    :cond_8
    iget-object p1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget p1, p1, Landroidx/media3/session/PlayerInfo;->playbackState:I

    iget-object p2, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget p2, p2, Landroidx/media3/session/PlayerInfo;->playbackState:I

    if-eq p1, p2, :cond_9

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1596
    new-instance p2, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda13;

    invoke-direct {p2, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda13;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    const/4 p4, 0x4

    invoke-virtual {p1, p4, p2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1601
    :cond_9
    iget-object p1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean p1, p1, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    iget-object p2, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean p2, p2, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    if-eq p1, p2, :cond_a

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1602
    new-instance p2, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda14;

    invoke-direct {p2, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda14;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    const/4 p4, 0x5

    invoke-virtual {p1, p4, p2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1609
    :cond_a
    iget-object p1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean p1, p1, Landroidx/media3/session/PlayerInfo;->isPlaying:Z

    iget-object p2, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean p2, p2, Landroidx/media3/session/PlayerInfo;->isPlaying:Z

    if-eq p1, p2, :cond_b

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1610
    new-instance p2, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda20;

    invoke-direct {p2, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda20;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    const/4 p4, 0x7

    invoke-virtual {p1, p4, p2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1614
    :cond_b
    iget-object p1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object p1, p1, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget-object p2, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object p2, p2, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {p1, p2}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1616
    new-instance p2, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda21;

    invoke-direct {p2, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda21;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    const/16 p4, 0xc

    invoke-virtual {p1, p4, p2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1622
    :cond_c
    iget-object p1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget p1, p1, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    iget-object p2, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget p2, p2, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    if-eq p1, p2, :cond_d

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1623
    new-instance p2, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda22;

    invoke-direct {p2, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda22;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    const/16 p4, 0x8

    invoke-virtual {p1, p4, p2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1627
    :cond_d
    iget-object p1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean p1, p1, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    iget-object p2, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean p2, p2, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    if-eq p1, p2, :cond_e

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1629
    new-instance p2, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda23;

    invoke-direct {p2, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda23;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    const/16 p4, 0x9

    invoke-virtual {p1, p4, p2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1635
    :cond_e
    iget-object p1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object p1, p1, Landroidx/media3/session/PlayerInfo;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget-object p2, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object p2, p2, Landroidx/media3/session/PlayerInfo;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {p1, p2}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1637
    new-instance p2, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda24;

    invoke-direct {p2, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda24;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    const/16 p4, 0x14

    invoke-virtual {p1, p4, p2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1642
    :cond_f
    iget-object p1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object p1, p1, Landroidx/media3/session/PlayerInfo;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    iget-object p2, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object p2, p2, Landroidx/media3/session/PlayerInfo;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    invoke-virtual {p1, p2}, Landroidx/media3/common/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1643
    new-instance p2, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda25;

    invoke-direct {p2, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda25;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    const/16 p4, 0x1d

    invoke-virtual {p1, p4, p2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1647
    :cond_10
    iget-object p1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget p1, p1, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    iget-object p2, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget p2, p2, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    if-ne p1, p2, :cond_11

    iget-object p1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean p1, p1, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    iget-object p2, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean p2, p2, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    if-eq p1, p2, :cond_12

    :cond_11
    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1649
    new-instance p2, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda1;

    invoke-direct {p2, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    const/16 p4, 0x1e

    invoke-virtual {p1, p4, p2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1656
    :cond_12
    iget-object p1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object p2, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    invoke-virtual {p1, p2}, Landroidx/media3/common/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1658
    new-instance p2, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda2;

    invoke-direct {p2, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    const/16 p4, 0xd

    invoke-virtual {p1, p4, p2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 1663
    :cond_13
    iget-object p1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object p2, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    invoke-virtual {p1, p2}, Landroidx/media3/session/SessionCommands;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 1665
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object p1

    new-instance p2, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    .line 1666
    invoke-virtual {p1, p2}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    .line 1671
    :cond_14
    iget-object p1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    iget-object p2, p3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 1672
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object p1

    new-instance p2, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p3}, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    .line 1673
    invoke-virtual {p1, p2}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    :cond_15
    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1680
    invoke-virtual {p1}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method private updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1512
    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplLegacy;->updateControllerInfo(ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public addListener(Landroidx/media3/common/Player$Listener;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 150
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public addMediaItem(ILandroidx/media3/common/MediaItem;)V
    .locals 0

    .line 692
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaControllerImplLegacy;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method public addMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 1

    const v0, 0x7fffffff

    .line 687
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/MediaControllerImplLegacy;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method public addMediaItems(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 702
    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 703
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 706
    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v1, v1, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    check-cast v1, Landroidx/media3/session/QueueTimeline;

    .line 707
    invoke-virtual {v1}, Landroidx/media3/session/QueueTimeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 709
    invoke-virtual {p0, p2}, Landroidx/media3/session/MediaControllerImplLegacy;->setMediaItems(Ljava/util/List;)V

    return-void

    .line 713
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 714
    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/QueueTimeline;->copyWithNewMediaItems(ILjava/util/List;)Landroidx/media3/session/QueueTimeline;

    move-result-object v1

    .line 715
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getCurrentMediaItemIndex()I

    move-result v2

    .line 717
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, p1, v3}, Landroidx/media3/session/MediaControllerImplLegacy;->calculateCurrentItemIndexAfterAddItems(III)I

    move-result v2

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 718
    iget-object v3, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 719
    invoke-virtual {v3, v1, v2, v0}, Landroidx/media3/session/PlayerInfo;->copyWithTimelineAndMediaItemIndex(Landroidx/media3/common/Timeline;II)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    .line 723
    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v1, v0, v2, v3, v4}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;)V

    const/4 v0, 0x0

    .line 729
    invoke-direct {p0, v1, v0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 734
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 735
    invoke-direct {p0, p2, p1}, Landroidx/media3/session/MediaControllerImplLegacy;->addQueueItems(Ljava/util/List;I)V

    :cond_3
    return-void
.end method

.method public addMediaItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 697
    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/MediaControllerImplLegacy;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method public clearMediaItems()V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 794
    invoke-virtual {p0, v0, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->removeMediaItems(II)V

    return-void
.end method

.method public clearVideoSurface()V
    .locals 2

    const-string v0, "MCImplLegacy"

    const-string v1, "Session doesn\'t support clearing Surface"

    .line 1009
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 1

    const-string p1, "MCImplLegacy"

    const-string v0, "Session doesn\'t support clearing Surface"

    .line 1014
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "MCImplLegacy"

    const-string v0, "Session doesn\'t support clearing SurfaceHolder"

    .line 1029
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1

    const-string p1, "MCImplLegacy"

    const-string v0, "Session doesn\'t support clearing SurfaceView"

    .line 1039
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1

    const-string p1, "MCImplLegacy"

    const-string v0, "Session doesn\'t support clearing TextureView"

    .line 1049
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->token:Landroidx/media3/session/SessionToken;

    .line 141
    invoke-virtual {v0}, Landroidx/media3/session/SessionToken;->getType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->token:Landroidx/media3/session/SessionToken;

    .line 142
    invoke-virtual {v0}, Landroidx/media3/session/SessionToken;->getBinder()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->connectToSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->connectToService()V

    :goto_0
    return-void
.end method

.method public decreaseDeviceVolume()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 1150
    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->decreaseDeviceVolume(I)V

    return-void
.end method

.method public decreaseDeviceVolume(I)V
    .locals 5

    .line 1155
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getDeviceVolume()I

    move-result v0

    .line 1156
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/DeviceInfo;->minVolume:I

    add-int/lit8 v0, v0, -0x1

    if-lt v0, v1, :cond_0

    .line 1159
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->isDeviceMuted()Z

    move-result v1

    .line 1160
    new-instance v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1162
    invoke-virtual {v3, v0, v1}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v2, v0, v1, v3, v4}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;)V

    const/4 v0, 0x0

    .line 1166
    invoke-direct {p0, v2, v0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    const/4 v1, -0x1

    .line 1171
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/session/MediaControllerCompat;->adjustVolume(II)V

    return-void
.end method

.method public getAudioAttributes()Landroidx/media3/common/AudioAttributes;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 525
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    return-object v0
.end method

.method public getAvailableCommands()Landroidx/media3/common/Player$Commands;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 1254
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    return-object v0
.end method

.method public getAvailableSessionCommands()Landroidx/media3/session/SessionCommands;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 1272
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    return-object v0
.end method

.method public getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->browserCompat:Landroid/support/v4/media/MediaBrowserCompat;

    return-object v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 472
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget v0, v0, Landroidx/media3/session/SessionPositionInfo;->bufferedPercentage:I

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 467
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, v0, Landroidx/media3/session/SessionPositionInfo;->bufferedPositionMs:J

    return-wide v0
.end method

.method public getConnectedToken()Landroidx/media3/session/SessionToken;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->connected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->token:Landroidx/media3/session/SessionToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContentBufferedPosition()J
    .locals 2

    .line 498
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentDuration()J
    .locals 2

    .line 488
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 2

    .line 493
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentCues()Landroidx/media3/common/text/CueGroup;
    .locals 2

    const-string v0, "MCImplLegacy"

    const-string v1, "Session doesn\'t support getting Cue"

    .line 1054
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    sget-object v0, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    return-object v0
.end method

.method public getCurrentLiveOffset()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public getCurrentMediaItemIndex()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 890
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    return v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .line 885
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getCurrentMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 462
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v0, v0, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    return-wide v0
.end method

.method public getCurrentTimeline()Landroidx/media3/common/Timeline;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 605
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    return-object v0
.end method

.method public getCurrentTracks()Landroidx/media3/common/Tracks;
    .locals 1

    .line 1259
    sget-object v0, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    return-object v0
.end method

.method public getCustomLayout()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 446
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getDeviceInfo()Landroidx/media3/common/DeviceInfo;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 1070
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    return-object v0
.end method

.method public getDeviceVolume()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 1075
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 457
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, v0, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    return-wide v0
.end method

.method getInstance()Landroidx/media3/session/MediaController;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->instance:Landroidx/media3/session/MediaController;

    return-object v0
.end method

.method public getMaxSeekToPreviousPosition()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 1248
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v0}, Landroidx/media3/session/PlayerInfo;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1249
    sget-object v0, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    :goto_0
    return-object v0
.end method

.method public getNextMediaItemIndex()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 1220
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    return v0
.end method

.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 520
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 1233
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    return v0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPlayerError()Landroidx/media3/common/PlaybackException;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 452
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->playerError:Landroidx/media3/common/PlaybackException;

    return-object v0
.end method

.method public getPlaylistMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 682
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    return-object v0
.end method

.method public getPreviousMediaItemIndex()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 945
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    return v0
.end method

.method public getSeekBackIncrement()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 418
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-wide v0, v0, Landroidx/media3/session/PlayerInfo;->seekBackIncrementMs:J

    return-wide v0
.end method

.method public getSeekForwardIncrement()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 429
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-wide v0, v0, Landroidx/media3/session/PlayerInfo;->seekForwardIncrementMs:J

    return-wide v0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 441
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 971
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    return v0
.end method

.method public getSurfaceSize()Landroidx/media3/common/util/Size;
    .locals 2

    const-string v0, "MCImplLegacy"

    const-string v1, "Session doesn\'t support getting VideoSurfaceSize"

    .line 1003
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    sget-object v0, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    return-object v0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 477
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, v0, Landroidx/media3/session/SessionPositionInfo;->totalBufferedDurationMs:J

    return-wide v0
.end method

.method public getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    .line 1264
    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Landroidx/media3/common/TrackSelectionParameters;

    return-object v0
.end method

.method public getVideoSize()Landroidx/media3/common/VideoSize;
    .locals 2

    const-string v0, "MCImplLegacy"

    const-string v1, "Session doesn\'t support getting VideoSize"

    .line 997
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    sget-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public hasNextMediaItem()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->connected:Z

    return v0
.end method

.method public hasPreviousMediaItem()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->connected:Z

    return v0
.end method

.method public increaseDeviceVolume()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 1120
    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->increaseDeviceVolume(I)V

    return-void
.end method

.method public increaseDeviceVolume(I)V
    .locals 6

    .line 1125
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getDeviceVolume()I

    move-result v0

    .line 1126
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    add-int/lit8 v3, v0, 0x1

    if-gt v3, v1, :cond_1

    .line 1128
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->isDeviceMuted()Z

    move-result v1

    .line 1130
    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    add-int/2addr v0, v2

    .line 1132
    invoke-virtual {v4, v0, v1}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v5, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v3, v0, v1, v4, v5}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;)V

    const/4 v0, 0x0

    .line 1136
    invoke-direct {p0, v3, v0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1141
    invoke-virtual {v0, v2, p1}, Landroid/support/v4/media/session/MediaControllerCompat;->adjustVolume(II)V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->connected:Z

    return v0
.end method

.method public isDeviceMuted()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 1080
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 1238
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->isPlaying:Z

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 503
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-boolean v0, v0, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    return v0
.end method

.method synthetic lambda$addQueueItems$4$androidx-media3-session-MediaControllerImplLegacy(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Ljava/util/List;I)V
    .locals 1

    .line 1431
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    .line 1432
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1433
    invoke-direct {p0, p3, p2, p4}, Landroidx/media3/session/MediaControllerImplLegacy;->handleBitmapFuturesAllCompletedAndAddQueueItems(Ljava/util/List;Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$connectToService$3$androidx-media3-session-MediaControllerImplLegacy()V
    .locals 5

    .line 1334
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->context:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->token:Landroidx/media3/session/SessionToken;

    .line 1336
    invoke-virtual {v2}, Landroidx/media3/session/SessionToken;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$1;)V

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->browserCompat:Landroid/support/v4/media/MediaBrowserCompat;

    .line 1337
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->connect()V

    return-void
.end method

.method synthetic lambda$connectToSession$1$androidx-media3-session-MediaControllerImplLegacy(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 2

    .line 1307
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompatCallback:Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;

    .line 1312
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/session/MediaController;->applicationHandler:Landroid/os/Handler;

    .line 1311
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method synthetic lambda$connectToSession$2$androidx-media3-session-MediaControllerImplLegacy()V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1320
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->isSessionReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1323
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->onConnected()V

    :cond_0
    return-void
.end method

.method synthetic lambda$new$0$androidx-media3-session-MediaControllerImplLegacy(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/FlagSet;)V
    .locals 2

    .line 125
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/Player$Events;

    invoke-direct {v1, p2}, Landroidx/media3/common/Player$Events;-><init>(Landroidx/media3/common/FlagSet;)V

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V

    return-void
.end method

.method synthetic lambda$updateControllerInfo$12$androidx-media3-session-MediaControllerImplLegacy(Landroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 1593
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method synthetic lambda$updateControllerInfo$23$androidx-media3-session-MediaControllerImplLegacy(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/session/MediaController$Listener;)V
    .locals 1

    .line 1669
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    iget-object p1, p1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    .line 1668
    invoke-interface {p2, v0, p1}, Landroidx/media3/session/MediaController$Listener;->onAvailableSessionCommandsChanged(Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionCommands;)V

    return-void
.end method

.method synthetic lambda$updateControllerInfo$24$androidx-media3-session-MediaControllerImplLegacy(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/session/MediaController$Listener;)V
    .locals 2

    .line 1676
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    iget-object v1, p1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p2, v0, v1}, Landroidx/media3/session/MediaController$Listener;->onSetCustomLayout(Landroidx/media3/session/MediaController;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 1675
    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->ignoreFuture(Ljava/util/concurrent/Future;)V

    .line 1677
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    iget-object p1, p1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p2, v0, p1}, Landroidx/media3/session/MediaController$Listener;->onCustomLayoutChanged(Landroidx/media3/session/MediaController;Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$updateControllerInfo$5$androidx-media3-session-MediaControllerImplLegacy(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/session/MediaController$Listener;)V
    .locals 2

    .line 1543
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    iget-object v1, p1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p2, v0, v1}, Landroidx/media3/session/MediaController$Listener;->onSetCustomLayout(Landroidx/media3/session/MediaController;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 1542
    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->ignoreFuture(Ljava/util/concurrent/Future;)V

    .line 1544
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    iget-object p1, p1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p2, v0, p1}, Landroidx/media3/session/MediaController$Listener;->onCustomLayoutChanged(Landroidx/media3/session/MediaController;Ljava/util/List;)V

    return-void
.end method

.method public moveMediaItem(II)V
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 799
    invoke-virtual {p0, p1, v0, p2}, Landroidx/media3/session/MediaControllerImplLegacy;->moveMediaItems(III)V

    return-void
.end method

.method public moveMediaItems(III)V
    .locals 6

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    if-ltz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 804
    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 805
    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v1, v1, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    check-cast v1, Landroidx/media3/session/QueueTimeline;

    .line 806
    invoke-virtual {v1}, Landroidx/media3/session/QueueTimeline;->getWindowCount()I

    move-result v2

    .line 807
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int v3, p2, p1

    sub-int v4, v2, v3

    add-int/lit8 v5, v4, -0x1

    .line 810
    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-ge p1, v2, :cond_4

    if-eq p1, p2, :cond_4

    if-ne p1, p3, :cond_1

    goto/16 :goto_3

    .line 815
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getCurrentMediaItemIndex()I

    move-result v2

    .line 817
    invoke-static {v2, p1, p2}, Landroidx/media3/session/MediaControllerImplLegacy;->calculateCurrentItemIndexAfterRemoveItems(III)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 820
    invoke-static {p1, v0, v5}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v2

    .line 821
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Currently playing item will be removed and added back to mimic move. Assumes item at "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " would be the new current item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MCImplLegacy"

    invoke-static {v5, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    :cond_2
    invoke-static {v2, p3, v3}, Landroidx/media3/session/MediaControllerImplLegacy;->calculateCurrentItemIndexAfterAddItems(III)I

    move-result v2

    .line 833
    invoke-virtual {v1, p1, p2, p3}, Landroidx/media3/session/QueueTimeline;->copyWithMovedMediaItems(III)Landroidx/media3/session/QueueTimeline;

    move-result-object p2

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 834
    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 835
    invoke-virtual {v1, p2, v2, v0}, Landroidx/media3/session/PlayerInfo;->copyWithTimelineAndMediaItemIndex(Landroidx/media3/common/Timeline;II)Landroidx/media3/session/PlayerInfo;

    move-result-object p2

    .line 840
    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v5, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v1, p2, v2, v4, v5}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;)V

    const/4 p2, 0x0

    .line 846
    invoke-direct {p0, v1, p2, p2}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 851
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->isPrepared()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 852
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    .line 854
    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    .line 855
    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v4/media/session/MediaControllerCompat;->removeQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 857
    :cond_3
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_4

    .line 858
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 859
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    add-int v2, v0, p3

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method onConnected()V
    .locals 10

    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->released:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->connected:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->connected:Z

    .line 1291
    new-instance v9, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1293
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackInfo()Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    move-result-object v2

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1294
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/MediaControllerImplLegacy;->convertToSafePlaybackStateCompat(Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v3

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1295
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v4

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1296
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getQueue()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/MediaControllerImplLegacy;->convertToNonNullQueueItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1297
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1298
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getRepeatMode()I

    move-result v7

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1299
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getShuffleMode()I

    move-result v8

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;II)V

    .line 1300
    invoke-direct {p0, v0, v9}, Landroidx/media3/session/MediaControllerImplLegacy;->handleNewLegacyParameters(ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 254
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    if-nez v0, :cond_0

    return-void

    .line 257
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 259
    invoke-virtual {v1, v3, v2, v3}, Landroidx/media3/session/PlayerInfo;->copyWithPlayWhenReady(ZII)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;)V

    const/4 v1, 0x0

    .line 266
    invoke-direct {p0, v0, v1, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 271
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->hasMedia()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 272
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    :cond_1
    return-void
.end method

.method public play()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 230
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    if-eqz v0, :cond_0

    return-void

    .line 233
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 235
    invoke-virtual {v1, v3, v3, v2}, Landroidx/media3/session/PlayerInfo;->copyWithPlayWhenReady(ZII)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;)V

    const/4 v1, 0x0

    .line 242
    invoke-direct {p0, v0, v1, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 247
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->hasMedia()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 248
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    :cond_1
    return-void
.end method

.method public prepare()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 278
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 281
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 284
    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    const/4 v3, 0x0

    .line 283
    invoke-virtual {v1, v2, v3}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackState(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v5, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1, v2, v4, v5}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;)V

    .line 291
    invoke-direct {p0, v0, v3, v3}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 296
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->hasMedia()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->initializeLegacyPlaylist()V

    :cond_2
    return-void
.end method

.method public release()V
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->released:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->released:Z

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->browserCompat:Landroid/support/v4/media/MediaBrowserCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->disconnect()V

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->browserCompat:Landroid/support/v4/media/MediaBrowserCompat;

    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompatCallback:Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;

    .line 209
    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompatCallback:Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;

    .line 210
    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->release()V

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->connected:Z

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 214
    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->release()V

    return-void
.end method

.method public removeListener(Landroidx/media3/common/Player$Listener;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 155
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ListenerSet;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public removeMediaItem(I)V
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 741
    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->removeMediaItems(II)V

    return-void
.end method

.method public removeMediaItems(II)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 746
    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 747
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v2

    .line 748
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-ge p1, v2, :cond_3

    if-ne p1, p2, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 753
    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    check-cast v2, Landroidx/media3/session/QueueTimeline;

    .line 754
    invoke-virtual {v2, p1, p2}, Landroidx/media3/session/QueueTimeline;->copyWithRemovedMediaItems(II)Landroidx/media3/session/QueueTimeline;

    move-result-object v2

    .line 755
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getCurrentMediaItemIndex()I

    move-result v3

    .line 757
    invoke-static {v3, p1, p2}, Landroidx/media3/session/MediaControllerImplLegacy;->calculateCurrentItemIndexAfterRemoveItems(III)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 760
    invoke-virtual {v2}, Landroidx/media3/session/QueueTimeline;->getWindowCount()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {p1, v1, v3}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v3

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Currently playing item is removed. Assumes item at "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " is the new current item"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "MCImplLegacy"

    invoke-static {v4, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 768
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 769
    invoke-virtual {v0, v2, v3, v1}, Landroidx/media3/session/PlayerInfo;->copyWithTimelineAndMediaItemIndex(Landroidx/media3/common/Timeline;II)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    .line 774
    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v1, v0, v2, v3, v4}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;)V

    const/4 v0, 0x0

    .line 780
    invoke-direct {p0, v1, v0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 785
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    if-ge p1, p2, :cond_3

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    .line 786
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    .line 787
    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->removeQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public replaceMediaItem(ILandroidx/media3/common/MediaItem;)V
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 867
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    .line 866
    invoke-virtual {p0, p1, v0, p2}, Landroidx/media3/session/MediaControllerImplLegacy;->replaceMediaItems(IILjava/util/List;)V

    return-void
.end method

.method public replaceMediaItems(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 872
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 873
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    check-cast v0, Landroidx/media3/session/QueueTimeline;

    .line 874
    invoke-virtual {v0}, Landroidx/media3/session/QueueTimeline;->getWindowCount()I

    move-result v0

    if-le p1, v0, :cond_1

    return-void

    .line 878
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 879
    invoke-virtual {p0, p2, p3}, Landroidx/media3/session/MediaControllerImplLegacy;->addMediaItems(ILjava/util/List;)V

    .line 880
    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaControllerImplLegacy;->removeMediaItems(II)V

    return-void
.end method

.method public seekBack()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 424
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->rewind()V

    return-void
.end method

.method public seekForward()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 435
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->fastForward()V

    return-void
.end method

.method public seekTo(IJ)V
    .locals 0

    .line 318
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/session/MediaControllerImplLegacy;->seekToInternal(IJ)V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 313
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getCurrentMediaItemIndex()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/session/MediaControllerImplLegacy;->seekToInternal(IJ)V

    return-void
.end method

.method public seekToDefaultPosition()V
    .locals 3

    .line 303
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getCurrentMediaItemIndex()I

    move-result v0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/session/MediaControllerImplLegacy;->seekToInternal(IJ)V

    return-void
.end method

.method public seekToDefaultPosition(I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 308
    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->seekToInternal(IJ)V

    return-void
.end method

.method public seekToNext()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 934
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToNext()V

    return-void
.end method

.method public seekToNextMediaItem()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 922
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToNext()V

    return-void
.end method

.method public seekToPrevious()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 928
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToPrevious()V

    return-void
.end method

.method public seekToPreviousMediaItem()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 916
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToPrevious()V

    return-void
.end method

.method public sendCustomCommand(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/SessionCommand;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 585
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    invoke-virtual {v0, p1}, Landroidx/media3/session/SessionCommands;->contains(Landroidx/media3/session/SessionCommand;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 586
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    iget-object p1, p1, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 587
    new-instance p1, Landroidx/media3/session/SessionResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 589
    :cond_0
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 590
    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$1;

    .line 591
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v2

    iget-object v2, v2, Landroidx/media3/session/MediaController;->applicationHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v0}, Landroidx/media3/session/MediaControllerImplLegacy$1;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroid/os/Handler;Lcom/google/common/util/concurrent/SettableFuture;)V

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 599
    iget-object p1, p1, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    invoke-virtual {v2, p1, p2, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-object v0
.end method

.method public setDeviceMuted(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 1180
    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->setDeviceMuted(ZI)V

    return-void
.end method

.method public setDeviceMuted(ZI)V
    .locals 5

    .line 1185
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const-string p1, "MCImplLegacy"

    const-string p2, "Session doesn\'t support setting mute state at API level less than 23"

    .line 1186
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1190
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->isDeviceMuted()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1192
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getDeviceVolume()I

    move-result v0

    .line 1193
    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1195
    invoke-virtual {v2, v0, p1}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v1, v0, v2, v3, v4}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;)V

    const/4 v0, 0x0

    .line 1199
    invoke-direct {p0, v1, v0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_1
    if-eqz p1, :cond_2

    const/16 p1, -0x64

    goto :goto_0

    :cond_2
    const/16 p1, 0x64

    :goto_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1206
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat;->adjustVolume(II)V

    return-void
.end method

.method public setDeviceVolume(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 1089
    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->setDeviceVolume(II)V

    return-void
.end method

.method public setDeviceVolume(II)V
    .locals 5

    .line 1094
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    .line 1095
    iget v1, v0, Landroidx/media3/common/DeviceInfo;->minVolume:I

    .line 1096
    iget v0, v0, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    if-gt v1, p1, :cond_1

    if-eqz v0, :cond_0

    if-gt p1, v0, :cond_1

    .line 1098
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->isDeviceMuted()Z

    move-result v0

    .line 1099
    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1101
    invoke-virtual {v2, p1, v0}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v1, v0, v2, v3, v4}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;)V

    const/4 v0, 0x0

    .line 1105
    invoke-direct {p0, v1, v0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1111
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat;->setVolumeTo(II)V

    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 610
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->setMediaItem(Landroidx/media3/common/MediaItem;J)V

    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;J)V
    .locals 1

    .line 615
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroidx/media3/session/MediaControllerImplLegacy;->setMediaItems(Ljava/util/List;IJ)V

    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;Z)V
    .locals 0

    .line 620
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaControllerImplLegacy;->setMediaItem(Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 625
    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/media3/session/MediaControllerImplLegacy;->setMediaItems(Ljava/util/List;IJ)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;IJ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 635
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->clearMediaItems()V

    return-void

    .line 639
    :cond_0
    sget-object v1, Landroidx/media3/session/QueueTimeline;->DEFAULT:Landroidx/media3/session/QueueTimeline;

    const/4 v2, 0x0

    move-object/from16 v3, p1

    .line 640
    invoke-virtual {v1, v2, v3}, Landroidx/media3/session/QueueTimeline;->copyWithNewMediaItems(ILjava/util/List;)Landroidx/media3/session/QueueTimeline;

    move-result-object v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p3, v4

    if-nez v4, :cond_1

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_1
    move-wide/from16 v4, p3

    :goto_0
    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 645
    iget-object v6, v6, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 651
    invoke-interface/range {p1 .. p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/MediaItem;

    move/from16 v7, p2

    .line 649
    invoke-static {v7, v3, v4, v5, v2}, Landroidx/media3/session/MediaControllerImplLegacy;->createPositionInfo(ILandroidx/media3/common/MediaItem;JZ)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v7

    const/4 v8, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    .line 648
    invoke-static/range {v7 .. v15}, Landroidx/media3/session/MediaControllerImplLegacy;->createSessionPositionInfo(Landroidx/media3/common/Player$PositionInfo;ZJJIJ)Landroidx/media3/session/SessionPositionInfo;

    move-result-object v3

    .line 646
    invoke-virtual {v6, v1, v3, v2}, Landroidx/media3/session/PlayerInfo;->copyWithTimelineAndSessionPositionInfo(Landroidx/media3/common/Timeline;Landroidx/media3/session/SessionPositionInfo;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    .line 660
    new-instance v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v4, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v5, v0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v5, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v2, v1, v3, v4, v5}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;)V

    const/4 v1, 0x0

    .line 666
    invoke-direct {v0, v2, v1, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 670
    invoke-direct/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 671
    invoke-direct/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplLegacy;->initializeLegacyPlaylist()V

    :cond_2
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

    .line 630
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaControllerImplLegacy;->setMediaItems(Ljava/util/List;)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1212
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->play()V

    goto :goto_0

    .line 1214
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->pause()V

    :goto_0
    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 5

    .line 547
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    .line 548
    invoke-virtual {p1, v0}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 551
    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;)V

    const/4 v1, 0x0

    .line 555
    invoke-direct {p0, v0, v1, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 561
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    iget p1, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->setPlaybackSpeed(F)V

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 5

    .line 566
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    .line 567
    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 568
    new-instance v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    new-instance v2, Landroidx/media3/common/PlaybackParameters;

    invoke-direct {v2, p1}, Landroidx/media3/common/PlaybackParameters;-><init>(F)V

    .line 570
    invoke-virtual {v1, v2}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;)V

    const/4 v1, 0x0

    .line 574
    invoke-direct {p0, v0, v1, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 580
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->setPlaybackSpeed(F)V

    return-void
.end method

.method public setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)V
    .locals 1

    const-string p1, "MCImplLegacy"

    const-string v0, "Session doesn\'t support setting playlist metadata"

    .line 677
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRating(Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Rating;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 541
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-static {p1}, Landroidx/media3/session/MediaUtils;->convertToRatingCompat(Landroidx/media3/common/Rating;)Landroid/support/v4/media/RatingCompat;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->setRating(Landroid/support/v4/media/RatingCompat;)V

    .line 542
    new-instance p1, Landroidx/media3/session/SessionResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public setRating(Ljava/lang/String;Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media3/common/Rating;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->legacyPlayerInfo:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    .line 531
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    const-string v1, "android.media.metadata.MEDIA_ID"

    .line 532
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 534
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    invoke-static {p2}, Landroidx/media3/session/MediaUtils;->convertToRatingCompat(Landroidx/media3/common/Rating;)Landroid/support/v4/media/RatingCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->setRating(Landroid/support/v4/media/RatingCompat;)V

    .line 536
    :cond_0
    new-instance p1, Landroidx/media3/session/SessionResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatMode(I)V
    .locals 5

    .line 950
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getRepeatMode()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 952
    new-instance v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 954
    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithRepeatMode(I)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;)V

    const/4 v1, 0x0

    .line 958
    invoke-direct {p0, v0, v1, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 965
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    .line 966
    invoke-static {p1}, Landroidx/media3/session/MediaUtils;->convertToPlaybackStateCompatRepeatMode(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->setRepeatMode(I)V

    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 5

    .line 976
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getShuffleModeEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 978
    new-instance v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 980
    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithShuffleModeEnabled(Z)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;)V

    const/4 v1, 0x0

    .line 984
    invoke-direct {p0, v0, v1, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 991
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    .line 992
    invoke-static {p1}, Landroidx/media3/session/MediaUtils;->convertToPlaybackStateCompatShuffleMode(Z)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->setShuffleMode(I)V

    return-void
.end method

.method public setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 1

    const-string p1, "MCImplLegacy"

    const-string v0, "Session doesn\'t support setting Surface"

    .line 1019
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "MCImplLegacy"

    const-string v0, "Session doesn\'t support setting SurfaceHolder"

    .line 1024
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1

    const-string p1, "MCImplLegacy"

    const-string v0, "Session doesn\'t support setting SurfaceView"

    .line 1034
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 1

    const-string p1, "MCImplLegacy"

    const-string v0, "Session doesn\'t support setting TextureView"

    .line 1044
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    const-string p1, "MCImplLegacy"

    const-string v0, "Session doesn\'t support setting player volume"

    .line 1065
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 13

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 160
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 163
    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v3, v2, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    const/4 v4, 0x0

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v5, v2, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v2, v2, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v7, v2, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v2, v2, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v9, v2, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v11, v2, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    .line 174
    invoke-static {v9, v10, v11, v12}, Landroidx/media3/session/MediaUtils;->calculateBufferedPercentage(JJ)I

    move-result v9

    const-wide/16 v10, 0x0

    .line 165
    invoke-static/range {v3 .. v11}, Landroidx/media3/session/MediaControllerImplLegacy;->createSessionPositionInfo(Landroidx/media3/common/Player$PositionInfo;ZJJIJ)Landroidx/media3/session/SessionPositionInfo;

    move-result-object v2

    .line 164
    invoke-virtual {v0, v2}, Landroidx/media3/session/PlayerInfo;->copyWithSessionPositionInfo(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 178
    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v2, v2, Landroidx/media3/session/PlayerInfo;->playbackState:I

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    .line 179
    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->playerError:Landroidx/media3/common/PlaybackException;

    .line 180
    invoke-virtual {v0, v1, v2}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackState(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    .line 183
    :cond_1
    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerInfo:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v1, v0, v2, v3, v4}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;)V

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, v1, v0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->updateStateMaskedControllerInfo(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->controllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 194
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->stop()V

    return-void
.end method
