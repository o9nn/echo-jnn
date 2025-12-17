.class public final Lexpo/modules/medialibrary/albums/RemoveAssetsFromAlbum;
.super Ljava/lang/Object;
.source "RemoveAssetsFromAlbum.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0006\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lexpo/modules/medialibrary/albums/RemoveAssetsFromAlbum;",
        "",
        "context",
        "Landroid/content/Context;",
        "assetIds",
        "",
        "",
        "albumId",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lexpo/modules/kotlin/Promise;)V",
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
.field private final albumId:Ljava/lang/String;

.field private final assetIds:[Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final promise:Lexpo/modules/kotlin/Promise;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lexpo/modules/kotlin/Promise;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "albumId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/medialibrary/albums/RemoveAssetsFromAlbum;->context:Landroid/content/Context;

    iput-object p2, p0, Lexpo/modules/medialibrary/albums/RemoveAssetsFromAlbum;->assetIds:[Ljava/lang/String;

    iput-object p3, p0, Lexpo/modules/medialibrary/albums/RemoveAssetsFromAlbum;->albumId:Ljava/lang/String;

    iput-object p4, p0, Lexpo/modules/medialibrary/albums/RemoveAssetsFromAlbum;->promise:Lexpo/modules/kotlin/Promise;

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 9

    iget-object v0, p0, Lexpo/modules/medialibrary/albums/RemoveAssetsFromAlbum;->assetIds:[Ljava/lang/String;

    const-string v1, ","

    .line 15
    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bucket_id=? AND _id IN ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/medialibrary/albums/RemoveAssetsFromAlbum;->albumId:Ljava/lang/String;

    .line 16
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 18
    sget-object v2, Lexpo/modules/medialibrary/MediaLibraryUtils;->INSTANCE:Lexpo/modules/medialibrary/MediaLibraryUtils;

    iget-object v3, p0, Lexpo/modules/medialibrary/albums/RemoveAssetsFromAlbum;->context:Landroid/content/Context;

    iget-object v4, p0, Lexpo/modules/medialibrary/albums/RemoveAssetsFromAlbum;->promise:Lexpo/modules/kotlin/Promise;

    invoke-virtual {v2, v3, v0, v1, v4}, Lexpo/modules/medialibrary/MediaLibraryUtils;->deleteAssets(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lexpo/modules/kotlin/Promise;)V

    return-void
.end method
