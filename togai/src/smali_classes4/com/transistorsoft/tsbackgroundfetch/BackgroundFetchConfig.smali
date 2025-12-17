.class public Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;
.super Ljava/lang/Object;
.source "BackgroundFetchConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;,
        Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$OnLoadCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_FETCH_INTERVAL:I = 0xf

.field static FETCH_JOB_ID:I = 0x3e7

.field public static final FIELD_DELAY:Ljava/lang/String; = "delay"

.field public static final FIELD_FORCE_ALARM_MANAGER:Ljava/lang/String; = "forceAlarmManager"

.field public static final FIELD_IS_FETCH_TASK:Ljava/lang/String; = "isFetchTask"

.field public static final FIELD_JOB_SERVICE:Ljava/lang/String; = "jobService"

.field public static final FIELD_MINIMUM_FETCH_INTERVAL:Ljava/lang/String; = "minimumFetchInterval"

.field public static final FIELD_PERIODIC:Ljava/lang/String; = "periodic"

.field public static final FIELD_REQUIRED_NETWORK_TYPE:Ljava/lang/String; = "requiredNetworkType"

.field public static final FIELD_REQUIRES_BATTERY_NOT_LOW:Ljava/lang/String; = "requiresBatteryNotLow"

.field public static final FIELD_REQUIRES_CHARGING:Ljava/lang/String; = "requiresCharging"

.field public static final FIELD_REQUIRES_DEVICE_IDLE:Ljava/lang/String; = "requiresDeviceIdle"

.field public static final FIELD_REQUIRES_STORAGE_NOT_LOW:Ljava/lang/String; = "requiresStorageNotLow"

.field public static final FIELD_START_ON_BOOT:Ljava/lang/String; = "startOnBoot"

.field public static final FIELD_STOP_ON_TERMINATE:Ljava/lang/String; = "stopOnTerminate"

.field public static final FIELD_TASK_ID:Ljava/lang/String; = "taskId"

.field private static final MINIMUM_FETCH_INTERVAL:I = 0x1


# instance fields
.field private config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)V
    .locals 2

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 199
    invoke-static {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$100(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 200
    invoke-static {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$200(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result p1

    const-string v0, "TSBackgroundFetch"

    if-nez p1, :cond_0

    const-string p1, "- Configuration error:  In order to use stopOnTerminate: false, you must set enableHeadless: true"

    .line 201
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    const/4 v1, 0x1

    .line 202
    invoke-virtual {p1, v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setStopOnTerminate(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    :cond_0
    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 204
    invoke-static {p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$300(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "- Configuration error:  In order to use startOnBoot: true, you must enableHeadless: true"

    .line 205
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p1, v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->setStartOnBoot(Z)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;-><init>(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)V

    return-void
.end method

.method static load(Landroid/content/Context;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$OnLoadCallback;)V
    .locals 2

    .line 337
    invoke-static {}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$1;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$1;-><init>(Landroid/content/Context;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$OnLoadCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method destroy(Landroid/content/Context;)V
    .locals 5

    const-string v0, "TSBackgroundFetch"

    const/4 v1, 0x0

    .line 247
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 248
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "tasks"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_0

    .line 250
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :cond_0
    iget-object v4, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 252
    invoke-static {v4}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$400(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 254
    invoke-static {v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$400(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 256
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 257
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 259
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$500(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "TSBackgroundFetch:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    invoke-static {v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$400(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 261
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 262
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method

.method public getDelay()J
    .locals 2

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 300
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$1400(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getForceAlarmManager()Z
    .locals 1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 292
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$1200(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v0

    return v0
.end method

.method getJobId()I
    .locals 1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 304
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$1200(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->isFetchTask()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->FETCH_JOB_ID:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$400(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getJobService()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 289
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$100(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumFetchInterval()I
    .locals 1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 274
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$600(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)I

    move-result v0

    return v0
.end method

.method public getPeriodic()Z
    .locals 1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 296
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$1300(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->isFetchTask()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getRequiredNetworkType()I
    .locals 1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 277
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$700(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)I

    move-result v0

    return v0
.end method

.method public getRequiresBatteryNotLow()Z
    .locals 1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 278
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$800(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v0

    return v0
.end method

.method public getRequiresCharging()Z
    .locals 1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 279
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$900(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v0

    return v0
.end method

.method public getRequiresDeviceIdle()Z
    .locals 1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 280
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$1000(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v0

    return v0
.end method

.method public getRequiresStorageNotLow()Z
    .locals 1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 281
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$1100(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v0

    return v0
.end method

.method public getStartOnBoot()Z
    .locals 1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 286
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$300(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v0

    return v0
.end method

.method public getStopOnTerminate()Z
    .locals 1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 283
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$200(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v0

    return v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 272
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$400(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isFetchTask()Z
    .locals 1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 269
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$500(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v0

    return v0
.end method

.method save(Landroid/content/Context;)V
    .locals 5

    const-string v0, "TSBackgroundFetch"

    const/4 v1, 0x0

    .line 212
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 213
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "tasks"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_0

    .line 215
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :cond_0
    iget-object v4, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 217
    invoke-static {v4}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$400(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 218
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 219
    invoke-static {v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$400(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 222
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 223
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 226
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "TSBackgroundFetch:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    invoke-static {v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$400(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 228
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$400(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "taskId"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 229
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$500(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v0

    const-string v1, "isFetchTask"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 230
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$600(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)I

    move-result v0

    const-string v1, "minimumFetchInterval"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 231
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$200(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v0

    const-string v1, "stopOnTerminate"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 232
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$300(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v0

    const-string v1, "startOnBoot"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 233
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$700(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)I

    move-result v0

    const-string v1, "requiredNetworkType"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 234
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$800(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v0

    const-string v1, "requiresBatteryNotLow"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 235
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$900(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v0

    const-string v1, "requiresCharging"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 236
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$1000(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v0

    const-string v1, "requiresDeviceIdle"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 237
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$1100(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v0

    const-string v1, "requiresStorageNotLow"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 238
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$100(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jobService"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 239
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$1200(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v0

    const-string v1, "forceAlarmManager"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 240
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$1300(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v0

    const-string v1, "periodic"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 241
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$1400(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)J

    move-result-wide v0

    const-string v2, "delay"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 243
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 312
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "taskId"

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 314
    invoke-static {v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$400(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isFetchTask"

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 315
    invoke-static {v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$500(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "minimumFetchInterval"

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 316
    invoke-static {v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$600(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "stopOnTerminate"

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 317
    invoke-static {v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$200(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "requiredNetworkType"

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 318
    invoke-static {v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$700(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "requiresBatteryNotLow"

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 319
    invoke-static {v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$800(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "requiresCharging"

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 320
    invoke-static {v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$900(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "requiresDeviceIdle"

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 321
    invoke-static {v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$1000(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "requiresStorageNotLow"

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 322
    invoke-static {v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$1100(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "startOnBoot"

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 323
    invoke-static {v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$300(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "jobService"

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 324
    invoke-static {v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$100(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "forceAlarmManager"

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 325
    invoke-static {v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$1200(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "periodic"

    .line 326
    invoke-virtual {p0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getPeriodic()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "delay"

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->config:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    .line 327
    invoke-static {v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->access$1400(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 v1, 0x2

    .line 329
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 331
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 332
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
