.class public Lorg/pgsqlite/SQLitePlugin;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "SQLitePlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pgsqlite/SQLitePlugin$Action;,
        Lorg/pgsqlite/SQLitePlugin$DBQuery;,
        Lorg/pgsqlite/SQLitePlugin$DBRunner;,
        Lorg/pgsqlite/SQLitePlugin$QueryType;
    }
.end annotation


# static fields
.field private static final FIRST_WORD:Ljava/util/regex/Pattern;

.field private static final PLUGIN_NAME:Ljava/lang/String; = "SQLite"

.field public static final TAG:Ljava/lang/String; = "SQLitePlugin"

.field static dbrmap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/pgsqlite/SQLitePlugin$DBRunner;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected context:Landroid/content/Context;

.field protected threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static bridge synthetic -$$Nest$mcloseDatabaseNow(Lorg/pgsqlite/SQLitePlugin;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/pgsqlite/SQLitePlugin;->closeDatabaseNow(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeleteDatabaseNow(Lorg/pgsqlite/SQLitePlugin;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/pgsqlite/SQLitePlugin;->deleteDatabaseNow(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mexecuteSqlBatch(Lorg/pgsqlite/SQLitePlugin;Ljava/lang/String;[Ljava/lang/String;[Lcom/facebook/react/bridge/ReadableArray;[Ljava/lang/String;Lorg/pgsqlite/CallbackContext;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/pgsqlite/SQLitePlugin;->executeSqlBatch(Ljava/lang/String;[Ljava/lang/String;[Lcom/facebook/react/bridge/ReadableArray;[Ljava/lang/String;Lorg/pgsqlite/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenDatabase(Lorg/pgsqlite/SQLitePlugin;Ljava/lang/String;Ljava/lang/String;ILorg/pgsqlite/CallbackContext;)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/pgsqlite/SQLitePlugin;->openDatabase(Ljava/lang/String;Ljava/lang/String;ILorg/pgsqlite/CallbackContext;)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "^\\s*(\\S+)"

    const/4 v1, 0x2

    .line 55
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/pgsqlite/SQLitePlugin;->FIRST_WORD:Ljava/util/regex/Pattern;

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 76
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/pgsqlite/SQLitePlugin;->context:Landroid/content/Context;

    .line 77
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/pgsqlite/SQLitePlugin;->context:Landroid/content/Context;

    .line 78
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lorg/pgsqlite/SQLitePlugin;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private attachDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/pgsqlite/CallbackContext;)V
    .locals 7

    sget-object v0, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 507
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/pgsqlite/SQLitePlugin$DBRunner;

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lorg/pgsqlite/SQLitePlugin;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 510
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 511
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "ATTACH DATABASE \'"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' AS "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 513
    new-instance p2, Lorg/pgsqlite/SQLitePlugin$DBQuery;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const-string p1, "1111"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/pgsqlite/SQLitePlugin$DBQuery;-><init>(Lorg/pgsqlite/SQLitePlugin;[Ljava/lang/String;[Ljava/lang/String;[Lcom/facebook/react/bridge/ReadableArray;Lorg/pgsqlite/CallbackContext;)V

    .line 515
    :try_start_0
    iget-object p1, v0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Can\'t put query in the queue. Interrupted."

    .line 517
    invoke-virtual {p4, p1}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 520
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Database "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "i s not created yet"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private bindArgsToStatement(Lio/requery/android/database/sqlite/SQLiteStatement;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 7

    const/4 v0, 0x0

    .line 756
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 757
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    .line 758
    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v1, v2, :cond_1

    .line 759
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v1

    double-to-long v3, v1

    long-to-double v5, v3

    cmpl-double v5, v1, v5

    if-nez v5, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 761
    invoke-virtual {p1, v1, v3, v4}, Lio/requery/android/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, 0x1

    .line 763
    invoke-virtual {p1, v3, v1, v2}, Lio/requery/android/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    goto :goto_1

    .line 765
    :cond_1
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableArray;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 766
    invoke-virtual {p1, v1}, Lio/requery/android/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v0, 0x1

    const-string v2, ""

    .line 768
    invoke-static {p2, v0, v2}, Lorg/pgsqlite/SQLitePluginConverter;->getString(Lcom/facebook/react/bridge/ReadableArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lio/requery/android/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private bindRow(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Landroid/database/Cursor;I)V
    .locals 2

    .line 839
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 856
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 852
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p3

    const/4 p4, 0x0

    invoke-static {p3, p4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {p1, p2, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 849
    :cond_1
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p3

    invoke-interface {p1, p2, p3, p4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 846
    :cond_2
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    long-to-double p3, p3

    invoke-interface {p1, p2, p3, p4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 843
    :cond_3
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private closeDatabase(Ljava/lang/String;Lorg/pgsqlite/CallbackContext;)V
    .locals 2

    sget-object v0, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 468
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/pgsqlite/SQLitePlugin$DBRunner;

    if-eqz p1, :cond_1

    .line 471
    :try_start_0
    iget-object p1, p1, Lorg/pgsqlite/SQLitePlugin$DBRunner;->q:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lorg/pgsqlite/SQLitePlugin$DBQuery;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lorg/pgsqlite/SQLitePlugin$DBQuery;-><init>(Lorg/pgsqlite/SQLitePlugin;ZLorg/pgsqlite/CallbackContext;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "couldn\'t close database"

    if-eqz p2, :cond_0

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V

    :cond_0
    sget-object p2, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    .line 476
    invoke-static {p2, v0, p1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "database closed"

    .line 480
    invoke-virtual {p2, p1}, Lorg/pgsqlite/CallbackContext;->success(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private closeDatabaseNow(Ljava/lang/String;)V
    .locals 0

    .line 491
    invoke-direct {p0, p1}, Lorg/pgsqlite/SQLitePlugin;->getDatabase(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 494
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-void
.end method

.method private closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 864
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private createFromAssets(Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v2, "Copying pre-populated DB content"

    .line 437
    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const-string v1, "/"

    .line 439
    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 441
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 443
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 445
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 446
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p2, 0x400

    :try_start_1
    new-array p2, p2, [B

    .line 452
    :goto_0
    invoke-virtual {p3, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_1

    .line 453
    invoke-virtual {p1, p2, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    sget-object p2, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    .line 455
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Copied pre-populated DB asset to: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    invoke-direct {p0, p1}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    invoke-direct {p0, v0}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V

    .line 458
    throw p1
.end method

.method private deleteDatabase(Ljava/lang/String;Lorg/pgsqlite/CallbackContext;)V
    .locals 2

    sget-object v0, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 530
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/pgsqlite/SQLitePlugin$DBRunner;

    if-eqz v0, :cond_1

    .line 533
    :try_start_0
    iget-object p1, v0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->q:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lorg/pgsqlite/SQLitePlugin$DBQuery;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p2}, Lorg/pgsqlite/SQLitePlugin$DBQuery;-><init>(Lorg/pgsqlite/SQLitePlugin;ZLorg/pgsqlite/CallbackContext;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "couldn\'t close database"

    if-eqz p2, :cond_0

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V

    :cond_0
    sget-object p2, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    .line 538
    invoke-static {p2, v0, p1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 541
    :cond_1
    invoke-direct {p0, p1}, Lorg/pgsqlite/SQLitePlugin;->deleteDatabaseNow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "database deleted"

    .line 543
    invoke-virtual {p2, p1}, Lorg/pgsqlite/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "couldn\'t delete database"

    .line 545
    invoke-virtual {p2, p1}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private deleteDatabaseNow(Ljava/lang/String;)Z
    .locals 1

    .line 559
    invoke-virtual {p0}, Lorg/pgsqlite/SQLitePlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 560
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method private executeAndPossiblyThrow(Lorg/pgsqlite/SQLitePlugin$Action;Lcom/facebook/react/bridge/ReadableMap;Lorg/pgsqlite/CallbackContext;)Z
    .locals 13

    move-object v7, p0

    move-object v0, p2

    move-object/from16 v8, p3

    .line 206
    invoke-virtual {p1}, Lorg/pgsqlite/SQLitePlugin$Action;->ordinal()I

    move-result v1

    const-string v2, "path"

    const-string v3, ""

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string v1, "value"

    .line 208
    invoke-static {p2, v1, v3}, Lorg/pgsqlite/SQLitePluginConverter;->getString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {v8, v0}, Lorg/pgsqlite/CallbackContext;->success(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    const-string v1, "dbargs"

    const/4 v2, 0x0

    .line 241
    invoke-static {p2, v1, v2}, Lorg/pgsqlite/SQLitePluginConverter;->get(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReadableMap;

    const-string v4, "dbname"

    .line 242
    invoke-static {v1, v4, v3}, Lorg/pgsqlite/SQLitePluginConverter;->getString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "executes"

    .line 243
    invoke-static {p2, v1, v2}, Lorg/pgsqlite/SQLitePluginConverter;->get(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReadableArray;

    const/4 v1, 0x0

    .line 245
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableArray;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    move-object v3, v0

    move-object v4, v2

    move-object v5, v4

    goto :goto_1

    .line 248
    :cond_0
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v4

    .line 249
    new-array v5, v4, [Ljava/lang/String;

    .line 250
    new-array v6, v4, [Ljava/lang/String;

    .line 251
    new-array v10, v4, [Lcom/facebook/react/bridge/ReadableArray;

    :goto_0
    if-ge v1, v4, :cond_1

    .line 254
    invoke-static {v0, v1, v2}, Lorg/pgsqlite/SQLitePluginConverter;->get(Lcom/facebook/react/bridge/ReadableArray;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/react/bridge/ReadableMap;

    const-string v12, "sql"

    .line 255
    invoke-static {v11, v12, v3}, Lorg/pgsqlite/SQLitePluginConverter;->getString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v1

    const-string v12, "qid"

    .line 256
    invoke-static {v11, v12, v3}, Lorg/pgsqlite/SQLitePluginConverter;->getString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v1

    const-string v12, "params"

    .line 257
    invoke-static {v11, v12, v2}, Lorg/pgsqlite/SQLitePluginConverter;->get(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/react/bridge/ReadableArray;

    aput-object v11, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v5

    move-object v4, v6

    move-object v5, v10

    .line 262
    :goto_1
    new-instance v0, Lorg/pgsqlite/SQLitePlugin$DBQuery;

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/pgsqlite/SQLitePlugin$DBQuery;-><init>(Lorg/pgsqlite/SQLitePlugin;[Ljava/lang/String;[Ljava/lang/String;[Lcom/facebook/react/bridge/ReadableArray;Lorg/pgsqlite/CallbackContext;)V

    sget-object v1, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 263
    invoke-virtual {v1, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/pgsqlite/SQLitePlugin$DBRunner;

    if-eqz v1, :cond_2

    .line 266
    :try_start_0
    iget-object v1, v1, Lorg/pgsqlite/SQLitePlugin$DBRunner;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v2, "couldn\'t add to queue"

    .line 268
    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    invoke-virtual {v8, v2}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, "database not open"

    .line 272
    invoke-virtual {v8, v0}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 232
    :pswitch_2
    invoke-static {p2, v2, v3}, Lorg/pgsqlite/SQLitePluginConverter;->getString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-direct {p0, v0, v8}, Lorg/pgsqlite/SQLitePlugin;->deleteDatabase(Ljava/lang/String;Lorg/pgsqlite/CallbackContext;)V

    goto :goto_2

    .line 225
    :pswitch_3
    invoke-static {p2, v2, v3}, Lorg/pgsqlite/SQLitePluginConverter;->getString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dbAlias"

    .line 226
    invoke-static {p2, v2, v3}, Lorg/pgsqlite/SQLitePluginConverter;->getString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "dbName"

    .line 227
    invoke-static {p2, v4, v3}, Lorg/pgsqlite/SQLitePluginConverter;->getString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-direct {p0, v1, v0, v2, v8}, Lorg/pgsqlite/SQLitePlugin;->attachDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/pgsqlite/CallbackContext;)V

    goto :goto_2

    .line 219
    :pswitch_4
    invoke-static {p2, v2, v3}, Lorg/pgsqlite/SQLitePluginConverter;->getString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-direct {p0, v0, v8}, Lorg/pgsqlite/SQLitePlugin;->closeDatabase(Ljava/lang/String;Lorg/pgsqlite/CallbackContext;)V

    goto :goto_2

    :pswitch_5
    const-string v1, "name"

    .line 213
    invoke-static {p2, v1, v3}, Lorg/pgsqlite/SQLitePluginConverter;->getString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-direct {p0, v1, p2, v8}, Lorg/pgsqlite/SQLitePlugin;->startDatabase(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lorg/pgsqlite/CallbackContext;)V

    :goto_2
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private executeSqlBatch(Ljava/lang/String;[Ljava/lang/String;[Lcom/facebook/react/bridge/ReadableArray;[Ljava/lang/String;Lorg/pgsqlite/CallbackContext;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    .line 586
    invoke-direct/range {p0 .. p1}, Lorg/pgsqlite/SQLitePlugin;->getDatabase(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v0, "database has been closed"

    .line 590
    invoke-virtual {v3, v0}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 596
    :cond_0
    array-length v5, v2

    .line 597
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_d

    .line 600
    aget-object v9, p4, v8

    .line 607
    :try_start_0
    aget-object v11, v2, v8

    .line 608
    invoke-direct {v1, v11}, Lorg/pgsqlite/SQLitePlugin;->getQueryType(Ljava/lang/String;)Lorg/pgsqlite/SQLitePlugin$QueryType;

    move-result-object v0

    .line 610
    sget-object v12, Lorg/pgsqlite/SQLitePlugin$QueryType;->update:Lorg/pgsqlite/SQLitePlugin$QueryType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d

    const-string v13, "rowsAffected"

    const-string v14, "unknown"

    if-eq v0, v12, :cond_7

    :try_start_1
    sget-object v12, Lorg/pgsqlite/SQLitePlugin$QueryType;->delete:Lorg/pgsqlite/SQLitePlugin$QueryType;

    if-ne v0, v12, :cond_1

    goto/16 :goto_9

    .line 639
    :cond_1
    sget-object v12, Lorg/pgsqlite/SQLitePlugin$QueryType;->insert:Lorg/pgsqlite/SQLitePlugin$QueryType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    const/4 v15, 0x1

    if-ne v0, v12, :cond_3

    if-eqz p3, :cond_3

    :try_start_2
    const-string v0, "executeSqlBatch"

    const-string v12, "INSERT"

    .line 640
    invoke-static {v0, v12}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-virtual {v4, v11}, Lio/requery/android/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteStatement;

    move-result-object v12

    .line 645
    aget-object v0, p3, v8

    invoke-direct {v1, v12, v0}, Lorg/pgsqlite/SQLitePlugin;->bindArgsToStatement(Lio/requery/android/database/sqlite/SQLiteStatement;Lcom/facebook/react/bridge/ReadableArray;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d

    move-object/from16 v16, v11

    .line 650
    :try_start_3
    invoke-virtual {v12}, Lio/requery/android/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v10

    .line 653
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v7
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v17, -0x1

    cmp-long v0, v10, v17

    if-eqz v0, :cond_2

    :try_start_4
    const-string v0, "insertId"

    long-to-double v10, v10

    .line 655
    invoke-interface {v7, v0, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 656
    invoke-interface {v7, v13, v15}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 658
    invoke-interface {v7, v13, v10}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 666
    :goto_1
    :try_start_5
    invoke-direct {v1, v12}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    :catchall_0
    move-exception v0

    const/4 v10, 0x0

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v7, 0x0

    .line 663
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v13, "SQLiteDatabase.executeInsert() failed"

    .line 664
    invoke-static {v11, v13, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 666
    :try_start_7
    invoke-direct {v1, v12}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    move-object v14, v10

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v10, v7

    :goto_3
    :try_start_8
    invoke-direct {v1, v12}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V

    .line 667
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v0

    goto/16 :goto_11

    :cond_3
    move-object/from16 v16, v11

    .line 670
    :try_start_9
    sget-object v7, Lorg/pgsqlite/SQLitePlugin$QueryType;->begin:Lorg/pgsqlite/SQLitePlugin$QueryType;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    if-ne v0, v7, :cond_4

    .line 673
    :try_start_a
    invoke-virtual {v4}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 675
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v7
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    const/4 v10, 0x0

    .line 676
    :try_start_b
    invoke-interface {v7, v13, v10}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    :goto_4
    move-object/from16 v11, v16

    goto/16 :goto_c

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    const/4 v7, 0x0

    .line 678
    :goto_5
    :try_start_c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v14

    sget-object v10, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v11, "SQLiteDatabase.beginTransaction() failed"

    .line 679
    invoke-static {v10, v11, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v10, v7

    goto/16 :goto_11

    .line 683
    :cond_4
    :try_start_d
    sget-object v7, Lorg/pgsqlite/SQLitePlugin$QueryType;->commit:Lorg/pgsqlite/SQLitePlugin$QueryType;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    if-ne v0, v7, :cond_5

    .line 686
    :try_start_e
    invoke-virtual {v4}, Lio/requery/android/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 687
    invoke-virtual {v4}, Lio/requery/android/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 689
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v7
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    const/4 v10, 0x0

    .line 690
    :try_start_f
    invoke-interface {v7, v13, v10}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    const/4 v7, 0x0

    .line 692
    :goto_6
    :try_start_10
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v14

    sget-object v10, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v11, "SQLiteDatabase.setTransactionSuccessful/endTransaction() failed"

    .line 693
    invoke-static {v10, v11, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    goto :goto_4

    .line 697
    :cond_5
    :try_start_11
    sget-object v7, Lorg/pgsqlite/SQLitePlugin$QueryType;->rollback:Lorg/pgsqlite/SQLitePlugin$QueryType;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    if-ne v0, v7, :cond_6

    .line 700
    :try_start_12
    invoke-virtual {v4}, Lio/requery/android/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 702
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v7
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    const/4 v10, 0x0

    .line 703
    :try_start_13
    invoke-interface {v7, v13, v10}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5

    :goto_7
    move v15, v10

    move-object/from16 v11, v16

    goto :goto_d

    :catch_8
    move-exception v0

    goto :goto_8

    :catch_9
    move-exception v0

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 705
    :goto_8
    :try_start_14
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v14

    sget-object v11, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v12, "SQLiteDatabase.endTransaction() failed"

    .line 706
    invoke-static {v11, v12, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5

    goto :goto_7

    :cond_6
    move-object/from16 v11, v16

    const/4 v7, 0x0

    goto :goto_d

    :catch_a
    move-exception v0

    const/4 v10, 0x0

    goto :goto_10

    :cond_7
    :goto_9
    move-object/from16 v16, v11

    const/4 v10, 0x0

    const/4 v7, -0x1

    move-object/from16 v11, v16

    .line 615
    :try_start_15
    invoke-virtual {v4, v11}, Lio/requery/android/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteStatement;

    move-result-object v12
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_c
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    if-eqz p3, :cond_8

    .line 617
    :try_start_16
    aget-object v0, p3, v8

    invoke-direct {v1, v12, v0}, Lorg/pgsqlite/SQLitePlugin;->bindArgsToStatement(Lio/requery/android/database/sqlite/SQLiteStatement;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 620
    :cond_8
    invoke-virtual {v12}, Lio/requery/android/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v0
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_b
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 629
    :try_start_17
    invoke-direct {v1, v12}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_d

    goto :goto_b

    :catch_b
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v0

    const/4 v12, 0x0

    goto :goto_f

    :catch_c
    move-exception v0

    const/4 v12, 0x0

    .line 625
    :goto_a
    :try_start_18
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v10, "SQLiteStatement.executeUpdateDelete() failed"

    .line 626
    invoke-static {v15, v10, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 629
    :try_start_19
    invoke-direct {v1, v12}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V

    move v0, v7

    :goto_b
    if-eq v0, v7, :cond_9

    .line 633
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v7
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_d

    .line 634
    :try_start_1a
    invoke-interface {v7, v13, v0}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_c

    :cond_9
    const/4 v7, 0x0

    :goto_c
    const/4 v15, 0x0

    :goto_d
    if-eqz v15, :cond_b

    if-eqz p3, :cond_a

    .line 712
    aget-object v10, p3, v8

    goto :goto_e

    :cond_a
    const/4 v10, 0x0

    :goto_e
    invoke-direct {v1, v4, v11, v10, v3}, Lorg/pgsqlite/SQLitePlugin;->executeSqlStatementQuery(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lorg/pgsqlite/CallbackContext;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v7
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_5

    goto :goto_12

    :catchall_3
    move-exception v0

    .line 629
    :goto_f
    :try_start_1b
    invoke-direct {v1, v12}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V

    .line 630
    throw v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d

    :catch_d
    move-exception v0

    :goto_10
    const/4 v10, 0x0

    .line 715
    :goto_11
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    sget-object v7, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v11, "SQLitePlugin.executeSql[Batch](): failed"

    .line 716
    invoke-static {v7, v11, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v10

    :cond_b
    :goto_12
    const-string v0, "result"

    const-string v10, "type"

    const-string v11, "qid"

    if-eqz v7, :cond_c

    .line 720
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v12

    .line 721
    invoke-interface {v12, v11, v9}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "success"

    .line 723
    invoke-interface {v12, v10, v9}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-interface {v12, v0, v7}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 726
    invoke-interface {v6, v12}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_13

    .line 728
    :cond_c
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v7

    .line 729
    invoke-interface {v7, v11, v9}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "error"

    .line 730
    invoke-interface {v7, v10, v9}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v9

    const-string v10, "message"

    .line 733
    invoke-interface {v9, v10, v14}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    invoke-interface {v7, v0, v9}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 736
    invoke-interface {v6, v7}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    :goto_13
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 740
    :cond_d
    invoke-virtual {v3, v6}, Lorg/pgsqlite/CallbackContext;->success(Lcom/facebook/react/bridge/WritableArray;)V

    return-void
.end method

.method private executeSqlStatementQuery(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lorg/pgsqlite/CallbackContext;)Lcom/facebook/react/bridge/WritableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 787
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 794
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    .line 795
    new-array v3, v2, [Ljava/lang/String;

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 797
    invoke-interface {p3, v4}, Lcom/facebook/react/bridge/ReadableArray;->isNull(I)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, ""

    if-eqz v5, :cond_0

    .line 798
    :try_start_1
    aput-object v6, v3, v4

    goto :goto_1

    .line 800
    :cond_0
    invoke-static {p3, v4, v6}, Lorg/pgsqlite/SQLitePluginConverter;->getString(Lcom/facebook/react/bridge/ReadableArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 805
    :cond_2
    invoke-virtual {p1, p2, v2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_5

    .line 812
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 813
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    .line 815
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result p2

    .line 819
    :cond_3
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p3

    move v2, v0

    :goto_2
    if-ge v2, p2, :cond_4

    .line 821
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    .line 822
    invoke-direct {p0, p3, v3, v1, v2}, Lorg/pgsqlite/SQLitePlugin;->bindRow(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Landroid/database/Cursor;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 825
    :cond_4
    invoke-interface {p1, p3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 826
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-nez p3, :cond_3

    const-string p2, "rows"

    .line 828
    invoke-interface {p4, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 831
    :cond_5
    invoke-direct {p0, v1}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V

    return-object p4

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_3
    sget-object p2, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string p3, "SQLitePlugin.executeSql[Batch]() failed"

    .line 807
    invoke-static {p2, p3, p1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 808
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 831
    :goto_3
    invoke-direct {p0, v1}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V

    .line 832
    throw p1
.end method

.method private getDatabase(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .locals 1

    sget-object v0, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 569
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/pgsqlite/SQLitePlugin$DBRunner;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 570
    :cond_0
    iget-object p1, p1, Lorg/pgsqlite/SQLitePlugin$DBRunner;->mydb:Lio/requery/android/database/sqlite/SQLiteDatabase;

    :goto_0
    return-object p1
.end method

.method private getQueryType(Ljava/lang/String;)Lorg/pgsqlite/SQLitePlugin$QueryType;
    .locals 1

    sget-object v0, Lorg/pgsqlite/SQLitePlugin;->FIRST_WORD:Ljava/util/regex/Pattern;

    .line 744
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 745
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 747
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/pgsqlite/SQLitePlugin$QueryType;->valueOf(Ljava/lang/String;)Lorg/pgsqlite/SQLitePlugin$QueryType;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 752
    :catch_0
    :cond_0
    sget-object p1, Lorg/pgsqlite/SQLitePlugin$QueryType;->other:Lorg/pgsqlite/SQLitePlugin$QueryType;

    return-object p1
.end method

.method private openDatabase(Ljava/lang/String;Ljava/lang/String;ILorg/pgsqlite/CallbackContext;)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const-string v4, "Error importing pre-populated DB asset"

    const-string v5, "Unable to import pre-populated db asset"

    const-string v6, "Pre-populated DB asset FOUND in Files subdirectory: "

    const-string v7, "Error opening pre-populated DB asset in app bundle www subdirectory: "

    const-string v8, "Pre-populated DB asset FOUND  in app bundle www subdirectory: "

    const-string v9, "Pre-populated DB asset FOUND in app bundle subdirectory: "

    const-string v10, "www/"

    const-string v11, "DB file is ready, proceeding to OPEN SQLite DB: "

    .line 342
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lorg/pgsqlite/SQLitePlugin;->getDatabase(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v13, :cond_1

    .line 343
    :try_start_1
    invoke-virtual {v13}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v13

    if-nez v13, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Database already open"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    const/4 v12, 0x0

    goto/16 :goto_a

    :cond_1
    :goto_0
    const/4 v13, 0x0

    if-eqz v2, :cond_2

    .line 350
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_2

    const/4 v15, 0x1

    goto :goto_1

    :cond_2
    move v15, v13

    :goto_1
    if-eqz v15, :cond_7

    const-string v12, "1"

    .line 352
    invoke-virtual {v2, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v14, "pre-populated DB asset NOT FOUND in app bundle www subdirectory: "

    if-nez v12, :cond_3

    .line 353
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 355
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lorg/pgsqlite/SQLitePlugin;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v7, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    .line 356
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catch_0
    const/4 v6, 0x0

    :catch_1
    :try_start_5
    sget-object v7, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    .line 359
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .line 361
    :cond_3
    :try_start_6
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0x7e

    if-ne v8, v10, :cond_5

    const-string v6, "~/"

    .line 362
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 364
    :goto_2
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lorg/pgsqlite/SQLitePlugin;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    sget-object v7, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    .line 365
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_3
    move-object v8, v6

    const/4 v9, 0x0

    goto :goto_5

    :catch_2
    const/4 v6, 0x0

    :catch_3
    :try_start_9
    sget-object v7, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    .line 368
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_4
    move-object v8, v6

    const/4 v9, 0x0

    const/4 v13, 0x1

    :goto_5
    move/from16 v6, p3

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v12, v6

    goto/16 :goto_a

    .line 371
    :cond_5
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lorg/pgsqlite/SQLitePlugin;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "/"

    .line 372
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 374
    :cond_6
    :try_start_b
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 375
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    sget-object v10, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    .line 376
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move/from16 v6, p3

    const/4 v12, 0x1

    if-ne v6, v12, :cond_8

    :try_start_d
    const-string v14, "Detected read-only mode request for external asset."

    .line 379
    invoke-static {v10, v14}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_7

    :catch_4
    move/from16 v6, p3

    const/4 v12, 0x1

    goto :goto_6

    :catch_5
    move/from16 v6, p3

    const/4 v12, 0x1

    const/4 v8, 0x0

    :goto_6
    const/4 v9, 0x0

    :catch_6
    :try_start_e
    sget-object v10, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    .line 383
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    goto :goto_7

    :cond_7
    move/from16 v6, p3

    const/4 v8, 0x0

    :cond_8
    const/4 v9, 0x0

    :goto_7
    if-nez v9, :cond_c

    .line 390
    invoke-virtual/range {p0 .. p0}, Lorg/pgsqlite/SQLitePlugin;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 392
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_a

    if-eqz v15, :cond_a

    if-nez v13, :cond_9

    if-eqz v8, :cond_9

    sget-object v2, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v5, "Copying pre-populated db asset to destination"

    .line 397
    invoke-static {v2, v5}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 399
    :try_start_f
    invoke-direct {v1, v0, v9, v8}, Lorg/pgsqlite/SQLitePlugin;->createFromAssets(Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v2, v0

    :try_start_10
    sget-object v0, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    .line 401
    invoke-static {v0, v4, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    sget-object v0, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    .line 394
    invoke-static {v0, v5}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_a
    :goto_8
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    .line 408
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_b
    const/4 v0, 0x6

    goto :goto_9

    :cond_c
    move v0, v6

    :goto_9
    sget-object v2, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    .line 412
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;I)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v3, :cond_d

    const-string v2, "Database opened"

    .line 417
    invoke-virtual {v3, v2}, Lorg/pgsqlite/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 421
    :cond_d
    invoke-direct {v1, v8}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_2
    move-exception v0

    move-object v12, v8

    goto :goto_a

    :catchall_3
    move-exception v0

    const/4 v4, 0x0

    move-object v12, v4

    :goto_a
    invoke-direct {v1, v12}, Lorg/pgsqlite/SQLitePlugin;->closeQuietly(Ljava/io/Closeable;)V

    .line 422
    throw v0
.end method

.method private startDatabase(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lorg/pgsqlite/CallbackContext;)V
    .locals 1

    sget-object v0, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 313
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/pgsqlite/SQLitePlugin$DBRunner;

    if-eqz v0, :cond_0

    const-string p1, "database started"

    .line 320
    invoke-virtual {p3, p1}, Lorg/pgsqlite/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :cond_0
    new-instance v0, Lorg/pgsqlite/SQLitePlugin$DBRunner;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/pgsqlite/SQLitePlugin$DBRunner;-><init>(Lorg/pgsqlite/SQLitePlugin;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lorg/pgsqlite/CallbackContext;)V

    sget-object p2, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 323
    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-virtual {p0}, Lorg/pgsqlite/SQLitePlugin;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public attach(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "attach"

    .line 113
    :try_start_0
    new-instance v1, Lorg/pgsqlite/CallbackContext;

    invoke-direct {v1, p2, p3}, Lorg/pgsqlite/CallbackContext;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p0, v0, p1, v1}, Lorg/pgsqlite/SQLitePlugin;->execute(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lorg/pgsqlite/CallbackContext;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected error"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public backgroundExecuteSqlBatch(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "backgroundExecuteSqlBatch"

    .line 133
    :try_start_0
    new-instance v1, Lorg/pgsqlite/CallbackContext;

    invoke-direct {v1, p2, p3}, Lorg/pgsqlite/CallbackContext;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p0, v0, p1, v1}, Lorg/pgsqlite/SQLitePlugin;->execute(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lorg/pgsqlite/CallbackContext;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected error"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public close(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "close"

    .line 103
    :try_start_0
    new-instance v1, Lorg/pgsqlite/CallbackContext;

    invoke-direct {v1, p2, p3}, Lorg/pgsqlite/CallbackContext;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p0, v0, p1, v1}, Lorg/pgsqlite/SQLitePlugin;->execute(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lorg/pgsqlite/CallbackContext;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected error"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public closeAllOpenDatabases()V
    .locals 5

    :goto_0
    sget-object v0, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 284
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 285
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 287
    invoke-direct {p0, v0}, Lorg/pgsqlite/SQLitePlugin;->closeDatabaseNow(Ljava/lang/String;)V

    sget-object v1, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 289
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/pgsqlite/SQLitePlugin$DBRunner;

    .line 292
    :try_start_0
    iget-object v1, v1, Lorg/pgsqlite/SQLitePlugin$DBRunner;->q:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lorg/pgsqlite/SQLitePlugin$DBQuery;

    invoke-direct {v2, p0}, Lorg/pgsqlite/SQLitePlugin$DBQuery;-><init>(Lorg/pgsqlite/SQLitePlugin;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "couldn\'t stop db thread for db: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    sget-object v1, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 296
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public delete(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "delete"

    .line 123
    :try_start_0
    new-instance v1, Lorg/pgsqlite/CallbackContext;

    invoke-direct {v1, p2, p3}, Lorg/pgsqlite/CallbackContext;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p0, v0, p1, v1}, Lorg/pgsqlite/SQLitePlugin;->execute(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lorg/pgsqlite/CallbackContext;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected error"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public echoStringValue(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "echoStringValue"

    .line 153
    :try_start_0
    new-instance v1, Lorg/pgsqlite/CallbackContext;

    invoke-direct {v1, p2, p3}, Lorg/pgsqlite/CallbackContext;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p0, v0, p1, v1}, Lorg/pgsqlite/SQLitePlugin;->execute(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lorg/pgsqlite/CallbackContext;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Unexpected error"

    .line 155
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected execute(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lorg/pgsqlite/CallbackContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Unexpected error executing processing SQLite query"

    const-string v1, "unexpected error"

    .line 187
    :try_start_0
    invoke-static {p1}, Lorg/pgsqlite/SQLitePlugin$Action;->valueOf(Ljava/lang/String;)Lorg/pgsqlite/SQLitePlugin$Action;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lorg/pgsqlite/SQLitePlugin;->executeAndPossiblyThrow(Lorg/pgsqlite/SQLitePlugin$Action;Lcom/facebook/react/bridge/ReadableMap;Lorg/pgsqlite/CallbackContext;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p1

    sget-object p2, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    .line 197
    invoke-static {p2, v1, p1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    invoke-virtual {p3, v0}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V

    .line 199
    throw p1

    :catch_1
    move-exception p1

    sget-object p2, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    .line 190
    invoke-static {p2, v1, p1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    invoke-virtual {p3, v0}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V

    .line 192
    throw p1
.end method

.method public executeSqlBatch(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "executeSqlBatch"

    .line 143
    :try_start_0
    new-instance v1, Lorg/pgsqlite/CallbackContext;

    invoke-direct {v1, p2, p3}, Lorg/pgsqlite/CallbackContext;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p0, v0, p1, v1}, Lorg/pgsqlite/SQLitePlugin;->execute(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lorg/pgsqlite/CallbackContext;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Unexpected error"

    .line 145
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/pgsqlite/SQLitePlugin;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "SQLite"

    return-object v0
.end method

.method protected getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lorg/pgsqlite/SQLitePlugin;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public open(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "open"

    .line 93
    :try_start_0
    new-instance v1, Lorg/pgsqlite/CallbackContext;

    invoke-direct {v1, p2, p3}, Lorg/pgsqlite/CallbackContext;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p0, v0, p1, v1}, Lorg/pgsqlite/SQLitePlugin;->execute(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lorg/pgsqlite/CallbackContext;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected error:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
