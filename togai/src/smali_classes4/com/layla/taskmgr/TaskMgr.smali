.class public Lcom/layla/taskmgr/TaskMgr;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "TaskMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layla/taskmgr/TaskMgr$Task;,
        Lcom/layla/taskmgr/TaskMgr$TaskInferInput;,
        Lcom/layla/taskmgr/TaskMgr$ReplMsg;,
        Lcom/layla/taskmgr/TaskMgr$TaskResult;,
        Lcom/layla/taskmgr/TaskMgr$NoOpCallback;,
        Lcom/layla/taskmgr/TaskMgr$TaskSummariseInput;
    }
.end annotation


# static fields
.field private static objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# instance fields
.field private listenerCount:I


# direct methods
.method public static synthetic $r8$lambda$jiUJgqjSru2PxPu1Ic5p90Bv0Mc(Lcom/layla/taskmgr/TaskMgr;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/layla/taskmgr/TaskMgr;->lambda$executeTaskId$0(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ooyPUxJX_nF7xjPs4cdp9XYLAdw(Lcom/layla/taskmgr/TaskMgr;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/layla/taskmgr/TaskMgr;->lambda$executeTaskQueue$1(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "llama-jni"

    .line 51
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/layla/taskmgr/TaskMgr;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/layla/taskmgr/TaskMgr;->listenerCount:I

    return-void
.end method

.method private static buildTaskFromFile(Ljava/lang/String;)Lcom/layla/taskmgr/TaskMgr$Task;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 139
    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/layla/taskmgr/TaskMgr;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 140
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-class p0, Lcom/layla/taskmgr/TaskMgr$Task;

    invoke-virtual {v1, v2, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/layla/taskmgr/TaskMgr$Task;

    .line 141
    iput-object v0, p0, Lcom/layla/taskmgr/TaskMgr$Task;->id:Ljava/lang/String;

    return-object p0
.end method

.method private static completeTask(Ljava/lang/String;Lcom/layla/taskmgr/TaskMgr$Task;J)V
    .locals 2

    .line 260
    iput-wide p2, p1, Lcom/layla/taskmgr/TaskMgr$Task;->timeTakenMs:J

    .line 263
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "/pending"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    iget-object v0, p1, Lcom/layla/taskmgr/TaskMgr$Task;->id:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    invoke-static {p2, p3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    invoke-static {p2}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 264
    iget-object p2, p1, Lcom/layla/taskmgr/TaskMgr$Task;->error:Ljava/lang/String;

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/layla/taskmgr/TaskMgr$Task;->error:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "/error"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "/completed"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    goto :goto_0

    :goto_2
    sget-object p2, Lcom/layla/taskmgr/TaskMgr;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 265
    new-instance p3, Ljava/io/File;

    iget-object v0, p1, Lcom/layla/taskmgr/TaskMgr$Task;->id:Ljava/lang/String;

    invoke-direct {p3, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 267
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public static executeInfer(Landroid/content/Context;Lcom/layla/taskmgr/TaskMgr$Task;Z)Lcom/layla/taskmgr/TaskMgr$Task;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :try_start_0
    sget-object v2, Lcom/layla/taskmgr/TaskMgr;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 172
    iget-object v3, v1, Lcom/layla/taskmgr/TaskMgr$Task;->inputJSON:Ljava/lang/String;

    const-class v4, Lcom/layla/taskmgr/TaskMgr$TaskInferInput;

    invoke-virtual {v2, v3, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layla/taskmgr/TaskMgr$TaskInferInput;

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    iget-object v4, v2, Lcom/layla/taskmgr/TaskMgr$TaskInferInput;->msgs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/layla/taskmgr/TaskMgr$ReplMsg;

    const-string v6, "system"

    .line 176
    iget-object v7, v5, Lcom/layla/taskmgr/TaskMgr$ReplMsg;->role:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 177
    iget-object v6, v2, Lcom/layla/taskmgr/TaskMgr$TaskInferInput;->sysPromptStart:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, v5, Lcom/layla/taskmgr/TaskMgr$ReplMsg;->msg:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/layla/taskmgr/TaskMgr$TaskInferInput;->sysPromptEnd:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v6, "assistant"

    .line 178
    iget-object v7, v5, Lcom/layla/taskmgr/TaskMgr$ReplMsg;->role:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 179
    iget-object v6, v2, Lcom/layla/taskmgr/TaskMgr$TaskInferInput;->inputSuffix:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, v5, Lcom/layla/taskmgr/TaskMgr$ReplMsg;->msg:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/layla/taskmgr/TaskMgr$TaskInferInput;->antiPrompt:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v6, "user"

    .line 180
    iget-object v7, v5, Lcom/layla/taskmgr/TaskMgr$ReplMsg;->role:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 181
    iget-object v6, v2, Lcom/layla/taskmgr/TaskMgr$TaskInferInput;->inputPrefix:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, v5, Lcom/layla/taskmgr/TaskMgr$ReplMsg;->msg:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/layla/taskmgr/TaskMgr$TaskInferInput;->antiPrompt:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 184
    :cond_3
    iget-object v4, v2, Lcom/layla/taskmgr/TaskMgr$TaskInferInput;->inputSuffix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/layla/taskmgr/TaskMgr$TaskInferInput;->replyStart:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/layla/taskmgr/TaskMgr$TaskInferInput;->antiPrompt:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/layla/taskmgr/TaskMgr$TaskInferInput;->antiPrompt:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 187
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 188
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, v2, Lcom/layla/taskmgr/TaskMgr$TaskInferInput;->antiPrompt:Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 192
    :cond_4
    iget-object v4, v2, Lcom/layla/taskmgr/TaskMgr$TaskInferInput;->modelPath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pte"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    if-eqz v4, :cond_6

    .line 194
    :try_start_1
    new-instance v4, Lorg/pytorch/executorch/LlamaModule;

    iget-object v6, v2, Lcom/layla/taskmgr/TaskMgr$TaskInferInput;->modelPath:Ljava/lang/String;

    const-string v7, "/data/user/0/com.layla/files/app-data/executorch/tokenizer.model"

    const v8, 0x3f4ccccd    # 0.8f

    invoke-direct {v4, v6, v7, v8}, Lorg/pytorch/executorch/LlamaModule;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    .line 196
    invoke-virtual {v4}, Lorg/pytorch/executorch/LlamaModule;->load()I

    move-result v6

    if-eqz v6, :cond_5

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/layla/taskmgr/TaskMgr$Task;->error:Ljava/lang/String;

    goto :goto_2

    .line 200
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/layla/taskmgr/TaskMgr$TaskInferInput;->grammar:Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Lorg/pytorch/executorch/LlamaModule;->infer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/layla/taskmgr/TaskMgr;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 202
    new-instance v6, Lcom/layla/taskmgr/TaskMgr$TaskResult;

    invoke-direct {v6, v2}, Lcom/layla/taskmgr/TaskMgr$TaskResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/layla/taskmgr/TaskMgr$Task;->outputJSON:Ljava/lang/String;

    .line 203
    iput-object v5, v1, Lcom/layla/taskmgr/TaskMgr$Task;->error:Ljava/lang/String;

    .line 205
    sget-object v3, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;->Companion:Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition$Companion;

    const-class v5, Lcom/layla/tasker/taskcompleteevent/ActivityConfigTaskCompleteEvent;

    new-instance v6, Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;

    iget-object v7, v1, Lcom/layla/taskmgr/TaskMgr$Task;->id:Ljava/lang/String;

    invoke-direct {v6, v7, v2}, Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v5, v6}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition$Companion;->requestQuery(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 209
    :goto_2
    invoke-virtual {v4}, Lorg/pytorch/executorch/LlamaModule;->resetNative()V

    goto/16 :goto_3

    .line 212
    :cond_6
    iget-object v4, v2, Lcom/layla/taskmgr/TaskMgr$TaskInferInput;->modelPath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v6, "gguf"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 214
    iget-object v4, v2, Lcom/layla/taskmgr/TaskMgr$TaskInferInput;->modelPath:Ljava/lang/String;

    const-string v6, "content://"

    .line 217
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 218
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 219
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "r"

    invoke-virtual {v6, v4, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 220
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_7
    move-object v6, v4

    .line 223
    new-instance v18, Lcom/layla/taskmgr/TaskMgr$NoOpCallback;

    invoke-direct/range {v18 .. v18}, Lcom/layla/taskmgr/TaskMgr$NoOpCallback;-><init>()V

    .line 225
    iget-object v7, v2, Lcom/layla/taskmgr/TaskMgr$TaskInferInput;->promptCachePath:Ljava/lang/String;

    iget-object v8, v2, Lcom/layla/taskmgr/TaskMgr$TaskInferInput;->logPath:Ljava/lang/String;

    .line 229
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, Lcom/layla/taskmgr/TaskMgr$TaskInferInput;->antiPrompt:Ljava/lang/String;

    iget-object v11, v2, Lcom/layla/taskmgr/TaskMgr$TaskInferInput;->grammar:Ljava/lang/String;

    const v12, 0x3f51eb85    # 0.82f

    const/high16 v13, 0x3f000000    # 0.5f

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3dcccccd    # 0.1f

    const/16 v16, 0x800

    const/16 v17, 0x2710

    .line 225
    invoke-static/range {v6 .. v18}, Lcom/layla/jni/LlamaCppJni;->llama_infer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFFIILcom/layla/jni/LlamaCppJni$LlamaCppCallback;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/layla/taskmgr/TaskMgr;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 234
    new-instance v4, Lcom/layla/taskmgr/TaskMgr$TaskResult;

    invoke-direct {v4, v2}, Lcom/layla/taskmgr/TaskMgr$TaskResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/layla/taskmgr/TaskMgr$Task;->outputJSON:Ljava/lang/String;

    .line 235
    iput-object v5, v1, Lcom/layla/taskmgr/TaskMgr$Task;->error:Ljava/lang/String;

    .line 237
    sget-object v3, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;->Companion:Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition$Companion;

    const-class v4, Lcom/layla/tasker/taskcompleteevent/ActivityConfigTaskCompleteEvent;

    new-instance v5, Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;

    iget-object v6, v1, Lcom/layla/taskmgr/TaskMgr$Task;->id:Ljava/lang/String;

    invoke-direct {v5, v6, v2}, Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v4, v5}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition$Companion;->requestQuery(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    const-string v0, "Unsupported model type."

    .line 241
    iput-object v0, v1, Lcom/layla/taskmgr/TaskMgr$Task;->error:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/layla/taskmgr/TaskMgr$Task;->error:Ljava/lang/String;

    :goto_3
    return-object v1
.end method

.method private static executeSummarise(Lcom/layla/taskmgr/TaskMgr$Task;)Lcom/layla/taskmgr/TaskMgr$Task;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/layla/taskmgr/TaskMgr;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 251
    iget-object v1, p0, Lcom/layla/taskmgr/TaskMgr$Task;->inputJSON:Ljava/lang/String;

    const-class v2, Lcom/layla/taskmgr/TaskMgr$TaskSummariseInput;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layla/taskmgr/TaskMgr$TaskSummariseInput;

    .line 253
    iget-object v1, v0, Lcom/layla/taskmgr/TaskMgr$TaskSummariseInput;->modelPath:Ljava/lang/String;

    iget-object v0, v0, Lcom/layla/taskmgr/TaskMgr$TaskSummariseInput;->content:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/layla/jni/CTranslate2Jni;->summarise_bart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/layla/taskmgr/TaskMgr;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 254
    new-instance v2, Lcom/layla/taskmgr/TaskMgr$TaskResult;

    invoke-direct {v2, v0}, Lcom/layla/taskmgr/TaskMgr$TaskResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/layla/taskmgr/TaskMgr$Task;->outputJSON:Ljava/lang/String;

    return-object p0
.end method

.method private static executeTask(Landroid/content/Context;Ljava/lang/String;Lcom/layla/taskmgr/TaskMgr$Task;Z)Lcom/layla/taskmgr/TaskMgr$Task;
    .locals 5

    .line 146
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 149
    :try_start_0
    iget-object v1, p2, Lcom/layla/taskmgr/TaskMgr$Task;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x5fb304e

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const v3, 0x5a3b2868

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "summarise"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_1
    const-string v2, "infer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    return-object p2

    .line 154
    :cond_3
    invoke-static {p2}, Lcom/layla/taskmgr/TaskMgr;->executeSummarise(Lcom/layla/taskmgr/TaskMgr$Task;)Lcom/layla/taskmgr/TaskMgr$Task;

    move-result-object p0

    goto :goto_2

    .line 151
    :cond_4
    invoke-static {p0, p2, p3}, Lcom/layla/taskmgr/TaskMgr;->executeInfer(Landroid/content/Context;Lcom/layla/taskmgr/TaskMgr$Task;Z)Lcom/layla/taskmgr/TaskMgr$Task;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object p2, p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 160
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/layla/taskmgr/TaskMgr$Task;->error:Ljava/lang/String;

    .line 163
    :goto_3
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    .line 164
    invoke-static {p1, p2, v0, v1}, Lcom/layla/taskmgr/TaskMgr;->completeTask(Ljava/lang/String;Lcom/layla/taskmgr/TaskMgr$Task;J)V

    return-object p2
.end method

.method public static executeTaskIdImpl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pending"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 273
    invoke-static {p2, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-static {p2}, Lcom/layla/taskmgr/TaskMgr;->buildTaskFromFile(Ljava/lang/String;)Lcom/layla/taskmgr/TaskMgr$Task;

    move-result-object p2

    const/4 v0, 0x1

    .line 275
    invoke-static {p0, p1, p2, v0}, Lcom/layla/taskmgr/TaskMgr;->executeTask(Landroid/content/Context;Ljava/lang/String;Lcom/layla/taskmgr/TaskMgr$Task;Z)Lcom/layla/taskmgr/TaskMgr$Task;

    :cond_0
    return-void
.end method

.method public static executeTaskQueueImpl(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    invoke-static {p1}, Lcom/layla/taskmgr/TaskMgr;->getPendingTasksImpl(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 295
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layla/taskmgr/TaskMgr$Task;

    .line 296
    invoke-static {p0, p1, v1, p2}, Lcom/layla/taskmgr/TaskMgr;->executeTask(Landroid/content/Context;Ljava/lang/String;Lcom/layla/taskmgr/TaskMgr$Task;Z)Lcom/layla/taskmgr/TaskMgr$Task;

    .line 299
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method public static getPendingTasksImpl(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/layla/taskmgr/TaskMgr$Task;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "/pending"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object p0

    .line 282
    invoke-interface {p0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    new-array v3, v1, [Ljava/nio/file/LinkOption;

    .line 283
    invoke-static {v2, v3}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/layla/taskmgr/TaskMgr;->buildTaskFromFile(Ljava/lang/String;)Lcom/layla/taskmgr/TaskMgr$Task;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private synthetic lambda$executeTaskId$0(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 309
    :try_start_0
    invoke-virtual {p0}, Lcom/layla/taskmgr/TaskMgr;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/layla/taskmgr/TaskMgr;->executeTaskIdImpl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 311
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ERROR"

    .line 313
    invoke-interface {p3, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$executeTaskQueue$1(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    .line 326
    :try_start_0
    invoke-virtual {p0}, Lcom/layla/taskmgr/TaskMgr;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/layla/taskmgr/TaskMgr;->executeTaskQueueImpl(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 328
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ERROR"

    .line 330
    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelBackgroundTasksQueue(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    :try_start_0
    const-string v0, "backgroundTaskQueue"

    .line 417
    invoke-virtual {p0}, Lcom/layla/taskmgr/TaskMgr;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-static {v1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v1

    .line 419
    invoke-virtual {v1, v0}, Landroidx/work/WorkManager;->cancelUniqueWork(Ljava/lang/String;)Landroidx/work/Operation;

    const/4 v0, 0x0

    .line 421
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ERROR"

    .line 423
    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public executeTaskId(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 307
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/layla/taskmgr/TaskMgr$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/layla/taskmgr/TaskMgr$$ExternalSyntheticLambda0;-><init>(Lcom/layla/taskmgr/TaskMgr;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 p1, 0xa

    .line 317
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 319
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public executeTaskQueue(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 324
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/layla/taskmgr/TaskMgr$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/layla/taskmgr/TaskMgr$$ExternalSyntheticLambda1;-><init>(Lcom/layla/taskmgr/TaskMgr;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 p1, 0xa

    .line 334
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 336
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public executeTaskQueueWidget(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 341
    invoke-virtual {p0}, Lcom/layla/taskmgr/TaskMgr;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    new-instance v0, Landroid/content/Intent;

    .line 343
    invoke-virtual {p0}, Lcom/layla/taskmgr/TaskMgr;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    const-class v2, Lcom/layla/taskmgr/TaskMgrService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mgrPath"

    .line 347
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "csvTaskIds"

    .line 348
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0}, Lcom/layla/taskmgr/TaskMgr;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p1, 0x1

    .line 352
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "Error"

    const-string p2, "MISSING_PERMISSION"

    .line 355
    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "TaskMgr"

    return-object v0
.end method

.method public kickOffBackgroundTaskQueue(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 382
    :try_start_0
    new-instance v0, Landroidx/work/Data$Builder;

    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    const-string v1, "mgrPath"

    .line 383
    invoke-virtual {v0, v1, p1}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object p1

    .line 384
    invoke-virtual {p1}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object p1

    .line 386
    new-instance v0, Landroidx/work/Constraints$Builder;

    invoke-direct {v0}, Landroidx/work/Constraints$Builder;-><init>()V

    const/4 v1, 0x1

    .line 387
    invoke-virtual {v0, v1}, Landroidx/work/Constraints$Builder;->setRequiresDeviceIdle(Z)Landroidx/work/Constraints$Builder;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v0

    const-string v1, "backgroundTaskQueue"

    .line 393
    new-instance v2, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v3, Lcom/layla/LaylaWorker;

    invoke-direct {v2, v3}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 395
    invoke-virtual {v2, v0}, Landroidx/work/OneTimeWorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 396
    invoke-virtual {v0, p1}, Landroidx/work/OneTimeWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object p1

    check-cast p1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 397
    invoke-virtual {p1}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p1

    check-cast p1, Landroidx/work/OneTimeWorkRequest;

    .line 400
    invoke-virtual {p0}, Lcom/layla/taskmgr/TaskMgr;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v0

    .line 402
    sget-object v2, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/work/WorkManager;->enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Landroidx/work/OneTimeWorkRequest;)Landroidx/work/Operation;

    const/4 p1, 0x0

    .line 404
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ERROR"

    .line 406
    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public killTaskQueueWidget(Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 361
    invoke-virtual {p0}, Lcom/layla/taskmgr/TaskMgr;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    .line 374
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 362
    new-instance v0, Landroid/content/Intent;

    .line 363
    invoke-virtual {p0}, Lcom/layla/taskmgr/TaskMgr;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v3

    const-class v4, Lcom/layla/taskmgr/TaskMgrService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "kill"

    .line 367
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    invoke-virtual {p0}, Lcom/layla/taskmgr/TaskMgr;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 371
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 374
    :cond_0
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
