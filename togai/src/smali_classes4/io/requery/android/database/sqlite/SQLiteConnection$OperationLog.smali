.class final Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/requery/android/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OperationLog"
.end annotation


# static fields
.field private static final COOKIE_GENERATION_SHIFT:I = 0x8

.field private static final COOKIE_INDEX_MASK:I = 0xff

.field private static final MAX_RECENT_OPERATIONS:I = 0x14


# instance fields
.field private mGeneration:I

.field private mIndex:I

.field private final mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    return-void
.end method

.method synthetic constructor <init>(Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog-IA;)V
    .locals 0

    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;-><init>()V

    return-void
.end method

.method private endOperationDeferLogLocked(I)Z
    .locals 3

    .line 1447
    invoke-direct {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    const/4 v1, 0x1

    .line 1450
    iput-boolean v1, p1, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    :cond_0
    return v0
.end method

.method private getOperationLocked(I)Lio/requery/android/database/sqlite/SQLiteConnection$Operation;
    .locals 2

    and-int/lit16 v0, p1, 0xff

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    .line 1477
    aget-object v0, v1, v0

    .line 1478
    iget v1, v0, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private logOperationLocked(ILjava/lang/String;)V
    .locals 2

    .line 1458
    invoke-direct {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1462
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1463
    invoke-virtual {p1, v0, v1}, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    if-eqz p2, :cond_1

    const-string p1, ", "

    .line 1465
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p1, "SQLiteConnection"

    .line 1467
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private newOperationCookieLocked(I)I
    .locals 2

    iget v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 7

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    .line 1380
    monitor-enter v0

    :try_start_0
    iget v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    .line 1381
    rem-int/lit8 v1, v1, 0x14

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    .line 1382
    aget-object v2, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 1384
    new-instance v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    invoke-direct {v2, v3}, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;-><init>(Lio/requery/android/database/sqlite/SQLiteConnection$Operation-IA;)V

    iget-object v3, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    .line 1385
    aput-object v2, v3, v1

    goto :goto_0

    .line 1387
    :cond_0
    iput-boolean v4, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    .line 1388
    iput-object v3, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    .line 1389
    iget-object v3, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1390
    iget-object v3, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1393
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    .line 1394
    iput-object p1, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    .line 1395
    iput-object p2, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    if-eqz p3, :cond_4

    .line 1397
    iget-object p1, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-nez p1, :cond_2

    .line 1398
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    goto :goto_1

    .line 1400
    :cond_2
    iget-object p1, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1402
    :goto_1
    array-length p1, p3

    :goto_2
    if-ge v4, p1, :cond_4

    aget-object p2, p3, v4

    if-eqz p2, :cond_3

    .line 1403
    instance-of v3, p2, [B

    if-eqz v3, :cond_3

    .line 1405
    iget-object p2, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteConnection;->-$$Nest$sfgetEMPTY_BYTE_ARRAY()[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1407
    :cond_3
    iget-object v3, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1411
    :cond_4
    invoke-direct {p0, v1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->newOperationCookieLocked(I)I

    move-result p1

    iput p1, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    iput v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    .line 1413
    iget p1, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1414
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public describeCurrentOperation()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    .line 1482
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    iget v2, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    .line 1483
    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 1484
    iget-boolean v2, v1, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    if-nez v2, :cond_0

    .line 1485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 1486
    invoke-virtual {v1, v2, v3}, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1487
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1489
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    .line 1490
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Landroid/util/Printer;Z)V
    .locals 7

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    .line 1494
    monitor-enter v0

    :try_start_0
    const-string v1, "  Most recently executed operations:"

    .line 1495
    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    .line 1497
    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    .line 1501
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    .line 1502
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    invoke-static {v2}, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->-$$Nest$mgetFormattedStartTime(Lio/requery/android/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] "

    .line 1504
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    invoke-virtual {v2, v4, p2}, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1506
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    :goto_0
    add-int/lit8 v3, v3, 0x1

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    .line 1514
    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    const/16 v4, 0x14

    if-lt v3, v4, :cond_0

    goto :goto_1

    :cond_2
    const-string p2, "    <none>"

    .line 1517
    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1519
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public endOperation(I)V
    .locals 2

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    .line 1427
    monitor-enter v0

    .line 1428
    :try_start_0
    invoke-direct {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1429
    invoke-direct {p0, p1, v1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V

    .line 1431
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

.method public endOperationDeferLog(I)Z
    .locals 1

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    .line 1435
    monitor-enter v0

    .line 1436
    :try_start_0
    invoke-direct {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1437
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public failOperation(ILjava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    .line 1418
    monitor-enter v0

    .line 1419
    :try_start_0
    invoke-direct {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1421
    iput-object p2, p1, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    .line 1423
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

.method public logOperation(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    .line 1441
    monitor-enter v0

    .line 1442
    :try_start_0
    invoke-direct {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V

    .line 1443
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
