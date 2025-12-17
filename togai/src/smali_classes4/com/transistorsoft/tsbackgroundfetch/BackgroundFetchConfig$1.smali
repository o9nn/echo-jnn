.class Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$1;
.super Ljava/lang/Object;
.source "BackgroundFetchConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;->load(Landroid/content/Context;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$OnLoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$OnLoadCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$OnLoadCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$1;->val$callback:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$OnLoadCallback;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$1;->val$context:Landroid/content/Context;

    const-string v2, "TSBackgroundFetch"

    const/4 v3, 0x0

    .line 342
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 343
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "tasks"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 346
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 347
    new-instance v3, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;

    invoke-direct {v3}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;-><init>()V

    iget-object v4, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$Builder;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 350
    :cond_0
    invoke-static {}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getUiHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$1$1;

    invoke-direct {v2, p0, v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$1$1;-><init>(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$1;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
