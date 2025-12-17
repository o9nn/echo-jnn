.class final Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Landroidx/media3/session/MediaSession$ControllerCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSessionLegacyStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ControllerLegacyCbForBroadcast"
.end annotation


# instance fields
.field private lastDurationMs:J

.field private lastMediaId:Ljava/lang/String;

.field private lastMediaMetadata:Landroidx/media3/common/MediaMetadata;

.field private lastMediaUri:Landroid/net/Uri;

.field final synthetic this$0:Landroidx/media3/session/MediaSessionLegacyStub;


# direct methods
.method public static synthetic $r8$lambda$xMC8M6LLEeW997bBmO6BCC6GGAM(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 987
    sget-object p1, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->lastMediaMetadata:Landroidx/media3/common/MediaMetadata;

    const-string p1, ""

    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->lastMediaId:Ljava/lang/String;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->lastDurationMs:J

    return-void
.end method

.method private handleBitmapFuturesAllCompletedAndSetQueue(Ljava/util/List;Landroidx/media3/common/Timeline;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/graphics/Bitmap;",
            ">;>;",
            "Landroidx/media3/common/Timeline;",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 1205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1206
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "MediaSessionLegacyStub"

    if-ge v1, v2, :cond_1

    .line 1207
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v2, :cond_0

    .line 1211
    :try_start_0
    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const-string v4, "Failed to get bitmap"

    .line 1213
    invoke-static {v3, v4, v2}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v2, 0x0

    .line 1216
    :goto_2
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/MediaItem;

    invoke-static {v3, v1, v2}, Landroidx/media3/session/MediaUtils;->convertToQueueItem(Landroidx/media3/common/MediaItem;ILandroid/graphics/Bitmap;)Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1219
    :cond_1
    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 p3, 0x15

    if-ge p1, p3, :cond_3

    const/high16 p1, 0x40000

    .line 1223
    invoke-static {v0, p1}, Landroidx/media3/session/MediaUtils;->truncateListBySize(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 1224
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    if-eq p3, v0, :cond_2

    .line 1225
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Sending "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1227
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " items out of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1225
    invoke-static {v3, p2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1229
    invoke-static {p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$300(Landroidx/media3/session/MediaSessionLegacyStub;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setQueue(Ljava/util/List;)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1233
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$300(Landroidx/media3/session/MediaSessionLegacyStub;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setQueue(Ljava/util/List;)V

    :goto_3
    return-void
.end method

.method private updateMetadataIfChanged()V
    .locals 16

    move-object/from16 v8, p0

    iget-object v0, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1306
    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    .line 1307
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemWithCommandCheck()Landroidx/media3/common/MediaItem;

    move-result-object v1

    .line 1308
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getMediaMetadataWithCommandCheck()Landroidx/media3/common/MediaMetadata;

    move-result-object v9

    .line 1309
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getDurationWithCommandCheck()J

    move-result-wide v10

    if-eqz v1, :cond_0

    .line 1311
    iget-object v0, v1, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v12, v0

    const/4 v13, 0x0

    if-eqz v1, :cond_1

    .line 1314
    iget-object v0, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-eqz v0, :cond_1

    .line 1315
    iget-object v0, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    move-object v14, v0

    goto :goto_1

    :cond_1
    move-object v14, v13

    :goto_1
    iget-object v0, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->lastMediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 1318
    invoke-static {v0, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->lastMediaId:Ljava/lang/String;

    .line 1319
    invoke-static {v0, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->lastMediaUri:Landroid/net/Uri;

    .line 1320
    invoke-static {v0, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->lastDurationMs:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_2

    return-void

    :cond_2
    iput-object v12, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->lastMediaId:Ljava/lang/String;

    iput-object v14, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->lastMediaUri:Landroid/net/Uri;

    iput-object v9, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->lastMediaMetadata:Landroidx/media3/common/MediaMetadata;

    iput-wide v10, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->lastDurationMs:J

    iget-object v0, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1332
    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getBitmapLoader()Landroidx/media3/common/util/BitmapLoader;

    move-result-object v0

    invoke-interface {v0, v9}, Landroidx/media3/common/util/BitmapLoader;->loadBitmapFromMetadata(Landroidx/media3/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1334
    invoke-static {v1, v13}, Landroidx/media3/session/MediaSessionLegacyStub;->access$702(Landroidx/media3/session/MediaSessionLegacyStub;Lcom/google/common/util/concurrent/FutureCallback;)Lcom/google/common/util/concurrent/FutureCallback;

    .line 1335
    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1337
    :try_start_0
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionLegacyStub"

    .line 1339
    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$800(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v15, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1342
    new-instance v6, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$1;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v4, v12

    move-object v5, v14

    move-object v13, v6

    move-wide v6, v10

    invoke-direct/range {v1 .. v7}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;Landroidx/media3/common/MediaMetadata;Ljava/lang/String;Landroid/net/Uri;J)V

    invoke-static {v15, v13}, Landroidx/media3/session/MediaSessionLegacyStub;->access$702(Landroidx/media3/session/MediaSessionLegacyStub;Lcom/google/common/util/concurrent/FutureCallback;)Lcom/google/common/util/concurrent/FutureCallback;

    iget-object v1, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1370
    invoke-static {v1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$700(Landroidx/media3/session/MediaSessionLegacyStub;)Lcom/google/common/util/concurrent/FutureCallback;

    move-result-object v1

    iget-object v2, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1371
    invoke-static {v2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    .line 1368
    invoke-static {v0, v1, v3}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    :cond_4
    :goto_2
    const/4 v7, 0x0

    :goto_3
    iget-object v0, v8, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1375
    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$300(Landroidx/media3/session/MediaSessionLegacyStub;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    move-object v2, v9

    move-object v3, v12

    move-object v4, v14

    move-wide v5, v10

    .line 1376
    invoke-static/range {v2 .. v7}, Landroidx/media3/session/MediaUtils;->convertToMediaMetadataCompat(Landroidx/media3/common/MediaMetadata;Ljava/lang/String;Landroid/net/Uri;JLandroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    .line 1374
    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$900(Landroid/support/v4/media/session/MediaSessionCompat;Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method private updateQueue(Landroidx/media3/common/Timeline;)V
    .locals 10

    .line 1174
    invoke-static {p1}, Landroidx/media3/session/MediaUtils;->convertToMediaItemList(Landroidx/media3/common/Timeline;)Ljava/util/List;

    move-result-object v6

    .line 1175
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1176
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v8, 0x0

    invoke-direct {v2, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1177
    new-instance v9, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$$ExternalSyntheticLambda0;

    move-object v0, v9

    move-object v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Ljava/util/List;Landroidx/media3/common/Timeline;)V

    .line 1185
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p1

    if-ge v8, p1, :cond_1

    .line 1186
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/MediaItem;

    .line 1187
    iget-object p1, p1, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 1188
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 1189
    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1190
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1193
    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getBitmapLoader()Landroidx/media3/common/util/BitmapLoader;

    move-result-object v0

    iget-object p1, p1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    invoke-interface {v0, p1}, Landroidx/media3/common/util/BitmapLoader;->decodeBitmap([B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 1194
    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1196
    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    .line 1195
    invoke-interface {p1, v9, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method synthetic lambda$updateQueue$0$androidx-media3-session-MediaSessionLegacyStub$ControllerLegacyCbForBroadcast(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Ljava/util/List;Landroidx/media3/common/Timeline;)V
    .locals 1

    .line 1179
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    .line 1180
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1181
    invoke-direct {p0, p3, p4, p2}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->handleBitmapFuturesAllCompletedAndSetQueue(Ljava/util/List;Landroidx/media3/common/Timeline;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onAudioAttributesChanged(ILandroidx/media3/common/AudioAttributes;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1266
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object p1

    iget p1, p1, Landroidx/media3/common/DeviceInfo;->playbackType:I

    if-nez p1, :cond_0

    .line 1268
    invoke-static {p2}, Landroidx/media3/session/MediaUtils;->getLegacyStreamType(Landroidx/media3/common/AudioAttributes;)I

    move-result p1

    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1269
    invoke-static {p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$300(Landroidx/media3/session/MediaSessionLegacyStub;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToLocal(I)V

    :cond_0
    return-void
.end method

.method public onAvailableCommandsChangedFromPlayer(ILandroidx/media3/common/Player$Commands;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 994
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 995
    invoke-static {p2, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$200(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/PlayerWrapper;)V

    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 996
    invoke-static {p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->createPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method public onDeviceInfoChanged(ILandroidx/media3/common/DeviceInfo;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1275
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1276
    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->createVolumeProviderCompat()Landroidx/media/VolumeProviderCompat;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$602(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media/VolumeProviderCompat;)Landroidx/media/VolumeProviderCompat;

    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1277
    invoke-static {p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$600(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media/VolumeProviderCompat;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1279
    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->getAudioAttributesWithCommandCheck()Landroidx/media3/common/AudioAttributes;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/MediaUtils;->getLegacyStreamType(Landroidx/media3/common/AudioAttributes;)I

    move-result p1

    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1280
    invoke-static {p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$300(Landroidx/media3/session/MediaSessionLegacyStub;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToLocal(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1282
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$300(Landroidx/media3/session/MediaSessionLegacyStub;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$600(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media/VolumeProviderCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToRemote(Landroidx/media/VolumeProviderCompat;)V

    :goto_0
    return-void
.end method

.method public onDeviceVolumeChanged(IIZ)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1288
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$600(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media/VolumeProviderCompat;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1289
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$600(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media/VolumeProviderCompat;

    move-result-object p1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/media/VolumeProviderCompat;->setCurrentVolume(I)V

    :cond_1
    return-void
.end method

.method public onDisconnected(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onIsPlayingChanged(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1110
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    .line 1111
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1112
    invoke-static {p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->createPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method public onMediaItemTransition(ILandroidx/media3/common/MediaItem;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1142
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->updateMetadataIfChanged()V

    if-nez p2, :cond_0

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1144
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$300(Landroidx/media3/session/MediaSessionLegacyStub;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setRatingType(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1146
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$300(Landroidx/media3/session/MediaSessionLegacyStub;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    iget-object p2, p2, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object p2, p2, Landroidx/media3/common/MediaMetadata;->userRating:Landroidx/media3/common/Rating;

    .line 1147
    invoke-static {p2}, Landroidx/media3/session/MediaUtils;->getRatingCompatStyle(Landroidx/media3/common/Rating;)I

    move-result p2

    .line 1146
    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setRatingType(I)V

    :goto_0
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1149
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    .line 1150
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1151
    invoke-static {p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->createPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method public onMediaMetadataChanged(ILandroidx/media3/common/MediaMetadata;)V
    .locals 0

    .line 1156
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->updateMetadataIfChanged()V

    return-void
.end method

.method public onPeriodicSessionPositionInfoChanged(ILandroidx/media3/session/SessionPositionInfo;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1300
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    .line 1301
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1302
    invoke-static {p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->createPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method public onPlayWhenReadyChanged(IZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1085
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    .line 1086
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1087
    invoke-static {p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->createPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method public onPlaybackParametersChanged(ILandroidx/media3/common/PlaybackParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1132
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    .line 1133
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1134
    invoke-static {p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->createPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method public onPlaybackStateChanged(IILandroidx/media3/common/PlaybackException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1103
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    .line 1104
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1105
    invoke-static {p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->createPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1093
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    .line 1094
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1095
    invoke-static {p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->createPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method public onPlayerChanged(ILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/PlayerWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1010
    invoke-virtual {p3}, Landroidx/media3/session/PlayerWrapper;->getCurrentTimelineWithCommandCheck()Landroidx/media3/common/Timeline;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 1012
    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->getCurrentTimelineWithCommandCheck()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 1013
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->onTimelineChanged(ILandroidx/media3/common/Timeline;I)V

    .line 1015
    :cond_1
    invoke-virtual {p3}, Landroidx/media3/session/PlayerWrapper;->getPlaylistMetadataWithCommandCheck()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 1018
    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->getPlaylistMetadataWithCommandCheck()Landroidx/media3/common/MediaMetadata;

    move-result-object v1

    .line 1017
    invoke-static {v1, v0}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1019
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->onPlaylistMetadataChanged(ILandroidx/media3/common/MediaMetadata;)V

    .line 1021
    :cond_3
    invoke-virtual {p3}, Landroidx/media3/session/PlayerWrapper;->getMediaMetadataWithCommandCheck()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    if-eqz p2, :cond_4

    .line 1024
    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->getMediaMetadataWithCommandCheck()Landroidx/media3/common/MediaMetadata;

    move-result-object v1

    .line 1023
    invoke-static {v1, v0}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1025
    :cond_4
    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->onMediaMetadataChanged(ILandroidx/media3/common/MediaMetadata;)V

    :cond_5
    if-eqz p2, :cond_6

    .line 1028
    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->getShuffleModeEnabled()Z

    move-result v0

    invoke-virtual {p3}, Landroidx/media3/session/PlayerWrapper;->getShuffleModeEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_7

    .line 1029
    :cond_6
    invoke-virtual {p3}, Landroidx/media3/session/PlayerWrapper;->getShuffleModeEnabled()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->onShuffleModeEnabledChanged(IZ)V

    :cond_7
    if-eqz p2, :cond_8

    .line 1032
    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->getRepeatMode()I

    move-result v0

    invoke-virtual {p3}, Landroidx/media3/session/PlayerWrapper;->getRepeatMode()I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 1033
    :cond_8
    invoke-virtual {p3}, Landroidx/media3/session/PlayerWrapper;->getRepeatMode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->onRepeatModeChanged(II)V

    .line 1038
    :cond_9
    invoke-virtual {p3}, Landroidx/media3/session/PlayerWrapper;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->onDeviceInfoChanged(ILandroidx/media3/common/DeviceInfo;)V

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1041
    invoke-static {v0, p3}, Landroidx/media3/session/MediaSessionLegacyStub;->access$200(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/PlayerWrapper;)V

    .line 1042
    invoke-virtual {p3}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemWithCommandCheck()Landroidx/media3/common/MediaItem;

    move-result-object v0

    if-eqz p2, :cond_b

    .line 1044
    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemWithCommandCheck()Landroidx/media3/common/MediaItem;

    move-result-object p2

    invoke-static {p2, v0}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_0

    :cond_a
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1052
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$300(Landroidx/media3/session/MediaSessionLegacyStub;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    invoke-virtual {p3}, Landroidx/media3/session/PlayerWrapper;->createPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    goto :goto_1

    :cond_b
    :goto_0
    const/4 p2, 0x3

    .line 1046
    invoke-virtual {p0, p1, v0, p2}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->onMediaItemTransition(ILandroidx/media3/common/MediaItem;I)V

    :goto_1
    return-void
.end method

.method public onPlayerError(ILandroidx/media3/common/PlaybackException;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1058
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    .line 1059
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1060
    invoke-static {p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->createPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method public onPlaylistMetadataChanged(ILandroidx/media3/common/MediaMetadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1241
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$300(Landroidx/media3/session/MediaSessionLegacyStub;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object p1

    .line 1242
    iget-object p2, p2, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    .line 1243
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1244
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$300(Landroidx/media3/session/MediaSessionLegacyStub;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    invoke-static {p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$500(Landroid/support/v4/media/session/MediaSessionCompat;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onPositionDiscontinuity(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1123
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    .line 1124
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1125
    invoke-static {p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->createPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method public onRepeatModeChanged(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1258
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    .line 1259
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    .line 1260
    invoke-static {p2}, Landroidx/media3/session/MediaUtils;->convertToPlaybackStateCompatRepeatMode(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setRepeatMode(I)V

    return-void
.end method

.method public onSessionExtrasChanged(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1072
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public onShuffleModeEnabledChanged(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1251
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    .line 1252
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    .line 1253
    invoke-static {p2}, Landroidx/media3/session/MediaUtils;->convertToPlaybackStateCompatShuffleMode(Z)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setShuffleMode(I)V

    return-void
.end method

.method public onTimelineChanged(ILandroidx/media3/common/Timeline;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1163
    invoke-virtual {p2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1164
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$300(Landroidx/media3/session/MediaSessionLegacyStub;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$400(Landroid/support/v4/media/session/MediaSessionCompat;Ljava/util/List;)V

    return-void

    .line 1168
    :cond_0
    invoke-direct {p0, p2}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->updateQueue(Landroidx/media3/common/Timeline;)V

    .line 1170
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->updateMetadataIfChanged()V

    return-void
.end method

.method public sendCustomCommand(ILandroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1077
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    iget-object p2, p2, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/support/v4/media/session/MediaSessionCompat;->sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setCustomLayout(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1065
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    .line 1066
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1067
    invoke-static {p2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->createPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method
