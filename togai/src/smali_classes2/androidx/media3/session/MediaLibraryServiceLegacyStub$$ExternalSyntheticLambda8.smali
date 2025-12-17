.class public final synthetic Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic f$0:Landroidx/media3/session/MediaLibraryServiceLegacyStub;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda8;->f$0:Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda8;->f$0:Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    check-cast p1, Landroidx/media3/session/LibraryResult;

    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->lambda$createMediaItemsToBrowserItemsAsyncFunction$12$androidx-media3-session-MediaLibraryServiceLegacyStub(Landroidx/media3/session/LibraryResult;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
