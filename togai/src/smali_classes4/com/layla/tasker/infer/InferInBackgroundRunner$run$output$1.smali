.class final Lcom/layla/tasker/infer/InferInBackgroundRunner$run$output$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BackgroundInfer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layla/tasker/infer/InferInBackgroundRunner;->run(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/layla/tasker/infer/InferInBackgroundOutput;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/layla/tasker/infer/InferInBackgroundOutput;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.layla.tasker.infer.InferInBackgroundRunner$run$output$1"
    f = "BackgroundInfer.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $input:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "Lcom/layla/tasker/infer/NewInferTaskInput;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "Lcom/layla/tasker/infer/NewInferTaskInput;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/layla/tasker/infer/InferInBackgroundRunner$run$output$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/layla/tasker/infer/InferInBackgroundRunner$run$output$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/layla/tasker/infer/InferInBackgroundRunner$run$output$1;->$input:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/layla/tasker/infer/InferInBackgroundRunner$run$output$1;

    iget-object v0, p0, Lcom/layla/tasker/infer/InferInBackgroundRunner$run$output$1;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/layla/tasker/infer/InferInBackgroundRunner$run$output$1;->$input:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;

    invoke-direct {p1, v0, v1, p2}, Lcom/layla/tasker/infer/InferInBackgroundRunner$run$output$1;-><init>(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/layla/tasker/infer/InferInBackgroundRunner$run$output$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/layla/tasker/infer/InferInBackgroundOutput;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/layla/tasker/infer/InferInBackgroundRunner$run$output$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/layla/tasker/infer/InferInBackgroundRunner$run$output$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/layla/tasker/infer/InferInBackgroundRunner$run$output$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v1, v0, Lcom/layla/tasker/infer/InferInBackgroundRunner$run$output$1;->label:I

    if-nez v1, :cond_5

    .line 64
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 66
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v3, v0, Lcom/layla/tasker/infer/InferInBackgroundRunner$run$output$1;->$input:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;

    .line 67
    invoke-virtual {v3}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;->getRegular()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/layla/tasker/infer/NewInferTaskInput;

    invoke-virtual {v4}, Lcom/layla/tasker/infer/NewInferTaskInput;->getModelPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "modelPath"

    invoke-virtual {v2, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "promptCachePath"

    const-string v5, "/data/user/0/com.layla/cache/prompts/infer_in_bg"

    .line 68
    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "logPath"

    const-string v5, "/data/user/0/com.layla/files/app-data/long-term-memory/infer_in_bg.log"

    .line 69
    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/util/Map;

    const/4 v6, 0x4

    new-array v7, v6, [Lkotlin/Pair;

    const-string v8, "system"

    const-string v9, "role"

    .line 72
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v7, v10

    .line 73
    invoke-virtual {v3}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;->getDynamic()Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;

    move-result-object v8

    const-string v11, "sysprompt"

    invoke-virtual {v8, v11}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->getByKey(Ljava/lang/String;)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;

    move-result-object v8

    const/4 v11, 0x0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->getValue()Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v11

    :goto_0
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v12, ""

    if-nez v8, :cond_1

    move-object v8, v12

    :cond_1
    const-string v13, "msg"

    invoke-static {v13, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/4 v14, 0x1

    aput-object v8, v7, v14

    const-string v8, "grammar"

    .line 74
    invoke-static {v8, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v15

    aput-object v15, v7, v4

    const-string v15, "imgPath"

    .line 75
    invoke-static {v15, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v16

    const/16 v17, 0x3

    aput-object v16, v7, v17

    .line 71
    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    aput-object v7, v5, v10

    new-array v6, v6, [Lkotlin/Pair;

    const-string v7, "user"

    .line 78
    invoke-static {v9, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v6, v10

    .line 79
    invoke-virtual {v3}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;->getDynamic()Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;

    move-result-object v7

    const-string v9, "prompt"

    invoke-virtual {v7, v9}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->getByKey(Ljava/lang/String;)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->getValue()Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v11

    :goto_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    move-object v7, v12

    :cond_3
    invoke-static {v13, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v6, v14

    .line 80
    invoke-static {v8, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v6, v4

    .line 81
    invoke-static {v15, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v6, v17

    .line 77
    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    aput-object v4, v5, v14

    .line 70
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v4

    const-string v5, "msgs"

    invoke-virtual {v2, v5, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v4, "replyStart"

    .line 84
    invoke-virtual {v2, v4, v12}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2, v8, v11}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 86
    invoke-virtual {v3}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;->getRegular()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/layla/tasker/infer/NewInferTaskInput;

    invoke-virtual {v4}, Lcom/layla/tasker/infer/NewInferTaskInput;->getSysPromptStart()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sysPromptStart"

    invoke-virtual {v2, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v3}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;->getRegular()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/layla/tasker/infer/NewInferTaskInput;

    invoke-virtual {v4}, Lcom/layla/tasker/infer/NewInferTaskInput;->getSysPromptEnd()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sysPromptEnd"

    invoke-virtual {v2, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v3}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;->getRegular()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/layla/tasker/infer/NewInferTaskInput;

    invoke-virtual {v4}, Lcom/layla/tasker/infer/NewInferTaskInput;->getAntiprompt()Ljava/lang/String;

    move-result-object v4

    const-string v5, "antiPrompt"

    invoke-virtual {v2, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v3}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;->getRegular()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/layla/tasker/infer/NewInferTaskInput;

    invoke-virtual {v4}, Lcom/layla/tasker/infer/NewInferTaskInput;->getInputPrefix()Ljava/lang/String;

    move-result-object v4

    const-string v5, "inputPrefix"

    invoke-virtual {v2, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;->getRegular()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/layla/tasker/infer/NewInferTaskInput;

    invoke-virtual {v3}, Lcom/layla/tasker/infer/NewInferTaskInput;->getInputSuffix()Ljava/lang/String;

    move-result-object v3

    const-string v4, "inputSuffix"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v3, Lcom/layla/taskmgr/TaskMgr$Task;

    invoke-direct {v3}, Lcom/layla/taskmgr/TaskMgr$Task;-><init>()V

    const-string v4, "infer-in-background"

    .line 94
    iput-object v4, v3, Lcom/layla/taskmgr/TaskMgr$Task;->id:Ljava/lang/String;

    const-string v4, "infer"

    .line 95
    iput-object v4, v3, Lcom/layla/taskmgr/TaskMgr$Task;->type:Ljava/lang/String;

    .line 96
    check-cast v2, Lcom/google/gson/JsonElement;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/layla/taskmgr/TaskMgr$Task;->inputJSON:Ljava/lang/String;

    iget-object v1, v0, Lcom/layla/tasker/infer/InferInBackgroundRunner$run$output$1;->$context:Landroid/content/Context;

    .line 98
    invoke-static {v1, v3, v10}, Lcom/layla/taskmgr/TaskMgr;->executeInfer(Landroid/content/Context;Lcom/layla/taskmgr/TaskMgr$Task;Z)Lcom/layla/taskmgr/TaskMgr$Task;

    move-result-object v1

    .line 100
    iget-object v2, v1, Lcom/layla/taskmgr/TaskMgr$Task;->error:Ljava/lang/String;

    const-string v3, "error"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 103
    new-instance v2, Lcom/layla/tasker/infer/InferInBackgroundOutput;

    iget-wide v3, v1, Lcom/layla/taskmgr/TaskMgr$Task;->timeTakenMs:J

    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v1, v1, Lcom/layla/taskmgr/TaskMgr$Task;->outputJSON:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/layla/tasker/infer/InferInBackgroundOutput;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    return-object v2

    .line 101
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    iget-object v1, v1, Lcom/layla/taskmgr/TaskMgr$Task;->error:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
