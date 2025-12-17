.class public final Lexpo/modules/medialibrary/albums/DeleteAlbums;
.super Ljava/lang/Object;
.source "DeleteAlbums.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeleteAlbums.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteAlbums.kt\nexpo/modules/medialibrary/albums/DeleteAlbums\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,23:1\n37#2,2:24\n*S KotlinDebug\n*F\n+ 1 DeleteAlbums.kt\nexpo/modules/medialibrary/albums/DeleteAlbums\n*L\n14#1:24,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000bX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lexpo/modules/medialibrary/albums/DeleteAlbums;",
        "",
        "context",
        "Landroid/content/Context;",
        "albumIds",
        "",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "(Landroid/content/Context;Ljava/util/List;Lexpo/modules/kotlin/Promise;)V",
        "mAlbumIds",
        "",
        "[Ljava/lang/String;",
        "execute",
        "",
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
.field private final context:Landroid/content/Context;

.field private final mAlbumIds:[Ljava/lang/String;

.field private final promise:Lexpo/modules/kotlin/Promise;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lexpo/modules/kotlin/Promise;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lexpo/modules/kotlin/Promise;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "albumIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/medialibrary/albums/DeleteAlbums;->context:Landroid/content/Context;

    iput-object p3, p0, Lexpo/modules/medialibrary/albums/DeleteAlbums;->promise:Lexpo/modules/kotlin/Promise;

    .line 14
    check-cast p2, Ljava/util/Collection;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 25
    invoke-interface {p2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lexpo/modules/medialibrary/albums/DeleteAlbums;->mAlbumIds:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 5

    .line 17
    sget-object v0, Lexpo/modules/medialibrary/MediaLibraryUtils;->INSTANCE:Lexpo/modules/medialibrary/MediaLibraryUtils;

    iget-object v1, p0, Lexpo/modules/medialibrary/albums/DeleteAlbums;->mAlbumIds:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lexpo/modules/medialibrary/MediaLibraryUtils;->queryPlaceholdersFor([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bucket_id IN ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/medialibrary/albums/DeleteAlbums;->mAlbumIds:[Ljava/lang/String;

    .line 20
    sget-object v2, Lexpo/modules/medialibrary/MediaLibraryUtils;->INSTANCE:Lexpo/modules/medialibrary/MediaLibraryUtils;

    iget-object v3, p0, Lexpo/modules/medialibrary/albums/DeleteAlbums;->context:Landroid/content/Context;

    iget-object v4, p0, Lexpo/modules/medialibrary/albums/DeleteAlbums;->promise:Lexpo/modules/kotlin/Promise;

    invoke-virtual {v2, v3, v0, v1, v4}, Lexpo/modules/medialibrary/MediaLibraryUtils;->deleteAssets(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lexpo/modules/kotlin/Promise;)V

    return-void
.end method
