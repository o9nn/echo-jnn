.class Lorg/pgsqlite/SQLitePlugin$DBRunner;
.super Ljava/lang/Object;
.source "SQLitePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pgsqlite/SQLitePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DBRunner"
.end annotation


# instance fields
.field private androidLockWorkaround:Z

.field private assetFilename:Ljava/lang/String;

.field final dbname:Ljava/lang/String;

.field mydb:Lio/requery/android/database/sqlite/SQLiteDatabase;

.field final openCbc:Lorg/pgsqlite/CallbackContext;

.field final openFlags:I

.field final q:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lorg/pgsqlite/SQLitePlugin$DBQuery;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/pgsqlite/SQLitePlugin;


# direct methods
.method constructor <init>(Lorg/pgsqlite/SQLitePlugin;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lorg/pgsqlite/CallbackContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->this$0:Lorg/pgsqlite/SQLitePlugin;

    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->dbname:Ljava/lang/String;

    const/4 p1, 0x0

    const/4 p2, 0x6

    :try_start_0
    const-string v0, "assetFilename"

    const/4 v1, 0x0

    .line 885
    invoke-static {p3, v0, v1}, Lorg/pgsqlite/SQLitePluginConverter;->getString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->assetFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "readOnly"

    .line 887
    invoke-static {p3, v0, p1}, Lorg/pgsqlite/SQLitePluginConverter;->getBoolean(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 891
    sget-object v1, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v2, "Error retrieving assetFilename or mode from options:"

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iput p2, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->openFlags:I

    const-string p2, "androidLockWorkaround"

    .line 894
    invoke-static {p3, p2, p1}, Lorg/pgsqlite/SQLitePluginConverter;->getBoolean(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->androidLockWorkaround:Z

    if-eqz p1, :cond_1

    .line 896
    sget-object p1, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string p2, "Android db closing/locking workaround applied"

    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    :cond_1
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->q:Ljava/util/concurrent/BlockingQueue;

    iput-object p4, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->openCbc:Lorg/pgsqlite/CallbackContext;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "couldn\'t delete database"

    const-string v1, "Can\'t open database."

    :try_start_0
    iget-object v2, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->this$0:Lorg/pgsqlite/SQLitePlugin;

    iget-object v3, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->dbname:Ljava/lang/String;

    iget-object v4, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->assetFilename:Ljava/lang/String;

    iget v5, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->openFlags:I

    iget-object v6, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->openCbc:Lorg/pgsqlite/CallbackContext;

    .line 904
    invoke-static {v2, v3, v4, v5, v6}, Lorg/pgsqlite/SQLitePlugin;->-$$Nest$mopenDatabase(Lorg/pgsqlite/SQLitePlugin;Ljava/lang/String;Ljava/lang/String;ILorg/pgsqlite/CallbackContext;)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->mydb:Lio/requery/android/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->q:Ljava/util/concurrent/BlockingQueue;

    .line 924
    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/pgsqlite/SQLitePlugin$DBQuery;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 926
    :goto_0
    :try_start_2
    iget-boolean v3, v2, Lorg/pgsqlite/SQLitePlugin$DBQuery;->stop:Z

    if-nez v3, :cond_1

    iget-object v4, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->this$0:Lorg/pgsqlite/SQLitePlugin;

    iget-object v5, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->dbname:Ljava/lang/String;

    .line 927
    iget-object v6, v2, Lorg/pgsqlite/SQLitePlugin$DBQuery;->queries:[Ljava/lang/String;

    iget-object v7, v2, Lorg/pgsqlite/SQLitePlugin$DBQuery;->queryParams:[Lcom/facebook/react/bridge/ReadableArray;

    iget-object v8, v2, Lorg/pgsqlite/SQLitePlugin$DBQuery;->queryIDs:[Ljava/lang/String;

    iget-object v9, v2, Lorg/pgsqlite/SQLitePlugin$DBQuery;->cbc:Lorg/pgsqlite/CallbackContext;

    invoke-static/range {v4 .. v9}, Lorg/pgsqlite/SQLitePlugin;->-$$Nest$mexecuteSqlBatch(Lorg/pgsqlite/SQLitePlugin;Ljava/lang/String;[Ljava/lang/String;[Lcom/facebook/react/bridge/ReadableArray;[Ljava/lang/String;Lorg/pgsqlite/CallbackContext;)V

    iget-boolean v3, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->androidLockWorkaround:Z

    if-eqz v3, :cond_0

    .line 930
    iget-object v3, v2, Lorg/pgsqlite/SQLitePlugin$DBQuery;->queries:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Lorg/pgsqlite/SQLitePlugin$DBQuery;->queries:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "COMMIT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->this$0:Lorg/pgsqlite/SQLitePlugin;

    iget-object v4, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->dbname:Ljava/lang/String;

    .line 932
    invoke-static {v3, v4}, Lorg/pgsqlite/SQLitePlugin;->-$$Nest$mcloseDatabaseNow(Lorg/pgsqlite/SQLitePlugin;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->this$0:Lorg/pgsqlite/SQLitePlugin;

    iget-object v4, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->dbname:Ljava/lang/String;

    const-string v5, ""

    iget v6, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->openFlags:I

    .line 933
    invoke-static {v3, v4, v5, v6, v1}, Lorg/pgsqlite/SQLitePlugin;->-$$Nest$mopenDatabase(Lorg/pgsqlite/SQLitePlugin;Ljava/lang/String;Ljava/lang/String;ILorg/pgsqlite/CallbackContext;)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->mydb:Lio/requery/android/database/sqlite/SQLiteDatabase;

    :cond_0
    iget-object v3, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->q:Ljava/util/concurrent/BlockingQueue;

    .line 937
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/pgsqlite/SQLitePlugin$DBQuery;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    .line 940
    :goto_1
    sget-object v3, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v4, "unexpected error"

    invoke-static {v3, v4, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    if-eqz v2, :cond_4

    .line 943
    iget-boolean v1, v2, Lorg/pgsqlite/SQLitePlugin$DBQuery;->close:Z

    if-eqz v1, :cond_4

    :try_start_3
    iget-object v1, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->this$0:Lorg/pgsqlite/SQLitePlugin;

    iget-object v3, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->dbname:Ljava/lang/String;

    .line 945
    invoke-static {v1, v3}, Lorg/pgsqlite/SQLitePlugin;->-$$Nest$mcloseDatabaseNow(Lorg/pgsqlite/SQLitePlugin;Ljava/lang/String;)V

    .line 947
    sget-object v1, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->dbname:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    iget-boolean v1, v2, Lorg/pgsqlite/SQLitePlugin$DBQuery;->delete:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const-string v3, "database removed"

    if-nez v1, :cond_2

    .line 950
    :try_start_4
    iget-object v0, v2, Lorg/pgsqlite/SQLitePlugin$DBQuery;->cbc:Lorg/pgsqlite/CallbackContext;

    invoke-virtual {v0, v3}, Lorg/pgsqlite/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :cond_2
    :try_start_5
    iget-object v1, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->this$0:Lorg/pgsqlite/SQLitePlugin;

    iget-object v4, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->dbname:Ljava/lang/String;

    .line 953
    invoke-static {v1, v4}, Lorg/pgsqlite/SQLitePlugin;->-$$Nest$mdeleteDatabaseNow(Lorg/pgsqlite/SQLitePlugin;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 955
    iget-object v1, v2, Lorg/pgsqlite/SQLitePlugin$DBQuery;->cbc:Lorg/pgsqlite/CallbackContext;

    invoke-virtual {v1, v3}, Lorg/pgsqlite/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_2

    .line 957
    :cond_3
    iget-object v1, v2, Lorg/pgsqlite/SQLitePlugin$DBQuery;->cbc:Lorg/pgsqlite/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 960
    :try_start_6
    sget-object v3, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 961
    iget-object v0, v2, Lorg/pgsqlite/SQLitePlugin$DBQuery;->cbc:Lorg/pgsqlite/CallbackContext;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t delete database: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 965
    sget-object v1, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v3, "couldn\'t close database"

    invoke-static {v1, v3, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 966
    iget-object v1, v2, Lorg/pgsqlite/SQLitePlugin$DBQuery;->cbc:Lorg/pgsqlite/CallbackContext;

    if-eqz v1, :cond_4

    .line 967
    iget-object v1, v2, Lorg/pgsqlite/SQLitePlugin$DBQuery;->cbc:Lorg/pgsqlite/CallbackContext;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "couldn\'t close database: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void

    :catch_4
    move-exception v0

    .line 913
    sget-object v2, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v3, "Unexpected error opening database, stopping db thread"

    invoke-static {v2, v3, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->openCbc:Lorg/pgsqlite/CallbackContext;

    if-eqz v2, :cond_5

    .line 915
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V

    .line 917
    :cond_5
    sget-object v0, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->dbname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_5
    move-exception v0

    .line 906
    sget-object v2, Lorg/pgsqlite/SQLitePlugin;->TAG:Ljava/lang/String;

    const-string v3, "SQLite error opening database, stopping db thread"

    invoke-static {v2, v3, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->openCbc:Lorg/pgsqlite/CallbackContext;

    if-eqz v2, :cond_6

    .line 908
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/pgsqlite/CallbackContext;->error(Ljava/lang/String;)V

    .line 910
    :cond_6
    sget-object v0, Lorg/pgsqlite/SQLitePlugin;->dbrmap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lorg/pgsqlite/SQLitePlugin$DBRunner;->dbname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
