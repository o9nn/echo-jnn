.class public Lorg/apache/tvm/contrib/GraphExecutor;
.super Ljava/lang/Object;
.source "GraphExecutor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Lorg/apache/tvm/Module;Lorg/apache/tvm/Device;)Lorg/apache/tvm/contrib/GraphModule;
    .locals 1

    const-string v0, "tvm.graph_executor.create"

    .line 41
    invoke-static {v0}, Lorg/apache/tvm/Function;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p0}, Lorg/apache/tvm/Function;->pushArg(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object p0

    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/tvm/Function;->pushArg(Lorg/apache/tvm/Module;)Lorg/apache/tvm/Function;

    move-result-object p0

    iget p1, p2, Lorg/apache/tvm/Device;->deviceType:I

    invoke-virtual {p0, p1}, Lorg/apache/tvm/Function;->pushArg(I)Lorg/apache/tvm/Function;

    move-result-object p0

    iget p1, p2, Lorg/apache/tvm/Device;->deviceId:I

    invoke-virtual {p0, p1}, Lorg/apache/tvm/Function;->pushArg(I)Lorg/apache/tvm/Function;

    move-result-object p0

    .line 48
    invoke-virtual {p0}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/tvm/TVMValue;->asModule()Lorg/apache/tvm/Module;

    move-result-object p0

    .line 50
    new-instance p1, Lorg/apache/tvm/contrib/GraphModule;

    invoke-direct {p1, p0, p2}, Lorg/apache/tvm/contrib/GraphModule;-><init>(Lorg/apache/tvm/Module;Lorg/apache/tvm/Device;)V

    return-object p1

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Cannot find global function tvm.graph_executor.create.Did you compile tvm_runtime with correct version?"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static reflectionGetField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 55
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 57
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 61
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 59
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static varargs reflectionStaticCall(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 66
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 67
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 68
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 p1, 0x0

    .line 73
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 79
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 77
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 75
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
