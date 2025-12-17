.class public Lcom/layla/taskmgr/TaskMgrService;
.super Landroid/app/Service;
.source "TaskMgrService.java"


# static fields
.field public static final TASKMGR_NOTIFICATION_ID:I = 0x2

.field public static final TASKMGR_SERVICE_CHANNEL:Ljava/lang/String; = "com.layla.channels.taskmgr"

.field public static final TASKMGR_SERVICE_INTENT_FILTER:Ljava/lang/String; = "com.layla.TaskMgrServiceIntentFilter"


# instance fields
.field private floatingWidget:Landroid/view/View;

.field private isBackground:Z

.field private final notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field private params:Landroid/view/WindowManager$LayoutParams;

.field private runningThread:Ljava/lang/Thread;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$iv2QXt14JV7WkBsBKLFV68hiwlU(Lcom/layla/taskmgr/TaskMgrService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layla/taskmgr/TaskMgrService;->lambda$onStartCommand$0(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetfloatingWidget(Lcom/layla/taskmgr/TaskMgrService;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/layla/taskmgr/TaskMgrService;->floatingWidget:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparams(Lcom/layla/taskmgr/TaskMgrService;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/layla/taskmgr/TaskMgrService;->params:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwindowManager(Lcom/layla/taskmgr/TaskMgrService;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/layla/taskmgr/TaskMgrService;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 4

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layla/taskmgr/TaskMgrService;->isBackground:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/layla/taskmgr/TaskMgrService;->runningThread:Ljava/lang/Thread;

    .line 48
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "com.layla.channels.taskmgr"

    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "Layla is processing long-running tasks..."

    .line 49
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v2, "To stop this, click the kill-switch in the Background Inference app"

    .line 50
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    sget v2, Lcom/layla/R$mipmap;->gear:I

    .line 51
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x2

    .line 52
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 53
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/16 v3, 0x64

    .line 54
    invoke-virtual {v1, v3, v0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/layla/taskmgr/TaskMgrService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method private synthetic lambda$onStartCommand$0(Landroid/content/Intent;)V
    .locals 11

    const-string v0, "power"

    .line 199
    invoke-virtual {p0, v0}, Lcom/layla/taskmgr/TaskMgrService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "layla::wakelogtag"

    const/4 v2, 0x1

    .line 200
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v1, "mgrPath"

    .line 205
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "csvTaskIds"

    .line 206
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 209
    :try_start_0
    invoke-static {v1}, Lcom/layla/taskmgr/TaskMgr;->getPendingTasksImpl(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 211
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const-string v4, ","

    .line 215
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 219
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v5, 0x0

    move v6, v5

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/layla/taskmgr/TaskMgr$Task;

    .line 220
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v7, Lcom/layla/taskmgr/TaskMgr$Task;->id:Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/layla/taskmgr/TaskMgrService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 223
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9, v6, v5}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    iget-object v8, p0, Lcom/layla/taskmgr/TaskMgrService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 224
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Processing task "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    iget-object v8, p0, Lcom/layla/taskmgr/TaskMgrService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 226
    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {p0, v9, v8}, Lcom/layla/taskmgr/TaskMgrService;->startForeground(ILandroid/app/Notification;)V

    .line 228
    invoke-virtual {p0}, Lcom/layla/taskmgr/TaskMgrService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v7, v7, Lcom/layla/taskmgr/TaskMgr$Task;->id:Ljava/lang/String;

    invoke-static {v8, v1, v7}, Lcom/layla/taskmgr/TaskMgr;->executeTaskIdImpl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_1

    .line 240
    :cond_3
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 243
    invoke-virtual {p0, v2}, Lcom/layla/taskmgr/TaskMgrService;->stopForeground(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/layla/taskmgr/TaskMgrService;->stopSelf()V

    return-void

    :catch_0
    move-exception p1

    .line 236
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 59
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 61
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Layla Long-running Tasks"

    const/4 v2, 0x4

    const-string v3, "com.layla.channels.taskmgr"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 67
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/layla/taskmgr/TaskMgrService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 68
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 78
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/layla/taskmgr/TaskMgrService;->floatingWidget:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/layla/taskmgr/TaskMgrService;->windowManager:Landroid/view/WindowManager;

    .line 79
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/layla/taskmgr/TaskMgrService;->runningThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layla/taskmgr/TaskMgrService;->runningThread:Ljava/lang/Thread;

    :cond_1
    const-string v0, "TaskMgrService"

    const-string v1, "Service is being destroyed, resources are being cleaned up."

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    const/4 p2, 0x2

    if-nez p1, :cond_0

    return p2

    :cond_0
    const-string p3, "kill"

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p3, :cond_2

    .line 97
    invoke-virtual {p0, v2}, Lcom/layla/taskmgr/TaskMgrService;->stopForeground(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/layla/taskmgr/TaskMgrService;->stopSelf()V

    iget-object p1, p0, Lcom/layla/taskmgr/TaskMgrService;->runningThread:Ljava/lang/Thread;

    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/layla/taskmgr/TaskMgrService;->runningThread:Ljava/lang/Thread;

    .line 103
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    iput-object v1, p0, Lcom/layla/taskmgr/TaskMgrService;->runningThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return p2

    .line 114
    :cond_2
    new-instance p3, Landroid/content/Intent;

    const-class v3, Lcom/layla/MainActivity;

    invoke-direct {p3, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x4000000

    .line 115
    invoke-static {p0, v0, p3, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    iget-object v0, p0, Lcom/layla/taskmgr/TaskMgrService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 116
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    iget-object p3, p0, Lcom/layla/taskmgr/TaskMgrService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 119
    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/layla/taskmgr/TaskMgrService;->startForeground(ILandroid/app/Notification;)V

    iget-object p2, p0, Lcom/layla/taskmgr/TaskMgrService;->floatingWidget:Landroid/view/View;

    if-eqz p2, :cond_3

    iget-object p3, p0, Lcom/layla/taskmgr/TaskMgrService;->windowManager:Landroid/view/WindowManager;

    .line 123
    invoke-interface {p3, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_3
    const-string p2, "window"

    .line 124
    invoke-virtual {p0, p2}, Lcom/layla/taskmgr/TaskMgrService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/layla/taskmgr/TaskMgrService;->windowManager:Landroid/view/WindowManager;

    .line 126
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/layla/R$layout;->floating_widget_layout:I

    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/layla/taskmgr/TaskMgrService;->floatingWidget:Landroid/view/View;

    const p3, 0x3c23d70a    # 0.01f

    .line 127
    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    .line 130
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v6, 0x7f6

    const/16 v7, 0x8

    const/4 v8, -0x3

    move-object v3, p2

    .line 135
    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object p2, p0, Lcom/layla/taskmgr/TaskMgrService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 p3, 0x33

    .line 140
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p2, p0, Lcom/layla/taskmgr/TaskMgrService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 p3, 0x32

    .line 141
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p2, p0, Lcom/layla/taskmgr/TaskMgrService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 p3, 0x64

    .line 142
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p2, p0, Lcom/layla/taskmgr/TaskMgrService;->windowManager:Landroid/view/WindowManager;

    iget-object p3, p0, Lcom/layla/taskmgr/TaskMgrService;->floatingWidget:Landroid/view/View;

    iget-object v0, p0, Lcom/layla/taskmgr/TaskMgrService;->params:Landroid/view/WindowManager$LayoutParams;

    .line 145
    invoke-interface {p2, p3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/layla/taskmgr/TaskMgrService;->floatingWidget:Landroid/view/View;

    .line 148
    new-instance p3, Lcom/layla/taskmgr/TaskMgrService$1;

    invoke-direct {p3, p0}, Lcom/layla/taskmgr/TaskMgrService$1;-><init>(Lcom/layla/taskmgr/TaskMgrService;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Lcom/layla/taskmgr/TaskMgrService;->runningThread:Ljava/lang/Thread;

    if-nez p2, :cond_4

    .line 198
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/layla/taskmgr/TaskMgrService$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/layla/taskmgr/TaskMgrService$$ExternalSyntheticLambda0;-><init>(Lcom/layla/taskmgr/TaskMgrService;Landroid/content/Intent;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/layla/taskmgr/TaskMgrService;->runningThread:Ljava/lang/Thread;

    const/16 p1, 0xa

    .line 247
    invoke-virtual {p2, p1}, Ljava/lang/Thread;->setPriority(I)V

    iget-object p1, p0, Lcom/layla/taskmgr/TaskMgrService;->runningThread:Ljava/lang/Thread;

    .line 249
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_4
    return v2
.end method
