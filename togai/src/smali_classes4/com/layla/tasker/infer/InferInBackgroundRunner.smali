.class public final Lcom/layla/tasker/infer/InferInBackgroundRunner;
.super Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;
.source "BackgroundInfer.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction<",
        "Lcom/layla/tasker/infer/NewInferTaskInput;",
        "Lcom/layla/tasker/infer/InferInBackgroundOutput;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J$\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/layla/tasker/infer/InferInBackgroundRunner;",
        "Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;",
        "Lcom/layla/tasker/infer/NewInferTaskInput;",
        "Lcom/layla/tasker/infer/InferInBackgroundOutput;",
        "()V",
        "run",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResult;",
        "context",
        "Landroid/content/Context;",
        "input",
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "Lcom/layla/tasker/infer/NewInferTaskInput;",
            ">;)",
            "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResult<",
            "Lcom/layla/tasker/infer/InferInBackgroundOutput;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Lcom/layla/tasker/infer/InferInBackgroundRunner$run$output$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/layla/tasker/infer/InferInBackgroundRunner$run$output$1;-><init>(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/layla/tasker/infer/InferInBackgroundOutput;

    .line 105
    new-instance p1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultSucess;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultSucess;-><init>(Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;Landroid/net/Uri;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResult;

    return-object p1

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Have to be able to draw overlays to launch activities from background"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
