.class public final Lio/requery/android/database/sqlite/SQLiteDatabase;
.super Lio/requery/android/database/sqlite/SQLiteClosable;
.source "SQLiteDatabase.java"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteDatabase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;,
        Lio/requery/android/database/sqlite/SQLiteDatabase$CustomFunction;,
        Lio/requery/android/database/sqlite/SQLiteDatabase$Function;,
        Lio/requery/android/database/sqlite/SQLiteDatabase$OpenFlags;,
        Lio/requery/android/database/sqlite/SQLiteDatabase$ConflictAlgorithm;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CONFLICT_ABORT:I = 0x2

.field public static final CONFLICT_FAIL:I = 0x3

.field public static final CONFLICT_IGNORE:I = 0x4

.field public static final CONFLICT_NONE:I = 0x0

.field public static final CONFLICT_REPLACE:I = 0x5

.field public static final CONFLICT_ROLLBACK:I = 0x1

.field private static final CONFLICT_VALUES:[Ljava/lang/String;

.field public static final CREATE_IF_NECESSARY:I = 0x6

.field public static final ENABLE_WRITE_AHEAD_LOGGING:I = 0x20000000

.field private static final EVENT_DB_CORRUPT:I = 0x124fc

.field public static final LIBRARY_NAME:Ljava/lang/String; = "sqlite3x"

.field public static final MAX_SQL_CACHE_SIZE:I = 0x64

.field public static final OPEN_CREATE:I = 0x4

.field public static final OPEN_FULLMUTEX:I = 0x10000

.field public static final OPEN_NOMUTEX:I = 0x8000

.field public static final OPEN_PRIVATECACHE:I = 0x40000

.field public static final OPEN_READONLY:I = 0x1

.field public static final OPEN_READWRITE:I = 0x2

.field public static final OPEN_SHAREDCACHE:I = 0x20000

.field public static final OPEN_URI:I = 0x40

.field private static final TAG:Ljava/lang/String; = "SQLiteDatabase"

.field private static final sActiveDatabases:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lio/requery/android/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCloseGuardLocked:Lio/requery/android/database/sqlite/CloseGuard;

.field private final mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

.field private mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

.field private final mCursorFactory:Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;

.field private final mErrorHandler:Lio/requery/android/database/DatabaseErrorHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mThreadSession:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/requery/android/database/sqlite/SQLiteSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmCursorFactory(Lio/requery/android/database/sqlite/SQLiteDatabase;)Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;
    .locals 0

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mCursorFactory:Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 7

    const-string v0, "sqlite3x"

    .line 91
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 101
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/requery/android/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    const-string v1, ""

    const-string v2, " OR ROLLBACK "

    const-string v3, " OR ABORT "

    const-string v4, " OR FAIL "

    const-string v5, " OR IGNORE "

    const-string v6, " OR REPLACE "

    .line 216
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/requery/android/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Lio/requery/android/database/DatabaseErrorHandler;)V
    .locals 1

    .line 276
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;-><init>()V

    .line 106
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteDatabase$1;

    invoke-direct {v0, p0}, Lio/requery/android/database/sqlite/SQLiteDatabase$1;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mThreadSession:Ljava/lang/ThreadLocal;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 139
    invoke-static {}, Lio/requery/android/database/sqlite/CloseGuard;->get()Lio/requery/android/database/sqlite/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Lio/requery/android/database/sqlite/CloseGuard;

    iput-object p2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mCursorFactory:Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    new-instance p3, Lio/requery/android/database/DefaultDatabaseErrorHandler;

    invoke-direct {p3}, Lio/requery/android/database/DefaultDatabaseErrorHandler;-><init>()V

    :goto_0
    iput-object p3, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mErrorHandler:Lio/requery/android/database/DatabaseErrorHandler;

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    return-void
.end method

.method private beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;I)V
    .locals 3

    .line 534
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 536
    :try_start_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    const/4 v1, 0x0

    .line 537
    invoke-virtual {p0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v1

    const/4 v2, 0x0

    .line 536
    invoke-virtual {v0, p2, p1, v1, v2}, Lio/requery/android/database/sqlite/SQLiteSession;->beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroidx/core/os/CancellationSignal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 540
    throw p1
.end method

.method public static blobFileDescriptorForQuery(Lio/requery/android/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 2600
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 2601
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->simpleQueryForBlobFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private collectDbStats(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/requery/android/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 2284
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    if-eqz v1, :cond_0

    .line 2286
    invoke-virtual {v1, p1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->collectDbStats(Ljava/util/ArrayList;)V

    .line 2288
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static create(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .locals 2

    const-string v0, ":memory:"

    const/4 v1, 0x6

    .line 872
    invoke-static {v0, p0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;I)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static deleteDatabase(Ljava/io/File;)Z
    .locals 4

    if-eqz p0, :cond_1

    .line 758
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 759
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    .line 760
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-shm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    .line 761
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-wal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    .line 763
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 765
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "-mj"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 766
    new-instance v2, Lio/requery/android/database/sqlite/SQLiteDatabase$2;

    invoke-direct {v2, p0}, Lio/requery/android/database/sqlite/SQLiteDatabase$2;-><init>(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 773
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0

    .line 754
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private dispose(Z)V
    .locals 3

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 299
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Lio/requery/android/database/sqlite/CloseGuard;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 302
    invoke-virtual {v1}, Lio/requery/android/database/sqlite/CloseGuard;->warnIfOpen()V

    :cond_0
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Lio/requery/android/database/sqlite/CloseGuard;

    .line 304
    invoke-virtual {v1}, Lio/requery/android/database/sqlite/CloseGuard;->close()V

    :cond_1
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    const/4 v2, 0x0

    iput-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    .line 309
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_2

    sget-object p1, Lio/requery/android/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    .line 312
    monitor-enter p1

    .line 313
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 317
    invoke-virtual {v1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 314
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 309
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private dump(Landroid/util/Printer;Z)V
    .locals 2

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 2310
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 2312
    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    .line 2313
    invoke-virtual {v1, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->dump(Landroid/util/Printer;Z)V

    .line 2315
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static dumpAll(Landroid/util/Printer;Z)V
    .locals 2

    .line 2304
    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getActiveDatabases()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/requery/android/database/sqlite/SQLiteDatabase;

    .line 2305
    invoke-direct {v1, p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->dump(Landroid/util/Printer;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static ensureFile(Ljava/lang/String;)V
    .locals 4

    const-string v0, "SQLiteDatabase"

    const-string v1, "Couldn\'t mkdirs "

    const-string v2, "Couldn\'t create "

    .line 830
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 833
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_0

    .line 836
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-nez p0, :cond_1

    .line 839
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 842
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t ensure file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private executeSql(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1919
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1921
    :try_start_0
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteStatement;

    invoke-direct {v0, p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteStatement;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1923
    :try_start_1
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1925
    :try_start_2
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1928
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    .line 1925
    :try_start_3
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    .line 1926
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 1928
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1929
    throw p1
.end method

.method public static findEditTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1022
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x20

    .line 1024
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x2c

    .line 1025
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    if-lt v0, v1, :cond_0

    if-gez v1, :cond_1

    .line 1028
    :cond_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-lez v1, :cond_3

    if-lt v1, v0, :cond_2

    if-gez v0, :cond_3

    .line 1030
    :cond_2
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0

    .line 1034
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid tables"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getActiveDatabases()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/requery/android/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation

    .line 2292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lio/requery/android/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    .line 2293
    monitor-enter v1

    .line 2294
    :try_start_0
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2295
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getDbStats()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/requery/android/database/sqlite/SQLiteDebug$DbStats;",
            ">;"
        }
    .end annotation

    .line 2276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2277
    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getActiveDatabases()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/requery/android/database/sqlite/SQLiteDatabase;

    .line 2278
    invoke-direct {v2, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->collectDbStats(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static hasCodec()Z
    .locals 1

    .line 2488
    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteConnection;->hasCodec()Z

    move-result v0

    return v0
.end method

.method private static isMainThread()Z
    .locals 2

    .line 399
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isReadOnlyLocked()Z
    .locals 2

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 1960
    iget v0, v0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static longForQuery(Lio/requery/android/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J
    .locals 0

    .line 2551
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 2552
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide p0

    return-wide p0
.end method

.method private open()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 812
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget v0, v0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 814
    iget-object v0, v0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-static {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->ensureFile(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 817
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openInner()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 819
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 820
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openInner()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return-void

    :catch_1
    move-exception v0

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to open database \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLiteDatabase"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 824
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->close()V

    .line 825
    throw v0
.end method

.method public static openDatabase(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Lio/requery/android/database/DatabaseErrorHandler;)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 718
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Lio/requery/android/database/DatabaseErrorHandler;)V

    .line 719
    invoke-direct {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->open()V

    return-object v0
.end method

.method public static openDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;I)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .locals 1

    const/4 v0, 0x0

    .line 667
    invoke-static {p0, p1, p2, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ILio/requery/android/database/DatabaseErrorHandler;)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static openDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ILio/requery/android/database/DatabaseErrorHandler;)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 692
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {v0, p0, p2}, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Ljava/lang/String;I)V

    .line 693
    new-instance p0, Lio/requery/android/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0, p1, p3}, Lio/requery/android/database/sqlite/SQLiteDatabase;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Lio/requery/android/database/DatabaseErrorHandler;)V

    .line 694
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->open()V

    return-object p0
.end method

.method private openInner()V
    .locals 3

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 848
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 850
    invoke-static {v1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->open(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    move-result-object v1

    iput-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Lio/requery/android/database/sqlite/CloseGuard;

    const-string v2, "close"

    .line 851
    invoke-virtual {v1, v2}, Lio/requery/android/database/sqlite/CloseGuard;->open(Ljava/lang/String;)V

    .line 852
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v1, Lio/requery/android/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    .line 854
    monitor-enter v1

    const/4 v0, 0x0

    .line 855
    :try_start_1
    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 852
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_0
.end method

.method public static openOrCreateDatabase(Ljava/io/File;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 727
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 734
    invoke-static {p0, p1, v0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ILio/requery/android/database/DatabaseErrorHandler;)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Lio/requery/android/database/DatabaseErrorHandler;)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .locals 1

    const/4 v0, 0x6

    .line 742
    invoke-static {p0, p1, v0, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ILio/requery/android/database/DatabaseErrorHandler;)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static releaseMemory()I
    .locals 1

    .line 329
    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteGlobal;->releaseMemory()I

    move-result v0

    return v0
.end method

.method public static stringForQuery(Lio/requery/android/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2573
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 2574
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private throwIfNotOpenLocked()V
    .locals 3

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_0

    return-void

    .line 2417
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The database \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private yieldIfContendedHelper(ZJ)Z
    .locals 2

    .line 643
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 645
    :try_start_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p1, v1}, Lio/requery/android/database/sqlite/SQLiteSession;->yieldTransaction(JZLandroidx/core/os/CancellationSignal;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 648
    throw p1
.end method


# virtual methods
.method public addCustomFunction(Ljava/lang/String;ILio/requery/android/database/sqlite/SQLiteDatabase$CustomFunction;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 888
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteCustomFunction;

    invoke-direct {v0, p1, p2, p3}, Lio/requery/android/database/sqlite/SQLiteCustomFunction;-><init>(Ljava/lang/String;ILio/requery/android/database/sqlite/SQLiteDatabase$CustomFunction;)V

    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 890
    monitor-enter p1

    .line 891
    :try_start_0
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 893
    iget-object p2, p2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    iget-object p3, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 895
    invoke-virtual {p2, p3}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 900
    :try_start_2
    monitor-exit p1

    return-void

    :catch_0
    move-exception p2

    iget-object p3, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 897
    iget-object p3, p3, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 898
    throw p2

    :catchall_0
    move-exception p2

    .line 900
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public addFunction(Ljava/lang/String;ILio/requery/android/database/sqlite/SQLiteDatabase$Function;)V
    .locals 1

    const/4 v0, 0x0

    .line 913
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->addFunction(Ljava/lang/String;ILio/requery/android/database/sqlite/SQLiteDatabase$Function;I)V

    return-void
.end method

.method public addFunction(Ljava/lang/String;ILio/requery/android/database/sqlite/SQLiteDatabase$Function;I)V
    .locals 1

    .line 928
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteFunction;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/requery/android/database/sqlite/SQLiteFunction;-><init>(Ljava/lang/String;ILio/requery/android/database/sqlite/SQLiteDatabase$Function;I)V

    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 930
    monitor-enter p1

    .line 931
    :try_start_0
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 933
    iget-object p2, p2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->functions:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    iget-object p3, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 935
    invoke-virtual {p2, p3}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 940
    :try_start_2
    monitor-exit p1

    return-void

    :catch_0
    move-exception p2

    iget-object p3, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 937
    iget-object p3, p3, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->functions:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 938
    throw p2

    :catchall_0
    move-exception p2

    .line 940
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public beginTransaction()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 426
    invoke-direct {p0, v0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;I)V

    return-void
.end method

.method public beginTransactionDeferred()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 458
    invoke-direct {p0, v0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;I)V

    return-void
.end method

.method public beginTransactionNonExclusive()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 451
    invoke-direct {p0, v0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;I)V

    return-void
.end method

.method public beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1

    const/4 v0, 0x2

    .line 500
    invoke-direct {p0, p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;I)V

    return-void
.end method

.method public beginTransactionWithListenerDeferred(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 470
    invoke-direct {p0, p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;I)V

    return-void
.end method

.method public beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 530
    invoke-direct {p0, p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;I)V

    return-void
.end method

.method public blobFileDescriptorForQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 2584
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteStatement;

    move-result-object p1

    .line 2586
    :try_start_0
    invoke-static {p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->blobFileDescriptorForQuery(Lio/requery/android/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2588
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    .line 2589
    throw p2
.end method

.method public bridge synthetic compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteStatement;

    move-result-object p1

    return-object p1
.end method

.method public compileStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteStatement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1054
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1056
    :try_start_0
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteStatement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/requery/android/database/sqlite/SQLiteStatement;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1059
    throw p1
.end method

.method createSession()Lio/requery/android/database/sqlite/SQLiteSession;
    .locals 2

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 373
    monitor-enter v0

    .line 374
    :try_start_0
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    .line 376
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteSession;

    invoke-direct {v0, v1}, Lio/requery/android/database/sqlite/SQLiteSession;-><init>(Lio/requery/android/database/sqlite/SQLiteConnectionPool;)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 376
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 4

    const-string v0, " WHERE "

    const-string v1, "DELETE FROM "

    .line 1691
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1693
    :try_start_0
    new-instance v2, Lio/requery/android/database/sqlite/SQLiteStatement;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1694
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p0, p1, p3}, Lio/requery/android/database/sqlite/SQLiteStatement;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1696
    :try_start_1
    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1698
    :try_start_2
    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1701
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    .line 1698
    :try_start_3
    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    .line 1699
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 1701
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1702
    throw p1
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    const-string v0, " WHERE "

    const-string v1, "DELETE FROM "

    .line 1662
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1664
    :try_start_0
    new-instance v2, Lio/requery/android/database/sqlite/SQLiteStatement;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1665
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p0, p1, p3}, Lio/requery/android/database/sqlite/SQLiteStatement;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1667
    :try_start_1
    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1669
    :try_start_2
    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1672
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    .line 1669
    :try_start_3
    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    .line 1670
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 1672
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1673
    throw p1
.end method

.method public disableWriteAheadLogging()V
    .locals 5

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 2237
    monitor-enter v0

    .line 2238
    :try_start_0
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 2240
    iget v1, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 2241
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 2244
    iget v3, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const v4, -0x20000001

    and-int/2addr v3, v4

    iput v3, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 2246
    invoke-virtual {v1, v3}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2251
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    iget-object v3, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 2248
    iget v4, v3, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    or-int/2addr v2, v4

    iput v2, v3, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2249
    throw v1

    :catchall_0
    move-exception v1

    .line 2251
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method enableLocalizedCollators()V
    .locals 1

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    .line 2492
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->enableLocalizedCollators()V

    return-void
.end method

.method public enableWriteAheadLogging()Z
    .locals 5

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 2197
    monitor-enter v0

    .line 2198
    :try_start_0
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 2200
    iget v1, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 2201
    monitor-exit v0

    return v3

    .line 2204
    :cond_0
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 2207
    monitor-exit v0

    return v4

    :cond_1
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 2210
    invoke-virtual {v1}, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "SQLiteDatabase"

    const-string v2, "can\'t enable WAL for memory databases."

    .line 2211
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    monitor-exit v0

    return v4

    :cond_2
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 2215
    iget v4, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    or-int/2addr v2, v4

    iput v2, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 2217
    invoke-virtual {v1, v2}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2222
    :try_start_2
    monitor-exit v0

    return v3

    :catch_0
    move-exception v1

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 2219
    iget v3, v2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const v4, -0x20000001

    and-int/2addr v3, v4

    iput v3, v2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2220
    throw v1

    :catchall_0
    move-exception v1

    .line 2222
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public endTransaction()V
    .locals 2

    .line 549
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 551
    :try_start_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/requery/android/database/sqlite/SQLiteSession;->endTransaction(Landroidx/core/os/CancellationSignal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 554
    throw v0
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1864
    invoke-direct {p0, p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1915
    invoke-direct {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 1913
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Empty bindArgs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    .line 286
    :try_start_0
    invoke-direct {p0, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 289
    throw v0
.end method

.method public getAttachedDbs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 2328
    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2330
    monitor-exit v1

    return-object v3

    .line 2333
    :cond_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2334
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v1, "pragma database_list;"

    .line 2340
    invoke-virtual {p0, v1, v3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v3

    .line 2341
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2347
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 2351
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2356
    :cond_2
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_3

    .line 2351
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2353
    :cond_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 2356
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2357
    throw v0

    :catchall_2
    move-exception v0

    .line 2334
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method getLabel()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 337
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 338
    iget-object v1, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 339
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMaximumSize()J
    .locals 4

    const-string v0, "PRAGMA max_page_count;"

    const/4 v1, 0x0

    .line 970
    invoke-virtual {p0, v0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->longForQuery(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 971
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getPageSize()J
    .locals 2

    const-string v0, "PRAGMA page_size;"

    const/4 v1, 0x0

    .line 1000
    invoke-virtual {p0, v0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->longForQuery(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 2005
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 2006
    iget-object v1, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2007
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getThreadDefaultConnectionFlags(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 390
    :goto_0
    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/lit8 p1, p1, 0x4

    :cond_1
    return p1
.end method

.method getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;
    .locals 1

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mThreadSession:Ljava/lang/ThreadLocal;

    .line 368
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/requery/android/database/sqlite/SQLiteSession;

    return-object v0
.end method

.method public getVersion()I
    .locals 2

    const-string v0, "PRAGMA user_version;"

    const/4 v1, 0x0

    .line 950
    invoke-virtual {p0, v0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->longForQuery(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public inTransaction()Z
    .locals 1

    .line 583
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 585
    :try_start_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteSession;->hasTransaction()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 588
    throw v0
.end method

.method public insert(Ljava/lang/String;ILandroid/content/ContentValues;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1581
    invoke-virtual {p0, p1, v0, p3, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    return-wide p1
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 1

    const/4 v0, 0x0

    .line 1489
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 1491
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error inserting "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SQLiteDatabase"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1515
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    return-wide p1
.end method

.method public insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .locals 5

    .line 1607
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1609
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT"

    .line 1610
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/requery/android/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    .line 1611
    aget-object p4, v1, p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " INTO "

    .line 1612
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1613
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x28

    .line 1614
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 1617
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result p4

    if-lez p4, :cond_0

    .line 1618
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result p4

    goto :goto_0

    :cond_0
    move p4, p1

    :goto_0
    const/16 v1, 0x29

    if-lez p4, :cond_4

    .line 1620
    new-array p2, p4, [Ljava/lang/Object;

    .line 1622
    invoke-virtual {p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v2, p1

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-lez v2, :cond_1

    const-string v4, ","

    goto :goto_2

    :cond_1
    const-string v4, ""

    .line 1623
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    .line 1625
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, v2

    move v2, v4

    goto :goto_1

    .line 1627
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, " VALUES ("

    .line 1628
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    if-ge p1, p4, :cond_5

    if-lez p1, :cond_3

    const-string p3, ",?"

    goto :goto_4

    :cond_3
    const-string p3, "?"

    .line 1630
    :goto_4
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 1633
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") VALUES (NULL"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    .line 1635
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1637
    new-instance p1, Lio/requery/android/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p0, p3, p2}, Lio/requery/android/database/sqlite/SQLiteStatement;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1639
    :try_start_1
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1641
    :try_start_2
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1644
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return-wide p2

    :catchall_0
    move-exception p2

    .line 1641
    :try_start_3
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    .line 1642
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 1644
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1645
    throw p1
.end method

.method public isDatabaseIntegrityOk()Z
    .locals 6

    const-string v0, "databaselist for: "

    .line 2375
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2379
    :try_start_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2381
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " couldn\'t be retrieved. probably because the database is closed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 2386
    :catch_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2387
    new-instance v0, Landroid/util/Pair;

    const-string v2, "main"

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2390
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    .line 2393
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PRAGMA "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".integrity_check(1);"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 2394
    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ok"

    .line 2395
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v0, "SQLiteDatabase"

    .line 2397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRAGMA integrity_check on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " returned: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    .line 2401
    :try_start_3
    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2405
    :cond_2
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    const/4 v0, 0x0

    return v0

    :cond_3
    if-eqz v2, :cond_1

    .line 2401
    :try_start_4
    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    .line 2402
    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2405
    :cond_5
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    const/4 v0, 0x1

    return v0

    :goto_2
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2406
    throw v0
.end method

.method public isDbLockedByCurrentThread()Z
    .locals 1

    .line 605
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 607
    :try_start_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteSession;->hasConnection()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 610
    throw v0
.end method

.method public isInMemoryDatabase()Z
    .locals 2

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 1970
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 1971
    invoke-virtual {v1}, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1972
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isOpen()Z
    .locals 2

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 1982
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1983
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1984
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isReadOnly()Z
    .locals 2

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 1954
    monitor-enter v0

    .line 1955
    :try_start_0
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1956
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isWriteAheadLoggingEnabled()Z
    .locals 3

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 2264
    monitor-enter v0

    .line 2265
    :try_start_0
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 2267
    iget v1, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2268
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public longForQuery(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 2

    .line 2538
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteStatement;

    move-result-object p1

    .line 2540
    :try_start_0
    invoke-static {p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->longForQuery(Lio/requery/android/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2542
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    return-wide v0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    .line 2543
    throw p2
.end method

.method public needUpgrade(I)Z
    .locals 1

    .line 1995
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onAllReferencesReleased()V
    .locals 1

    const/4 v0, 0x0

    .line 294
    invoke-direct {p0, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->dispose(Z)V

    return-void
.end method

.method onCorruption()V
    .locals 2

    const v0, 0x124fc

    .line 346
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mErrorHandler:Lio/requery/android/database/DatabaseErrorHandler;

    .line 347
    invoke-interface {v0, p0}, Lio/requery/android/database/DatabaseErrorHandler;->onCorruption(Lio/requery/android/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .locals 2

    const/4 v0, 0x0

    .line 1341
    move-object v1, v0

    check-cast v1, Landroidx/core/os/CancellationSignal;

    invoke-virtual {p0, p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2

    if-eqz p2, :cond_0

    .line 1358
    new-instance v0, Landroidx/core/os/CancellationSignal;

    invoke-direct {v0}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 1359
    new-instance v1, Lio/requery/android/database/sqlite/SQLiteDatabase$3;

    invoke-direct {v1, p0, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase$3;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {p2, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1365
    invoke-virtual {p0, p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p2, 0x0

    .line 1367
    move-object v0, p2

    check-cast v0, Landroidx/core/os/CancellationSignal;

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 6

    .line 1382
    new-instance v1, Lio/requery/android/database/sqlite/SQLiteDatabase$4;

    invoke-direct {v1, p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase$4;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;)V

    .line 1393
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v2

    const/4 p1, 0x0

    new-array v3, p1, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    .line 1382
    invoke-virtual/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1315
    invoke-virtual/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 1329
    invoke-virtual/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 1264
    invoke-virtual/range {v0 .. v9}, Lio/requery/android/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 1302
    invoke-virtual/range {v0 .. v9}, Lio/requery/android/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12

    const/4 v1, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 1096
    invoke-virtual/range {v0 .. v11}, Lio/requery/android/database/sqlite/SQLiteDatabase;->queryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 12

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 1137
    invoke-virtual/range {v0 .. v11}, Lio/requery/android/database/sqlite/SQLiteDatabase;->queryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryNumEntries(Ljava/lang/String;)J
    .locals 2

    const/4 v0, 0x0

    .line 2501
    invoke-virtual {p0, p1, v0, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->queryNumEntries(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public queryNumEntries(Ljava/lang/String;Ljava/lang/String;)J
    .locals 1

    const/4 v0, 0x0

    .line 2513
    invoke-virtual {p0, p1, p2, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->queryNumEntries(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public queryNumEntries(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 2

    .line 2529
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " where "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 2530
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select count(*) from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->longForQuery(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public queryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 1177
    invoke-virtual/range {v0 .. v11}, Lio/requery/android/database/sqlite/SQLiteDatabase;->queryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 9

    .line 1220
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    .line 1222
    :try_start_0
    invoke-static/range {v1 .. v8}, Lio/requery/android/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1226
    invoke-static {p3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    move-object v5, p6

    move-object/from16 v7, p11

    .line 1225
    invoke-virtual/range {v2 .. v7}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1228
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1229
    throw v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 1406
    invoke-virtual/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 1423
    invoke-virtual/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1440
    invoke-virtual/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1

    .line 1460
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1462
    :try_start_0
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteDirectCursorDriver;

    invoke-direct {v0, p0, p2, p4, p5}, Lio/requery/android/database/sqlite/SQLiteDirectCursorDriver;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mCursorFactory:Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 1464
    :goto_0
    invoke-interface {v0, p1, p3}, Lio/requery/android/database/sqlite/SQLiteCursorDriver;->query(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1467
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1468
    throw p1
.end method

.method public reopenReadWrite()V
    .locals 4

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 791
    monitor-enter v0

    .line 792
    :try_start_0
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 794
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 795
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 799
    iget v1, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 800
    iget v3, v2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v3, v3, -0x2

    iput v3, v2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 802
    invoke-virtual {v2, v3}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 807
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v2

    iget-object v3, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 804
    iput v1, v3, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 805
    throw v2

    :catchall_0
    move-exception v1

    .line 807
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 1

    const/4 v0, 0x5

    .line 1535
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 1538
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error inserting "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SQLiteDatabase"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1561
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    return-wide p1
.end method

.method public setForeignKeyConstraintsEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 2104
    monitor-enter v0

    .line 2105
    :try_start_0
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 2107
    iget-boolean v1, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    if-ne v1, p1, :cond_0

    .line 2108
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 2111
    iput-boolean p1, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 2113
    invoke-virtual {v1, v2}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2118
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    xor-int/lit8 p1, p1, 0x1

    .line 2115
    iput-boolean p1, v2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    .line 2116
    throw v1

    :catchall_0
    move-exception p1

    .line 2118
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 2025
    monitor-enter v0

    .line 2026
    :try_start_0
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 2028
    iget-object v1, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 2029
    iput-object p1, v2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 2031
    invoke-virtual {p1, v2}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2036
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 2033
    iput-object v1, v2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    .line 2034
    throw p1

    :catchall_0
    move-exception p1

    .line 2036
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 2022
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "locale must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxSqlCacheSize(I)V
    .locals 3

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 2059
    monitor-enter v0

    .line 2060
    :try_start_0
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 2062
    iget v1, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 2063
    iput p1, v2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 2065
    invoke-virtual {p1, v2}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2070
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    .line 2067
    iput v1, v2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    .line 2068
    throw p1

    :catchall_0
    move-exception p1

    .line 2070
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 2055
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "expected value between 0 and 100"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaximumSize(J)J
    .locals 6

    .line 983
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v0

    .line 984
    div-long v2, p1, v0

    .line 986
    rem-long/2addr p1, v0

    const-wide/16 v4, 0x0

    cmp-long p1, p1, v4

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x1

    add-long/2addr v2, p1

    .line 989
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "PRAGMA max_page_count = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->longForQuery(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p1

    mul-long/2addr p1, v0

    return-wide p1
.end method

.method public setPageSize(J)V
    .locals 2

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PRAGMA page_size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .line 568
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 570
    :try_start_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteSession;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 573
    throw v0
.end method

.method public setVersion(I)V
    .locals 2

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PRAGMA user_version = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public stringForQuery(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2560
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteStatement;

    move-result-object p1

    .line 2562
    :try_start_0
    invoke-static {p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->stringForQuery(Lio/requery/android/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2564
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    .line 2565
    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SQLiteDatabase: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 5

    if-eqz p3, :cond_5

    .line 1739
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1743
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1745
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UPDATE "

    .line 1746
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/requery/android/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    .line 1747
    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1748
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " SET "

    .line 1749
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1752
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result p1

    if-nez p5, :cond_0

    move p2, p1

    goto :goto_0

    .line 1753
    :cond_0
    array-length p2, p5

    add-int/2addr p2, p1

    .line 1754
    :goto_0
    new-array v1, p2, [Ljava/lang/Object;

    .line 1756
    invoke-virtual {p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-lez v2, :cond_1

    const-string v4, ","

    goto :goto_2

    :cond_1
    const-string v4, ""

    .line 1757
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1758
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    .line 1759
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "=?"

    .line 1760
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_1

    :cond_2
    if-eqz p5, :cond_3

    move p3, p1

    :goto_3
    if-ge p3, p2, :cond_3

    sub-int v2, p3, p1

    .line 1764
    aget-object v2, p5, v2

    aput-object v2, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 1767
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, " WHERE "

    .line 1768
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1772
    :cond_4
    new-instance p1, Lio/requery/android/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2, v1}, Lio/requery/android/database/sqlite/SQLiteStatement;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1774
    :try_start_1
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1776
    :try_start_2
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1779
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return p2

    :catchall_0
    move-exception p2

    .line 1776
    :try_start_3
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    .line 1777
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 1779
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1780
    throw p1

    .line 1740
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Empty values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1719
    invoke-virtual/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 5

    if-eqz p2, :cond_5

    .line 1799
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1803
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1805
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UPDATE "

    .line 1806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/requery/android/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    .line 1807
    aget-object p5, v1, p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1808
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " SET "

    .line 1809
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result p1

    if-nez p4, :cond_0

    move p5, p1

    goto :goto_0

    .line 1813
    :cond_0
    array-length p5, p4

    add-int/2addr p5, p1

    .line 1814
    :goto_0
    new-array v1, p5, [Ljava/lang/Object;

    .line 1816
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-lez v2, :cond_1

    const-string v4, ","

    goto :goto_2

    :cond_1
    const-string v4, ""

    .line 1817
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1818
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    .line 1819
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "=?"

    .line 1820
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    move p2, p1

    :goto_3
    if-ge p2, p5, :cond_3

    sub-int v2, p2, p1

    .line 1824
    aget-object v2, p4, v2

    aput-object v2, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 1827
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, " WHERE "

    .line 1828
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1829
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1832
    :cond_4
    new-instance p1, Lio/requery/android/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2, v1}, Lio/requery/android/database/sqlite/SQLiteStatement;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1834
    :try_start_1
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1836
    :try_start_2
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1839
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return p2

    :catchall_0
    move-exception p2

    .line 1836
    :try_start_3
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    .line 1837
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 1839
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1840
    throw p1

    .line 1800
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Empty values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validateSql(Ljava/lang/String;Landroidx/core/os/CancellationSignal;)V
    .locals 3

    .line 1943
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    const/4 v1, 0x1

    .line 1944
    invoke-virtual {p0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v1

    const/4 v2, 0x0

    .line 1943
    invoke-virtual {v0, p1, v1, p2, v2}, Lio/requery/android/database/sqlite/SQLiteSession;->prepare(Ljava/lang/String;ILandroidx/core/os/CancellationSignal;Lio/requery/android/database/sqlite/SQLiteStatementInfo;)V

    return-void
.end method

.method public yieldIfContendedSafely()Z
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    .line 623
    invoke-direct {p0, v0, v1, v2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely(J)Z
    .locals 1

    const/4 v0, 0x1

    .line 639
    invoke-direct {p0, v0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result p1

    return p1
.end method
