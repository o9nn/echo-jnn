.class public final Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;
.super Ljava/io/File;
.source "MediaLibraryUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/medialibrary/MediaLibraryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetFile"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;",
        "Ljava/io/File;",
        "pathname",
        "",
        "assetId",
        "mimeType",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getAssetId",
        "()Ljava/lang/String;",
        "getMimeType",
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
.field private final assetId:Ljava/lang/String;

.field private final mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "pathname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mimeType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;->assetId:Ljava/lang/String;

    iput-object p3, p0, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;->mimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAssetId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;->assetId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;->mimeType:Ljava/lang/String;

    return-object v0
.end method
