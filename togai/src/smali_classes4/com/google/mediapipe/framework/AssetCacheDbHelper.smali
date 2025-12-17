.class public Lcom/google/mediapipe/framework/AssetCacheDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AssetCacheDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/framework/AssetCacheDbHelper$AssetCacheEntry;
    }
.end annotation


# static fields
.field private static final COMMA_SEP:Ljava/lang/String; = ","

.field public static final DATABASE_NAME:Ljava/lang/String; = "mediapipe.db"

.field public static final DATABASE_VERSION:I = 0x2

.field private static final INT_TYPE:Ljava/lang/String; = " INTEGER"

.field private static final SQL_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE AssetVersion (_id INTEGER PRIMARY KEY,asset TEXT NOT NULL UNIQUE,cache_path TEXT,version INTEGER )"

.field private static final SQL_DELETE_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS AssetVersion"

.field private static final TEXT_TYPE:Ljava/lang/String; = " TEXT"

.field private static final TEXT_UNIQUE_TYPE:Ljava/lang/String; = " TEXT NOT NULL UNIQUE"

.field private static final logger:Lcom/google/common/flogger/FluentLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    invoke-static {}, Lcom/google/common/flogger/FluentLogger;->forEnclosingClass()Lcom/google/common/flogger/FluentLogger;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->logger:Lcom/google/common/flogger/FluentLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "mediapipe.db"

    .line 60
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private queryAssetCacheTable(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "db",
            "projection",
            "selection",
            "selectionArgs"
        }
    .end annotation

    const-string v1, "AssetVersion"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 147
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private removeCachedFiles(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "db",
            "selection",
            "selectionArgs"
        }
    .end annotation

    const-string v0, "cache_path"

    .line 159
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->queryAssetCacheTable(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 161
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 164
    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 163
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 165
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    move-result p3

    if-nez p3, :cond_1

    sget-object p3, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->logger:Lcom/google/common/flogger/FluentLogger;

    .line 168
    invoke-virtual {p3}, Lcom/google/common/flogger/FluentLogger;->atWarning()Lcom/google/common/flogger/LoggingApi;

    move-result-object p3

    check-cast p3, Lcom/google/common/flogger/FluentLogger$Api;

    const-string v1, "Stale cached file: %s can\'t be deleted."

    invoke-interface {p3, v1, p2}, Lcom/google/common/flogger/FluentLogger$Api;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-nez p2, :cond_0

    .line 173
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void
.end method


# virtual methods
.method public checkVersion(Ljava/lang/String;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "assetPath",
            "currentAppVersion"
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "version"

    .line 71
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 72
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v3, "asset = ?"

    .line 74
    invoke-direct {p0, v0, v2, v3, p1}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->queryAssetCacheTable(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 76
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 80
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 82
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 81
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 83
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-ne v0, p2, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public insertAsset(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "asset",
            "cachePath",
            "appVersion"
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "asset = ? and cache_path != ?"

    .line 110
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-direct {p0, v0, v1, v2}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->removeCachedFiles(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 113
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "asset"

    .line 114
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "cache_path"

    .line 115
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "version"

    .line 116
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    const/4 p2, 0x5

    const-string p3, "AssetVersion"

    .line 117
    invoke-virtual {v0, p3, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    return-void

    .line 124
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Can\'t insert entry into the mediapipe db."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public invalidateCache(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentAppVersion"
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v1, "version != ?"

    .line 97
    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->removeCachedFiles(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "AssetVersion"

    .line 99
    invoke-virtual {v0, v2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "db"
        }
    .end annotation

    const-string v0, "CREATE TABLE AssetVersion (_id INTEGER PRIMARY KEY,asset TEXT NOT NULL UNIQUE,cache_path TEXT,version INTEGER )"

    .line 130
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "db",
            "oldVersion",
            "newVersion"
        }
    .end annotation

    .line 142
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "db",
            "oldVersion",
            "newVersion"
        }
    .end annotation

    const-string p2, "DROP TABLE IF EXISTS AssetVersion"

    .line 136
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
