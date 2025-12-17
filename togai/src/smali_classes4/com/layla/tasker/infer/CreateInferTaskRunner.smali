.class public final Lcom/layla/tasker/infer/CreateInferTaskRunner;
.super Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;
.source "Runner.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction<",
        "Lcom/layla/tasker/infer/NewInferTaskInput;",
        "Lcom/layla/tasker/infer/NewInferTaskOutput;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRunner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runner.kt\ncom/layla/tasker/infer/CreateInferTaskRunner\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n1855#2,2:53\n*S KotlinDebug\n*F\n+ 1 Runner.kt\ncom/layla/tasker/infer/CreateInferTaskRunner\n*L\n40#1:53,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J$\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000eH\u0016R\u0014\u0010\u0005\u001a\u00020\u00068TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/layla/tasker/infer/CreateInferTaskRunner;",
        "Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;",
        "Lcom/layla/tasker/infer/NewInferTaskInput;",
        "Lcom/layla/tasker/infer/NewInferTaskOutput;",
        "()V",
        "notificationProperties",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;",
        "getNotificationProperties",
        "()Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;",
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

    .line 21
    invoke-direct {p0}, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNotificationProperties()Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;
    .locals 11

    .line 24
    new-instance v10, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/layla/R$drawable;->plugin:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x6f

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;-><init>(IIIIILjava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10
.end method

.method public run(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "Lcom/layla/tasker/infer/NewInferTaskInput;",
            ">;)",
            "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResult<",
            "Lcom/layla/tasker/infer/NewInferTaskOutput;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/layla/HeadlessJsService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "taskId"

    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "action"

    const-string v3, "createInferTask"

    .line 32
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;->getRegular()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layla/tasker/infer/NewInferTaskInput;

    invoke-virtual {v2}, Lcom/layla/tasker/infer/NewInferTaskInput;->getModelPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "modelPath"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;->getRegular()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layla/tasker/infer/NewInferTaskInput;

    invoke-virtual {v2}, Lcom/layla/tasker/infer/NewInferTaskInput;->getSysPromptStart()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sysPromptStart"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;->getRegular()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layla/tasker/infer/NewInferTaskInput;

    invoke-virtual {v2}, Lcom/layla/tasker/infer/NewInferTaskInput;->getSysPromptEnd()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sysPromptEnd"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;->getRegular()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layla/tasker/infer/NewInferTaskInput;

    invoke-virtual {v2}, Lcom/layla/tasker/infer/NewInferTaskInput;->getAntiprompt()Ljava/lang/String;

    move-result-object v2

    const-string v3, "antiprompt"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-virtual {p2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;->getRegular()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layla/tasker/infer/NewInferTaskInput;

    invoke-virtual {v2}, Lcom/layla/tasker/infer/NewInferTaskInput;->getInputPrefix()Ljava/lang/String;

    move-result-object v2

    const-string v3, "inputPrefix"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;->getRegular()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layla/tasker/infer/NewInferTaskInput;

    invoke-virtual {v2}, Lcom/layla/tasker/infer/NewInferTaskInput;->getInputSuffix()Ljava/lang/String;

    move-result-object v2

    const-string v3, "inputSuffix"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-static {}, Lcom/layla/tasker/infer/InputKt;->getInfosForTasker()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 53
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/layla/tasker/infer/InfoFromMainApp;

    .line 41
    invoke-virtual {p2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;->getDynamic()Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;

    move-result-object v4

    invoke-virtual {v3}, Lcom/layla/tasker/infer/InfoFromMainApp;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->getByKey(Ljava/lang/String;)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 42
    invoke-virtual {v3}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 47
    invoke-static {p1}, Lcom/facebook/react/HeadlessJsTaskService;->acquireWakeLockNow(Landroid/content/Context;)V

    .line 49
    new-instance p1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultSucess;

    new-instance v6, Lcom/layla/tasker/infer/NewInferTaskOutput;

    invoke-direct {v6, v1}, Lcom/layla/tasker/infer/NewInferTaskOutput;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultSucess;-><init>(Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;Landroid/net/Uri;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResult;

    return-object p1
.end method
