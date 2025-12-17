.class Landroidx/media3/session/MediaSessionImpl$1;
.super Ljava/lang/Object;
.source "MediaSessionImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/session/MediaSessionImpl;->prepareAndPlayForPlaybackResumption(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/common/Player;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/session/MediaSessionImpl;

.field final synthetic val$player:Landroidx/media3/common/Player;


# direct methods
.method constructor <init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/common/Player;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/media3/session/MediaSessionImpl$1;->this$0:Landroidx/media3/session/MediaSessionImpl;

    iput-object p2, p0, Landroidx/media3/session/MediaSessionImpl$1;->val$player:Landroidx/media3/common/Player;

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 653
    instance-of v0, p1, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MSImplBase"

    if-eqz v0, :cond_0

    const-string v0, "UnsupportedOperationException: Make sure to implement MediaSession.Callback.onPlaybackResumption() if you add a media button receiver to your manifest or if you implement the recent media item contract with your MediaLibraryService."

    .line 654
    invoke-static {v1, v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 662
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failure calling MediaSession.Callback.onPlaybackResumption(): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-static {v1, v0, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p1, p0, Landroidx/media3/session/MediaSessionImpl$1;->val$player:Landroidx/media3/common/Player;

    .line 668
    invoke-static {p1}, Landroidx/media3/common/util/Util;->handlePlayButtonAction(Landroidx/media3/common/Player;)Z

    return-void
.end method

.method public onSuccess(Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)V
    .locals 7

    .line 638
    iget-object v0, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->mediaItems:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl$1;->val$player:Landroidx/media3/common/Player;

    .line 641
    iget v2, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->startIndex:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    .line 642
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    iget v3, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->startIndex:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 643
    :goto_0
    iget-wide v5, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->startPositionMs:J

    .line 639
    invoke-interface {v1, v0, v2, v5, v6}, Landroidx/media3/common/Player;->setMediaItems(Ljava/util/List;IJ)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionImpl$1;->val$player:Landroidx/media3/common/Player;

    .line 645
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result p1

    if-ne p1, v4, :cond_1

    iget-object p1, p0, Landroidx/media3/session/MediaSessionImpl$1;->val$player:Landroidx/media3/common/Player;

    .line 646
    invoke-interface {p1}, Landroidx/media3/common/Player;->prepare()V

    :cond_1
    iget-object p1, p0, Landroidx/media3/session/MediaSessionImpl$1;->val$player:Landroidx/media3/common/Player;

    .line 648
    invoke-interface {p1}, Landroidx/media3/common/Player;->play()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 635
    check-cast p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl$1;->onSuccess(Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)V

    return-void
.end method
