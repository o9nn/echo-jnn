.class final Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;
.super Landroid/database/ContentObserver;
.source "MediaLibraryModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/medialibrary/MediaLibraryModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaStoreContentObserver"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaLibraryModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaLibraryModule.kt\nexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,505:1\n1#2:506\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;",
        "Landroid/database/ContentObserver;",
        "handler",
        "Landroid/os/Handler;",
        "mMediaType",
        "",
        "(Lexpo/modules/medialibrary/MediaLibraryModule;Landroid/os/Handler;I)V",
        "mAssetsTotalCount",
        "getAssetsTotalCount",
        "mediaType",
        "onChange",
        "",
        "selfChange",
        "",
        "uri",
        "Landroid/net/Uri;",
        "expo-media-library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private mAssetsTotalCount:I

.field private final mMediaType:I

.field final synthetic this$0:Lexpo/modules/medialibrary/MediaLibraryModule;


# direct methods
.method public constructor <init>(Lexpo/modules/medialibrary/MediaLibraryModule;Landroid/os/Handler;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "I)V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 471
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput p3, p0, Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;->mMediaType:I

    .line 473
    invoke-direct {p0, p3}, Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;->getAssetsTotalCount(I)I

    move-result p1

    iput p1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;->mAssetsTotalCount:I

    return-void
.end method

.method private final getAssetsTotalCount(I)I
    .locals 7

    iget-object v0, p0, Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 491
    invoke-static {v0}, Lexpo/modules/medialibrary/MediaLibraryModule;->access$getContext(Lexpo/modules/medialibrary/MediaLibraryModule;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 492
    invoke-static {}, Lexpo/modules/medialibrary/MediaLibraryConstantsKt;->getEXTERNAL_CONTENT_URI()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "media_type == "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 491
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    .line 497
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 476
    invoke-virtual {p0, p1, v0}, Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget p1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;->mMediaType:I

    .line 480
    invoke-direct {p0, p1}, Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;->getAssetsTotalCount(I)I

    move-result p1

    iget p2, p0, Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;->mAssetsTotalCount:I

    if-eq p2, p1, :cond_0

    iput p1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;->mAssetsTotalCount:I

    iget-object p1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 486
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "mediaLibraryDidChange"

    invoke-virtual {p1, v0, p2}, Lexpo/modules/medialibrary/MediaLibraryModule;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
