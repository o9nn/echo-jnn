.class public abstract Lio/requery/android/database/AbstractCursor;
.super Ljava/lang/Object;
.source "AbstractCursor.java"

# interfaces
.implements Landroid/database/Cursor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/requery/android/database/AbstractCursor$SelfContentObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field protected mClosed:Z

.field private final mContentObservable:Landroid/database/ContentObservable;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private mExtras:Landroid/os/Bundle;

.field private mNotifyUri:Landroid/net/Uri;

.field protected mPos:I

.field private mSelfObserver:Landroid/database/ContentObserver;

.field private final mSelfObserverLock:Ljava/lang/Object;

.field private mSelfObserverRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lio/requery/android/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 56
    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Lio/requery/android/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    .line 58
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Lio/requery/android/database/AbstractCursor;->mExtras:Landroid/os/Bundle;

    const/4 v0, -0x1

    iput v0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    return-void
.end method


# virtual methods
.method protected checkPosition()V
    .locals 3

    const/4 v0, -0x1

    iget v1, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    if-eq v0, v1, :cond_0

    .line 381
    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->getCount()I

    move-result v0

    iget v1, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    if-eq v0, v1, :cond_0

    return-void

    .line 382
    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    iget v1, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->getCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/requery/android/database/AbstractCursor;->mClosed:Z

    iget-object v0, p0, Lio/requery/android/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    .line 126
    invoke-virtual {v0}, Landroid/database/ContentObservable;->unregisterAll()V

    .line 127
    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->onDeactivateOrClose()V

    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 4

    .line 133
    invoke-virtual {p0, p1}, Lio/requery/android/database/AbstractCursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 135
    iget-object v1, p2, Landroid/database/CharArrayBuffer;->data:[C

    if-eqz v1, :cond_1

    .line 136
    array-length v2, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2, v1, v0}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_1

    .line 137
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 141
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    goto :goto_2

    .line 143
    :cond_2
    iput v0, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    :goto_2
    return-void
.end method

.method public deactivate()V
    .locals 0

    .line 96
    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->onDeactivateOrClose()V

    return-void
.end method

.method protected finalize()V
    .locals 2

    iget-object v0, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserverRegistered:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/requery/android/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    .line 390
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lio/requery/android/database/AbstractCursor;->mClosed:Z

    if-nez v0, :cond_1

    .line 393
    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    .line 86
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getBlob is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getColumnCount()I
    .locals 1

    .line 91
    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 5

    const/16 v0, 0x2e

    .line 251
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 253
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "requesting column name with table name -- "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cursor"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    add-int/lit8 v0, v0, 0x1

    .line 255
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 258
    :cond_0
    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 259
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 261
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 3

    .line 270
    invoke-virtual {p0, p1}, Lio/requery/android/database/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "column \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' does not exist"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    .line 279
    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public abstract getColumnNames()[Ljava/lang/String;
.end method

.method public abstract getCount()I
.end method

.method public abstract getDouble(I)D
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lio/requery/android/database/AbstractCursor;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong(I)J
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    .line 348
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/requery/android/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    .line 349
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 350
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getPosition()I
    .locals 1

    iget v0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    return v0
.end method

.method public abstract getShort(I)S
.end method

.method public abstract getString(I)Ljava/lang/String;
.end method

.method public abstract getType(I)I
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isAfterLast()Z
    .locals 2

    .line 245
    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isBeforeFirst()Z
    .locals 2

    .line 240
    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lio/requery/android/database/AbstractCursor;->mClosed:Z

    return v0
.end method

.method public final isFirst()Z
    .locals 1

    iget v0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLast()Z
    .locals 3

    .line 234
    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->getCount()I

    move-result v0

    iget v1, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract isNull(I)Z
.end method

.method public final move(I)Z
    .locals 1

    iget v0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    add-int/2addr v0, p1

    .line 204
    invoke-virtual {p0, v0}, Lio/requery/android/database/AbstractCursor;->moveToPosition(I)Z

    move-result p1

    return p1
.end method

.method public final moveToFirst()Z
    .locals 1

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0, v0}, Lio/requery/android/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToLast()Z
    .locals 1

    .line 214
    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lio/requery/android/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToNext()Z
    .locals 1

    iget v0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, 0x1

    .line 219
    invoke-virtual {p0, v0}, Lio/requery/android/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToPosition(I)Z
    .locals 2

    .line 159
    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    iput v0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    return v1

    :cond_0
    const/4 v0, -0x1

    if-gez p1, :cond_1

    iput v0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    return v1

    :cond_1
    iget v1, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    return p1

    .line 176
    :cond_2
    invoke-virtual {p0, v1, p1}, Lio/requery/android/database/AbstractCursor;->onMove(II)Z

    move-result v1

    if-nez v1, :cond_3

    iput v0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    goto :goto_0

    :cond_3
    iput p1, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    :goto_0
    return v1
.end method

.method public final moveToPrevious()Z
    .locals 1

    iget v0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, -0x1

    .line 224
    invoke-virtual {p0, v0}, Lio/requery/android/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method protected onChange(Z)V
    .locals 3

    iget-object v0, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    .line 313
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/requery/android/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    const/4 v2, 0x0

    .line 315
    invoke-virtual {v1, p1, v2}, Landroid/database/ContentObservable;->dispatchChange(ZLandroid/net/Uri;)V

    iget-object v1, p0, Lio/requery/android/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/requery/android/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    .line 320
    invoke-virtual {p1, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 322
    :cond_0
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0
.end method

.method protected onDeactivateOrClose()V
    .locals 2

    iget-object v0, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/requery/android/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    .line 102
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserverRegistered:Z

    :cond_0
    iget-object v0, p0, Lio/requery/android/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 105
    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    return-void
.end method

.method public abstract onMove(II)Z
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    iget-object v0, p0, Lio/requery/android/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    .line 284
    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lio/requery/android/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 297
    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public requery()Z
    .locals 4

    iget-object v0, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserverRegistered:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/requery/android/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lio/requery/android/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    .line 111
    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v1, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserverRegistered:Z

    :cond_0
    iget-object v0, p0, Lio/requery/android/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 114
    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return v1
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 370
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p1
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0

    if-nez p1, :cond_0

    .line 360
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_0
    iput-object p1, p0, Lio/requery/android/database/AbstractCursor;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    .line 334
    monitor-enter v0

    :try_start_0
    iput-object p2, p0, Lio/requery/android/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    iput-object p1, p0, Lio/requery/android/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p2, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz p2, :cond_0

    .line 338
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 340
    :cond_0
    new-instance p1, Lio/requery/android/database/AbstractCursor$SelfContentObserver;

    invoke-direct {p1, p0}, Lio/requery/android/database/AbstractCursor$SelfContentObserver;-><init>(Lio/requery/android/database/AbstractCursor;)V

    iput-object p1, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    iget-object p2, p0, Lio/requery/android/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lio/requery/android/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    const/4 v2, 0x1

    .line 341
    invoke-virtual {p2, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v2, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserverRegistered:Z

    .line 343
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    iget-boolean v0, p0, Lio/requery/android/database/AbstractCursor;->mClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/requery/android/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    .line 291
    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lio/requery/android/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 302
    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
