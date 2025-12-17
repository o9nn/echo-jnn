.class Lcom/rnziparchive/RNZipArchiveModule$2;
.super Ljava/lang/Object;
.source "RNZipArchiveModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnziparchive/RNZipArchiveModule;->unzip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rnziparchive/RNZipArchiveModule;

.field final synthetic val$charset:Ljava/lang/String;

.field final synthetic val$destDirectory:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;

.field final synthetic val$zipFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/rnziparchive/RNZipArchiveModule;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->this$0:Lcom/rnziparchive/RNZipArchiveModule;

    iput-object p2, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->val$zipFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p4, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->val$charset:Ljava/lang/String;

    iput-object p5, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->val$destDirectory:Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v0, 0x0

    .line 123
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->val$zipFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->this$0:Lcom/rnziparchive/RNZipArchiveModule;

    iget-object v2, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->val$zipFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->val$charset:Ljava/lang/String;

    .line 132
    invoke-static {v1, v2, v3}, Lcom/rnziparchive/RNZipArchiveModule;->-$$Nest$mgetUncompressedSize(Lcom/rnziparchive/RNZipArchiveModule;Ljava/lang/String;Ljava/lang/String;)J

    .line 134
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->val$destDirectory:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    iget-object v2, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->this$0:Lcom/rnziparchive/RNZipArchiveModule;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    iget-object v7, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->val$zipFilePath:Ljava/lang/String;

    .line 140
    invoke-virtual/range {v2 .. v7}, Lcom/rnziparchive/RNZipArchiveModule;->updateProgress(JJLjava/lang/String;)V

    .line 149
    new-instance v1, Lnet/lingala/zip4j/ZipFile;

    iget-object v2, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->val$zipFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->val$charset:Ljava/lang/String;

    .line 150
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/ZipFile;->setCharset(Ljava/nio/charset/Charset;)V

    .line 155
    invoke-virtual {v1}, Lnet/lingala/zip4j/ZipFile;->getProgressMonitor()Lnet/lingala/zip4j/progress/ProgressMonitor;

    move-result-object v2

    const/4 v3, 0x1

    .line 157
    invoke-virtual {v1, v3}, Lnet/lingala/zip4j/ZipFile;->setRunInThread(Z)V

    iget-object v3, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->val$destDirectory:Ljava/lang/String;

    .line 158
    invoke-virtual {v1, v3}, Lnet/lingala/zip4j/ZipFile;->extractAll(Ljava/lang/String;)V

    .line 160
    :goto_0
    invoke-virtual {v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getState()Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    move-result-object v3

    sget-object v4, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->this$0:Lcom/rnziparchive/RNZipArchiveModule;

    .line 161
    invoke-virtual {v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getWorkCompleted()J

    move-result-wide v5

    invoke-virtual {v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getTotalWork()J

    move-result-wide v7

    iget-object v9, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->val$zipFilePath:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/rnziparchive/RNZipArchiveModule;->updateProgress(JJLjava/lang/String;)V

    const-wide/16 v3, 0x64

    .line 163
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getResult()Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    move-result-object v3

    sget-object v4, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->SUCCESS:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    invoke-virtual {v1}, Lnet/lingala/zip4j/ZipFile;->close()V

    iget-object v4, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->this$0:Lcom/rnziparchive/RNZipArchiveModule;

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x1

    iget-object v9, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->val$zipFilePath:Ljava/lang/String;

    .line 168
    invoke-virtual/range {v4 .. v9}, Lcom/rnziparchive/RNZipArchiveModule;->updateProgress(JJLjava/lang/String;)V

    iget-object v1, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v2, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->val$destDirectory:Ljava/lang/String;

    .line 169
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_1

    .line 170
    :cond_2
    invoke-virtual {v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getResult()Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    move-result-object v1

    sget-object v3, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->ERROR:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    invoke-virtual {v1, v3}, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 172
    invoke-virtual {v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getResult()Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    move-result-object v1

    sget-object v2, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->CANCELLED:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 173
    :cond_3
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Task cancelled"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_4
    new-instance v1, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred. Error message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->this$0:Lcom/rnziparchive/RNZipArchiveModule;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    iget-object v7, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->val$zipFilePath:Ljava/lang/String;

    .line 176
    invoke-virtual/range {v2 .. v7}, Lcom/rnziparchive/RNZipArchiveModule;->updateProgress(JJLjava/lang/String;)V

    iget-object v2, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to extract file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_1
    iget-object v1, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t open file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/rnziparchive/RNZipArchiveModule$2;->val$zipFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
