.class public abstract Lio/requery/android/database/sqlite/SQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SQLiteOpenHelper.java"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper;


# static fields
.field private static final DEBUG_STRICT_READONLY:Z = false

.field private static final TAG:Ljava/lang/String; = "SQLiteOpenHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

.field private mEnableWriteAheadLogging:Z

.field private final mErrorHandler:Lio/requery/android/database/DatabaseErrorHandler;

.field private final mFactory:Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;

.field private mIsInitializing:Z

.field private final mName:Ljava/lang/String;

.field private final mNewVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 83
    invoke-direct/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ILio/requery/android/database/DatabaseErrorHandler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ILio/requery/android/database/DatabaseErrorHandler;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p4, v0, :cond_0

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    iput-object p3, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mFactory:Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;

    iput p4, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    iput-object p5, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mErrorHandler:Lio/requery/android/database/DatabaseErrorHandler;

    return-void

    .line 107
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Version must be >= 1, was "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDatabaseLocked(Z)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .locals 9

    const-string v0, "Opened "

    const-string v1, "Can\'t upgrade read-only database from version "

    const-string v2, "Couldn\'t open "

    iget-object v3, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 205
    invoke-virtual {v3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    iput-object v4, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    .line 208
    invoke-virtual {v3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    return-object p1

    :cond_2
    :goto_0
    iget-boolean v3, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-nez v3, :cond_e

    iget-object v3, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    iput-boolean v5, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v3, :cond_3

    .line 223
    invoke-virtual {v3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 224
    invoke-virtual {v3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->reopenReadWrite()V

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 227
    invoke-static {v4}, Lio/requery/android/database/sqlite/SQLiteDatabase;->create(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_2

    :cond_4
    :try_start_1
    iget-object v4, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    .line 230
    invoke-virtual {v4, v7}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-boolean v7, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mEnableWriteAheadLogging:Z

    if-eqz v7, :cond_5

    const/high16 v7, 0x20000000

    goto :goto_1

    :cond_5
    move v7, v6

    :goto_1
    or-int/lit8 v7, v7, 0x6

    .line 240
    invoke-virtual {p0, v4, v7}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->createConfiguration(Ljava/lang/String;I)Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    move-result-object v4

    iget-object v7, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mFactory:Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;

    iget-object v8, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mErrorHandler:Lio/requery/android/database/DatabaseErrorHandler;

    .line 241
    invoke-static {v4, v7, v8}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openDatabase(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Lio/requery/android/database/DatabaseErrorHandler;)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v4

    if-nez p1, :cond_c

    :try_start_2
    sget-object p1, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    .line 247
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " for writing (will try read-only):"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    .line 249
    invoke-virtual {p1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-virtual {p0, p1, v5}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->createConfiguration(Ljava/lang/String;I)Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    move-result-object p1

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mFactory:Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;

    iget-object v4, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mErrorHandler:Lio/requery/android/database/DatabaseErrorHandler;

    .line 252
    invoke-static {p1, v2, v4}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openDatabase(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Lio/requery/android/database/DatabaseErrorHandler;)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 256
    :cond_6
    :goto_2
    invoke-virtual {p0, v3}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->onConfigure(Lio/requery/android/database/sqlite/SQLiteDatabase;)V

    .line 258
    invoke-virtual {v3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result p1

    iget v2, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    if-eq p1, v2, :cond_a

    .line 260
    invoke-virtual {v3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_9

    .line 265
    invoke-virtual {v3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_7

    .line 268
    :try_start_3
    invoke-virtual {p0, v3}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->onCreate(Lio/requery/android/database/sqlite/SQLiteDatabase;)V

    goto :goto_3

    :cond_7
    iget v1, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    if-le p1, v1, :cond_8

    .line 271
    invoke-virtual {p0, v3, p1, v1}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->onDowngrade(Lio/requery/android/database/sqlite/SQLiteDatabase;II)V

    goto :goto_3

    .line 273
    :cond_8
    invoke-virtual {p0, v3, p1, v1}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->onUpgrade(Lio/requery/android/database/sqlite/SQLiteDatabase;II)V

    :goto_3
    iget p1, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    .line 276
    invoke-virtual {v3, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 277
    invoke-virtual {v3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 279
    :try_start_4
    invoke-virtual {v3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_4

    :catchall_0
    move-exception p1

    invoke-virtual {v3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 280
    throw p1

    .line 261
    :cond_9
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 283
    :cond_a
    :goto_4
    invoke-virtual {p0, v3}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->onOpen(Lio/requery/android/database/sqlite/SQLiteDatabase;)V

    .line 285
    invoke-virtual {v3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in read-only mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iput-object v3, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iput-boolean v6, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    return-object v3

    .line 245
    :cond_c
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    iput-boolean v6, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v3, :cond_d

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    if-eq v3, v0, :cond_d

    .line 294
    invoke-virtual {v3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->close()V

    .line 296
    :cond_d
    throw p1

    .line 215
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "getDatabase called recursively"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    .line 307
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :cond_0
    monitor-exit p0

    return-void

    .line 304
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed during initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createConfiguration(Ljava/lang/String;I)Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;
    .locals 1

    .line 408
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {v0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getReadableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getReadableDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 198
    monitor-enter p0

    const/4 v0, 0x0

    .line 199
    :try_start_0
    invoke-direct {p0, v0}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->getDatabaseLocked(Z)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 200
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getWritableDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 173
    monitor-enter p0

    const/4 v0, 0x1

    .line 174
    :try_start_0
    invoke-direct {p0, v0}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->getDatabaseLocked(Z)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 175
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConfigure(Lio/requery/android/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public abstract onCreate(Lio/requery/android/database/sqlite/SQLiteDatabase;)V
.end method

.method public onDowngrade(Lio/requery/android/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 378
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t downgrade database from version "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onOpen(Lio/requery/android/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public abstract onUpgrade(Lio/requery/android/database/sqlite/SQLiteDatabase;II)V
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    .line 138
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mEnableWriteAheadLogging:Z

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    .line 142
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    .line 144
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mEnableWriteAheadLogging:Z

    .line 149
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
