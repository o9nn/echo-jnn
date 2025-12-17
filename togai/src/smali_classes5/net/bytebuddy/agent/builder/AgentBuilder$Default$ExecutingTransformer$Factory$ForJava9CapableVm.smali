.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$ForJava9CapableVm;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJava9CapableVm"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final executingTransformer:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;",
            ">;)V"
        }
    .end annotation

    .line 10734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$ForJava9CapableVm;->executingTransformer:Ljava/lang/reflect/Constructor;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$ForJava9CapableVm;->executingTransformer:Ljava/lang/reflect/Constructor;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$ForJava9CapableVm;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$ForJava9CapableVm;->executingTransformer:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Constructor;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$ForJava9CapableVm;->executingTransformer:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public make(Lnet/bytebuddy/ByteBuddy;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;)Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;
    .locals 5

    move-object v1, p0

    :try_start_0
    iget-object v0, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$ForJava9CapableVm;->executingTransformer:Ljava/lang/reflect/Constructor;

    .line 10758
    filled-new-array/range {p1 .. p16}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 10779
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot invoke "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$ForJava9CapableVm;->executingTransformer:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 10777
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot instantiate "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$ForJava9CapableVm;->executingTransformer:Ljava/lang/reflect/Constructor;

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    .line 10775
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot access "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$ForJava9CapableVm;->executingTransformer:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
