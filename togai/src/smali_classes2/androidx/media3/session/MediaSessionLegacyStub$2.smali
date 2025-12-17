.class Landroidx/media3/session/MediaSessionLegacyStub$2;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/session/MediaSessionLegacyStub;->handleOnAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Ljava/util/List<",
        "Landroidx/media3/common/MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/session/MediaSessionLegacyStub;

.field final synthetic val$controller:Landroidx/media3/session/MediaSession$ControllerInfo;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$2;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    iput-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$2;->val$controller:Landroidx/media3/session/MediaSession$ControllerInfo;

    iput p3, p0, Landroidx/media3/session/MediaSessionLegacyStub$2;->val$index:I

    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSuccess$0$androidx-media3-session-MediaSessionLegacyStub$2(ILjava/util/List;)V
    .locals 1

    .line 0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$2;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 868
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/media3/session/PlayerWrapper;->addMediaItems(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$2;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 870
    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/PlayerWrapper;->addMediaItems(ILjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 859
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$2;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$2;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 863
    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub$2;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 864
    invoke-static {v1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/session/MediaSessionLegacyStub$2;->val$controller:Landroidx/media3/session/MediaSession$ControllerInfo;

    iget v3, p0, Landroidx/media3/session/MediaSessionLegacyStub$2;->val$index:I

    new-instance v4, Landroidx/media3/session/MediaSessionLegacyStub$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v3, p1}, Landroidx/media3/session/MediaSessionLegacyStub$2$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaSessionLegacyStub$2;ILjava/util/List;)V

    invoke-virtual {v1, v2, v4}, Landroidx/media3/session/MediaSessionImpl;->callWithControllerForCurrentRequestSet(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 862
    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method
