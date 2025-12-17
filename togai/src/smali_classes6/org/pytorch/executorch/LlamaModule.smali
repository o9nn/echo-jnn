.class public Lorg/pytorch/executorch/LlamaModule;
.super Ljava/lang/Object;
.source "LlamaModule.java"


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    invoke-static {}, Lcom/facebook/soloader/nativeloader/NativeLoader;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/facebook/soloader/nativeloader/SystemDelegate;

    invoke-direct {v0}, Lcom/facebook/soloader/nativeloader/SystemDelegate;-><init>()V

    invoke-static {v0}, Lcom/facebook/soloader/nativeloader/NativeLoader;->init(Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;)V

    :cond_0
    const-string v0, "executorch_llama_jni"

    .line 21
    invoke-static {v0}, Lcom/facebook/soloader/nativeloader/NativeLoader;->loadLibrary(Ljava/lang/String;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1, p2, p3}, Lorg/pytorch/executorch/LlamaModule;->initHybrid(Ljava/lang/String;Ljava/lang/String;F)Lcom/facebook/jni/HybridData;

    move-result-object p1

    iput-object p1, p0, Lorg/pytorch/executorch/LlamaModule;->mHybridData:Lcom/facebook/jni/HybridData;

    return-void
.end method

.method private static native initHybrid(Ljava/lang/String;Ljava/lang/String;F)Lcom/facebook/jni/HybridData;
.end method


# virtual methods
.method public native generate(Ljava/lang/String;Ljava/lang/String;Lorg/pytorch/executorch/LlamaCallback;)I
.end method

.method public native infer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native load()I
.end method

.method public native repl_enqueue_message(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public native repl_start(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/pytorch/executorch/LlamaCallback;)I
.end method

.method public resetNative()V
    .locals 1

    iget-object v0, p0, Lorg/pytorch/executorch/LlamaModule;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 36
    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->resetNative()V

    return-void
.end method

.method public native stop()V
.end method
