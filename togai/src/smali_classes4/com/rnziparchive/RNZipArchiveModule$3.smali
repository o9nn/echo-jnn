.class Lcom/rnziparchive/RNZipArchiveModule$3;
.super Ljava/lang/Object;
.source "RNZipArchiveModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnziparchive/RNZipArchiveModule;->unzipAssets(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rnziparchive/RNZipArchiveModule;

.field final synthetic val$assetsPath:Ljava/lang/String;

.field final synthetic val$destDirectory:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/rnziparchive/RNZipArchiveModule;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->this$0:Lcom/rnziparchive/RNZipArchiveModule;

    iput-object p2, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->val$assetsPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p4, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->val$destDirectory:Ljava/lang/String;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->val$assetsPath:Ljava/lang/String;

    const-string v2, "content://"

    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->val$assetsPath:Ljava/lang/String;

    .line 203
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->this$0:Lcom/rnziparchive/RNZipArchiveModule;

    .line 204
    invoke-static {v2}, Lcom/rnziparchive/RNZipArchiveModule;->access$000(Lcom/rnziparchive/RNZipArchiveModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 206
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "r"

    .line 207
    invoke-virtual {v2, v1, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->this$0:Lcom/rnziparchive/RNZipArchiveModule;

    .line 210
    invoke-static {v1}, Lcom/rnziparchive/RNZipArchiveModule;->access$100(Lcom/rnziparchive/RNZipArchiveModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->val$assetsPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    iget-object v1, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->this$0:Lcom/rnziparchive/RNZipArchiveModule;

    .line 211
    invoke-static {v1}, Lcom/rnziparchive/RNZipArchiveModule;->access$200(Lcom/rnziparchive/RNZipArchiveModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->val$assetsPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 212
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 221
    :goto_0
    :try_start_1
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->val$destDirectory:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 224
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 226
    :cond_1
    new-instance v10, Ljava/util/zip/ZipInputStream;

    invoke-direct {v10, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 227
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v11, 0x0

    iget-object v4, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->this$0:Lcom/rnziparchive/RNZipArchiveModule;

    iget-object v9, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->val$assetsPath:Ljava/lang/String;

    move-wide v5, v11

    move-wide v7, v1

    .line 232
    invoke-virtual/range {v4 .. v9}, Lcom/rnziparchive/RNZipArchiveModule;->updateProgress(JJLjava/lang/String;)V

    .line 235
    :goto_1
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 236
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const-string v5, "rnziparchive"

    .line 238
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Extracting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->val$destDirectory:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    .line 242
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->val$destDirectory:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 244
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 248
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 250
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 253
    :cond_3
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 254
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 255
    invoke-static {v3, v5, v0}, Lcom/rnziparchive/StreamUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/rnziparchive/StreamUtil$ProgressCallback;)J

    .line 256
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 257
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 259
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v5

    add-long/2addr v11, v5

    long-to-double v5, v11

    long-to-double v7, v1

    const-wide v13, 0x3fefae147ae147aeL    # 0.99

    mul-double/2addr v7, v13

    cmpl-double v5, v5, v7

    if-lez v5, :cond_4

    double-to-long v5, v7

    move-wide v11, v5

    :cond_4
    iget-object v5, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->this$0:Lcom/rnziparchive/RNZipArchiveModule;

    .line 264
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v4, v5

    move-wide v5, v11

    move-wide v7, v1

    invoke-virtual/range {v4 .. v9}, Lcom/rnziparchive/RNZipArchiveModule;->updateProgress(JJLjava/lang/String;)V

    goto/16 :goto_1

    .line 245
    :cond_5
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Found Zip Path Traversal Vulnerability with %s"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    iget-object v4, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->this$0:Lcom/rnziparchive/RNZipArchiveModule;

    iget-object v9, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->val$assetsPath:Ljava/lang/String;

    move-wide v5, v1

    move-wide v7, v1

    .line 267
    invoke-virtual/range {v4 .. v9}, Lcom/rnziparchive/RNZipArchiveModule;->updateProgress(JJLjava/lang/String;)V

    .line 269
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 270
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v1, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->val$destDirectory:Ljava/lang/String;

    .line 280
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v1

    .line 272
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->this$0:Lcom/rnziparchive/RNZipArchiveModule;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    iget-object v7, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->val$assetsPath:Ljava/lang/String;

    .line 273
    invoke-virtual/range {v2 .. v7}, Lcom/rnziparchive/RNZipArchiveModule;->updateProgress(JJLjava/lang/String;)V

    .line 274
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Couldn\'t extract %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->val$assetsPath:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v1

    iget-object v2, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 277
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_2
    iget-object v1, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v2, p0, Lcom/rnziparchive/RNZipArchiveModule$3;->val$assetsPath:Ljava/lang/String;

    .line 215
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Asset file `%s` could not be opened"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
