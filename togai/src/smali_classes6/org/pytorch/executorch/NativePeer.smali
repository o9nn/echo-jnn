.class Lorg/pytorch/executorch/NativePeer;
.super Ljava/lang/Object;
.source "NativePeer.java"

# interfaces
.implements Lorg/pytorch/executorch/INativePeer;


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "executorch"

    .line 19
    invoke-static {v0}, Lcom/facebook/soloader/nativeloader/NativeLoader;->loadLibrary(Ljava/lang/String;)Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1, p2}, Lorg/pytorch/executorch/NativePeer;->initHybrid(Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/jni/HybridData;

    move-result-object p1

    iput-object p1, p0, Lorg/pytorch/executorch/NativePeer;->mHybridData:Lcom/facebook/jni/HybridData;

    return-void
.end method

.method private static native initHybrid(Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/jni/HybridData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/jni/HybridData;"
        }
    .end annotation
.end method


# virtual methods
.method public varargs native execute(Ljava/lang/String;[Lorg/pytorch/executorch/EValue;)[Lorg/pytorch/executorch/EValue;
.end method

.method public varargs native forward([Lorg/pytorch/executorch/EValue;)[Lorg/pytorch/executorch/EValue;
.end method

.method public native loadMethod(Ljava/lang/String;)I
.end method

.method public resetNative()V
    .locals 1

    iget-object v0, p0, Lorg/pytorch/executorch/NativePeer;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 33
    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->resetNative()V

    return-void
.end method
