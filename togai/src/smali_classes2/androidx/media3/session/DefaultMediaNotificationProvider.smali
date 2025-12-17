.class public Landroidx/media3/session/DefaultMediaNotificationProvider;
.super Ljava/lang/Object;
.source "DefaultMediaNotificationProvider.java"

# interfaces
.implements Landroidx/media3/session/MediaNotification$Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;,
        Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;,
        Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;,
        Landroidx/media3/session/DefaultMediaNotificationProvider$Api26;
    }
.end annotation


# static fields
.field public static final COMMAND_KEY_COMPACT_VIEW_INDEX:Ljava/lang/String; = "androidx.media3.session.command.COMPACT_VIEW_INDEX"

.field public static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = "default_channel_id"

.field public static final DEFAULT_CHANNEL_NAME_RESOURCE_ID:I

.field public static final DEFAULT_NOTIFICATION_ID:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "NotificationProvider"


# instance fields
.field private final channelId:Ljava/lang/String;

.field private final channelNameResourceId:I

.field private final context:Landroid/content/Context;

.field private final notificationIdProvider:Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private pendingOnBitmapLoadedFutureCallback:Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;

.field private smallIconResourceId:I


# direct methods
.method public static synthetic $r8$lambda$xMC8M6LLEeW997bBmO6BCC6GGAM(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 236
    sget v0, Landroidx/media3/session/R$string;->default_notification_channel_name:I

    sput v0, Landroidx/media3/session/DefaultMediaNotificationProvider;->DEFAULT_CHANNEL_NAME_RESOURCE_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 255
    new-instance v0, Landroidx/media3/session/DefaultMediaNotificationProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/session/DefaultMediaNotificationProvider$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "default_channel_id"

    sget v2, Landroidx/media3/session/DefaultMediaNotificationProvider;->DEFAULT_CHANNEL_NAME_RESOURCE_ID:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroidx/media3/session/DefaultMediaNotificationProvider;-><init>(Landroid/content/Context;Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;Ljava/lang/String;I)V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->notificationIdProvider:Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;

    iput-object p3, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->channelId:Ljava/lang/String;

    iput p4, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->channelNameResourceId:I

    const-string p2, "notification"

    .line 277
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 276
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->notificationManager:Landroid/app/NotificationManager;

    .line 278
    sget p1, Landroidx/media3/session/R$drawable;->media3_notification_small_icon:I

    iput p1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->smallIconResourceId:I

    return-void
.end method

.method private constructor <init>(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)V
    .locals 3

    .line 283
    invoke-static {p1}, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->access$100(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)Landroid/content/Context;

    move-result-object v0

    .line 284
    invoke-static {p1}, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->access$200(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;

    move-result-object v1

    .line 285
    invoke-static {p1}, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->access$300(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-static {p1}, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->access$400(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)I

    move-result p1

    .line 282
    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/media3/session/DefaultMediaNotificationProvider;-><init>(Landroid/content/Context;Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;Landroidx/media3/session/DefaultMediaNotificationProvider$1;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Landroidx/media3/session/DefaultMediaNotificationProvider;-><init>(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 117
    invoke-static {p0}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getBitmapLoadErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private ensureNotificationChannel()V
    .locals 4

    .line 610
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->notificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->notificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->channelId:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    iget v3, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->channelNameResourceId:I

    .line 614
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 613
    invoke-static {v0, v1, v2}, Landroidx/media3/session/DefaultMediaNotificationProvider$Api26;->createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static getBitmapLoadErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to load bitmap: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPlaybackStartTimeEpochMs(Landroidx/media3/common/Player;)J
    .locals 4

    .line 619
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 620
    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    invoke-interface {p0}, Landroidx/media3/common/Player;->isCurrentMediaItemDynamic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 624
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0}, Landroidx/media3/common/Player;->getContentPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method static synthetic lambda$new$0(Landroidx/media3/session/MediaSession;)I
    .locals 0

    const/16 p0, 0x3e9

    return p0
.end method


# virtual methods
.method protected addNotificationActions(Landroidx/media3/session/MediaSession;Lcom/google/common/collect/ImmutableList;Landroidx/core/app/NotificationCompat$Builder;Landroidx/media3/session/MediaNotification$ActionFactory;)[I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroidx/core/app/NotificationCompat$Builder;",
            "Landroidx/media3/session/MediaNotification$ActionFactory;",
            ")[I"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x3

    new-array v4, v3, [I

    new-array v5, v3, [I

    const/4 v6, -0x1

    .line 516
    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([II)V

    .line 517
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 519
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v10

    if-ge v8, v10, :cond_9

    move-object/from16 v10, p2

    .line 520
    invoke-virtual {v10, v8}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/session/CommandButton;

    .line 521
    iget-object v12, v11, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    const/4 v13, 0x1

    if-eqz v12, :cond_0

    .line 523
    invoke-interface {v2, v0, v11}, Landroidx/media3/session/MediaNotification$ActionFactory;->createCustomActionFromCustomCommandButton(Landroidx/media3/session/MediaSession;Landroidx/media3/session/CommandButton;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v12

    .line 522
    invoke-virtual {v1, v12}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v12, p0

    goto :goto_2

    .line 525
    :cond_0
    iget v12, v11, Landroidx/media3/session/CommandButton;->playerCommand:I

    if-eq v12, v6, :cond_1

    move v12, v13

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    invoke-static {v12}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    move-object/from16 v12, p0

    iget-object v14, v12, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    .line 526
    iget v15, v11, Landroidx/media3/session/CommandButton;->iconResId:I

    .line 529
    invoke-static {v14, v15}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v14

    iget-object v15, v11, Landroidx/media3/session/CommandButton;->displayName:Ljava/lang/CharSequence;

    iget v7, v11, Landroidx/media3/session/CommandButton;->playerCommand:I

    .line 527
    invoke-interface {v2, v0, v14, v15, v7}, Landroidx/media3/session/MediaNotification$ActionFactory;->createMediaAction(Landroidx/media3/session/MediaSession;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;I)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v7

    .line 526
    invoke-virtual {v1, v7}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    :goto_2
    if-ne v9, v3, :cond_2

    goto :goto_3

    .line 536
    :cond_2
    iget-object v7, v11, Landroidx/media3/session/CommandButton;->extras:Landroid/os/Bundle;

    const-string v14, "androidx.media3.session.command.COMPACT_VIEW_INDEX"

    .line 537
    invoke-virtual {v7, v14, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ltz v7, :cond_4

    if-ge v7, v3, :cond_4

    add-int/lit8 v9, v9, 0x1

    .line 541
    aput v8, v4, v7

    :cond_3
    :goto_3
    const/4 v7, 0x0

    goto :goto_5

    .line 542
    :cond_4
    iget v7, v11, Landroidx/media3/session/CommandButton;->playerCommand:I

    const/4 v14, 0x7

    if-eq v7, v14, :cond_8

    iget v7, v11, Landroidx/media3/session/CommandButton;->playerCommand:I

    const/4 v14, 0x6

    if-ne v7, v14, :cond_5

    goto :goto_4

    .line 545
    :cond_5
    iget v7, v11, Landroidx/media3/session/CommandButton;->playerCommand:I

    if-ne v7, v13, :cond_6

    aput v8, v5, v13

    goto :goto_3

    .line 547
    :cond_6
    iget v7, v11, Landroidx/media3/session/CommandButton;->playerCommand:I

    const/16 v13, 0x9

    if-eq v7, v13, :cond_7

    iget v7, v11, Landroidx/media3/session/CommandButton;->playerCommand:I

    const/16 v11, 0x8

    if-ne v7, v11, :cond_3

    :cond_7
    const/4 v7, 0x2

    aput v8, v5, v7

    goto :goto_3

    :cond_8
    :goto_4
    const/4 v7, 0x0

    aput v8, v5, v7

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_9
    move-object/from16 v12, p0

    const/4 v7, 0x0

    if-nez v9, :cond_b

    move v0, v7

    move v1, v0

    :goto_6
    if-ge v0, v3, :cond_b

    .line 557
    aget v2, v5, v0

    if-ne v2, v6, :cond_a

    goto :goto_7

    .line 560
    :cond_a
    aput v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    :goto_8
    if-ge v7, v3, :cond_d

    .line 565
    aget v0, v4, v7

    if-ne v0, v6, :cond_c

    .line 566
    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    goto :goto_9

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_d
    :goto_9
    return-object v4
.end method

.method public final createNotification(Landroidx/media3/session/MediaSession;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaNotification$ActionFactory;Landroidx/media3/session/MediaNotification$Provider$Callback;)Landroidx/media3/session/MediaNotification;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroidx/media3/session/MediaNotification$ActionFactory;",
            "Landroidx/media3/session/MediaNotification$Provider$Callback;",
            ")",
            "Landroidx/media3/session/MediaNotification;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    .line 297
    invoke-direct/range {p0 .. p0}, Landroidx/media3/session/DefaultMediaNotificationProvider;->ensureNotificationChannel()V

    .line 299
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/session/MediaSession;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v4

    .line 300
    new-instance v5, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    iget-object v6, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->channelId:Ljava/lang/String;

    invoke-direct {v5, v0, v6}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->notificationIdProvider:Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;

    .line 301
    invoke-interface {v0, v2}, Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;->getNotificationId(Landroidx/media3/session/MediaSession;)I

    move-result v6

    .line 303
    new-instance v7, Landroidx/media/app/NotificationCompat$MediaStyle;

    invoke-direct {v7}, Landroidx/media/app/NotificationCompat$MediaStyle;-><init>()V

    .line 309
    invoke-interface {v4}, Landroidx/media3/common/Player;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    .line 311
    invoke-interface {v4}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_0

    .line 312
    invoke-interface {v4}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v8

    const/4 v11, 0x4

    if-eq v8, v11, :cond_0

    move-object/from16 v8, p2

    move v11, v10

    goto :goto_0

    :cond_0
    move-object/from16 v8, p2

    move v11, v9

    .line 307
    :goto_0
    invoke-virtual {v1, v2, v0, v8, v11}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getMediaButtons(Landroidx/media3/session/MediaSession;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Z)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 305
    invoke-virtual {v1, v2, v0, v5, v3}, Landroidx/media3/session/DefaultMediaNotificationProvider;->addNotificationActions(Landroidx/media3/session/MediaSession;Lcom/google/common/collect/ImmutableList;Landroidx/core/app/NotificationCompat$Builder;Landroidx/media3/session/MediaNotification$ActionFactory;)[I

    move-result-object v0

    .line 315
    invoke-virtual {v7, v0}, Landroidx/media/app/NotificationCompat$MediaStyle;->setShowActionsInCompactView([I)Landroidx/media/app/NotificationCompat$MediaStyle;

    const/16 v0, 0x12

    .line 318
    invoke-interface {v4, v0}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    invoke-interface {v4}, Landroidx/media3/common/Player;->getMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    .line 321
    invoke-virtual {v1, v0}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getNotificationContentTitle(Landroidx/media3/common/MediaMetadata;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 322
    invoke-virtual {v1, v0}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getNotificationContentText(Landroidx/media3/common/MediaMetadata;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 325
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/session/MediaSession;->getBitmapLoader()Landroidx/media3/common/util/BitmapLoader;

    move-result-object v8

    invoke-interface {v8, v0}, Landroidx/media3/common/util/BitmapLoader;->loadBitmapFromMetadata(Landroidx/media3/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v8, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->pendingOnBitmapLoadedFutureCallback:Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;

    if-eqz v8, :cond_1

    .line 328
    invoke-virtual {v8}, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;->discardIfPending()V

    .line 330
    :cond_1
    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 332
    :try_start_0
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v0}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v8, "NotificationProvider"

    .line 334
    invoke-static {v0}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getBitmapLoadErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 337
    :cond_2
    new-instance v8, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;

    move-object/from16 v11, p4

    invoke-direct {v8, v6, v5, v11}, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;-><init>(ILandroidx/core/app/NotificationCompat$Builder;Landroidx/media3/session/MediaNotification$Provider$Callback;)V

    iput-object v8, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->pendingOnBitmapLoadedFutureCallback:Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;

    .line 345
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/session/MediaSession;->getImpl()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Landroidx/media3/session/DefaultMediaNotificationProvider$$ExternalSyntheticLambda1;

    invoke-direct {v12, v11}, Landroidx/media3/session/DefaultMediaNotificationProvider$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    .line 340
    invoke-static {v0, v8, v12}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    :cond_3
    :goto_1
    const/4 v0, 0x3

    .line 350
    invoke-interface {v4, v0}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    const-wide/16 v11, 0x3

    if-nez v0, :cond_4

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v8, 0x15

    if-ge v0, v8, :cond_5

    .line 353
    :cond_4
    invoke-interface {v3, v2, v11, v12}, Landroidx/media3/session/MediaNotification$ActionFactory;->createMediaActionPendingIntent(Landroidx/media3/session/MediaSession;J)Landroid/app/PendingIntent;

    move-result-object v0

    .line 352
    invoke-virtual {v7, v0}, Landroidx/media/app/NotificationCompat$MediaStyle;->setCancelButtonIntent(Landroid/app/PendingIntent;)Landroidx/media/app/NotificationCompat$MediaStyle;

    .line 356
    :cond_5
    invoke-static {v4}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getPlaybackStartTimeEpochMs(Landroidx/media3/common/Player;)J

    move-result-wide v13

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v13, v15

    if-eqz v0, :cond_6

    move v0, v10

    goto :goto_2

    :cond_6
    move v0, v9

    .line 359
    :goto_2
    invoke-virtual {v5, v13, v14}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 360
    invoke-virtual {v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 361
    invoke-virtual {v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setUsesChronometer(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 365
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/session/MediaSession;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 367
    invoke-interface {v3, v2, v11, v12}, Landroidx/media3/session/MediaNotification$ActionFactory;->createMediaActionPendingIntent(Landroidx/media3/session/MediaSession;J)Landroid/app/PendingIntent;

    move-result-object v2

    .line 366
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 368
    invoke-virtual {v0, v10}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget v2, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->smallIconResourceId:I

    .line 369
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 370
    invoke-virtual {v0, v7}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 371
    invoke-virtual {v0, v10}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 372
    invoke-virtual {v0, v9}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 374
    new-instance v2, Landroidx/media3/session/MediaNotification;

    invoke-direct {v2, v6, v0}, Landroidx/media3/session/MediaNotification;-><init>(ILandroid/app/Notification;)V

    return-object v2
.end method

.method protected getMediaButtons(Landroidx/media3/session/MediaSession;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Z)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession;",
            "Landroidx/media3/common/Player$Commands;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;Z)",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    .line 432
    new-instance p1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {p1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v0, 0x7

    const/4 v1, 0x6

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 433
    invoke-virtual {p2, v0}, Landroidx/media3/common/Player$Commands;->containsAny([I)Z

    move-result v0

    const/4 v2, -0x1

    const-string v3, "androidx.media3.session.command.COMPACT_VIEW_INDEX"

    if-eqz v0, :cond_0

    .line 434
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 435
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 436
    new-instance v4, Landroidx/media3/session/CommandButton$Builder;

    invoke-direct {v4}, Landroidx/media3/session/CommandButton$Builder;-><init>()V

    .line 438
    invoke-virtual {v4, v1}, Landroidx/media3/session/CommandButton$Builder;->setPlayerCommand(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v1

    sget v4, Landroidx/media3/session/R$drawable;->media3_notification_seek_to_previous:I

    .line 439
    invoke-virtual {v1, v4}, Landroidx/media3/session/CommandButton$Builder;->setIconResId(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v1

    iget-object v4, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    sget v5, Landroidx/media3/session/R$string;->media3_controls_seek_to_previous_description:I

    .line 441
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 440
    invoke-virtual {v1, v4}, Landroidx/media3/session/CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v1

    .line 442
    invoke-virtual {v1, v0}, Landroidx/media3/session/CommandButton$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Landroidx/media3/session/CommandButton$Builder;->build()Landroidx/media3/session/CommandButton;

    move-result-object v0

    .line 436
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    :cond_0
    const/4 v0, 0x1

    .line 445
    invoke-virtual {p2, v0}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 446
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 447
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 448
    new-instance v4, Landroidx/media3/session/CommandButton$Builder;

    invoke-direct {v4}, Landroidx/media3/session/CommandButton$Builder;-><init>()V

    .line 450
    invoke-virtual {v4, v0}, Landroidx/media3/session/CommandButton$Builder;->setPlayerCommand(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v0

    if-eqz p4, :cond_1

    .line 453
    sget v4, Landroidx/media3/session/R$drawable;->media3_notification_pause:I

    goto :goto_0

    .line 454
    :cond_1
    sget v4, Landroidx/media3/session/R$drawable;->media3_notification_play:I

    .line 451
    :goto_0
    invoke-virtual {v0, v4}, Landroidx/media3/session/CommandButton$Builder;->setIconResId(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v0

    .line 455
    invoke-virtual {v0, v1}, Landroidx/media3/session/CommandButton$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v0

    if-eqz p4, :cond_2

    iget-object p4, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    .line 458
    sget v1, Landroidx/media3/session/R$string;->media3_controls_pause_description:I

    invoke-virtual {p4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_2
    iget-object p4, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    .line 459
    sget v1, Landroidx/media3/session/R$string;->media3_controls_play_description:I

    invoke-virtual {p4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 456
    :goto_1
    invoke-virtual {v0, p4}, Landroidx/media3/session/CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object p4

    .line 460
    invoke-virtual {p4}, Landroidx/media3/session/CommandButton$Builder;->build()Landroidx/media3/session/CommandButton;

    move-result-object p4

    .line 448
    invoke-virtual {p1, p4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    :cond_3
    const/16 p4, 0x9

    const/16 v0, 0x8

    filled-new-array {p4, v0}, [I

    move-result-object p4

    .line 463
    invoke-virtual {p2, p4}, Landroidx/media3/common/Player$Commands;->containsAny([I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 464
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 465
    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 466
    new-instance p4, Landroidx/media3/session/CommandButton$Builder;

    invoke-direct {p4}, Landroidx/media3/session/CommandButton$Builder;-><init>()V

    .line 468
    invoke-virtual {p4, v0}, Landroidx/media3/session/CommandButton$Builder;->setPlayerCommand(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object p4

    sget v0, Landroidx/media3/session/R$drawable;->media3_notification_seek_to_next:I

    .line 469
    invoke-virtual {p4, v0}, Landroidx/media3/session/CommandButton$Builder;->setIconResId(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object p4

    .line 470
    invoke-virtual {p4, p2}, Landroidx/media3/session/CommandButton$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object p2

    iget-object p4, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    sget v0, Landroidx/media3/session/R$string;->media3_controls_seek_to_next_description:I

    .line 471
    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroidx/media3/session/CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object p2

    .line 472
    invoke-virtual {p2}, Landroidx/media3/session/CommandButton$Builder;->build()Landroidx/media3/session/CommandButton;

    move-result-object p2

    .line 466
    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    :cond_4
    const/4 p2, 0x0

    .line 474
    :goto_2
    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p4

    if-ge p2, p4, :cond_6

    .line 475
    invoke-virtual {p3, p2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/media3/session/CommandButton;

    .line 476
    iget-object v0, p4, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    if-eqz v0, :cond_5

    iget-object v0, p4, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    iget v0, v0, Landroidx/media3/session/SessionCommand;->commandCode:I

    if-nez v0, :cond_5

    .line 478
    invoke-virtual {p1, p4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 481
    :cond_6
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method protected getNotificationContentText(Landroidx/media3/common/MediaMetadata;)Ljava/lang/CharSequence;
    .locals 0

    .line 606
    iget-object p1, p1, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    return-object p1
.end method

.method protected getNotificationContentTitle(Landroidx/media3/common/MediaMetadata;)Ljava/lang/CharSequence;
    .locals 0

    .line 588
    iget-object p1, p1, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    return-object p1
.end method

.method public final handleCustomCommand(Landroidx/media3/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final setSmallIcon(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->smallIconResourceId:I

    return-void
.end method
