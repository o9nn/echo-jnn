.class public final Ln/o/t/i/f/e/e/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/o/t/i/f/e/e/s;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Ln/o/t/i/f/e/e/u;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Ln/o/t/i/f/e/e/u;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroidx/room/SharedSQLiteStatement;

.field public final e:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Ln/o/t/i/f/e/e/t$a;

    invoke-direct {v0, p0, p1}, Ln/o/t/i/f/e/e/t$a;-><init>(Ln/o/t/i/f/e/e/t;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ln/o/t/i/f/e/e/t;->b:Landroidx/room/EntityInsertionAdapter;

    .line 34
    new-instance v0, Ln/o/t/i/f/e/e/t$b;

    invoke-direct {v0, p0, p1}, Ln/o/t/i/f/e/e/t$b;-><init>(Ln/o/t/i/f/e/e/t;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ln/o/t/i/f/e/e/t;->c:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 70
    new-instance v0, Ln/o/t/i/f/e/e/t$c;

    invoke-direct {v0, p0, p1}, Ln/o/t/i/f/e/e/t$c;-><init>(Ln/o/t/i/f/e/e/t;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ln/o/t/i/f/e/e/t;->d:Landroidx/room/SharedSQLiteStatement;

    .line 77
    new-instance v0, Ln/o/t/i/f/e/e/t$d;

    invoke-direct {v0, p0, p1}, Ln/o/t/i/f/e/e/t$d;-><init>(Ln/o/t/i/f/e/e/t;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ln/o/t/i/f/e/e/t;->e:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ln/o/t/i/f/e/e/u;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM work_data"

    const/4 v1, 0x0

    .line 81
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 82
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v2, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    .line 83
    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v4, "id"

    .line 85
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "notification"

    .line 86
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "trigger"

    .line 87
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "with_alarm_manager"

    .line 88
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 89
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 93
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v3

    goto :goto_1

    .line 96
    :cond_0
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 99
    :goto_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v3

    goto :goto_2

    .line 102
    :cond_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 105
    :goto_2
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v11, v3

    goto :goto_3

    .line 108
    :cond_2
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 112
    :goto_3
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v12, v3

    goto :goto_4

    .line 115
    :cond_3
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_4
    if-nez v12, :cond_4

    move-object v12, v3

    goto :goto_6

    .line 117
    :cond_4
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    goto :goto_5

    :cond_5
    move v12, v1

    :goto_5
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 118
    :goto_6
    new-instance v13, Ln/o/t/i/f/e/e/u;

    invoke-direct {v13, v9, v10, v11, v12}, Ln/o/t/i/f/e/e/u;-><init>(Ljava/lang/String;[B[BLjava/lang/Boolean;)V

    .line 119
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 123
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 124
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v8

    :catchall_0
    move-exception v1

    .line 125
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 126
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 127
    throw v1
.end method

.method public a(Ljava/lang/Boolean;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List<",
            "Ln/o/t/i/f/e/e/u;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM work_data WHERE with_alarm_manager = ?"

    const/4 v1, 0x1

    .line 27
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object p1, v2

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 31
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v3, p1

    invoke-virtual {v0, v1, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    :goto_1
    iget-object p1, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 35
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p1, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    .line 36
    invoke-static {p1, v0, v3, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v4, "id"

    .line 38
    invoke-static {p1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "notification"

    .line 39
    invoke-static {p1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "trigger"

    .line 40
    invoke-static {p1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "with_alarm_manager"

    .line 41
    invoke-static {p1, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 42
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 46
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v2

    goto :goto_3

    .line 49
    :cond_2
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 52
    :goto_3
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v10, v2

    goto :goto_4

    .line 55
    :cond_3
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 58
    :goto_4
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v11, v2

    goto :goto_5

    .line 61
    :cond_4
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 65
    :goto_5
    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_5

    move-object v12, v2

    goto :goto_6

    .line 68
    :cond_5
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_6
    if-nez v12, :cond_6

    move-object v12, v2

    goto :goto_8

    .line 70
    :cond_6
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eqz v12, :cond_7

    move v12, v1

    goto :goto_7

    :cond_7
    move v12, v3

    :goto_7
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 71
    :goto_8
    new-instance v13, Ln/o/t/i/f/e/e/u;

    invoke-direct {v13, v9, v10, v11, v12}, Ln/o/t/i/f/e/e/u;-><init>(Ljava/lang/String;[B[BLjava/lang/Boolean;)V

    .line 72
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 76
    :cond_8
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 77
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v8

    :catchall_0
    move-exception v1

    .line 78
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 79
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 80
    throw v1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 9
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Ln/o/t/i/f/e/e/t;->e:Landroidx/room/SharedSQLiteStatement;

    .line 10
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 13
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 17
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 19
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 20
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 22
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p1, p0, Ln/o/t/i/f/e/e/t;->e:Landroidx/room/SharedSQLiteStatement;

    .line 23
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 24
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object v1, p0, Ln/o/t/i/f/e/e/t;->e:Landroidx/room/SharedSQLiteStatement;

    .line 25
    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 26
    throw p1
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 128
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 129
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DELETE FROM work_data WHERE id in ("

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 132
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 135
    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 139
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 141
    :cond_0
    invoke-interface {v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 145
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 147
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 148
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 150
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 151
    throw p1
.end method

.method public a(Ln/o/t/i/f/e/e/u;)V
    .locals 1

    iget-object v0, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 1
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 2
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Ln/o/t/i/f/e/e/t;->b:Landroidx/room/EntityInsertionAdapter;

    .line 4
    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    iget-object p1, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 5
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 7
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 8
    throw p1
.end method

.method public b(Ljava/lang/String;)Ln/o/t/i/f/e/e/u;
    .locals 9

    const-string v0, "SELECT * from work_data WHERE id = ?"

    const/4 v1, 0x1

    .line 21
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 24
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 28
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p1, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 29
    invoke-static {p1, v0, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v4, "id"

    .line 31
    invoke-static {p1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "notification"

    .line 32
    invoke-static {p1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "trigger"

    .line 33
    invoke-static {p1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "with_alarm_manager"

    .line 34
    invoke-static {p1, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 36
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 38
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v4, v3

    goto :goto_1

    .line 41
    :cond_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 44
    :goto_1
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v5, v3

    goto :goto_2

    .line 47
    :cond_2
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 50
    :goto_2
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v6, v3

    goto :goto_3

    .line 53
    :cond_3
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 57
    :goto_3
    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v7, v3

    goto :goto_4

    .line 60
    :cond_4
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_4
    if-nez v7, :cond_5

    goto :goto_6

    .line 62
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 63
    :goto_6
    new-instance v1, Ln/o/t/i/f/e/e/u;

    invoke-direct {v1, v4, v5, v6, v3}, Ln/o/t/i/f/e/e/u;-><init>(Ljava/lang/String;[B[BLjava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v1

    .line 69
    :cond_7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 70
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 71
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 72
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 73
    throw v1
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 9
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Ln/o/t/i/f/e/e/t;->d:Landroidx/room/SharedSQLiteStatement;

    .line 10
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    iget-object v1, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 11
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 13
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object v1, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 14
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 16
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object v1, p0, Ln/o/t/i/f/e/e/t;->d:Landroidx/room/SharedSQLiteStatement;

    .line 17
    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 18
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object v2, p0, Ln/o/t/i/f/e/e/t;->d:Landroidx/room/SharedSQLiteStatement;

    .line 19
    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 20
    throw v1
.end method

.method public b(Ln/o/t/i/f/e/e/u;)V
    .locals 1

    iget-object v0, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 1
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 2
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Ln/o/t/i/f/e/e/t;->c:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 4
    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    iget-object p1, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 5
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    .line 7
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Ln/o/t/i/f/e/e/t;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 8
    throw p1
.end method
