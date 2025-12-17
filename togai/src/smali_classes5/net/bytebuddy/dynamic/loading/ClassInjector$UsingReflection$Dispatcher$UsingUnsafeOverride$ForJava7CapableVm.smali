.class public Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeOverride$ForJava7CapableVm;
.super Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeOverride;
.source "ClassInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ForJava7CapableVm"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final getClassLoadingLock:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1211
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeOverride;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    iput-object p5, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeOverride$ForJava7CapableVm;->getClassLoadingLock:Ljava/lang/reflect/Method;

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeOverride$ForJava7CapableVm;->getClassLoadingLock:Ljava/lang/reflect/Method;

    check-cast p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeOverride$ForJava7CapableVm;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeOverride$ForJava7CapableVm;->getClassLoadingLock:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public getClassLoadingLock(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeOverride$ForJava7CapableVm;->getClassLoadingLock:Ljava/lang/reflect/Method;

    .line 1220
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1224
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Error invoking java.lang.ClassLoader#getClassLoadingLock"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1222
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Could not access java.lang.ClassLoader#getClassLoadingLock"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeOverride$ForJava7CapableVm;->getClassLoadingLock:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method
