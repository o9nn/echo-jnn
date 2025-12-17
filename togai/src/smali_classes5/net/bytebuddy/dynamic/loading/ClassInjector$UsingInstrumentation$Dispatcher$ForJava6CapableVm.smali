.class public Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher$ForJava6CapableVm;
.super Ljava/lang/Object;
.source "ClassInjector.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJava6CapableVm"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final appendToBootstrapClassLoaderSearch:Ljava/lang/reflect/Method;

.field private final appendToSystemClassLoaderSearch:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 2268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher$ForJava6CapableVm;->appendToBootstrapClassLoaderSearch:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher$ForJava6CapableVm;->appendToSystemClassLoaderSearch:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public appendToBootstrapClassLoaderSearch(Ljava/lang/instrument/Instrumentation;Ljava/util/jar/JarFile;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher$ForJava6CapableVm;->appendToBootstrapClassLoaderSearch:Ljava/lang/reflect/Method;

    .line 2285
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2289
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Error invoking java.lang.instrument.Instrumentation#appendToBootstrapClassLoaderSearch"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2287
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access java.lang.instrument.Instrumentation#appendToBootstrapClassLoaderSearch"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public appendToSystemClassLoaderSearch(Ljava/lang/instrument/Instrumentation;Ljava/util/jar/JarFile;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher$ForJava6CapableVm;->appendToSystemClassLoaderSearch:Ljava/lang/reflect/Method;

    .line 2298
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2302
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Error invoking java.lang.instrument.Instrumentation#appendToSystemClassLoaderSearch"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2300
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access java.lang.instrument.Instrumentation#appendToSystemClassLoaderSearch"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher$ForJava6CapableVm;->appendToBootstrapClassLoaderSearch:Ljava/lang/reflect/Method;

    check-cast p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher$ForJava6CapableVm;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher$ForJava6CapableVm;->appendToBootstrapClassLoaderSearch:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher$ForJava6CapableVm;->appendToSystemClassLoaderSearch:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher$ForJava6CapableVm;->appendToSystemClassLoaderSearch:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher$ForJava6CapableVm;->appendToBootstrapClassLoaderSearch:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher$ForJava6CapableVm;->appendToSystemClassLoaderSearch:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public isAlive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
