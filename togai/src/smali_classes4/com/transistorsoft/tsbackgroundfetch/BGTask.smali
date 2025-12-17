.class public Lcom/transistorsoft/tsbackgroundfetch/BGTask;
.super Ljava/lang/Object;
.source "BGTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;
    }
.end annotation


# static fields
.field static MAX_TIME:I = 0xea60

.field private static final mTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/tsbackgroundfetch/BGTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCompletionHandler:Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$CompletionHandler;

.field private mJobId:I

.field private mTaskId:Ljava/lang/String;

.field private mTimedout:Z

.field private mTimeoutTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTasks:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$CompletionHandler;I)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTimedout:Z

    iput-object p2, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    iput-object p3, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mCompletionHandler:Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$CompletionHandler;

    iput p4, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mJobId:I

    .line 79
    new-instance p2, Lcom/transistorsoft/tsbackgroundfetch/BGTask$1;

    invoke-direct {p2, p0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask$1;-><init>(Lcom/transistorsoft/tsbackgroundfetch/BGTask;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTimeoutTask:Ljava/lang/Runnable;

    .line 84
    invoke-static {}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getUiHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTimeoutTask:Ljava/lang/Runnable;

    sget p3, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->MAX_TIME:I

    int-to-long p3, p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static addTask(Lcom/transistorsoft/tsbackgroundfetch/BGTask;)V
    .locals 1

    sget-object v0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTasks:Ljava/util/List;

    .line 42
    monitor-enter v0

    .line 43
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static cancel(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "- cancel taskId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", jobId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TSBackgroundFetch"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const-string p1, "jobscheduler"

    .line 260
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    if-eqz p0, :cond_1

    .line 262
    invoke-virtual {p0, p2}, Landroid/app/job/JobScheduler;->cancel(I)V

    goto :goto_0

    :cond_0
    const-string p2, "alarm"

    .line 265
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    if-eqz p2, :cond_1

    .line 267
    invoke-static {p0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getAlarmPI(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static clear()V
    .locals 2

    sget-object v0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTasks:Ljava/util/List;

    .line 63
    monitor-enter v0

    .line 64
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getAlarmPI(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transistorsoft/tsbackgroundfetch/FetchAlarmReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    const/high16 v1, 0xc000000

    .line 275
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static getTask(Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BGTask;
    .locals 4

    sget-object v0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTasks:Ljava/util/List;

    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/tsbackgroundfetch/BGTask;

    .line 35
    invoke-virtual {v2, p0}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->hasTaskId(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    return-object v2

    .line 37
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static removeTask(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTasks:Ljava/util/List;

    .line 48
    monitor-enter v0

    .line 50
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/tsbackgroundfetch/BGTask;

    .line 51
    invoke-virtual {v2, p0}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->hasTaskId(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    sget-object p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTasks:Ljava/util/List;

    .line 57
    invoke-interface {p0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 59
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static reschedule(Landroid/content/Context;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;)V
    .locals 1

    .line 115
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getTask(Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BGTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->finish()V

    .line 119
    :cond_0
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getJobId()I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->cancel(Landroid/content/Context;Ljava/lang/String;I)V

    .line 121
    invoke-static {p0, p2}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->schedule(Landroid/content/Context;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;)V

    return-void
.end method

.method static schedule(Landroid/content/Context;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;)V
    .locals 9

    const-string v0, "TSBackgroundFetch"

    .line 125
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->isFetchTask()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getMinimumFetchInterval()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getDelay()J

    move-result-wide v0

    :goto_0
    move-wide v6, v0

    .line 129
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getForceAlarmManager()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "jobscheduler"

    .line 132
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 134
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getJobId()I

    move-result v3

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 135
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getRequiredNetworkType()I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 136
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getRequiresDeviceIdle()Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 137
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getRequiresCharging()Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 138
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getStartOnBoot()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getStopOnTerminate()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 140
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getPeriodic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    invoke-virtual {p0, v6, v7, v6, v7}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    goto :goto_1

    .line 147
    :cond_2
    invoke-virtual {p0, v6, v7}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 149
    :goto_1
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    const-string v2, "taskId"

    .line 150
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "scheduled_at"

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 153
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 156
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getRequiresStorageNotLow()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 157
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getRequiresBatteryNotLow()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    if-eqz v0, :cond_7

    .line 160
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto :goto_2

    :cond_3
    const-string v0, "alarm"

    .line 164
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/AlarmManager;

    if-eqz v2, :cond_7

    .line 166
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getAlarmPI(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long v4, v3, v6

    .line 168
    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getPeriodic()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v3, 0x0

    .line 169
    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_2

    :cond_4
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1f

    if-lt p0, p1, :cond_6

    .line 173
    invoke-virtual {v2}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 174
    invoke-virtual {v2, v1, v4, v5, v8}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_2

    .line 176
    :cond_5
    invoke-virtual {v2, v1, v4, v5, v8}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_2

    .line 179
    :cond_6
    invoke-virtual {v2, v1, v4, v5, v8}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method finish()V
    .locals 2

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mCompletionHandler:Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$CompletionHandler;

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0}, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$CompletionHandler;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTimeoutTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 108
    invoke-static {}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mCompletionHandler:Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$CompletionHandler;

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    .line 111
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->removeTask(Ljava/lang/String;)V

    return-void
.end method

.method fireHeadlessEvent(Landroid/content/Context;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;
        }
    .end annotation

    .line 230
    :try_start_0
    invoke-virtual {p2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getJobService()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 231
    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/transistorsoft/tsbackgroundfetch/BGTask;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 232
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 235
    :try_start_1
    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 236
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    new-array v1, v2, [Ljava/lang/Class;

    .line 239
    invoke-virtual {p2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array v1, v2, [Ljava/lang/Object;

    .line 240
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 241
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onFetch"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 242
    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 253
    new-instance p2, Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_2
    move-exception p1

    .line 251
    new-instance p2, Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;

    invoke-virtual {p1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_3
    move-exception p1

    .line 249
    new-instance p2, Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_4
    move-exception p1

    .line 247
    new-instance p2, Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_5
    move-exception p1

    .line 245
    new-instance p2, Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method getJobId()I
    .locals 1

    iget v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mJobId:I

    return v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimedOut()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTimedout:Z

    return v0
.end method

.method hasTaskId(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method onTimeout(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTimedout:Z

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[BGTask] timeout: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TSBackgroundFetch"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    move-result-object v0

    .line 197
    invoke-static {}, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->getInstance()Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->isHeadless()Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getFetchCallback()Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$Callback;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    .line 200
    invoke-interface {p1, v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$Callback;->onTimeout(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    .line 203
    invoke-virtual {v0, v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getConfig(Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 205
    invoke-virtual {v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getJobService()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 207
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->fireHeadlessEvent(Landroid/content/Context;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;)V
    :try_end_0
    .catch Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Headless task error: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask$Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    .line 212
    invoke-virtual {v0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->finish(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "[BGTask] failed to load config for taskId: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    .line 216
    invoke-virtual {v0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->finish(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method setCompletionHandler(Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$CompletionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mCompletionHandler:Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$CompletionHandler;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 290
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "taskId"

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    .line 292
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timeout"

    iget-boolean v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTimedout:Z

    .line 293
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 295
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public toMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "taskId"

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    .line 284
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTimedout:Z

    .line 285
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "timeout"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[BGTask taskId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
