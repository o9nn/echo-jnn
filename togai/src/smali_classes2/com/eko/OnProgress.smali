.class public Lcom/eko/OnProgress;
.super Ljava/lang/Thread;
.source "OnProgress.java"


# instance fields
.field private bytesTotal:J

.field private callback:Lcom/eko/ProgressCallback;

.field private config:Lcom/eko/RNBGDTaskConfig;

.field private cursor:Landroid/database/Cursor;

.field private final downloadId:J

.field private final downloader:Lcom/eko/Downloader;

.field private lastBytesDownloaded:J

.field private final query:Landroid/app/DownloadManager$Query;


# direct methods
.method public constructor <init>(Lcom/eko/RNBGDTaskConfig;JLcom/eko/Downloader;Lcom/eko/ProgressCallback;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/eko/OnProgress;->config:Lcom/eko/RNBGDTaskConfig;

    iput-object p5, p0, Lcom/eko/OnProgress;->callback:Lcom/eko/ProgressCallback;

    iput-wide p2, p0, Lcom/eko/OnProgress;->downloadId:J

    .line 33
    new-instance p1, Landroid/app/DownloadManager$Query;

    invoke-direct {p1}, Landroid/app/DownloadManager$Query;-><init>()V

    iput-object p1, p0, Lcom/eko/OnProgress;->query:Landroid/app/DownloadManager$Query;

    const/4 p5, 0x1

    new-array p5, p5, [J

    const/4 v0, 0x0

    aput-wide p2, p5, v0

    .line 34
    invoke-virtual {p1, p5}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    iput-object p4, p0, Lcom/eko/OnProgress;->downloader:Lcom/eko/Downloader;

    return-void
.end method

.method private handleInterrupt()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/eko/OnProgress;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/eko/OnProgress;->interrupt()V

    :catch_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/eko/OnProgress;->downloadId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_9

    :try_start_0
    iget-object v0, p0, Lcom/eko/OnProgress;->downloader:Lcom/eko/Downloader;

    .line 54
    iget-object v0, v0, Lcom/eko/Downloader;->downloadManager:Landroid/app/DownloadManager;

    iget-object v1, p0, Lcom/eko/OnProgress;->query:Landroid/app/DownloadManager$Query;

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/eko/OnProgress;->cursor:Landroid/database/Cursor;

    .line 56
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    invoke-direct {p0}, Lcom/eko/OnProgress;->handleInterrupt()V

    :cond_1
    iget-object v0, p0, Lcom/eko/OnProgress;->cursor:Landroid/database/Cursor;

    const-string v1, "status"

    .line 60
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 62
    :cond_2
    invoke-direct {p0}, Lcom/eko/OnProgress;->handleInterrupt()V

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    const-wide/16 v0, 0x1388

    .line 66
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const-wide/16 v0, 0x3e8

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :cond_5
    const-wide/16 v0, 0xfa

    .line 70
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :goto_1
    iget-wide v0, p0, Lcom/eko/OnProgress;->bytesTotal:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6

    iget-object v0, p0, Lcom/eko/OnProgress;->cursor:Landroid/database/Cursor;

    const-string/jumbo v1, "total_size"

    .line 75
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/eko/OnProgress;->bytesTotal:J

    :cond_6
    iget-object v0, p0, Lcom/eko/OnProgress;->cursor:Landroid/database/Cursor;

    const-string v1, "bytes_so_far"

    .line 78
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    double-to-long v0, v0

    iget-wide v4, p0, Lcom/eko/OnProgress;->bytesTotal:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_7

    cmp-long v4, v0, v4

    if-nez v4, :cond_7

    .line 81
    invoke-direct {p0}, Lcom/eko/OnProgress;->handleInterrupt()V

    goto :goto_2

    :cond_7
    iput-wide v0, p0, Lcom/eko/OnProgress;->lastBytesDownloaded:J

    :goto_2
    iget-wide v0, p0, Lcom/eko/OnProgress;->lastBytesDownloaded:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    iget-wide v0, p0, Lcom/eko/OnProgress;->bytesTotal:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    iget-object v1, p0, Lcom/eko/OnProgress;->callback:Lcom/eko/ProgressCallback;

    iget-object v0, p0, Lcom/eko/OnProgress;->config:Lcom/eko/RNBGDTaskConfig;

    .line 87
    iget-object v2, v0, Lcom/eko/RNBGDTaskConfig;->id:Ljava/lang/String;

    iget-wide v3, p0, Lcom/eko/OnProgress;->lastBytesDownloaded:J

    iget-wide v5, p0, Lcom/eko/OnProgress;->bytesTotal:J

    invoke-interface/range {v1 .. v6}, Lcom/eko/ProgressCallback;->onProgress(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/eko/OnProgress;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RNBD: OnProgress e: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RNBackgroundDownloader"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :cond_9
    return-void
.end method
