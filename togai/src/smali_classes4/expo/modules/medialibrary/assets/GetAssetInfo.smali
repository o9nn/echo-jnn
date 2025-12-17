.class public final Lexpo/modules/medialibrary/assets/GetAssetInfo;
.super Ljava/lang/Object;
.source "GetAssetInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lexpo/modules/medialibrary/assets/GetAssetInfo;",
        "",
        "context",
        "Landroid/content/Context;",
        "assetId",
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
.field private final assetId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final promise:Lexpo/modules/kotlin/Promise;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lexpo/modules/kotlin/Promise;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/medialibrary/assets/GetAssetInfo;->context:Landroid/content/Context;

    iput-object p2, p0, Lexpo/modules/medialibrary/assets/GetAssetInfo;->assetId:Ljava/lang/String;

    iput-object p3, p0, Lexpo/modules/medialibrary/assets/GetAssetInfo;->promise:Lexpo/modules/kotlin/Promise;

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 5

    iget-object v0, p0, Lexpo/modules/medialibrary/assets/GetAssetInfo;->assetId:Ljava/lang/String;

    .line 14
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/medialibrary/assets/GetAssetInfo;->context:Landroid/content/Context;

    const/4 v2, 0x1

    iget-object v3, p0, Lexpo/modules/medialibrary/assets/GetAssetInfo;->promise:Lexpo/modules/kotlin/Promise;

    const-string v4, "_id=?"

    .line 16
    invoke-static {v1, v4, v0, v2, v3}, Lexpo/modules/medialibrary/assets/AssetUtilsKt;->queryAssetInfo(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLexpo/modules/kotlin/Promise;)V

    return-void
.end method
