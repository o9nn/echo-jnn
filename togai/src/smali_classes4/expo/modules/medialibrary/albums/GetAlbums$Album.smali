.class final Lexpo/modules/medialibrary/albums/GetAlbums$Album;
.super Ljava/lang/Object;
.source "GetAlbums.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/medialibrary/albums/GetAlbums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Album"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\u000c\u001a\u00020\rR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lexpo/modules/medialibrary/albums/GetAlbums$Album;",
        "",
        "id",
        "",
        "title",
        "count",
        "",
        "(Ljava/lang/String;Ljava/lang/String;I)V",
        "getCount",
        "()I",
        "setCount",
        "(I)V",
        "toBundle",
        "Landroid/os/Bundle;",
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
.field private count:I

.field private final id:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/medialibrary/albums/GetAlbums$Album;->id:Ljava/lang/String;

    iput-object p2, p0, Lexpo/modules/medialibrary/albums/GetAlbums$Album;->title:Ljava/lang/String;

    iput p3, p0, Lexpo/modules/medialibrary/albums/GetAlbums$Album;->count:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 70
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/medialibrary/albums/GetAlbums$Album;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget v0, p0, Lexpo/modules/medialibrary/albums/GetAlbums$Album;->count:I

    return v0
.end method

.method public final setCount(I)V
    .locals 0

    iput p1, p0, Lexpo/modules/medialibrary/albums/GetAlbums$Album;->count:I

    return-void
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 3

    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    iget-object v2, p0, Lexpo/modules/medialibrary/albums/GetAlbums$Album;->id:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    iget-object v2, p0, Lexpo/modules/medialibrary/albums/GetAlbums$Album;->title:Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    const/4 v2, 0x0

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "assetCount"

    iget v2, p0, Lexpo/modules/medialibrary/albums/GetAlbums$Album;->count:I

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
