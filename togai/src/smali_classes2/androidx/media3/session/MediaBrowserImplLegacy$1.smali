.class Landroidx/media3/session/MediaBrowserImplLegacy$1;
.super Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
.source "MediaBrowserImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/session/MediaBrowserImplLegacy;->getItem(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

.field final synthetic val$result:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Landroidx/media3/session/MediaBrowserImplLegacy;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/session/MediaBrowserImplLegacy$1;->this$0:Landroidx/media3/session/MediaBrowserImplLegacy;

    iput-object p2, p0, Landroidx/media3/session/MediaBrowserImplLegacy$1;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    .line 191
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/session/MediaBrowserImplLegacy$1;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v0, -0x1

    .line 204
    invoke-static {v0}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public onItemLoaded(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaBrowserImplLegacy$1;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    .line 196
    invoke-static {p1}, Landroidx/media3/session/MediaUtils;->convertToMediaItem(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroidx/media3/session/LibraryResult;->ofItem(Landroidx/media3/common/MediaItem;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroidx/media3/session/LibraryResult;

    move-result-object p1

    .line 195
    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/session/MediaBrowserImplLegacy$1;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v0, -0x3

    .line 198
    invoke-static {v0}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
