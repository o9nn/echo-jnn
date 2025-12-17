.class Landroidx/media3/session/MediaSessionLegacyStub$1;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/session/MediaSessionLegacyStub;->handleMediaRequest(Landroidx/media3/common/MediaItem;Z)V
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
.field final synthetic this$0:Landroidx/media3/session/MediaSessionLegacyStub;

.field final synthetic val$controller:Landroidx/media3/session/MediaSession$ControllerInfo;

.field final synthetic val$play:Z


# direct methods
.method constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    iput-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->val$controller:Landroidx/media3/session/MediaSession$ControllerInfo;

    iput-boolean p3, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->val$play:Z

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSuccess$0$androidx-media3-session-MediaSessionLegacyStub$1(Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 817
    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    .line 818
    invoke-static {v0, p1}, Landroidx/media3/session/MediaUtils;->setMediaItemsWithStartIndexAndPosition(Landroidx/media3/common/Player;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)V

    .line 820
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getPlaybackState()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 822
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->prepareIfCommandAvailable()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 824
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->seekToDefaultPositionIfCommandAvailable()V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 827
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->playIfCommandAvailable()V

    :cond_2
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 813
    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 814
    invoke-static {v1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->val$controller:Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-boolean v3, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->val$play:Z

    new-instance v4, Landroidx/media3/session/MediaSessionLegacyStub$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1, v3}, Landroidx/media3/session/MediaSessionLegacyStub$1$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaSessionLegacyStub$1;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;Z)V

    invoke-virtual {v1, v2, v4}, Landroidx/media3/session/MediaSessionImpl;->callWithControllerForCurrentRequestSet(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 812
    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 809
    check-cast p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$1;->onSuccess(Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)V

    return-void
.end method
