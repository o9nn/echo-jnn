.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForJava6CapableVm;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJava6CapableVm"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final addTransformer:Ljava/lang/reflect/Method;

.field private final isNativeMethodPrefixSupported:Ljava/lang/reflect/Method;

.field private final setNativeMethodPrefix:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 9441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForJava6CapableVm;->isNativeMethodPrefixSupported:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForJava6CapableVm;->setNativeMethodPrefix:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForJava6CapableVm;->addTransformer:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public addTransformer(Ljava/lang/instrument/Instrumentation;Ljava/lang/instrument/ClassFileTransformer;Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForJava6CapableVm;->addTransformer:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 9478
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9482
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Error invoking java.lang.instrument.Instrumentation#addTransformer"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 9480
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Cannot access java.lang.instrument.Instrumentation#addTransformer"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

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
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForJava6CapableVm;->isNativeMethodPrefixSupported:Ljava/lang/reflect/Method;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForJava6CapableVm;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForJava6CapableVm;->isNativeMethodPrefixSupported:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForJava6CapableVm;->setNativeMethodPrefix:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForJava6CapableVm;->setNativeMethodPrefix:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForJava6CapableVm;->addTransformer:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForJava6CapableVm;->addTransformer:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForJava6CapableVm;->isNativeMethodPrefixSupported:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForJava6CapableVm;->setNativeMethodPrefix:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForJava6CapableVm;->addTransformer:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public isNativeMethodPrefixSupported(Ljava/lang/instrument/Instrumentation;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForJava6CapableVm;->isNativeMethodPrefixSupported:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 9452
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 9456
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error invoking java.lang.instrument.Instrumentation#isNativeMethodPrefixSupported"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 9454
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.instrument.Instrumentation#isNativeMethodPrefixSupported"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setNativeMethodPrefix(Ljava/lang/instrument/Instrumentation;Ljava/lang/instrument/ClassFileTransformer;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForJava6CapableVm;->setNativeMethodPrefix:Ljava/lang/reflect/Method;

    .line 9465
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9469
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Error invoking java.lang.instrument.Instrumentation#setNativeMethodPrefix"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 9467
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Cannot access java.lang.instrument.Instrumentation#setNativeMethodPrefix"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
