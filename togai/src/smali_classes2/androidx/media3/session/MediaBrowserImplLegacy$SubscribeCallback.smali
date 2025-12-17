.class Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;
.super Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
.source "MediaBrowserImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaBrowserImplLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscribeCallback"
.end annotation


# instance fields
.field private final future:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/media3/session/MediaBrowserImplLegacy;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaBrowserImplLegacy;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

    .line 366
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    iput-object p2, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->future:Lcom/google/common/util/concurrent/SettableFuture;

    return-void
.end method

.method private onChildrenLoadedInternal(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 399
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "MB2ImplLegacy"

    const-string p2, "SubscribeCallback.onChildrenLoaded(): Ignoring empty parentId"

    .line 400
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

    .line 403
    invoke-virtual {v0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 410
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget-object v1, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

    .line 416
    iget-object v1, v1, Landroidx/media3/session/MediaBrowserImplLegacy;->context:Landroid/content/Context;

    .line 418
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->getNotifyChildrenChangedOptions()Landroid/os/Bundle;

    move-result-object v0

    .line 417
    invoke-static {v1, v0}, Landroidx/media3/session/MediaUtils;->convertToLibraryParams(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

    .line 419
    invoke-virtual {v1}, Landroidx/media3/session/MediaBrowserImplLegacy;->getInstance()Landroidx/media3/session/MediaBrowser;

    move-result-object v1

    new-instance v2, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2, v0}, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 420
    invoke-virtual {v1, v2}, Landroidx/media3/session/MediaBrowser;->notifyBrowserListener(Landroidx/media3/common/util/Consumer;)V

    iget-object p1, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->future:Lcom/google/common/util/concurrent/SettableFuture;

    .line 425
    invoke-static {}, Landroidx/media3/session/LibraryResult;->ofVoid()Landroidx/media3/session/LibraryResult;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private onErrorInternal()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->future:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, -0x1

    .line 394
    invoke-static {v1}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method synthetic lambda$onChildrenLoadedInternal$0$androidx-media3-session-MediaBrowserImplLegacy$SubscribeCallback(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaBrowser$Listener;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

    .line 423
    invoke-virtual {v0}, Landroidx/media3/session/MediaBrowserImplLegacy;->getInstance()Landroidx/media3/session/MediaBrowser;

    move-result-object v0

    invoke-interface {p4, v0, p1, p2, p3}, Landroidx/media3/session/MediaBrowser$Listener;->onChildrenChanged(Landroidx/media3/session/MediaBrowser;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    return-void
.end method

.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 382
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->onChildrenLoadedInternal(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 388
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->onChildrenLoadedInternal(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    .line 372
    invoke-direct {p0}, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->onErrorInternal()V

    return-void
.end method

.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 377
    invoke-direct {p0}, Landroidx/media3/session/MediaBrowserImplLegacy$SubscribeCallback;->onErrorInternal()V

    return-void
.end method
