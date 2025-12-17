.class public Lorg/pytorch/executorch/Module;
.super Ljava/lang/Object;
.source "Module.java"


# instance fields
.field private mNativePeer:Lorg/pytorch/executorch/INativePeer;


# direct methods
.method constructor <init>(Lorg/pytorch/executorch/INativePeer;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/pytorch/executorch/Module;->mNativePeer:Lorg/pytorch/executorch/INativePeer;

    return-void
.end method

.method public static load(Ljava/lang/String;)Lorg/pytorch/executorch/Module;
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-static {p0, v0}, Lorg/pytorch/executorch/Module;->load(Ljava/lang/String;Ljava/util/Map;)Lorg/pytorch/executorch/Module;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/lang/String;Ljava/util/Map;)Lorg/pytorch/executorch/Module;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/pytorch/executorch/Module;"
        }
    .end annotation

    .line 29
    invoke-static {}, Lcom/facebook/soloader/nativeloader/NativeLoader;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/facebook/soloader/nativeloader/SystemDelegate;

    invoke-direct {v0}, Lcom/facebook/soloader/nativeloader/SystemDelegate;-><init>()V

    invoke-static {v0}, Lcom/facebook/soloader/nativeloader/NativeLoader;->init(Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;)V

    .line 32
    :cond_0
    new-instance v0, Lorg/pytorch/executorch/Module;

    new-instance v1, Lorg/pytorch/executorch/NativePeer;

    invoke-direct {v1, p0, p1}, Lorg/pytorch/executorch/NativePeer;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lorg/pytorch/executorch/Module;-><init>(Lorg/pytorch/executorch/INativePeer;)V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lorg/pytorch/executorch/Module;->mNativePeer:Lorg/pytorch/executorch/INativePeer;

    .line 90
    invoke-interface {v0}, Lorg/pytorch/executorch/INativePeer;->resetNative()V

    return-void
.end method

.method public varargs execute(Ljava/lang/String;[Lorg/pytorch/executorch/EValue;)[Lorg/pytorch/executorch/EValue;
    .locals 1

    iget-object v0, p0, Lorg/pytorch/executorch/Module;->mNativePeer:Lorg/pytorch/executorch/INativePeer;

    .line 67
    invoke-interface {v0, p1, p2}, Lorg/pytorch/executorch/INativePeer;->execute(Ljava/lang/String;[Lorg/pytorch/executorch/EValue;)[Lorg/pytorch/executorch/EValue;

    move-result-object p1

    return-object p1
.end method

.method public varargs forward([Lorg/pytorch/executorch/EValue;)[Lorg/pytorch/executorch/EValue;
    .locals 1

    iget-object v0, p0, Lorg/pytorch/executorch/Module;->mNativePeer:Lorg/pytorch/executorch/INativePeer;

    .line 56
    invoke-interface {v0, p1}, Lorg/pytorch/executorch/INativePeer;->forward([Lorg/pytorch/executorch/EValue;)[Lorg/pytorch/executorch/EValue;

    move-result-object p1

    return-object p1
.end method

.method public loadMethod(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/pytorch/executorch/Module;->mNativePeer:Lorg/pytorch/executorch/INativePeer;

    .line 80
    invoke-interface {v0, p1}, Lorg/pytorch/executorch/INativePeer;->loadMethod(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
