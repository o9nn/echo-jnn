.class final Landroidx/media3/session/MediaUtils;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# static fields
.field public static final POSITION_DIFF_TOLERANCE_MS:J = 0x64L

.field public static final TAG:Ljava/lang/String; = "MediaUtils"

.field public static final TRANSACTION_SIZE_LIMIT_IN_BYTES:I = 0x40000

.field public static final defaultBrowserRoot:Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 117
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    const-string v1, "androidx.media3.session.MediaLibraryService"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object v0, Landroidx/media3/session/MediaUtils;->defaultBrowserRoot:Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areEqualError(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/session/PlaybackStateCompat;)Z
    .locals 5

    const/4 v0, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v3

    if-ne v3, v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v4

    if-ne v4, v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 126
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getErrorCode()I

    move-result v0

    invoke-static {p1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/session/PlaybackStateCompat;->getErrorCode()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 127
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1

    :cond_3
    if-ne v3, v0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    return v1
.end method

.method public static areSessionPositionInfosInSamePeriodOrAd(Landroidx/media3/session/SessionPositionInfo;Landroidx/media3/session/SessionPositionInfo;)Z
    .locals 2

    .line 1495
    iget-object v0, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    iget-object v1, p1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    iget-object v1, p1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    iget-object v1, p1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget p0, p0, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    iget-object p1, p1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget p1, p1, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static calculateBufferedPercentage(JJ)I
    .locals 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/16 v1, 0x64

    if-nez v0, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x64

    mul-long/2addr p0, v4

    .line 1457
    div-long/2addr p0, p2

    long-to-int p0, p0

    invoke-static {p0, v3, v1}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v3

    :cond_2
    :goto_0
    return v3
.end method

.method public static convertBrowserItemListToMediaItemList(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v1, 0x0

    .line 227
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 228
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-static {v2}, Landroidx/media3/session/MediaUtils;->convertToMediaItem(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)Landroidx/media3/common/MediaItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static convertToAudioAttributes(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)Landroidx/media3/common/AudioAttributes;
    .locals 0

    if-nez p0, :cond_0

    .line 1280
    sget-object p0, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    return-object p0

    .line 1282
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->getAudioAttributes()Landroidx/media/AudioAttributesCompat;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/session/MediaUtils;->convertToAudioAttributes(Landroidx/media/AudioAttributesCompat;)Landroidx/media3/common/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static convertToAudioAttributes(Landroidx/media/AudioAttributesCompat;)Landroidx/media3/common/AudioAttributes;
    .locals 2

    if-nez p0, :cond_0

    .line 1267
    sget-object p0, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    return-object p0

    .line 1269
    :cond_0
    new-instance v0, Landroidx/media3/common/AudioAttributes$Builder;

    invoke-direct {v0}, Landroidx/media3/common/AudioAttributes$Builder;-><init>()V

    .line 1270
    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat;->getContentType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/AudioAttributes$Builder;->setContentType(I)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object v0

    .line 1271
    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/AudioAttributes$Builder;->setFlags(I)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object v0

    .line 1272
    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat;->getUsage()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/media3/common/AudioAttributes$Builder;->setUsage(I)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object p0

    .line 1273
    invoke-virtual {p0}, Landroidx/media3/common/AudioAttributes$Builder;->build()Landroidx/media3/common/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static convertToAudioAttributesCompat(Landroidx/media3/common/AudioAttributes;)Landroidx/media/AudioAttributesCompat;
    .locals 2

    .line 1288
    new-instance v0, Landroidx/media/AudioAttributesCompat$Builder;

    invoke-direct {v0}, Landroidx/media/AudioAttributesCompat$Builder;-><init>()V

    iget v1, p0, Landroidx/media3/common/AudioAttributes;->contentType:I

    .line 1289
    invoke-virtual {v0, v1}, Landroidx/media/AudioAttributesCompat$Builder;->setContentType(I)Landroidx/media/AudioAttributesCompat$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/AudioAttributes;->flags:I

    .line 1290
    invoke-virtual {v0, v1}, Landroidx/media/AudioAttributesCompat$Builder;->setFlags(I)Landroidx/media/AudioAttributesCompat$Builder;

    move-result-object v0

    iget p0, p0, Landroidx/media3/common/AudioAttributes;->usage:I

    .line 1291
    invoke-virtual {v0, p0}, Landroidx/media/AudioAttributesCompat$Builder;->setUsage(I)Landroidx/media/AudioAttributesCompat$Builder;

    move-result-object p0

    .line 1292
    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat$Builder;->build()Landroidx/media/AudioAttributesCompat;

    move-result-object p0

    return-object p0
.end method

.method public static convertToBrowserItem(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 2

    .line 152
    invoke-static {p0, p1}, Landroidx/media3/session/MediaUtils;->convertToMediaDescriptionCompat(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    .line 153
    iget-object p0, p0, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 155
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 158
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 161
    :cond_1
    new-instance p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    return-object p0
.end method

.method public static convertToBufferedPercentage(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)I
    .locals 0

    .line 935
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/MediaUtils;->convertToBufferedPositionMs(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)J

    move-result-wide p2

    .line 937
    invoke-static {p1}, Landroidx/media3/session/MediaUtils;->convertToDurationMs(Landroid/support/v4/media/MediaMetadataCompat;)J

    move-result-wide p0

    .line 938
    invoke-static {p2, p3, p0, p1}, Landroidx/media3/session/MediaUtils;->calculateBufferedPercentage(JJ)I

    move-result p0

    return p0
.end method

.method public static convertToBufferedPositionMs(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)J
    .locals 8

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 908
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getBufferedPosition()J

    move-result-wide v0

    :goto_0
    move-wide v2, v0

    .line 910
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/MediaUtils;->convertToCurrentPositionMs(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)J

    move-result-wide v4

    .line 911
    invoke-static {p1}, Landroidx/media3/session/MediaUtils;->convertToDurationMs(Landroid/support/v4/media/MediaMetadataCompat;)J

    move-result-wide v6

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v6, p0

    if-nez p0, :cond_1

    .line 913
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    goto :goto_1

    .line 914
    :cond_1
    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide p0

    :goto_1
    return-wide p0
.end method

.method private static convertToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1502
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1503
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1504
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1505
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 1502
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static convertToCurrentPositionMs(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)J
    .locals 8

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 878
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 879
    invoke-static {p0, p2, p3}, Landroidx/media3/session/MediaUtils;->getCurrentPosition(Landroid/support/v4/media/session/PlaybackStateCompat;J)J

    move-result-wide p2

    goto :goto_0

    .line 880
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide p2

    :goto_0
    move-wide v2, p2

    .line 881
    invoke-static {p1}, Landroidx/media3/session/MediaUtils;->convertToDurationMs(Landroid/support/v4/media/MediaMetadataCompat;)J

    move-result-wide v6

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v6, p0

    if-nez p0, :cond_2

    .line 883
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x0

    .line 884
    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide p0

    :goto_1
    return-wide p0
.end method

.method public static convertToCustomLayout(Landroid/support/v4/media/session/PlaybackStateCompat;)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/media/session/PlaybackStateCompat;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1240
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 1242
    :cond_0
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 1243
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getCustomActions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 1244
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1245
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1246
    new-instance v4, Landroidx/media3/session/CommandButton$Builder;

    invoke-direct {v4}, Landroidx/media3/session/CommandButton$Builder;-><init>()V

    new-instance v5, Landroidx/media3/session/SessionCommand;

    if-nez v3, :cond_1

    .line 1248
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_1
    invoke-direct {v5, v2, v3}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Landroidx/media3/session/CommandButton$Builder;->setSessionCommand(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v2

    .line 1249
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media3/session/CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 1250
    invoke-virtual {v2, v3}, Landroidx/media3/session/CommandButton$Builder;->setEnabled(Z)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v2

    .line 1251
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getIcon()I

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/media3/session/CommandButton$Builder;->setIconResId(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v1

    .line 1252
    invoke-virtual {v1}, Landroidx/media3/session/CommandButton$Builder;->build()Landroidx/media3/session/CommandButton;

    move-result-object v1

    .line 1253
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 1255
    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static convertToDeviceInfo(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;Ljava/lang/String;)Landroidx/media3/common/DeviceInfo;
    .locals 3

    if-nez p0, :cond_0

    .line 1344
    sget-object p0, Landroidx/media3/common/DeviceInfo;->UNKNOWN:Landroidx/media3/common/DeviceInfo;

    return-object p0

    .line 1346
    :cond_0
    new-instance v0, Landroidx/media3/common/DeviceInfo$Builder;

    .line 1347
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->getPlaybackType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1350
    :goto_0
    invoke-direct {v0, v1}, Landroidx/media3/common/DeviceInfo$Builder;-><init>(I)V

    .line 1351
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->getMaxVolume()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/media3/common/DeviceInfo$Builder;->setMaxVolume(I)Landroidx/media3/common/DeviceInfo$Builder;

    move-result-object p0

    .line 1352
    invoke-virtual {p0, p1}, Landroidx/media3/common/DeviceInfo$Builder;->setRoutingControllerId(Ljava/lang/String;)Landroidx/media3/common/DeviceInfo$Builder;

    move-result-object p0

    .line 1353
    invoke-virtual {p0}, Landroidx/media3/common/DeviceInfo$Builder;->build()Landroidx/media3/common/DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static convertToDeviceVolume(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1362
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->getCurrentVolume()I

    move-result p0

    return p0
.end method

.method public static convertToDurationMs(Landroid/support/v4/media/MediaMetadataCompat;)J
    .locals 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p0, :cond_2

    const-string v2, "android.media.metadata.DURATION"

    .line 895
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 898
    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, v2

    :cond_2
    :goto_0
    return-wide v0
.end method

.method private static convertToExtraBtFolderType(I)J
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 679
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized FolderType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-wide/16 v0, 0x6

    return-wide v0

    :pswitch_1
    const-wide/16 v0, 0x5

    return-wide v0

    :pswitch_2
    const-wide/16 v0, 0x4

    return-wide v0

    :pswitch_3
    const-wide/16 v0, 0x3

    return-wide v0

    :pswitch_4
    const-wide/16 v0, 0x2

    return-wide v0

    :pswitch_5
    const-wide/16 v0, 0x1

    return-wide v0

    :pswitch_6
    const-wide/16 v0, 0x0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertToFolderType(J)I
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v0, p0, v2

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-wide/16 v2, 0x2

    cmp-long v0, p0, v2

    if-nez v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-wide/16 v2, 0x3

    cmp-long v0, p0, v2

    if-nez v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const-wide/16 v2, 0x4

    cmp-long v0, p0, v2

    if-nez v0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const-wide/16 v2, 0x5

    cmp-long v0, p0, v2

    if-nez v0, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    const-wide/16 v2, 0x6

    cmp-long p0, p0, v2

    if-nez p0, :cond_6

    const/4 p0, 0x6

    return p0

    :cond_6
    return v1
.end method

.method public static convertToIsDeviceMuted(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1371
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->getCurrentVolume()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static convertToIsPlaying(Landroid/support/v4/media/session/PlaybackStateCompat;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 858
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static convertToIsPlayingAd(Landroid/support/v4/media/MediaMetadataCompat;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "android.media.metadata.ADVERTISEMENT"

    .line 866
    invoke-virtual {p0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static convertToLibraryParams(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .locals 2

    const-string v0, "androidx.media.MediaBrowserCompat.Extras.KEY_ROOT_CHILDREN_SUPPORTED_FLAGS"

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1035
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/4 p0, -0x1

    .line 1037
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_2

    .line 1040
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "androidx.media3.session.LibraryParams.Extras.KEY_ROOT_CHILDREN_BROWSABLE_ONLY"

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1041
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1045
    :cond_2
    new-instance p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;-><init>()V

    .line 1046
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    move-result-object p0

    const-string v0, "android.service.media.extra.RECENT"

    .line 1047
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->setRecent(Z)Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    move-result-object p0

    const-string v0, "android.service.media.extra.OFFLINE"

    .line 1048
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->setOffline(Z)Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    move-result-object p0

    const-string v0, "android.service.media.extra.SUGGESTED"

    .line 1049
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->setSuggested(Z)Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    move-result-object p0

    .line 1050
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->build()Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1053
    :catch_0
    new-instance p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->build()Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object p0

    return-object p0
.end method

.method public static convertToMediaDescriptionCompat(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 6

    .line 325
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 327
    iget-object v1, p0, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v0

    .line 328
    iget-object v1, p0, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    if-eqz p1, :cond_1

    .line 330
    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 332
    :cond_1
    iget-object p1, v1, Landroidx/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    .line 333
    iget-object v2, v1, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    .line 334
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    .line 335
    :goto_1
    iget-object v5, v1, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    if-nez v2, :cond_4

    if-eqz v3, :cond_7

    :cond_4
    if-nez p1, :cond_5

    .line 338
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    goto :goto_3

    .line 340
    :cond_5
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v4

    :goto_3
    if-eqz v2, :cond_6

    .line 343
    iget-object v2, v1, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    .line 345
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroidx/media3/session/MediaUtils;->convertToExtraBtFolderType(I)J

    move-result-wide v4

    const-string v2, "android.media.extra.BT_FOLDER_TYPE"

    .line 343
    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_6
    if-eqz v3, :cond_7

    .line 348
    iget-object v2, v1, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    .line 349
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const-string v4, "androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT"

    .line 348
    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 352
    :cond_7
    iget-object v2, v1, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    .line 353
    invoke-virtual {v0, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v0

    .line 356
    iget-object v2, v1, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    iget-object v2, v1, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_8
    iget-object v2, v1, Landroidx/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    :goto_4
    invoke-virtual {v0, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v0

    iget-object v2, v1, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    .line 357
    invoke-virtual {v0, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v0

    iget-object v1, v1, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    .line 358
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object p0, p0, Landroidx/media3/common/MediaItem$RequestMetadata;->mediaUri:Landroid/net/Uri;

    .line 359
    invoke-virtual {v0, p0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object p0

    .line 360
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object p0

    .line 361
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p0

    return-object p0
.end method

.method public static convertToMediaItem(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)Landroidx/media3/common/MediaItem;
    .locals 2

    .line 166
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->isBrowsable()Z

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->isPlayable()Z

    move-result p0

    invoke-static {v0, v1, p0}, Landroidx/media3/session/MediaUtils;->convertToMediaItem(Landroid/support/v4/media/MediaDescriptionCompat;ZZ)Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static convertToMediaItem(Landroid/support/v4/media/MediaDescriptionCompat;)Landroidx/media3/common/MediaItem;
    .locals 2

    .line 176
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 177
    invoke-static {p0, v0, v1}, Landroidx/media3/session/MediaUtils;->convertToMediaItem(Landroid/support/v4/media/MediaDescriptionCompat;ZZ)Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static convertToMediaItem(Landroid/support/v4/media/MediaDescriptionCompat;ZZ)Landroidx/media3/common/MediaItem;
    .locals 3

    .line 210
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v0

    .line 211
    new-instance v1, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    if-nez v0, :cond_0

    const-string v0, ""

    .line 212
    :cond_0
    invoke-virtual {v1, v0}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;-><init>()V

    .line 215
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->setMediaUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$RequestMetadata$Builder;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->build()Landroidx/media3/common/MediaItem$RequestMetadata;

    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$Builder;->setRequestMetadata(Landroidx/media3/common/MediaItem$RequestMetadata;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 218
    invoke-static {p0, v1, p1, p2}, Landroidx/media3/session/MediaUtils;->convertToMediaMetadata(Landroid/support/v4/media/MediaDescriptionCompat;IZZ)Landroidx/media3/common/MediaMetadata;

    move-result-object p0

    .line 217
    invoke-virtual {v0, p0}, Landroidx/media3/common/MediaItem$Builder;->setMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p0

    .line 220
    invoke-virtual {p0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static convertToMediaItem(Landroid/support/v4/media/MediaMetadataCompat;I)Landroidx/media3/common/MediaItem;
    .locals 1

    const-string v0, "android.media.metadata.MEDIA_ID"

    .line 184
    invoke-virtual {p0, v0}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0, p0, p1}, Landroidx/media3/session/MediaUtils;->convertToMediaItem(Ljava/lang/String;Landroid/support/v4/media/MediaMetadataCompat;I)Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static convertToMediaItem(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;)Landroidx/media3/common/MediaItem;
    .locals 0

    .line 171
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/session/MediaUtils;->convertToMediaItem(Landroid/support/v4/media/MediaDescriptionCompat;)Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static convertToMediaItem(Ljava/lang/String;Landroid/support/v4/media/MediaMetadataCompat;I)Landroidx/media3/common/MediaItem;
    .locals 2

    .line 194
    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    if-eqz p0, :cond_0

    .line 196
    invoke-virtual {v0, p0}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    :cond_0
    const-string p0, "android.media.metadata.MEDIA_URI"

    .line 199
    invoke-virtual {p1, p0}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 201
    new-instance v1, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;-><init>()V

    .line 202
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->setMediaUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$RequestMetadata$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->build()Landroidx/media3/common/MediaItem$RequestMetadata;

    move-result-object p0

    .line 201
    invoke-virtual {v0, p0}, Landroidx/media3/common/MediaItem$Builder;->setRequestMetadata(Landroidx/media3/common/MediaItem$RequestMetadata;)Landroidx/media3/common/MediaItem$Builder;

    .line 204
    :cond_1
    invoke-static {p1, p2}, Landroidx/media3/session/MediaUtils;->convertToMediaMetadata(Landroid/support/v4/media/MediaMetadataCompat;I)Landroidx/media3/common/MediaMetadata;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/media3/common/MediaItem$Builder;->setMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaItem$Builder;

    .line 205
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static convertToMediaItemList(Landroidx/media3/common/Timeline;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Timeline;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    new-instance v1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const/4 v2, 0x0

    .line 237
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 238
    invoke-virtual {p0, v2, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static convertToMediaMetadata(Landroid/support/v4/media/MediaDescriptionCompat;I)Landroidx/media3/common/MediaMetadata;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 374
    invoke-static {p0, p1, v0, v1}, Landroidx/media3/session/MediaUtils;->convertToMediaMetadata(Landroid/support/v4/media/MediaDescriptionCompat;IZZ)Landroidx/media3/common/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method private static convertToMediaMetadata(Landroid/support/v4/media/MediaDescriptionCompat;IZZ)Landroidx/media3/common/MediaMetadata;
    .locals 4

    if-nez p0, :cond_0

    .line 385
    sget-object p0, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    return-object p0

    .line 388
    :cond_0
    new-instance v0, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    .line 391
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    .line 392
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    .line 393
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setDescription(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    .line 394
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setArtworkUri(Landroid/net/Uri;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    .line 395
    invoke-static {p1}, Landroid/support/v4/media/RatingCompat;->newUnratedRating(I)Landroid/support/v4/media/RatingCompat;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/MediaUtils;->convertToRating(Landroid/support/v4/media/RatingCompat;)Landroidx/media3/common/Rating;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/media3/common/MediaMetadata$Builder;->setUserRating(Landroidx/media3/common/Rating;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 397
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 401
    :try_start_0
    invoke-static {p1}, Landroidx/media3/session/MediaUtils;->convertToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "MediaUtils"

    const-string v3, "Failed to convert iconBitmap to artworkData"

    .line 403
    invoke-static {v2, v3, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    const/4 v2, 0x3

    .line 405
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setArtworkData([BLjava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 408
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    .line 409
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_1
    if-eqz v1, :cond_3

    const-string p0, "android.media.extra.BT_FOLDER_TYPE"

    .line 411
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 413
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/media3/session/MediaUtils;->convertToFolderType(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 412
    invoke-virtual {v0, p1}, Landroidx/media3/common/MediaMetadata$Builder;->setFolderType(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 414
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 416
    :cond_3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/media3/common/MediaMetadata$Builder;->setIsBrowsable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    if-eqz v1, :cond_4

    const-string p0, "androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT"

    .line 418
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 419
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/common/MediaMetadata$Builder;->setMediaType(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 420
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_4
    if-eqz v1, :cond_5

    .line 422
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    .line 423
    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 426
    :cond_5
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/media3/common/MediaMetadata$Builder;->setIsPlayable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 428
    invoke-virtual {v0}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static convertToMediaMetadata(Landroid/support/v4/media/MediaMetadataCompat;I)Landroidx/media3/common/MediaMetadata;
    .locals 3

    if-nez p0, :cond_0

    .line 436
    sget-object p0, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    return-object p0

    .line 439
    :cond_0
    new-instance v0, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    const-string v1, "android.media.metadata.DISPLAY_TITLE"

    const-string v2, "android.media.metadata.TITLE"

    .line 441
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-static {p0, v1}, Landroidx/media3/session/MediaUtils;->getFirstText(Landroid/support/v4/media/MediaMetadataCompat;[Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 442
    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    const-string v2, "android.media.metadata.DISPLAY_SUBTITLE"

    .line 447
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    const-string v2, "android.media.metadata.DISPLAY_DESCRIPTION"

    .line 449
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 448
    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setDescription(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    const-string v2, "android.media.metadata.ARTIST"

    .line 450
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setArtist(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    const-string v2, "android.media.metadata.ALBUM"

    .line 451
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setAlbumTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    const-string v2, "android.media.metadata.ALBUM_ARTIST"

    .line 452
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setAlbumArtist(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    const-string v2, "android.media.metadata.RATING"

    .line 454
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getRating(Ljava/lang/String;)Landroid/support/v4/media/RatingCompat;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/session/MediaUtils;->convertToRating(Landroid/support/v4/media/RatingCompat;)Landroidx/media3/common/Rating;

    move-result-object v2

    .line 453
    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setOverallRating(Landroidx/media3/common/Rating;)Landroidx/media3/common/MediaMetadata$Builder;

    const-string v1, "android.media.metadata.USER_RATING"

    .line 458
    invoke-virtual {p0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getRating(Ljava/lang/String;)Landroid/support/v4/media/RatingCompat;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/MediaUtils;->convertToRating(Landroid/support/v4/media/RatingCompat;)Landroidx/media3/common/Rating;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 460
    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setUserRating(Landroidx/media3/common/Rating;)Landroidx/media3/common/MediaMetadata$Builder;

    goto :goto_0

    .line 462
    :cond_1
    invoke-static {p1}, Landroid/support/v4/media/RatingCompat;->newUnratedRating(I)Landroid/support/v4/media/RatingCompat;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/MediaUtils;->convertToRating(Landroid/support/v4/media/RatingCompat;)Landroidx/media3/common/Rating;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/common/MediaMetadata$Builder;->setUserRating(Landroidx/media3/common/Rating;)Landroidx/media3/common/MediaMetadata$Builder;

    :goto_0
    const-string p1, "android.media.metadata.YEAR"

    .line 465
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 466
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-int p1, v1

    .line 467
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/common/MediaMetadata$Builder;->setRecordingYear(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    :cond_2
    const-string p1, "android.media.metadata.DISPLAY_ICON_URI"

    const-string v1, "android.media.metadata.ALBUM_ART_URI"

    .line 471
    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object p1

    .line 472
    invoke-static {p0, p1}, Landroidx/media3/session/MediaUtils;->getFirstString(Landroid/support/v4/media/MediaMetadataCompat;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 477
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/common/MediaMetadata$Builder;->setArtworkUri(Landroid/net/Uri;)Landroidx/media3/common/MediaMetadata$Builder;

    :cond_3
    const-string p1, "android.media.metadata.DISPLAY_ICON"

    const-string v1, "android.media.metadata.ALBUM_ART"

    .line 481
    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object p1

    .line 482
    invoke-static {p0, p1}, Landroidx/media3/session/MediaUtils;->getFirstBitmap(Landroid/support/v4/media/MediaMetadataCompat;[Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 488
    :try_start_0
    invoke-static {p1}, Landroidx/media3/session/MediaUtils;->convertToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    const/4 v1, 0x3

    .line 489
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setArtworkData([BLjava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "MediaUtils"

    const-string v2, "Failed to convert artworkBitmap to artworkData"

    .line 491
    invoke-static {v1, v2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    const-string p1, "android.media.metadata.BT_FOLDER_TYPE"

    .line 496
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 497
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setIsBrowsable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    if-eqz v1, :cond_5

    .line 501
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 500
    invoke-static {v1, v2}, Landroidx/media3/session/MediaUtils;->convertToFolderType(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 499
    invoke-virtual {v0, p1}, Landroidx/media3/common/MediaMetadata$Builder;->setFolderType(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    :cond_5
    const-string p1, "androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT"

    .line 504
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 506
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 505
    invoke-virtual {v0, p0}, Landroidx/media3/common/MediaMetadata$Builder;->setMediaType(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    :cond_6
    const/4 p0, 0x1

    .line 509
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/media3/common/MediaMetadata$Builder;->setIsPlayable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 511
    invoke-virtual {v0}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static convertToMediaMetadata(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata;
    .locals 1

    if-nez p0, :cond_0

    .line 367
    sget-object p0, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    return-object p0

    .line 369
    :cond_0
    new-instance v0, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/media3/common/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static convertToMediaMetadataCompat(Landroidx/media3/common/MediaMetadata;Ljava/lang/String;Landroid/net/Uri;JLandroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 3

    .line 562
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    const-string v1, "android.media.metadata.MEDIA_ID"

    .line 564
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    .line 566
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const-string v0, "android.media.metadata.TITLE"

    .line 567
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    const-string v0, "android.media.metadata.DISPLAY_TITLE"

    .line 568
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 571
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    const-string v0, "android.media.metadata.DISPLAY_SUBTITLE"

    .line 572
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 575
    :cond_1
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    const-string v0, "android.media.metadata.DISPLAY_DESCRIPTION"

    .line 576
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 579
    :cond_2
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    const-string v0, "android.media.metadata.ARTIST"

    .line 580
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 583
    :cond_3
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    const-string v0, "android.media.metadata.ALBUM"

    .line 584
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 587
    :cond_4
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    const-string v0, "android.media.metadata.ALBUM_ARTIST"

    .line 588
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 591
    :cond_5
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 592
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "android.media.metadata.YEAR"

    invoke-virtual {p1, v2, v0, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    :cond_6
    if-eqz p2, :cond_7

    const-string v0, "android.media.metadata.MEDIA_URI"

    .line 596
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 599
    :cond_7
    iget-object p2, p0, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    if-eqz p2, :cond_8

    .line 600
    iget-object p2, p0, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    .line 601
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.media.metadata.DISPLAY_ICON_URI"

    .line 600
    invoke-virtual {p1, v0, p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 602
    iget-object p2, p0, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    .line 603
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.media.metadata.ALBUM_ART_URI"

    .line 602
    invoke-virtual {p1, v0, p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    :cond_8
    if-eqz p5, :cond_9

    const-string p2, "android.media.metadata.DISPLAY_ICON"

    .line 607
    invoke-virtual {p1, p2, p5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    const-string p2, "android.media.metadata.ALBUM_ART"

    .line 608
    invoke-virtual {p1, p2, p5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 611
    :cond_9
    iget-object p2, p0, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    if-eqz p2, :cond_a

    iget-object p2, p0, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p5, -0x1

    if-eq p2, p5, :cond_a

    .line 612
    iget-object p2, p0, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    .line 614
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Landroidx/media3/session/MediaUtils;->convertToExtraBtFolderType(I)J

    move-result-wide v0

    const-string p2, "android.media.metadata.BT_FOLDER_TYPE"

    .line 612
    invoke-virtual {p1, p2, v0, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    :cond_a
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p3, v0

    if-eqz p2, :cond_b

    const-string p2, "android.media.metadata.DURATION"

    .line 618
    invoke-virtual {p1, p2, p3, p4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 621
    :cond_b
    iget-object p2, p0, Landroidx/media3/common/MediaMetadata;->userRating:Landroidx/media3/common/Rating;

    invoke-static {p2}, Landroidx/media3/session/MediaUtils;->convertToRatingCompat(Landroidx/media3/common/Rating;)Landroid/support/v4/media/RatingCompat;

    move-result-object p2

    if-eqz p2, :cond_c

    const-string p3, "android.media.metadata.USER_RATING"

    .line 623
    invoke-virtual {p1, p3, p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putRating(Ljava/lang/String;Landroid/support/v4/media/RatingCompat;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 626
    :cond_c
    iget-object p2, p0, Landroidx/media3/common/MediaMetadata;->overallRating:Landroidx/media3/common/Rating;

    invoke-static {p2}, Landroidx/media3/session/MediaUtils;->convertToRatingCompat(Landroidx/media3/common/Rating;)Landroid/support/v4/media/RatingCompat;

    move-result-object p2

    if-eqz p2, :cond_d

    const-string p3, "android.media.metadata.RATING"

    .line 628
    invoke-virtual {p1, p3, p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putRating(Ljava/lang/String;Landroid/support/v4/media/RatingCompat;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 631
    :cond_d
    iget-object p2, p0, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    if-eqz p2, :cond_e

    .line 632
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p2, p0

    const-string p0, "androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT"

    invoke-virtual {p1, p0, p2, p3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 635
    :cond_e
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p0

    return-object p0
.end method

.method public static convertToPeriod(I)Landroidx/media3/common/Timeline$Period;
    .locals 11

    .line 283
    new-instance v10, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v10}, Landroidx/media3/common/Timeline$Period;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v6, 0x0

    .line 284
    sget-object v8, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    const/4 v9, 0x1

    move-object v0, v10

    move v3, p0

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)Landroidx/media3/common/Timeline$Period;

    return-object v10
.end method

.method public static convertToPlayWhenReady(Landroid/support/v4/media/session/PlaybackStateCompat;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 797
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static convertToPlaybackException(Landroid/support/v4/media/session/PlaybackStateCompat;)Landroidx/media3/common/PlaybackException;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 137
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "code="

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getErrorCode()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 146
    new-instance v1, Landroidx/media3/common/PlaybackException;

    const/16 v2, 0x3e9

    invoke-direct {v1, p0, v0, v2}, Landroidx/media3/common/PlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static convertToPlaybackParameters(Landroid/support/v4/media/session/PlaybackStateCompat;)Landroidx/media3/common/PlaybackParameters;
    .locals 1

    if-nez p0, :cond_0

    .line 788
    sget-object p0, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    goto :goto_0

    .line 789
    :cond_0
    new-instance v0, Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result p0

    invoke-direct {v0, p0}, Landroidx/media3/common/PlaybackParameters;-><init>(F)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static convertToPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)I
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 824
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    const/4 v2, 0x3

    packed-switch v1, :pswitch_data_0

    .line 848
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unrecognized PlaybackStateCompat: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    return v2

    .line 840
    :pswitch_2
    invoke-static {p1}, Landroidx/media3/session/MediaUtils;->convertToDurationMs(Landroid/support/v4/media/MediaMetadataCompat;)J

    move-result-wide v0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v0, v3

    if-nez v3, :cond_1

    return v2

    .line 845
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/MediaUtils;->convertToCurrentPositionMs(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)J

    move-result-wide p0

    cmp-long p0, p0, v0

    if-gez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    :goto_0
    return v2

    :pswitch_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToPlaybackStateCompatRepeatMode(I)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 994
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized RepeatMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " was converted to `PlaybackStateCompat.REPEAT_MODE_NONE`"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MediaUtils"

    invoke-static {v1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method public static convertToPlaybackStateCompatShuffleMode(Z)I
    .locals 0

    return p0
.end method

.method public static convertToPlaybackStateCompatState(Landroidx/media3/common/PlaybackException;IZ)I
    .locals 2

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    return p0

    .line 780
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unrecognized State: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz p2, :cond_3

    move v0, v1

    :cond_3
    return v0

    :cond_4
    if-eqz p2, :cond_5

    const/4 v0, 0x6

    :cond_5
    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static convertToPlayerCommands(Landroid/support/v4/media/session/PlaybackStateCompat;IJZ)Landroidx/media3/common/Player$Commands;
    .locals 14

    move v0, p1

    .line 1112
    new-instance v1, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    const-wide/16 v2, 0x0

    if-nez p0, :cond_0

    move-wide v4, v2

    goto :goto_0

    .line 1113
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v4

    :goto_0
    const-wide/16 v6, 0x4

    .line 1114
    invoke-static {v4, v5, v6, v7}, Landroidx/media3/session/MediaUtils;->hasAction(JJ)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    const-wide/16 v10, 0x2

    .line 1115
    invoke-static {v4, v5, v10, v11}, Landroidx/media3/session/MediaUtils;->hasAction(JJ)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    const-wide/16 v10, 0x200

    .line 1116
    invoke-static {v4, v5, v10, v11}, Landroidx/media3/session/MediaUtils;->hasAction(JJ)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1117
    :cond_2
    invoke-virtual {v1, v9}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    :cond_3
    const-wide/16 v10, 0x4000

    .line 1119
    invoke-static {v4, v5, v10, v11}, Landroidx/media3/session/MediaUtils;->hasAction(JJ)Z

    move-result v8

    const/4 v10, 0x2

    if-eqz v8, :cond_4

    .line 1120
    invoke-virtual {v1, v10}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    :cond_4
    const-wide/32 v11, 0x8000

    .line 1122
    invoke-static {v4, v5, v11, v12}, Landroidx/media3/session/MediaUtils;->hasAction(JJ)Z

    move-result v8

    if-eqz v8, :cond_5

    const-wide/16 v11, 0x400

    .line 1123
    invoke-static {v4, v5, v11, v12}, Landroidx/media3/session/MediaUtils;->hasAction(JJ)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_5
    const-wide/32 v11, 0x10000

    .line 1124
    invoke-static {v4, v5, v11, v12}, Landroidx/media3/session/MediaUtils;->hasAction(JJ)Z

    move-result v8

    if-eqz v8, :cond_6

    const-wide/16 v11, 0x800

    .line 1125
    invoke-static {v4, v5, v11, v12}, Landroidx/media3/session/MediaUtils;->hasAction(JJ)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    const-wide/32 v11, 0x20000

    .line 1126
    invoke-static {v4, v5, v11, v12}, Landroidx/media3/session/MediaUtils;->hasAction(JJ)Z

    move-result v8

    if-eqz v8, :cond_8

    const-wide/16 v11, 0x2000

    .line 1127
    invoke-static {v4, v5, v11, v12}, Landroidx/media3/session/MediaUtils;->hasAction(JJ)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    const/16 v8, 0x1f

    filled-new-array {v8, v10}, [I

    move-result-object v8

    .line 1129
    invoke-virtual {v1, v8}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    :cond_8
    const-wide/16 v11, 0x8

    .line 1131
    invoke-static {v4, v5, v11, v12}, Landroidx/media3/session/MediaUtils;->hasAction(JJ)Z

    move-result v8

    if-eqz v8, :cond_9

    const/16 v8, 0xb

    .line 1132
    invoke-virtual {v1, v8}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    :cond_9
    const-wide/16 v11, 0x40

    .line 1134
    invoke-static {v4, v5, v11, v12}, Landroidx/media3/session/MediaUtils;->hasAction(JJ)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0xc

    .line 1135
    invoke-virtual {v1, v8}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    :cond_a
    const-wide/16 v11, 0x100

    .line 1137
    invoke-static {v4, v5, v11, v12}, Landroidx/media3/session/MediaUtils;->hasAction(JJ)Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x5

    const/4 v11, 0x4

    filled-new-array {v8, v11}, [I

    move-result-object v8

    .line 1138
    invoke-virtual {v1, v8}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    :cond_b
    const-wide/16 v11, 0x20

    .line 1141
    invoke-static {v4, v5, v11, v12}, Landroidx/media3/session/MediaUtils;->hasAction(JJ)Z

    move-result v8

    if-eqz v8, :cond_c

    const/16 v8, 0x9

    const/16 v11, 0x8

    filled-new-array {v8, v11}, [I

    move-result-object v8

    .line 1142
    invoke-virtual {v1, v8}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    :cond_c
    const-wide/16 v11, 0x10

    .line 1144
    invoke-static {v4, v5, v11, v12}, Landroidx/media3/session/MediaUtils;->hasAction(JJ)Z

    move-result v8

    const/4 v11, 0x6

    if-eqz v8, :cond_d

    const/4 v8, 0x7

    filled-new-array {v8, v11}, [I

    move-result-object v8

    .line 1145
    invoke-virtual {v1, v8}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    :cond_d
    const-wide/32 v12, 0x400000

    .line 1147
    invoke-static {v4, v5, v12, v13}, Landroidx/media3/session/MediaUtils;->hasAction(JJ)Z

    move-result v8

    if-eqz v8, :cond_e

    const/16 v8, 0xd

    .line 1148
    invoke-virtual {v1, v8}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    :cond_e
    const-wide/16 v12, 0x1

    .line 1150
    invoke-static {v4, v5, v12, v13}, Landroidx/media3/session/MediaUtils;->hasAction(JJ)Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v8, 0x3

    .line 1151
    invoke-virtual {v1, v8}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    :cond_f
    const/16 v8, 0x22

    const/16 v12, 0x1a

    if-ne v0, v9, :cond_10

    filled-new-array {v12, v8}, [I

    move-result-object v0

    .line 1154
    invoke-virtual {v1, v0}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    goto :goto_1

    :cond_10
    if-ne v0, v10, :cond_11

    const/16 v0, 0x19

    const/16 v9, 0x21

    filled-new-array {v12, v8, v0, v9}, [I

    move-result-object v0

    .line 1157
    invoke-virtual {v1, v0}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    :cond_11
    :goto_1
    new-array v0, v11, [I

    fill-array-data v0, :array_0

    .line 1163
    invoke-virtual {v1, v0}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    and-long v6, p2, v6

    cmp-long v0, v6, v2

    if-eqz v0, :cond_12

    const/16 v0, 0x14

    .line 1171
    invoke-virtual {v1, v0}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    const-wide/16 v2, 0x1000

    .line 1172
    invoke-static {v4, v5, v2, v3}, Landroidx/media3/session/MediaUtils;->hasAction(JJ)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xa

    .line 1173
    invoke-virtual {v1, v0}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    :cond_12
    if-eqz p4, :cond_14

    const-wide/32 v2, 0x40000

    .line 1177
    invoke-static {v4, v5, v2, v3}, Landroidx/media3/session/MediaUtils;->hasAction(JJ)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0xf

    .line 1178
    invoke-virtual {v1, v0}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    :cond_13
    const-wide/32 v2, 0x200000

    .line 1180
    invoke-static {v4, v5, v2, v3}, Landroidx/media3/session/MediaUtils;->hasAction(JJ)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0xe

    .line 1181
    invoke-virtual {v1, v0}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1184
    :cond_14
    invoke-virtual {v1}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x17
        0x11
        0x12
        0x10
        0x15
        0x20
    .end array-data
.end method

.method public static convertToQueueItem(Landroidx/media3/common/MediaItem;ILandroid/graphics/Bitmap;)Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;
    .locals 1

    .line 249
    invoke-static {p0, p2}, Landroidx/media3/session/MediaUtils;->convertToMediaDescriptionCompat(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p0

    .line 250
    invoke-static {p1}, Landroidx/media3/session/MediaUtils;->convertToQueueItemId(I)J

    move-result-wide p1

    .line 251
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;J)V

    return-object v0
.end method

.method public static convertToQueueItemId(I)J
    .locals 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    int-to-long v0, p0

    return-wide v0
.end method

.method public static convertToRating(Landroid/support/v4/media/RatingCompat;)Landroidx/media3/common/Rating;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 694
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getRatingStyle()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    return-object v0

    .line 716
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 717
    new-instance v0, Landroidx/media3/common/PercentageRating;

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getPercentRating()F

    move-result p0

    invoke-direct {v0, p0}, Landroidx/media3/common/PercentageRating;-><init>(F)V

    goto :goto_0

    .line 718
    :cond_1
    new-instance v0, Landroidx/media3/common/PercentageRating;

    invoke-direct {v0}, Landroidx/media3/common/PercentageRating;-><init>()V

    :goto_0
    return-object v0

    .line 704
    :pswitch_1
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    .line 705
    new-instance v0, Landroidx/media3/common/StarRating;

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getStarRating()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/media3/common/StarRating;-><init>(IF)V

    goto :goto_1

    .line 706
    :cond_2
    new-instance v0, Landroidx/media3/common/StarRating;

    invoke-direct {v0, v1}, Landroidx/media3/common/StarRating;-><init>(I)V

    :goto_1
    return-object v0

    .line 700
    :pswitch_2
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_3

    .line 701
    new-instance v0, Landroidx/media3/common/StarRating;

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getStarRating()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/media3/common/StarRating;-><init>(IF)V

    goto :goto_2

    .line 702
    :cond_3
    new-instance v0, Landroidx/media3/common/StarRating;

    invoke-direct {v0, v1}, Landroidx/media3/common/StarRating;-><init>(I)V

    :goto_2
    return-object v0

    .line 696
    :pswitch_3
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_4

    .line 697
    new-instance v0, Landroidx/media3/common/StarRating;

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getStarRating()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/media3/common/StarRating;-><init>(IF)V

    goto :goto_3

    .line 698
    :cond_4
    new-instance v0, Landroidx/media3/common/StarRating;

    invoke-direct {v0, v1}, Landroidx/media3/common/StarRating;-><init>(I)V

    :goto_3
    return-object v0

    .line 712
    :pswitch_4
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 713
    new-instance v0, Landroidx/media3/common/ThumbRating;

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isThumbUp()Z

    move-result p0

    invoke-direct {v0, p0}, Landroidx/media3/common/ThumbRating;-><init>(Z)V

    goto :goto_4

    .line 714
    :cond_5
    new-instance v0, Landroidx/media3/common/ThumbRating;

    invoke-direct {v0}, Landroidx/media3/common/ThumbRating;-><init>()V

    :goto_4
    return-object v0

    .line 708
    :pswitch_5
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 709
    new-instance v0, Landroidx/media3/common/HeartRating;

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->hasHeart()Z

    move-result p0

    invoke-direct {v0, p0}, Landroidx/media3/common/HeartRating;-><init>(Z)V

    goto :goto_5

    .line 710
    :cond_6
    new-instance v0, Landroidx/media3/common/HeartRating;

    invoke-direct {v0}, Landroidx/media3/common/HeartRating;-><init>()V

    :goto_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToRatingCompat(Landroidx/media3/common/Rating;)Landroid/support/v4/media/RatingCompat;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 737
    :cond_0
    invoke-static {p0}, Landroidx/media3/session/MediaUtils;->getRatingCompatStyle(Landroidx/media3/common/Rating;)I

    move-result v1

    .line 738
    invoke-virtual {p0}, Landroidx/media3/common/Rating;->isRated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 739
    invoke-static {v1}, Landroid/support/v4/media/RatingCompat;->newUnratedRating(I)Landroid/support/v4/media/RatingCompat;

    move-result-object p0

    return-object p0

    :cond_1
    packed-switch v1, :pswitch_data_0

    return-object v0

    .line 752
    :pswitch_0
    check-cast p0, Landroidx/media3/common/PercentageRating;

    invoke-virtual {p0}, Landroidx/media3/common/PercentageRating;->getPercent()F

    move-result p0

    invoke-static {p0}, Landroid/support/v4/media/RatingCompat;->newPercentageRating(F)Landroid/support/v4/media/RatingCompat;

    move-result-object p0

    return-object p0

    .line 746
    :pswitch_1
    check-cast p0, Landroidx/media3/common/StarRating;

    invoke-virtual {p0}, Landroidx/media3/common/StarRating;->getStarRating()F

    move-result p0

    invoke-static {v1, p0}, Landroid/support/v4/media/RatingCompat;->newStarRating(IF)Landroid/support/v4/media/RatingCompat;

    move-result-object p0

    return-object p0

    .line 750
    :pswitch_2
    check-cast p0, Landroidx/media3/common/ThumbRating;

    invoke-virtual {p0}, Landroidx/media3/common/ThumbRating;->isThumbsUp()Z

    move-result p0

    invoke-static {p0}, Landroid/support/v4/media/RatingCompat;->newThumbRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object p0

    return-object p0

    .line 748
    :pswitch_3
    check-cast p0, Landroidx/media3/common/HeartRating;

    invoke-virtual {p0}, Landroidx/media3/common/HeartRating;->isHeart()Z

    move-result p0

    invoke-static {p0}, Landroid/support/v4/media/RatingCompat;->newHeartRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToRepeatMode(I)I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized PlaybackStateCompat.RepeatMode: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " was converted to `Player.REPEAT_MODE_OFF`"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaUtils"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    return v0

    :cond_1
    return v1
.end method

.method public static convertToRootHints(Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroid/os/Bundle;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1063
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1064
    iget-object v1, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->extras:Landroid/os/Bundle;

    const-string v2, "androidx.media3.session.LibraryParams.Extras.KEY_ROOT_CHILDREN_BROWSABLE_ONLY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1065
    iget-object v1, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->extras:Landroid/os/Bundle;

    const/4 v3, 0x0

    .line 1066
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1068
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    const-string v2, "androidx.media.MediaBrowserCompat.Extras.KEY_ROOT_CHILDREN_SUPPORTED_FLAGS"

    .line 1069
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    const-string v1, "android.service.media.extra.RECENT"

    .line 1076
    iget-boolean v2, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->isRecent:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "android.service.media.extra.OFFLINE"

    .line 1077
    iget-boolean v2, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->isOffline:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "android.service.media.extra.SUGGESTED"

    .line 1078
    iget-boolean p0, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->isSuggested:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static convertToSessionCommands(Landroid/support/v4/media/session/PlaybackStateCompat;Z)Landroidx/media3/session/SessionCommands;
    .locals 3

    .line 1211
    new-instance v0, Landroidx/media3/session/SessionCommands$Builder;

    invoke-direct {v0}, Landroidx/media3/session/SessionCommands$Builder;-><init>()V

    .line 1212
    invoke-virtual {v0}, Landroidx/media3/session/SessionCommands$Builder;->addAllSessionCommands()Landroidx/media3/session/SessionCommands$Builder;

    if-nez p1, :cond_0

    const p1, 0x9c4a

    .line 1216
    invoke-virtual {v0, p1}, Landroidx/media3/session/SessionCommands$Builder;->remove(I)Landroidx/media3/session/SessionCommands$Builder;

    :cond_0
    if-eqz p0, :cond_2

    .line 1219
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getCustomActions()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1220
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getCustomActions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 1221
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1222
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 1223
    new-instance v2, Landroidx/media3/session/SessionCommand;

    if-nez p1, :cond_1

    .line 1224
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_1
    invoke-direct {v2, v1, p1}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1223
    invoke-virtual {v0, v2}, Landroidx/media3/session/SessionCommands$Builder;->add(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/SessionCommands$Builder;

    goto :goto_0

    .line 1227
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/session/SessionCommands$Builder;->build()Landroidx/media3/session/SessionCommands;

    move-result-object p0

    return-object p0
.end method

.method public static convertToShuffleModeEnabled(I)Z
    .locals 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 1014
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized ShuffleMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static convertToTotalBufferedDurationMs(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)J
    .locals 2

    .line 923
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/MediaUtils;->convertToBufferedPositionMs(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)J

    move-result-wide v0

    .line 925
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/MediaUtils;->convertToCurrentPositionMs(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;J)J

    move-result-wide p0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public static convertToWindow(Landroidx/media3/common/MediaItem;I)Landroidx/media3/common/Timeline$Window;
    .locals 22

    move-object/from16 v2, p0

    move/from16 v17, p1

    move/from16 v18, p1

    .line 263
    new-instance v21, Landroidx/media3/common/Timeline$Window;

    move-object/from16 v0, v21

    invoke-direct/range {v21 .. v21}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const/4 v1, 0x0

    .line 265
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v19, 0x0

    .line 264
    invoke-virtual/range {v0 .. v20}, Landroidx/media3/common/Timeline$Window;->set(Ljava/lang/Object;Landroidx/media3/common/MediaItem;Ljava/lang/Object;JJJZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJIIJ)Landroidx/media3/common/Timeline$Window;

    return-object v21
.end method

.method public static createPlayerCommandsWith(I)Landroidx/media3/common/Player$Commands;
    .locals 1

    .line 1375
    new-instance v0, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object p0

    return-object p0
.end method

.method public static createPlayerCommandsWithout(I)Landroidx/media3/common/Player$Commands;
    .locals 1

    .line 1379
    new-instance v0, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/common/Player$Commands$Builder;->addAllCommands()Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/media3/common/Player$Commands$Builder;->remove(I)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object p0

    return-object p0
.end method

.method public static generateUnshuffledIndices(I)[I
    .locals 2

    .line 1441
    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 1443
    aput v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getCurrentPosition(Landroid/support/v4/media/session/PlaybackStateCompat;J)J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 889
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getCurrentPosition(Ljava/lang/Long;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static varargs getFirstBitmap(Landroid/support/v4/media/MediaMetadataCompat;[Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .line 516
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 517
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 518
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static varargs getFirstString(Landroid/support/v4/media/MediaMetadataCompat;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 526
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 527
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 528
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static varargs getFirstText(Landroid/support/v4/media/MediaMetadataCompat;[Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    .line 537
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 538
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 539
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFutureResult(Ljava/util/concurrent/Future;J)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;J)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x0

    move-wide v3, p1

    .line 1322
    :goto_0
    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 1334
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    const/4 v2, 0x1

    .line 1325
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    cmp-long v5, v3, p1

    if-gez v5, :cond_1

    sub-long v3, p1, v3

    goto :goto_0

    .line 1327
    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v2, :cond_2

    .line 1334
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 1336
    :cond_2
    throw p0
.end method

.method public static getLegacyStreamType(Landroidx/media3/common/AudioAttributes;)I
    .locals 1

    .line 1303
    invoke-static {p0}, Landroidx/media3/session/MediaUtils;->convertToAudioAttributesCompat(Landroidx/media3/common/AudioAttributes;)Landroidx/media/AudioAttributesCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat;->getLegacyStreamType()I

    move-result p0

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    const/4 p0, 0x3

    :cond_0
    return p0
.end method

.method public static getRatingCompatStyle(Landroidx/media3/common/Rating;)I
    .locals 1

    .line 942
    instance-of v0, p0, Landroidx/media3/common/HeartRating;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 944
    :cond_0
    instance-of v0, p0, Landroidx/media3/common/ThumbRating;

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 946
    :cond_1
    instance-of v0, p0, Landroidx/media3/common/StarRating;

    if-eqz v0, :cond_3

    .line 947
    check-cast p0, Landroidx/media3/common/StarRating;

    invoke-virtual {p0}, Landroidx/media3/common/StarRating;->getMaxStars()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    goto :goto_0

    :cond_2
    return v0

    .line 955
    :cond_3
    instance-of p0, p0, Landroidx/media3/common/PercentageRating;

    if-eqz p0, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static hasAction(JJ)Z
    .locals 0

    and-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static intersect(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;
    .locals 3

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 1390
    :cond_0
    new-instance v0, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    const/4 v1, 0x0

    .line 1391
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/Player$Commands;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1392
    invoke-virtual {p0, v1}, Landroidx/media3/common/Player$Commands;->get(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1393
    invoke-virtual {p0, v1}, Landroidx/media3/common/Player$Commands;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1396
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object p0

    return-object p0

    .line 1388
    :cond_3
    :goto_1
    sget-object p0, Landroidx/media3/common/Player$Commands;->EMPTY:Landroidx/media3/common/Player$Commands;

    return-object p0
.end method

.method public static mergePlayerInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;Landroidx/media3/common/Player$Commands;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/PlayerInfo;",
            "Landroidx/media3/session/PlayerInfo$BundlingExclusions;",
            "Landroidx/media3/session/PlayerInfo;",
            "Landroidx/media3/session/PlayerInfo$BundlingExclusions;",
            "Landroidx/media3/common/Player$Commands;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media3/session/PlayerInfo;",
            "Landroidx/media3/session/PlayerInfo$BundlingExclusions;",
            ">;"
        }
    .end annotation

    .line 1418
    iget-boolean v0, p3, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->isTimelineExcluded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    .line 1419
    invoke-virtual {p4, v0}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->isTimelineExcluded:Z

    if-nez v0, :cond_0

    .line 1422
    iget-object v0, p0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p2, v0}, Landroidx/media3/session/PlayerInfo;->copyWithTimeline(Landroidx/media3/common/Timeline;)Landroidx/media3/session/PlayerInfo;

    move-result-object p2

    .line 1423
    new-instance v0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    iget-boolean v2, p3, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->areCurrentTracksExcluded:Z

    invoke-direct {v0, v1, v2}, Landroidx/media3/session/PlayerInfo$BundlingExclusions;-><init>(ZZ)V

    goto :goto_0

    :cond_0
    move-object v0, p3

    .line 1427
    :goto_0
    iget-boolean p3, p3, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->areCurrentTracksExcluded:Z

    if-eqz p3, :cond_1

    const/16 p3, 0x1e

    .line 1428
    invoke-virtual {p4, p3}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-boolean p1, p1, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->areCurrentTracksExcluded:Z

    if-nez p1, :cond_1

    .line 1431
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->currentTracks:Landroidx/media3/common/Tracks;

    invoke-virtual {p2, p0}, Landroidx/media3/session/PlayerInfo;->copyWithCurrentTracks(Landroidx/media3/common/Tracks;)Landroidx/media3/session/PlayerInfo;

    move-result-object p2

    .line 1432
    new-instance p0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    iget-boolean p1, v0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->isTimelineExcluded:Z

    invoke-direct {p0, p1, v1}, Landroidx/media3/session/PlayerInfo$BundlingExclusions;-><init>(ZZ)V

    move-object v0, p0

    .line 1436
    :cond_1
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static removeNullElements(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1084
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1085
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1087
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static setMediaItemsWithStartIndexAndPosition(Landroidx/media3/common/Player;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)V
    .locals 4

    .line 1469
    iget v0, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->startIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x14

    if-ne v0, v1, :cond_1

    .line 1470
    invoke-interface {p0, v3}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1471
    iget-object p1, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->mediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p0, p1, v1}, Landroidx/media3/common/Player;->setMediaItems(Ljava/util/List;Z)V

    goto :goto_0

    .line 1472
    :cond_0
    iget-object v0, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->mediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1473
    iget-object p1, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->mediaItems:Lcom/google/common/collect/ImmutableList;

    .line 1474
    invoke-virtual {p1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/MediaItem;

    .line 1473
    invoke-interface {p0, p1, v1}, Landroidx/media3/common/Player;->setMediaItem(Landroidx/media3/common/MediaItem;Z)V

    goto :goto_0

    .line 1476
    :cond_1
    invoke-interface {p0, v3}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1477
    iget-object v0, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->mediaItems:Lcom/google/common/collect/ImmutableList;

    iget v1, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->startIndex:I

    iget-wide v2, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->startPositionMs:J

    invoke-interface {p0, v0, v1, v2, v3}, Landroidx/media3/common/Player;->setMediaItems(Ljava/util/List;IJ)V

    goto :goto_0

    .line 1481
    :cond_2
    iget-object v0, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->mediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1482
    iget-object v0, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->mediaItems:Lcom/google/common/collect/ImmutableList;

    .line 1483
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem;

    iget-wide v1, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->startPositionMs:J

    .line 1482
    invoke-interface {p0, v0, v1, v2}, Landroidx/media3/common/Player;->setMediaItem(Landroidx/media3/common/MediaItem;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static truncateListBySize(Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 305
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 307
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 308
    invoke-virtual {v1, v4, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    if-ge v5, p1, :cond_0

    .line 310
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 317
    throw p0
.end method
