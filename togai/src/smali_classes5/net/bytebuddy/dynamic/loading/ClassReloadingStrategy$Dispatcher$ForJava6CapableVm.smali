.class public Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForJava6CapableVm;
.super Ljava/lang/Object;
.source "ClassReloadingStrategy.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJava6CapableVm"
.end annotation


# instance fields
.field private final addTransformer:Ljava/lang/reflect/Method;

.field private final isModifiableClass:Ljava/lang/reflect/Method;

.field private final isRetransformClassesSupported:Ljava/lang/reflect/Method;

.field private final retransformClasses:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForJava6CapableVm;->isModifiableClass:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForJava6CapableVm;->isRetransformClassesSupported:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForJava6CapableVm;->addTransformer:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForJava6CapableVm;->retransformClasses:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public addTransformer(Ljava/lang/instrument/Instrumentation;Ljava/lang/instrument/ClassFileTransformer;Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForJava6CapableVm;->addTransformer:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 479
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

    .line 483
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Error invoking java.lang.instrument.Instrumentation#addTransformer"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 481
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Cannot access java.lang.instrument.Instrumentation#addTransformer"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public isModifiableClass(Ljava/lang/instrument/Instrumentation;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForJava6CapableVm;->isModifiableClass:Ljava/lang/reflect/Method;

    .line 453
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 457
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Error invoking java.lang.instrument.Instrumentation#isModifiableClass"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 455
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access java.lang.instrument.Instrumentation#isModifiableClass"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public isRetransformClassesSupported(Ljava/lang/instrument/Instrumentation;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForJava6CapableVm;->isRetransformClassesSupported:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 466
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

    .line 470
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error invoking java.lang.instrument.Instrumentation#isModifiableClass"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 468
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.instrument.Instrumentation#isModifiableClass"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public retransformClasses(Ljava/lang/instrument/Instrumentation;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/instrument/UnmodifiableClassException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForJava6CapableVm;->retransformClasses:Ljava/lang/reflect/Method;

    .line 492
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 496
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 497
    instance-of p2, p1, Ljava/lang/instrument/UnmodifiableClassException;

    if-eqz p2, :cond_0

    .line 498
    check-cast p1, Ljava/lang/instrument/UnmodifiableClassException;

    throw p1

    .line 500
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Error invoking java.lang.instrument.Instrumentation#retransformClasses"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 494
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access java.lang.instrument.Instrumentation#retransformClasses"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
