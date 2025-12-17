.class final Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
.super Ljava/lang/Object;
.source "MediaControllerImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaControllerImplLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LegacyPlayerInfo"
.end annotation


# instance fields
.field public final mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

.field public final playbackInfoCompat:Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

.field public final playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

.field public final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field public final queueTitle:Ljava/lang/CharSequence;

.field public final repeatMode:I

.field public final shuffleMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    .line 2330
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->repeatMode:I

    iput v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->shuffleMode:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;",
            "Landroid/support/v4/media/session/PlaybackStateCompat;",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;",
            "Ljava/lang/CharSequence;",
            "II)V"
        }
    .end annotation

    .line 2343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    iput-object p3, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    .line 2347
    invoke-static {p4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    iput-object p5, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    iput p6, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->repeatMode:I

    iput p7, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->shuffleMode:I

    return-void
.end method

.method public constructor <init>(Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)V
    .locals 1

    .line 2353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2354
    iget-object v0, p1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    .line 2355
    iget-object v0, p1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 2356
    iget-object v0, p1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    .line 2357
    iget-object v0, p1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    .line 2358
    iget-object v0, p1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    .line 2359
    iget v0, p1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->repeatMode:I

    iput v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->repeatMode:I

    .line 2360
    iget p1, p1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->shuffleMode:I

    iput p1, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->shuffleMode:I

    return-void
.end method


# virtual methods
.method public copyWithExtraBinderGetters(Landroid/support/v4/media/session/PlaybackStateCompat;II)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .locals 9

    .line 2368
    new-instance v8, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    move-object v0, v8

    move-object v2, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;II)V

    return-object v8
.end method

.method public copyWithMediaMetadataCompat(Landroid/support/v4/media/MediaMetadataCompat;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .locals 9

    .line 2394
    new-instance v8, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    iget v6, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->repeatMode:I

    iget v7, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->shuffleMode:I

    move-object v0, v8

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;II)V

    return-object v8
.end method

.method public copyWithPlaybackInfoCompat(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .locals 9

    .line 2431
    new-instance v8, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    iget v6, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->repeatMode:I

    iget v7, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->shuffleMode:I

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;II)V

    return-object v8
.end method

.method public copyWithPlaybackStateCompat(Landroid/support/v4/media/session/PlaybackStateCompat;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .locals 9

    .line 2381
    new-instance v8, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    iget v6, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->repeatMode:I

    iget v7, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->shuffleMode:I

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;II)V

    return-object v8
.end method

.method public copyWithQueue(Ljava/util/List;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)",
            "Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;"
        }
    .end annotation

    .line 2406
    new-instance v8, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    iget v6, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->repeatMode:I

    iget v7, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->shuffleMode:I

    move-object v0, v8

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;II)V

    return-object v8
.end method

.method public copyWithQueueTitle(Ljava/lang/CharSequence;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .locals 9

    .line 2418
    new-instance v8, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    iget v6, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->repeatMode:I

    iget v7, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->shuffleMode:I

    move-object v0, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;II)V

    return-object v8
.end method

.method public copyWithRepeatMode(I)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .locals 9

    .line 2443
    new-instance v8, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    iget v7, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->shuffleMode:I

    move-object v0, v8

    move v6, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;II)V

    return-object v8
.end method

.method public copyWithShuffleMode(I)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;
    .locals 9

    .line 2455
    new-instance v8, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackInfoCompat:Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->playbackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->mediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queue:Ljava/util/List;

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->queueTitle:Ljava/lang/CharSequence;

    iget v6, p0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->repeatMode:I

    move-object v0, v8

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;II)V

    return-object v8
.end method
