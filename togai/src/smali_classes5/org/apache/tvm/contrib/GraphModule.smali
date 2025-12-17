.class public Lorg/apache/tvm/contrib/GraphModule;
.super Ljava/lang/Object;
.source "GraphModule.java"


# instance fields
.field private device:Lorg/apache/tvm/Device;

.field private fdebugGetOutput:Lorg/apache/tvm/Function;

.field private fgetInput:Lorg/apache/tvm/Function;

.field private fgetOutput:Lorg/apache/tvm/Function;

.field private floadParams:Lorg/apache/tvm/Function;

.field private frun:Lorg/apache/tvm/Function;

.field private fsetInput:Lorg/apache/tvm/Function;

.field private module:Lorg/apache/tvm/Module;


# direct methods
.method constructor <init>(Lorg/apache/tvm/Module;Lorg/apache/tvm/Device;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tvm/contrib/GraphModule;->module:Lorg/apache/tvm/Module;

    iput-object p2, p0, Lorg/apache/tvm/contrib/GraphModule;->device:Lorg/apache/tvm/Device;

    const-string p2, "set_input"

    .line 47
    invoke-virtual {p1, p2}, Lorg/apache/tvm/Module;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/tvm/contrib/GraphModule;->fsetInput:Lorg/apache/tvm/Function;

    const-string p2, "run"

    .line 48
    invoke-virtual {p1, p2}, Lorg/apache/tvm/Module;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/tvm/contrib/GraphModule;->frun:Lorg/apache/tvm/Function;

    const-string p2, "get_input"

    .line 49
    invoke-virtual {p1, p2}, Lorg/apache/tvm/Module;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/tvm/contrib/GraphModule;->fgetInput:Lorg/apache/tvm/Function;

    const-string p2, "get_output"

    .line 50
    invoke-virtual {p1, p2}, Lorg/apache/tvm/Module;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/tvm/contrib/GraphModule;->fgetOutput:Lorg/apache/tvm/Function;

    :try_start_0
    const-string p2, "debug_get_output"

    .line 52
    invoke-virtual {p1, p2}, Lorg/apache/tvm/Module;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/tvm/contrib/GraphModule;->fdebugGetOutput:Lorg/apache/tvm/Function;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p2, "load_params"

    .line 56
    invoke-virtual {p1, p2}, Lorg/apache/tvm/Module;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tvm/contrib/GraphModule;->floadParams:Lorg/apache/tvm/Function;

    return-void
.end method


# virtual methods
.method public debugGetOutput(ILorg/apache/tvm/NDArray;)Lorg/apache/tvm/NDArray;
    .locals 1

    iget-object v0, p0, Lorg/apache/tvm/contrib/GraphModule;->fdebugGetOutput:Lorg/apache/tvm/Function;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, p1}, Lorg/apache/tvm/Function;->pushArg(I)Lorg/apache/tvm/Function;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/tvm/Function;->pushArg(Lorg/apache/tvm/NDArrayBase;)Lorg/apache/tvm/Function;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    return-object p2

    .line 165
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please compile runtime with USE_PROFILER = ON"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public debugGetOutput(Ljava/lang/String;Lorg/apache/tvm/NDArray;)Lorg/apache/tvm/NDArray;
    .locals 1

    iget-object v0, p0, Lorg/apache/tvm/contrib/GraphModule;->fdebugGetOutput:Lorg/apache/tvm/Function;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0, p1}, Lorg/apache/tvm/Function;->pushArg(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/tvm/Function;->pushArg(Lorg/apache/tvm/NDArrayBase;)Lorg/apache/tvm/Function;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    return-object p2

    .line 150
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please compile runtime with USE_PROFILER = ON"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;
    .locals 1

    iget-object v0, p0, Lorg/apache/tvm/contrib/GraphModule;->module:Lorg/apache/tvm/Module;

    .line 187
    invoke-virtual {v0, p1}, Lorg/apache/tvm/Module;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object p1

    return-object p1
.end method

.method public getInput(ILorg/apache/tvm/NDArray;)Lorg/apache/tvm/NDArray;
    .locals 1

    iget-object v0, p0, Lorg/apache/tvm/contrib/GraphModule;->fgetInput:Lorg/apache/tvm/Function;

    .line 125
    invoke-virtual {v0, p1}, Lorg/apache/tvm/Function;->pushArg(I)Lorg/apache/tvm/Function;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/tvm/Function;->pushArg(Lorg/apache/tvm/NDArrayBase;)Lorg/apache/tvm/Function;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    return-object p2
.end method

.method public getOutput(ILorg/apache/tvm/NDArray;)Lorg/apache/tvm/NDArray;
    .locals 1

    iget-object v0, p0, Lorg/apache/tvm/contrib/GraphModule;->fgetOutput:Lorg/apache/tvm/Function;

    .line 136
    invoke-virtual {v0, p1}, Lorg/apache/tvm/Function;->pushArg(I)Lorg/apache/tvm/Function;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/tvm/Function;->pushArg(Lorg/apache/tvm/NDArrayBase;)Lorg/apache/tvm/Function;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    return-object p2
.end method

.method public loadParams([B)Lorg/apache/tvm/contrib/GraphModule;
    .locals 1

    iget-object v0, p0, Lorg/apache/tvm/contrib/GraphModule;->floadParams:Lorg/apache/tvm/Function;

    .line 176
    invoke-virtual {v0, p1}, Lorg/apache/tvm/Function;->pushArg([B)Lorg/apache/tvm/Function;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    return-object p0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/apache/tvm/contrib/GraphModule;->fsetInput:Lorg/apache/tvm/Function;

    .line 66
    invoke-virtual {v0}, Lorg/apache/tvm/Function;->release()V

    iget-object v0, p0, Lorg/apache/tvm/contrib/GraphModule;->frun:Lorg/apache/tvm/Function;

    .line 67
    invoke-virtual {v0}, Lorg/apache/tvm/Function;->release()V

    iget-object v0, p0, Lorg/apache/tvm/contrib/GraphModule;->fgetInput:Lorg/apache/tvm/Function;

    .line 68
    invoke-virtual {v0}, Lorg/apache/tvm/Function;->release()V

    iget-object v0, p0, Lorg/apache/tvm/contrib/GraphModule;->fgetOutput:Lorg/apache/tvm/Function;

    .line 69
    invoke-virtual {v0}, Lorg/apache/tvm/Function;->release()V

    iget-object v0, p0, Lorg/apache/tvm/contrib/GraphModule;->fdebugGetOutput:Lorg/apache/tvm/Function;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lorg/apache/tvm/Function;->release()V

    :cond_0
    iget-object v0, p0, Lorg/apache/tvm/contrib/GraphModule;->floadParams:Lorg/apache/tvm/Function;

    .line 73
    invoke-virtual {v0}, Lorg/apache/tvm/Function;->release()V

    iget-object v0, p0, Lorg/apache/tvm/contrib/GraphModule;->module:Lorg/apache/tvm/Module;

    .line 74
    invoke-virtual {v0}, Lorg/apache/tvm/Module;->release()V

    return-void
.end method

.method public run()Lorg/apache/tvm/contrib/GraphModule;
    .locals 1

    iget-object v0, p0, Lorg/apache/tvm/contrib/GraphModule;->frun:Lorg/apache/tvm/Function;

    .line 114
    invoke-virtual {v0}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    return-object p0
.end method

.method public setInput(ILorg/apache/tvm/NDArray;)Lorg/apache/tvm/contrib/GraphModule;
    .locals 2

    .line 101
    invoke-virtual {p2}, Lorg/apache/tvm/NDArray;->device()Lorg/apache/tvm/Device;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tvm/contrib/GraphModule;->device:Lorg/apache/tvm/Device;

    invoke-virtual {v0, v1}, Lorg/apache/tvm/Device;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p2}, Lorg/apache/tvm/NDArray;->shape()[J

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tvm/contrib/GraphModule;->device:Lorg/apache/tvm/Device;

    invoke-static {v0, v1}, Lorg/apache/tvm/NDArray;->empty([JLorg/apache/tvm/Device;)Lorg/apache/tvm/NDArray;

    move-result-object v0

    .line 103
    invoke-virtual {p2, v0}, Lorg/apache/tvm/NDArray;->copyTo(Lorg/apache/tvm/NDArrayBase;)Lorg/apache/tvm/NDArrayBase;

    move-object p2, v0

    :cond_0
    iget-object v0, p0, Lorg/apache/tvm/contrib/GraphModule;->fsetInput:Lorg/apache/tvm/Function;

    .line 105
    invoke-virtual {v0, p1}, Lorg/apache/tvm/Function;->pushArg(I)Lorg/apache/tvm/Function;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/tvm/Function;->pushArg(Lorg/apache/tvm/NDArrayBase;)Lorg/apache/tvm/Function;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    return-object p0
.end method

.method public setInput(Ljava/lang/String;Lorg/apache/tvm/NDArray;)Lorg/apache/tvm/contrib/GraphModule;
    .locals 2

    .line 85
    invoke-virtual {p2}, Lorg/apache/tvm/NDArray;->device()Lorg/apache/tvm/Device;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tvm/contrib/GraphModule;->device:Lorg/apache/tvm/Device;

    invoke-virtual {v0, v1}, Lorg/apache/tvm/Device;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p2}, Lorg/apache/tvm/NDArray;->shape()[J

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tvm/contrib/GraphModule;->device:Lorg/apache/tvm/Device;

    invoke-static {v0, v1}, Lorg/apache/tvm/NDArray;->empty([JLorg/apache/tvm/Device;)Lorg/apache/tvm/NDArray;

    move-result-object v0

    .line 87
    invoke-virtual {p2, v0}, Lorg/apache/tvm/NDArray;->copyTo(Lorg/apache/tvm/NDArrayBase;)Lorg/apache/tvm/NDArrayBase;

    move-object p2, v0

    :cond_0
    iget-object v0, p0, Lorg/apache/tvm/contrib/GraphModule;->fsetInput:Lorg/apache/tvm/Function;

    .line 89
    invoke-virtual {v0, p1}, Lorg/apache/tvm/Function;->pushArg(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/tvm/Function;->pushArg(Lorg/apache/tvm/NDArrayBase;)Lorg/apache/tvm/Function;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    return-object p0
.end method
