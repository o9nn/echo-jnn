.class Lcom/reactnativedocumentpicker/RNDocumentPickerModule$ProcessDataTask;
.super Lcom/facebook/react/bridge/GuardedResultAsyncTask;
.source "RNDocumentPickerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reactnativedocumentpicker/RNDocumentPickerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/bridge/GuardedResultAsyncTask<",
        "Lcom/facebook/react/bridge/ReadableArray;",
        ">;"
    }
.end annotation


# instance fields
.field private final copyTo:Ljava/lang/String;

.field private final promise:Lcom/facebook/react/bridge/Promise;

.field private final uris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final weakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/facebook/react/bridge/ReactContext;Ljava/util/List;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactContext;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/Promise;",
            ")V"
        }
    .end annotation

    .line 239
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getExceptionHandler()Lcom/facebook/react/bridge/JSExceptionHandler;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/react/bridge/GuardedResultAsyncTask;-><init>(Lcom/facebook/react/bridge/JSExceptionHandler;)V

    .line 240
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$ProcessDataTask;->weakContext:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$ProcessDataTask;->uris:Ljava/util/List;

    iput-object p3, p0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$ProcessDataTask;->copyTo:Ljava/lang/String;

    iput-object p4, p0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$ProcessDataTask;->promise:Lcom/facebook/react/bridge/Promise;

    return-void
.end method

.method public static copyFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 339
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v0, 0x2000

    :try_start_1
    new-array v0, v0, [B

    .line 342
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 343
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 345
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    .line 338
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz p0, :cond_2

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
.end method

.method private copyFileToLocalStorage(Landroid/content/Context;Lcom/facebook/react/bridge/WritableMap;Landroid/net/Uri;)V
    .locals 5

    const-string v0, "fileCopyUri"

    const-string v1, "failed to create directory at "

    .line 304
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$ProcessDataTask;->copyTo:Ljava/lang/String;

    const-string v4, "documentDirectory"

    .line 305
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 306
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 309
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 311
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "name"

    .line 315
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/WritableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 319
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$ProcessDataTask;->safeGetDestination(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 320
    invoke-static {p1, p3, v1}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$ProcessDataTask;->copyFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 321
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 323
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 324
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    const-string p3, "copyError"

    .line 325
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getMetadata(Landroid/net/Uri;)Lcom/facebook/react/bridge/WritableMap;
    .locals 10

    iget-object v0, p0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$ProcessDataTask;->weakContext:Ljava/lang/ref/WeakReference;

    .line 261
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    .line 263
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1

    .line 265
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 266
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v8

    const-string v2, "uri"

    .line 267
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "type"

    invoke-interface {v8, v9, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    .line 269
    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 270
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "_display_name"

    .line 271
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 272
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "name"

    if-nez v3, :cond_1

    .line 273
    :try_start_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-interface {v8, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_1
    invoke-interface {v8, v4}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    :goto_0
    const-string v2, "mime_type"

    .line 278
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 279
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 280
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v9, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v2, "_size"

    .line 282
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 283
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "size"

    if-eqz v3, :cond_3

    .line 284
    :try_start_2
    invoke-interface {v8, v4}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    goto :goto_2

    .line 286
    :cond_3
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-interface {v8, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_4

    .line 269
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p1

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 289
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_6
    invoke-direct {p0, v0, v8, p1}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$ProcessDataTask;->prepareFileUri(Landroid/content/Context;Lcom/facebook/react/bridge/WritableMap;Landroid/net/Uri;)V

    return-object v8
.end method

.method private prepareFileUri(Landroid/content/Context;Lcom/facebook/react/bridge/WritableMap;Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$ProcessDataTask;->copyTo:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p1, "fileCopyUri"

    .line 297
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$ProcessDataTask;->copyFileToLocalStorage(Landroid/content/Context;Lcom/facebook/react/bridge/WritableMap;Landroid/net/Uri;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected doInBackgroundGuarded()Lcom/facebook/react/bridge/ReadableArray;
    .locals 3

    .line 248
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    iget-object v1, p0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$ProcessDataTask;->uris:Ljava/util/List;

    .line 249
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 250
    invoke-direct {p0, v2}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$ProcessDataTask;->getMetadata(Landroid/net/Uri;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackgroundGuarded()Ljava/lang/Object;
    .locals 1

    .line 232
    invoke-virtual {p0}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$ProcessDataTask;->doInBackgroundGuarded()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecuteGuarded(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1

    iget-object v0, p0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$ProcessDataTask;->promise:Lcom/facebook/react/bridge/Promise;

    .line 257
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecuteGuarded(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 232
    check-cast p1, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p0, p1}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$ProcessDataTask;->onPostExecuteGuarded(Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public safeGetDestination(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 332
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The copied file is attempting to write outside of the target directory."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
