.class public final Lexpo/modules/medialibrary/albums/GetAlbum;
.super Ljava/lang/Object;
.source "GetAlbum.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lexpo/modules/medialibrary/albums/GetAlbum;",
        "",
        "context",
        "Landroid/content/Context;",
        "albumName",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "(Landroid/content/Context;Ljava/lang/String;Lexpo/modules/kotlin/Promise;)V",
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
.field private final albumName:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final promise:Lexpo/modules/kotlin/Promise;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lexpo/modules/kotlin/Promise;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "albumName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/medialibrary/albums/GetAlbum;->context:Landroid/content/Context;

    iput-object p2, p0, Lexpo/modules/medialibrary/albums/GetAlbum;->albumName:Ljava/lang/String;

    iput-object p3, p0, Lexpo/modules/medialibrary/albums/GetAlbum;->promise:Lexpo/modules/kotlin/Promise;

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 4

    iget-object v0, p0, Lexpo/modules/medialibrary/albums/GetAlbum;->albumName:Ljava/lang/String;

    .line 16
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/medialibrary/albums/GetAlbum;->context:Landroid/content/Context;

    iget-object v2, p0, Lexpo/modules/medialibrary/albums/GetAlbum;->promise:Lexpo/modules/kotlin/Promise;

    const-string v3, "media_type != 0 AND bucket_display_name=?"

    .line 18
    invoke-static {v1, v3, v0, v2}, Lexpo/modules/medialibrary/albums/AlbumUtilsKt;->queryAlbum(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lexpo/modules/kotlin/Promise;)V

    return-void
.end method
