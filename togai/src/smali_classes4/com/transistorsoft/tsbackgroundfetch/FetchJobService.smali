.class public Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;
.super Landroid/app/job/JobService;
.source "FetchJobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$LastJob;,
        Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$CompletionHandler;
    }
.end annotation


# static fields
.field private static final sLastJob:Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$LastJob;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$LastJob;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$LastJob;-><init>(Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$1;)V

    sput-object v0, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;->sLastJob:Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$LastJob;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onStartJob$0$com-transistorsoft-tsbackgroundfetch-FetchJobService(Landroid/app/job/JobParameters;)V
    .locals 2

    .line 0
    const-string v0, "TSBackgroundFetch"

    const-string v1, "- jobFinished"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 7

    const-string v0, "- Caught duplicate Job "

    .line 19
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "scheduled_at"

    .line 20
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x3e8

    cmp-long v2, v4, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_0

    .line 25
    invoke-virtual {p0, p1, v3}, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v4

    :cond_0
    const-string v2, "taskId"

    .line 29
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;->sLastJob:Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$LastJob;

    .line 33
    monitor-enter v2

    .line 34
    :try_start_0
    invoke-virtual {v2, v1}, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$LastJob;->isDuplicate(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "TSBackgroundFetch"

    .line 35
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": [IGNORED]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0, p1, v3}, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 37
    monitor-exit v2

    return v4

    .line 39
    :cond_1
    invoke-virtual {v2, v1}, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$LastJob;->update(Ljava/lang/String;)V

    .line 41
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    new-instance v0, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;Landroid/app/job/JobParameters;)V

    .line 47
    new-instance v2, Lcom/transistorsoft/tsbackgroundfetch/BGTask;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$CompletionHandler;I)V

    .line 48
    invoke-virtual {p0}, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->onFetch(Lcom/transistorsoft/tsbackgroundfetch/BGTask;)V

    return v4

    :catchall_0
    move-exception p1

    .line 41
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    const-string v0, "TSBackgroundFetch"

    const-string v1, "- onStopJob"

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "taskId"

    .line 58
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->getTask(Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BGTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->onTimeout(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, v0}, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    const/4 p1, 0x1

    return p1
.end method
