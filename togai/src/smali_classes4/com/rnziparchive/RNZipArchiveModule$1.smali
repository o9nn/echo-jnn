.class Lcom/rnziparchive/RNZipArchiveModule$1;
.super Ljava/lang/Object;
.source "RNZipArchiveModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnziparchive/RNZipArchiveModule;->unzipWithPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rnziparchive/RNZipArchiveModule;

.field final synthetic val$destDirectory:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;

.field final synthetic val$zipFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/rnziparchive/RNZipArchiveModule;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    iput-object p1, p0, Lcom/rnziparchive/RNZipArchiveModule$1;->this$0:Lcom/rnziparchive/RNZipArchiveModule;

    iput-object p2, p0, Lcom/rnziparchive/RNZipArchiveModule$1;->val$zipFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/rnziparchive/RNZipArchiveModule$1;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/rnziparchive/RNZipArchiveModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p5, p0, Lcom/rnziparchive/RNZipArchiveModule$1;->val$destDirectory:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v0, 0x0

    .line 78
    :try_start_0
    new-instance v1, Lnet/lingala/zip4j/ZipFile;

    iget-object v2, p0, Lcom/rnziparchive/RNZipArchiveModule$1;->val$zipFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1}, Lnet/lingala/zip4j/ZipFile;->isEncrypted()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/rnziparchive/RNZipArchiveModule$1;->val$password:Ljava/lang/String;

    .line 80
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/ZipFile;->setPassword([C)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/rnziparchive/RNZipArchiveModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v4, "Zip file: %s is not password protected"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/rnziparchive/RNZipArchiveModule$1;->val$zipFilePath:Ljava/lang/String;

    aput-object v6, v5, v3

    .line 82
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_0
    invoke-virtual {v1}, Lnet/lingala/zip4j/ZipFile;->getFileHeaders()Ljava/util/List;

    move-result-object v2

    .line 86
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/rnziparchive/RNZipArchiveModule$1;->this$0:Lcom/rnziparchive/RNZipArchiveModule;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x1

    iget-object v11, p0, Lcom/rnziparchive/RNZipArchiveModule$1;->val$zipFilePath:Ljava/lang/String;

    .line 89
    invoke-virtual/range {v6 .. v11}, Lcom/rnziparchive/RNZipArchiveModule;->updateProgress(JJLjava/lang/String;)V

    :goto_1
    if-ge v3, v5, :cond_3

    .line 91
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/lingala/zip4j/model/FileHeader;

    .line 93
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/rnziparchive/RNZipArchiveModule$1;->val$destDirectory:Ljava/lang/String;

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 95
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/rnziparchive/RNZipArchiveModule$1;->val$destDirectory:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 97
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 101
    invoke-virtual {v6}, Lnet/lingala/zip4j/model/FileHeader;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/rnziparchive/RNZipArchiveModule$1;->val$destDirectory:Ljava/lang/String;

    .line 102
    invoke-virtual {v1, v6, v7}, Lnet/lingala/zip4j/ZipFile;->extractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v6}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v6, p0, Lcom/rnziparchive/RNZipArchiveModule$1;->this$0:Lcom/rnziparchive/RNZipArchiveModule;

    add-int/lit8 v3, v3, 0x1

    int-to-long v7, v3

    int-to-long v9, v5

    iget-object v11, p0, Lcom/rnziparchive/RNZipArchiveModule$1;->val$zipFilePath:Ljava/lang/String;

    .line 105
    invoke-virtual/range {v6 .. v11}, Lcom/rnziparchive/RNZipArchiveModule;->updateProgress(JJLjava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Found Zip Path Traversal Vulnerability with %s"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v1, p0, Lcom/rnziparchive/RNZipArchiveModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 107
    invoke-static {v4}, Lcom/facebook/react/bridge/Arguments;->fromList(Ljava/util/List;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/rnziparchive/RNZipArchiveModule$1;->this$0:Lcom/rnziparchive/RNZipArchiveModule;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    iget-object v7, p0, Lcom/rnziparchive/RNZipArchiveModule$1;->val$zipFilePath:Ljava/lang/String;

    .line 109
    invoke-virtual/range {v2 .. v7}, Lcom/rnziparchive/RNZipArchiveModule;->updateProgress(JJLjava/lang/String;)V

    iget-object v2, p0, Lcom/rnziparchive/RNZipArchiveModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v3, p0, Lcom/rnziparchive/RNZipArchiveModule$1;->this$0:Lcom/rnziparchive/RNZipArchiveModule;

    .line 110
    invoke-static {v3, v1}, Lcom/rnziparchive/RNZipArchiveModule;->-$$Nest$mgetStackTrace(Lcom/rnziparchive/RNZipArchiveModule;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Failed to unzip file, due to: %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
