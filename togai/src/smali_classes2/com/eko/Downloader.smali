.class public Lcom/eko/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# instance fields
.field private alreadySentIntentDownloadIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field public downloadManager:Landroid/app/DownloadManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/eko/Downloader;->alreadySentIntentDownloadIds:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/eko/Downloader;->context:Landroid/content/Context;

    const-string v0, "download"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    iput-object p1, p0, Lcom/eko/Downloader;->downloadManager:Landroid/app/DownloadManager;

    return-void
.end method


# virtual methods
.method public cancelDownload(J)I
    .locals 3

    iget-object v0, p0, Lcom/eko/Downloader;->downloadManager:Landroid/app/DownloadManager;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    .line 60
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    move-result p1

    return p1
.end method

.method public checkDownloadStatus(J)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 41
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    .line 42
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    iget-object v1, p0, Lcom/eko/Downloader;->downloadManager:Landroid/app/DownloadManager;

    .line 43
    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 47
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {p0, v0}, Lcom/eko/Downloader;->getDownloadStatus(Landroid/database/Cursor;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v0, "downloadId"

    .line 50
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "status"

    const/16 p2, 0x10

    .line 51
    invoke-interface {v1, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p1, "reason"

    const/4 p2, -0x1

    .line 52
    invoke-interface {v1, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p1, "reasonText"

    const-string p2, "COULD_NOT_FIND"

    .line 53
    invoke-interface {v1, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public getDownloadStatus(Landroid/database/Cursor;)Lcom/facebook/react/bridge/WritableMap;
    .locals 12

    const-string v0, "_id"

    .line 84
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "local_uri"

    .line 85
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string v3, "file://"

    .line 87
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v3, "bytes_so_far"

    .line 89
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "total_size"

    .line 90
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "status"

    .line 92
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "reason"

    .line 93
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v8, 0x4

    if-eq v6, v8, :cond_3

    const/16 v8, 0x8

    if-eq v6, v8, :cond_2

    const/16 v8, 0x10

    if-eq v6, v8, :cond_1

    goto :goto_0

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v2, "ERROR_UNKNOWN"

    goto :goto_0

    :pswitch_1
    const-string v2, "ERROR_FILE_ALREADY_EXISTS"

    goto :goto_0

    :pswitch_2
    const-string v2, "ERROR_CANNOT_RESUME"

    goto :goto_0

    :pswitch_3
    const-string v2, "ERROR_DEVICE_NOT_FOUND"

    goto :goto_0

    :pswitch_4
    const-string v2, "ERROR_INSUFFICIENT_SPACE"

    goto :goto_0

    :pswitch_5
    const-string v2, "ERROR_TOO_MANY_REDIRECTS"

    goto :goto_0

    :pswitch_6
    const-string v2, "ERROR_HTTP_DATA_ERROR"

    goto :goto_0

    :pswitch_7
    const-string v2, "ERROR_UNHANDLED_HTTP_CODE"

    goto :goto_0

    :pswitch_8
    const-string v2, "ERROR_FILE_ERROR"

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/eko/Downloader;->alreadySentIntentDownloadIds:Ljava/util/HashSet;

    .line 149
    invoke-virtual {v8, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/eko/Downloader;->alreadySentIntentDownloadIds:Ljava/util/HashSet;

    .line 150
    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "extra_download_id"

    .line 156
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v9, p0, Lcom/eko/Downloader;->context:Landroid/content/Context;

    .line 157
    invoke-virtual {v9, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    if-eq p1, v2, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    if-eq p1, v8, :cond_4

    const-string v2, "UNKNOWN"

    goto :goto_0

    :cond_4
    const-string v2, "PAUSED_UNKNOWN"

    goto :goto_0

    :cond_5
    const-string v2, "PAUSED_QUEUED_FOR_WIFI"

    goto :goto_0

    :cond_6
    const-string v2, "PAUSED_WAITING_FOR_NETWORK"

    goto :goto_0

    :cond_7
    const-string v2, "PAUSED_WAITING_TO_RETRY"

    .line 163
    :cond_8
    :goto_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v8

    const-string v9, "downloadId"

    .line 164
    invoke-interface {v8, v9, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-interface {v8, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 167
    invoke-interface {v8, v7, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p1, "reasonText"

    .line 168
    invoke-interface {v8, p1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-double v2, v2

    const-string p1, "bytesDownloaded"

    invoke-interface {v8, p1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 171
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-double v2, v2

    const-string p1, "bytesTotal"

    invoke-interface {v8, p1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p1, "localUri"

    .line 172
    invoke-interface {v8, p1, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public pauseDownload(J)V
    .locals 0

    return-void
.end method

.method public queueDownload(Landroid/app/DownloadManager$Request;)J
    .locals 2

    iget-object v0, p0, Lcom/eko/Downloader;->downloadManager:Landroid/app/DownloadManager;

    .line 37
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    return-wide v0
.end method

.method public resumeDownload(J)V
    .locals 0

    return-void
.end method
