.class public Lcom/layla/LaylaWorker;
.super Landroidx/work/Worker;
.source "LaylaWorker.java"


# instance fields
.field private final TASK_MGR_NOTIFICATION_ID:I

.field private notificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "llama-jni"

    .line 26
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    const/16 p2, 0x14f

    iput p2, p0, Lcom/layla/LaylaWorker;->TASK_MGR_NOTIFICATION_ID:I

    const-string p2, "notification"

    .line 37
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/layla/LaylaWorker;->notificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private createForegroundInfo(Ljava/lang/String;)Landroidx/work/ForegroundInfo;
    .locals 3

    .line 68
    invoke-virtual {p0}, Lcom/layla/LaylaWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 73
    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/layla/LaylaWorker;->getId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/WorkManager;->createCancelPendingIntent(Ljava/util/UUID;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 81
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "layla-taskmgr"

    invoke-direct {v1, p1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "Layla Task Manager"

    .line 82
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 83
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    sget v1, Lcom/layla/R$mipmap;->ic_launcher:I

    .line 84
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 85
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const v1, 0x108001d

    const-string v2, "Cancel"

    .line 88
    invoke-virtual {p1, v1, v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 91
    new-instance v0, Landroidx/work/ForegroundInfo;

    const/16 v1, 0x14f

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v1, p1, v2}, Landroidx/work/ForegroundInfo;-><init>(ILandroid/app/Notification;I)V

    return-object v0
.end method

.method private download(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 3

    .line 43
    invoke-virtual {p0}, Lcom/layla/LaylaWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const-string v1, "mgrPath"

    .line 44
    invoke-virtual {v0, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Background tasks are running..."

    .line 48
    invoke-direct {p0, v1}, Lcom/layla/LaylaWorker;->createForegroundInfo(Ljava/lang/String;)Landroidx/work/ForegroundInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/layla/LaylaWorker;->setForegroundAsync(Landroidx/work/ForegroundInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/layla/LaylaWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/layla/taskmgr/TaskMgr;->executeTaskQueueImpl(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 52
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 54
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
