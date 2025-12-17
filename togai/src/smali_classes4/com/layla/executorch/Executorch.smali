.class public Lcom/layla/executorch/Executorch;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "Executorch.java"

# interfaces
.implements Lorg/pytorch/executorch/LlamaCallback;


# static fields
.field public static executorchChatModule:Lorg/pytorch/executorch/LlamaModule;


# instance fields
.field private listenerCount:I


# direct methods
.method public static synthetic $r8$lambda$vQITbAt9Ie6EAozDyVsF2Nhklfc(Lcom/layla/executorch/Executorch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/layla/executorch/Executorch;->lambda$loadModel$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/layla/executorch/Executorch;->listenerCount:I

    return-void
.end method

.method private synthetic lambda$loadModel$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 57
    new-instance v0, Lorg/pytorch/executorch/LlamaModule;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, p1, p2, v1}, Lorg/pytorch/executorch/LlamaModule;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    sput-object v0, Lcom/layla/executorch/Executorch;->executorchChatModule:Lorg/pytorch/executorch/LlamaModule;

    .line 59
    invoke-virtual {v0}, Lorg/pytorch/executorch/LlamaModule;->load()I

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Load failed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "REPL_ERROR"

    invoke-direct {p0, p2, p1}, Lcom/layla/executorch/Executorch;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/layla/executorch/Executorch;->executorchChatModule:Lorg/pytorch/executorch/LlamaModule;

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p0

    .line 65
    invoke-virtual/range {v0 .. v6}, Lorg/pytorch/executorch/LlamaModule;->repl_start(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/pytorch/executorch/LlamaCallback;)I

    sget-object p1, Lcom/layla/executorch/Executorch;->executorchChatModule:Lorg/pytorch/executorch/LlamaModule;

    .line 68
    invoke-virtual {p1}, Lorg/pytorch/executorch/LlamaModule;->resetNative()V

    const/4 p1, 0x0

    sput-object p1, Lcom/layla/executorch/Executorch;->executorchChatModule:Lorg/pytorch/executorch/LlamaModule;

    return-void
.end method

.method private sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/layla/executorch/Executorch;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 36
    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 37
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 38
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Executorch"

    return-object v0
.end method

.method public loadModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 11
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 56
    new-instance v0, Ljava/lang/Thread;

    new-instance v10, Lcom/layla/executorch/Executorch$$ExternalSyntheticLambda0;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/layla/executorch/Executorch$$ExternalSyntheticLambda0;-><init>(Lcom/layla/executorch/Executorch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v1, 0xa

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    move-object/from16 v1, p8

    .line 76
    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 2

    const-string v0, "REPL_MSG:"

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "REPL_MSG"

    .line 94
    invoke-direct {p0, v0, p1}, Lcom/layla/executorch/Executorch;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "REPL_ERROR:"

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "REPL_ERROR"

    .line 99
    invoke-direct {p0, v0, p1}, Lcom/layla/executorch/Executorch;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "REPL_READY:"

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "REPL_READY"

    const-string v0, ""

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/layla/executorch/Executorch;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "REPL_PROGRESS:"

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xe

    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "REPL_PROGRESS"

    .line 106
    invoke-direct {p0, v0, p1}, Lcom/layla/executorch/Executorch;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResult: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "layla.executorch"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onStats(F)V
    .locals 0

    return-void
.end method

.method public repl_send_msg(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    sget-object v0, Lcom/layla/executorch/Executorch;->executorchChatModule:Lorg/pytorch/executorch/LlamaModule;

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/pytorch/executorch/LlamaModule;->repl_enqueue_message(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startReplWidget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/layla/executorch/Executorch;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Landroid/content/Intent;

    .line 134
    invoke-virtual {p0}, Lcom/layla/executorch/Executorch;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    const-class v2, Lcom/layla/llamacpp/LaylaInferenceService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "modelPath"

    .line 140
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "tokenizerPath"

    .line 141
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "prompt"

    .line 142
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "antiPrompt"

    .line 143
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "n_ctx"

    .line 144
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "sessionFile"

    .line 147
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "promptCacheFile"

    .line 148
    invoke-virtual {v0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "use_executorch"

    const/4 p2, 0x1

    .line 151
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0}, Lcom/layla/executorch/Executorch;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 155
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p8, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "Error"

    const-string p2, "MISSING_PERMISSION"

    .line 157
    invoke-interface {p8, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
