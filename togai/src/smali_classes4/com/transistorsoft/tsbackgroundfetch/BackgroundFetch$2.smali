.class Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$2;
.super Ljava/lang/Object;
.source "BackgroundFetch.java"

# interfaces
.implements Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$OnLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->onFetch(Lcom/transistorsoft/tsbackgroundfetch/BGTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

.field final synthetic val$task:Lcom/transistorsoft/tsbackgroundfetch/BGTask;


# direct methods
.method constructor <init>(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;Lcom/transistorsoft/tsbackgroundfetch/BGTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$2;->this$0:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    iput-object p2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$2;->val$task:Lcom/transistorsoft/tsbackgroundfetch/BGTask;

    .line 218
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

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$2;->this$0:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    .line 221
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->access$100(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 222
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;

    iget-object v2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$2;->this$0:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    .line 223
    invoke-static {v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->access$100(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 225
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$2;->this$0:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$2;->val$task:Lcom/transistorsoft/tsbackgroundfetch/BGTask;

    .line 226
    invoke-static {p1, v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->access$200(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;Lcom/transistorsoft/tsbackgroundfetch/BGTask;)V

    return-void

    :catchall_0
    move-exception p1

    .line 225
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
