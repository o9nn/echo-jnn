.class public final Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion;
.super Ljava/lang/Object;
.source "AssetFileStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/medialibrary/albums/AssetFileStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion;",
        "",
        "()V",
        "copyStrategy",
        "Lexpo/modules/medialibrary/albums/AssetFileStrategy;",
        "getCopyStrategy",
        "()Lexpo/modules/medialibrary/albums/AssetFileStrategy;",
        "moveStrategy",
        "getMoveStrategy",
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


# static fields
.field static final synthetic $$INSTANCE:Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion;

.field private static final copyStrategy:Lexpo/modules/medialibrary/albums/AssetFileStrategy;

.field private static final moveStrategy:Lexpo/modules/medialibrary/albums/AssetFileStrategy;


# direct methods
.method public static synthetic $r8$lambda$G-p0UrBiw7d9eRT-t58T_eJBEcE(Ljava/io/File;Ljava/io/File;Landroid/content/Context;)Ljava/io/File;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion;->moveStrategy$lambda$1(Ljava/io/File;Ljava/io/File;Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KGNZ4PthAG470lrTJadk12xajjY(Ljava/io/File;Ljava/io/File;Landroid/content/Context;)Ljava/io/File;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion;->copyStrategy$lambda$0(Ljava/io/File;Ljava/io/File;Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion;

    invoke-direct {v0}, Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion;-><init>()V

    sput-object v0, Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion;->$$INSTANCE:Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion;

    .line 17
    new-instance v0, Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion;->copyStrategy:Lexpo/modules/medialibrary/albums/AssetFileStrategy;

    .line 18
    new-instance v0, Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion;->moveStrategy:Lexpo/modules/medialibrary/albums/AssetFileStrategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final copyStrategy$lambda$0(Ljava/io/File;Ljava/io/File;Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const-string v0, "src"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 2>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object p2, Lexpo/modules/medialibrary/MediaLibraryUtils;->INSTANCE:Lexpo/modules/medialibrary/MediaLibraryUtils;

    invoke-virtual {p2, p0, p1}, Lexpo/modules/medialibrary/MediaLibraryUtils;->safeCopyFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static final moveStrategy$lambda$1(Ljava/io/File;Ljava/io/File;Landroid/content/Context;)Ljava/io/File;
    .locals 4

    const-string v0, "src"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 19
    instance-of v0, p0, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;

    if-eqz v0, :cond_0

    .line 20
    move-object v0, p0

    check-cast v0, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;

    invoke-virtual {v0}, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;->getAssetId()Ljava/lang/String;

    move-result-object v0

    .line 21
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "withAppendedId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v1, Lexpo/modules/medialibrary/MediaLibraryUtils;->INSTANCE:Lexpo/modules/medialibrary/MediaLibraryUtils;

    invoke-virtual {v1, p0, p1}, Lexpo/modules/medialibrary/MediaLibraryUtils;->safeCopyFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 23
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    return-object p0

    .line 26
    :cond_0
    sget-object v0, Lexpo/modules/medialibrary/MediaLibraryUtils;->INSTANCE:Lexpo/modules/medialibrary/MediaLibraryUtils;

    invoke-virtual {v0, p0, p1}, Lexpo/modules/medialibrary/MediaLibraryUtils;->safeMoveFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 27
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 28
    invoke-static {}, Lexpo/modules/medialibrary/MediaLibraryConstantsKt;->getEXTERNAL_CONTENT_URI()Landroid/net/Uri;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const-string v1, "_data=?"

    .line 27
    invoke-virtual {p2, v0, v1, p0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-object p1
.end method


# virtual methods
.method public final getCopyStrategy()Lexpo/modules/medialibrary/albums/AssetFileStrategy;
    .locals 1

    sget-object v0, Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion;->copyStrategy:Lexpo/modules/medialibrary/albums/AssetFileStrategy;

    return-object v0
.end method

.method public final getMoveStrategy()Lexpo/modules/medialibrary/albums/AssetFileStrategy;
    .locals 1

    sget-object v0, Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion;->moveStrategy:Lexpo/modules/medialibrary/albums/AssetFileStrategy;

    return-object v0
.end method
