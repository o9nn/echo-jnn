.class Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$1;
.super Ljava/lang/Object;
.source "BackgroundFetch.java"

# interfaces
.implements Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$OnLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->onBoot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;


# direct methods
.method constructor <init>(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;)V
    .locals 0

    iput-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$1;->this$0:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoad(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;

    .line 106
    invoke-virtual {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getStartOnBoot()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getStopOnTerminate()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$1;->this$0:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    .line 110
    invoke-static {v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->access$100(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$1;->this$0:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    .line 111
    invoke-static {v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->access$100(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-virtual {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getForceAlarmManager()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->isFetchTask()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$1;->this$0:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    .line 115
    invoke-virtual {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->start(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$1;->this$0:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    .line 117
    invoke-virtual {v1, v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->scheduleTask(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 112
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$1;->this$0:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    .line 107
    invoke-static {v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->access$000(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->destroy(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    return-void
.end method
