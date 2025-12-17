.class public final Lcom/rararchive/RarArchiveModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RarArchiveModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rararchive/RarArchiveModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \r2\u00020\u0001:\u0001\rB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J \u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000cH\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/rararchive/RarArchiveModule;",
        "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "getName",
        "",
        "unrar",
        "",
        "from",
        "to",
        "promise",
        "Lcom/facebook/react/bridge/Promise;",
        "Companion",
        "react-native-rar-archive_release"
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
.field public static final Companion:Lcom/rararchive/RarArchiveModule$Companion;

.field public static final NAME:Ljava/lang/String; = "RarArchive"


# direct methods
.method public static synthetic $r8$lambda$a-X96AJJfblPdrMjPYIHn8XNzu4(Ljava/io/FileOutputStream;[B)I
    .locals 0

    invoke-static {p0, p1}, Lcom/rararchive/RarArchiveModule;->unrar$lambda$1$lambda$0(Ljava/io/FileOutputStream;[B)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rararchive/RarArchiveModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rararchive/RarArchiveModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rararchive/RarArchiveModule;->Companion:Lcom/rararchive/RarArchiveModule$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method

.method private static final unrar$lambda$1$lambda$0(Ljava/io/FileOutputStream;[B)I
    .locals 1

    const-string v0, "$fos"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 52
    array-length p0, p1

    return p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RarArchive"

    return-object v0
.end method

.method public final unrar(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 9
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lnet/sf/sevenzipjbinding/SevenZip;->getSevenZipVersion()Lnet/sf/sevenzipjbinding/SevenZip$Version;

    const/4 v0, 0x0

    .line 35
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 38
    :try_start_1
    new-instance p1, Lnet/sf/sevenzipjbinding/impl/RandomAccessFileInStream;

    invoke-direct {p1, v1}, Lnet/sf/sevenzipjbinding/impl/RandomAccessFileInStream;-><init>(Ljava/io/RandomAccessFile;)V

    check-cast p1, Lnet/sf/sevenzipjbinding/IInStream;

    .line 36
    invoke-static {v0, p1}, Lnet/sf/sevenzipjbinding/SevenZip;->openInArchive(Lnet/sf/sevenzipjbinding/ArchiveFormat;Lnet/sf/sevenzipjbinding/IInStream;)Lnet/sf/sevenzipjbinding/IInArchive;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 41
    :try_start_2
    invoke-interface {p1}, Lnet/sf/sevenzipjbinding/IInArchive;->getSimpleInterface()Lnet/sf/sevenzipjbinding/simple/ISimpleInArchive;

    move-result-object v2

    const-string v3, "getSimpleInterface(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-interface {v2}, Lnet/sf/sevenzipjbinding/simple/ISimpleInArchive;->getArchiveItems()[Lnet/sf/sevenzipjbinding/simple/ISimpleInArchiveItem;

    move-result-object v2

    const-string v3, "getArchiveItems(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 44
    invoke-interface {v5}, Lnet/sf/sevenzipjbinding/simple/ISimpleInArchiveItem;->isFolder()Z

    move-result v6

    if-nez v6, :cond_2

    .line 46
    new-instance v6, Ljava/io/File;

    invoke-interface {v5}, Lnet/sf/sevenzipjbinding/simple/ISimpleInArchiveItem;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 49
    :cond_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v7, Ljava/io/Closeable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    move-object v6, v7

    check-cast v6, Ljava/io/FileOutputStream;

    .line 50
    new-instance v8, Lcom/rararchive/RarArchiveModule$$ExternalSyntheticLambda0;

    invoke-direct {v8, v6}, Lcom/rararchive/RarArchiveModule$$ExternalSyntheticLambda0;-><init>(Ljava/io/FileOutputStream;)V

    invoke-interface {v5, v8}, Lnet/sf/sevenzipjbinding/simple/ISimpleInArchiveItem;->extractSlow(Lnet/sf/sevenzipjbinding/ISequentialOutStream;)Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    move-result-object v6

    .line 55
    sget-object v8, Lnet/sf/sevenzipjbinding/ExtractOperationResult;->OK:Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    if-ne v6, v8, :cond_1

    .line 58
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    :try_start_4
    invoke-static {v7, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 56
    :cond_1
    :try_start_5
    new-instance p2, Ljava/lang/Exception;

    invoke-interface {v5}, Lnet/sf/sevenzipjbinding/simple/ISimpleInArchiveItem;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error extracting item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p2

    .line 49
    :try_start_6
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-static {v7, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 61
    :cond_3
    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz p1, :cond_4

    .line 67
    :try_start_8
    invoke-interface {p1}, Lnet/sf/sevenzipjbinding/IInArchive;->close()V

    .line 68
    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    :catchall_2
    move-exception p2

    move-object v0, p1

    goto :goto_5

    :catch_0
    move-exception p2

    move-object v0, p1

    goto :goto_3

    :catch_1
    move-exception p2

    goto :goto_3

    :catchall_3
    move-exception p2

    move-object v1, v0

    goto :goto_5

    :catch_2
    move-exception p2

    move-object v1, v0

    :goto_3
    :try_start_9
    const-string p1, "Unrar error"

    .line 64
    check-cast p2, Ljava/lang/Throwable;

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v0, :cond_5

    .line 67
    :try_start_a
    invoke-interface {v0}, Lnet/sf/sevenzipjbinding/IInArchive;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    :cond_5
    if-eqz v1, :cond_6

    goto :goto_2

    :catch_3
    :cond_6
    :goto_4
    return-void

    :catchall_4
    move-exception p2

    :goto_5
    if-eqz v0, :cond_7

    :try_start_b
    invoke-interface {v0}, Lnet/sf/sevenzipjbinding/IInArchive;->close()V

    :cond_7
    if-eqz v1, :cond_8

    .line 68
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 69
    :catch_4
    :cond_8
    throw p2
.end method
