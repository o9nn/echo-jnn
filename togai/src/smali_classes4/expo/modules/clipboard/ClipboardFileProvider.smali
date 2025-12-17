.class public final Lexpo/modules/clipboard/ClipboardFileProvider;
.super Landroid/content/ContentProvider;
.source "ClipboardFileProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/clipboard/ClipboardFileProvider$Companion;,
        Lexpo/modules/clipboard/ClipboardFileProvider$PathStrategy;,
        Lexpo/modules/clipboard/ClipboardFileProvider$SimplePathStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClipboardFileProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClipboardFileProvider.kt\nexpo/modules/clipboard/ClipboardFileProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,361:1\n1#2:362\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 &2\u00020\u0001:\u0003&\'(B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J1\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00052\u0010\u0010\u0014\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0005\u0018\u00010\u0004H\u0016\u00a2\u0006\u0002\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001a\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u0005H\u0016JM\u0010\u001f\u001a\u00020 2\u0006\u0010\u0011\u001a\u00020\u00122\u0010\u0010!\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0005\u0018\u00010\u00042\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00052\u0010\u0010\u0014\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0005\u0018\u00010\u00042\u0008\u0010\"\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0002\u0010#J;\u0010$\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00052\u0010\u0010\u0014\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0005\u0018\u00010\u0004H\u0016\u00a2\u0006\u0002\u0010%R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lexpo/modules/clipboard/ClipboardFileProvider;",
        "Landroid/content/ContentProvider;",
        "()V",
        "defaultProjectionColumns",
        "",
        "",
        "[Ljava/lang/String;",
        "strategy",
        "Lexpo/modules/clipboard/ClipboardFileProvider$PathStrategy;",
        "attachInfo",
        "",
        "context",
        "Landroid/content/Context;",
        "info",
        "Landroid/content/pm/ProviderInfo;",
        "delete",
        "",
        "uri",
        "Landroid/net/Uri;",
        "selection",
        "selectionArgs",
        "(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I",
        "getType",
        "insert",
        "values",
        "Landroid/content/ContentValues;",
        "onCreate",
        "",
        "openFile",
        "Landroid/os/ParcelFileDescriptor;",
        "mode",
        "query",
        "Landroid/database/Cursor;",
        "projection",
        "sortOrder",
        "(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;",
        "update",
        "(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I",
        "Companion",
        "PathStrategy",
        "SimplePathStrategy",
        "expo-clipboard_release"
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
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PATH:Ljava/lang/String; = "path"

.field public static final Companion:Lexpo/modules/clipboard/ClipboardFileProvider$Companion;

.field private static final DEVICE_ROOT:Ljava/io/File;

.field private static final META_DATA_FILE_PROVIDER_PATHS:Ljava/lang/String; = "expo.modules.clipboard.CLIPBOARD_FILE_PROVIDER_PATHS"

.field private static final TAG_CACHE_PATH:Ljava/lang/String; = "cache-path"

.field private static final TAG_EXTERNAL:Ljava/lang/String; = "external-path"

.field private static final TAG_EXTERNAL_CACHE:Ljava/lang/String; = "external-cache-path"

.field private static final TAG_EXTERNAL_FILES:Ljava/lang/String; = "external-files-path"

.field private static final TAG_FILES_PATH:Ljava/lang/String; = "files-path"

.field private static final TAG_ROOT_PATH:Ljava/lang/String; = "root-path"

.field private static final cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lexpo/modules/clipboard/ClipboardFileProvider$PathStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final defaultProjectionColumns:[Ljava/lang/String;

.field private strategy:Lexpo/modules/clipboard/ClipboardFileProvider$PathStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/clipboard/ClipboardFileProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/clipboard/ClipboardFileProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/clipboard/ClipboardFileProvider;->Companion:Lexpo/modules/clipboard/ClipboardFileProvider$Companion;

    .line 140
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lexpo/modules/clipboard/ClipboardFileProvider;->DEVICE_ROOT:Ljava/io/File;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lexpo/modules/clipboard/ClipboardFileProvider;->cache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-string v0, "_display_name"

    const-string v1, "_size"

    .line 40
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/clipboard/ClipboardFileProvider;->defaultProjectionColumns:[Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCache$cp()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lexpo/modules/clipboard/ClipboardFileProvider;->cache:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$getDEVICE_ROOT$cp()Ljava/io/File;
    .locals 1

    sget-object v0, Lexpo/modules/clipboard/ClipboardFileProvider;->DEVICE_ROOT:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 56
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v0, :cond_0

    sget-object v0, Lexpo/modules/clipboard/ClipboardFileProvider;->Companion:Lexpo/modules/clipboard/ClipboardFileProvider$Companion;

    .line 60
    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v1, "authority"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lexpo/modules/clipboard/ClipboardFileProvider$Companion;->getPathStrategy$expo_clipboard_release(Landroid/content/Context;Ljava/lang/String;)Lexpo/modules/clipboard/ClipboardFileProvider$PathStrategy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/clipboard/ClipboardFileProvider;->strategy:Lexpo/modules/clipboard/ClipboardFileProvider$PathStrategy;

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "ClipboardFileProvider must be exported"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string p2, "uri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This is a read-only provider"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lexpo/modules/clipboard/ClipboardFileProvider;->strategy:Lexpo/modules/clipboard/ClipboardFileProvider$PathStrategy;

    if-nez v0, :cond_0

    const-string v0, "strategy"

    .line 73
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1}, Lexpo/modules/clipboard/ClipboardFileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 76
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    const-string p1, "application/octet-stream"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const-string p2, "uri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This is a read-only provider"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    .line 121
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lexpo/modules/clipboard/ClipboardFileProvider;->strategy:Lexpo/modules/clipboard/ClipboardFileProvider$PathStrategy;

    if-nez p2, :cond_0

    const-string p2, "strategy"

    .line 122
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    invoke-interface {p2, p1}, Lexpo/modules/clipboard/ClipboardFileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 123
    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 121
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mode must be \"r\""

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    const-string p3, "uri"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    iget-object p2, p0, Lexpo/modules/clipboard/ClipboardFileProvider;->defaultProjectionColumns:[Ljava/lang/String;

    :cond_0
    iget-object p3, p0, Lexpo/modules/clipboard/ClipboardFileProvider;->strategy:Lexpo/modules/clipboard/ClipboardFileProvider$PathStrategy;

    if-nez p3, :cond_1

    const-string p3, "strategy"

    .line 86
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p3, 0x0

    :cond_1
    invoke-interface {p3, p1}, Lexpo/modules/clipboard/ClipboardFileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 87
    array-length p3, p2

    new-array p3, p3, [Ljava/lang/String;

    .line 88
    array-length p4, p2

    new-array p4, p4, [Ljava/lang/Object;

    .line 90
    array-length p5, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p5, :cond_4

    aget-object v2, p2, v0

    const-string v3, "_display_name"

    .line 92
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 93
    aput-object v3, p3, v1

    add-int/lit8 v2, v1, 0x1

    .line 94
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v1

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_2
    const-string v3, "_size"

    .line 97
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 98
    aput-object v3, p3, v1

    add-int/lit8 v2, v1, 0x1

    .line 99
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p4, v1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_4
    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "copyOf(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/String;

    .line 104
    invoke-static {p4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    new-instance p2, Landroid/database/MatrixCursor;

    const/4 p4, 0x1

    invoke-direct {p2, p1, p4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 106
    invoke-virtual {p2, p3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 105
    check-cast p2, Landroid/database/Cursor;

    return-object p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string p2, "uri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This is a read-only provider"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
