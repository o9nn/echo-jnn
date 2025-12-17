.class public Lcom/layla/mlc/ChatModule;
.super Ljava/lang/Object;
.source "ChatModule.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private decodeFunc:Lorg/apache/tvm/Function;

.field private getMessage:Lorg/apache/tvm/Function;

.field private llmChat:Lorg/apache/tvm/Module;

.field private prefillFunc:Lorg/apache/tvm/Function;

.field private processSystemPromptsFunc:Lorg/apache/tvm/Function;

.field private reloadFunc:Lorg/apache/tvm/Function;

.field private resetChatFunc:Lorg/apache/tvm/Function;

.field private runtimeStatsTextFunc:Lorg/apache/tvm/Function;

.field private stoppedFunc:Lorg/apache/tvm/Function;

.field private unloadFunc:Lorg/apache/tvm/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mlc.llm_chat_create"

    .line 20
    invoke-static {v0}, Lorg/apache/tvm/Function;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    .line 22
    invoke-static {}, Lorg/apache/tvm/Device;->opencl()Lorg/apache/tvm/Device;

    move-result-object v1

    iget v1, v1, Lorg/apache/tvm/Device;->deviceType:I

    invoke-virtual {v0, v1}, Lorg/apache/tvm/Function;->pushArg(I)Lorg/apache/tvm/Function;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/tvm/Function;->pushArg(I)Lorg/apache/tvm/Function;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tvm/TVMValue;->asModule()Lorg/apache/tvm/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/layla/mlc/ChatModule;->llmChat:Lorg/apache/tvm/Module;

    const-string v1, "reload"

    .line 23
    invoke-virtual {v0, v1}, Lorg/apache/tvm/Module;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    iput-object v0, p0, Lcom/layla/mlc/ChatModule;->reloadFunc:Lorg/apache/tvm/Function;

    iget-object v0, p0, Lcom/layla/mlc/ChatModule;->llmChat:Lorg/apache/tvm/Module;

    const-string v1, "unload"

    .line 24
    invoke-virtual {v0, v1}, Lorg/apache/tvm/Module;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    iput-object v0, p0, Lcom/layla/mlc/ChatModule;->unloadFunc:Lorg/apache/tvm/Function;

    iget-object v0, p0, Lcom/layla/mlc/ChatModule;->llmChat:Lorg/apache/tvm/Module;

    const-string v1, "prefill"

    .line 25
    invoke-virtual {v0, v1}, Lorg/apache/tvm/Module;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    iput-object v0, p0, Lcom/layla/mlc/ChatModule;->prefillFunc:Lorg/apache/tvm/Function;

    iget-object v0, p0, Lcom/layla/mlc/ChatModule;->llmChat:Lorg/apache/tvm/Module;

    const-string v1, "decode"

    .line 26
    invoke-virtual {v0, v1}, Lorg/apache/tvm/Module;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    iput-object v0, p0, Lcom/layla/mlc/ChatModule;->decodeFunc:Lorg/apache/tvm/Function;

    iget-object v0, p0, Lcom/layla/mlc/ChatModule;->llmChat:Lorg/apache/tvm/Module;

    const-string v1, "get_message"

    .line 27
    invoke-virtual {v0, v1}, Lorg/apache/tvm/Module;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    iput-object v0, p0, Lcom/layla/mlc/ChatModule;->getMessage:Lorg/apache/tvm/Function;

    iget-object v0, p0, Lcom/layla/mlc/ChatModule;->llmChat:Lorg/apache/tvm/Module;

    const-string v1, "stopped"

    .line 28
    invoke-virtual {v0, v1}, Lorg/apache/tvm/Module;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    iput-object v0, p0, Lcom/layla/mlc/ChatModule;->stoppedFunc:Lorg/apache/tvm/Function;

    iget-object v0, p0, Lcom/layla/mlc/ChatModule;->llmChat:Lorg/apache/tvm/Module;

    const-string v1, "reset_chat"

    .line 29
    invoke-virtual {v0, v1}, Lorg/apache/tvm/Module;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    iput-object v0, p0, Lcom/layla/mlc/ChatModule;->resetChatFunc:Lorg/apache/tvm/Function;

    iget-object v0, p0, Lcom/layla/mlc/ChatModule;->llmChat:Lorg/apache/tvm/Module;

    const-string v1, "process_system_prompts"

    .line 30
    invoke-virtual {v0, v1}, Lorg/apache/tvm/Module;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    iput-object v0, p0, Lcom/layla/mlc/ChatModule;->processSystemPromptsFunc:Lorg/apache/tvm/Function;

    iget-object v0, p0, Lcom/layla/mlc/ChatModule;->llmChat:Lorg/apache/tvm/Module;

    const-string v1, "runtime_stats_text"

    .line 31
    invoke-virtual {v0, v1}, Lorg/apache/tvm/Module;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    iput-object v0, p0, Lcom/layla/mlc/ChatModule;->runtimeStatsTextFunc:Lorg/apache/tvm/Function;

    return-void
.end method


# virtual methods
.method public decode()V
    .locals 1

    iget-object v0, p0, Lcom/layla/mlc/ChatModule;->decodeFunc:Lorg/apache/tvm/Function;

    .line 78
    invoke-virtual {v0}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    return-void
.end method

.method public evaluate()V
    .locals 2

    iget-object v0, p0, Lcom/layla/mlc/ChatModule;->llmChat:Lorg/apache/tvm/Module;

    const-string v1, "evaluate"

    .line 70
    invoke-virtual {v0, v1}, Lorg/apache/tvm/Module;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layla/mlc/ChatModule;->getMessage:Lorg/apache/tvm/Function;

    .line 62
    invoke-virtual {v0}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tvm/TVMValue;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prefill(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/layla/mlc/ChatModule;->prefillFunc:Lorg/apache/tvm/Function;

    .line 58
    invoke-virtual {v0, p1}, Lorg/apache/tvm/Function;->pushArg(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    return-void
.end method

.method public process_system_prompts()V
    .locals 1

    iget-object v0, p0, Lcom/layla/mlc/ChatModule;->processSystemPromptsFunc:Lorg/apache/tvm/Function;

    .line 38
    invoke-virtual {v0}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    return-void
.end method

.method public reload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2d

    const/16 v2, 0x5f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "runtime.SystemLib"

    .line 45
    invoke-static {v0}, Lorg/apache/tvm/Function;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Lorg/apache/tvm/Function;->pushArg(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tvm/TVMValue;->asModule()Lorg/apache/tvm/Module;

    move-result-object p1

    iget-object v0, p0, Lcom/layla/mlc/ChatModule;->reloadFunc:Lorg/apache/tvm/Function;

    .line 49
    invoke-virtual {v0, p1}, Lorg/apache/tvm/Function;->pushArg(Lorg/apache/tvm/Module;)Lorg/apache/tvm/Function;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/tvm/Function;->pushArg(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object p1

    iput-object p1, p0, Lcom/layla/mlc/ChatModule;->reloadFunc:Lorg/apache/tvm/Function;

    .line 50
    invoke-virtual {p1}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    return-void
.end method

.method public resetChat()V
    .locals 1

    iget-object v0, p0, Lcom/layla/mlc/ChatModule;->resetChatFunc:Lorg/apache/tvm/Function;

    .line 54
    invoke-virtual {v0}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    return-void
.end method

.method public runtimeStatsText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layla/mlc/ChatModule;->runtimeStatsTextFunc:Lorg/apache/tvm/Function;

    .line 66
    invoke-virtual {v0}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tvm/TVMValue;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stopped()Z
    .locals 4

    iget-object v0, p0, Lcom/layla/mlc/ChatModule;->stoppedFunc:Lorg/apache/tvm/Function;

    .line 74
    invoke-virtual {v0}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tvm/TVMValue;->asLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public unload()V
    .locals 1

    iget-object v0, p0, Lcom/layla/mlc/ChatModule;->unloadFunc:Lorg/apache/tvm/Function;

    .line 35
    invoke-virtual {v0}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    return-void
.end method
