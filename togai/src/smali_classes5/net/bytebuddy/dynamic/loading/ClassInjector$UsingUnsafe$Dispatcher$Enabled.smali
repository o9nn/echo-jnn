.class public Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Enabled;
.super Ljava/lang/Object;
.source "ClassInjector.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher;
.implements Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Initializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Enabled"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final defineClass:Ljava/lang/reflect/Method;

.field private final unsafe:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Enabled;->unsafe:Ljava/lang/Object;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Enabled;->defineClass:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public defineClass(Ljava/lang/ClassLoader;Ljava/lang/String;[BLjava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Enabled;->defineClass:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Enabled;->unsafe:Ljava/lang/Object;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p3, v2, p2

    .line 1988
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x2

    aput-object p2, v2, v3

    array-length p2, p3

    .line 1989
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v2, p3

    const/4 p2, 0x4

    aput-object p1, v2, p2

    const/4 p1, 0x5

    aput-object p4, v2, p1

    .line 1985
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1995
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Error invoking Unsafe::defineClass"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1993
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Could not access Unsafe::defineClass"

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Enabled;->unsafe:Ljava/lang/Object;

    check-cast p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Enabled;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Enabled;->unsafe:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Enabled;->defineClass:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Enabled;->defineClass:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Enabled;->unsafe:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Enabled;->defineClass:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public initialize()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher;
    .locals 2

    .line 1969
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1972
    :try_start_0
    sget-object v1, Lnet/bytebuddy/dynamic/loading/ClassInjector;->SUPPRESS_ACCESS_CHECKS:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1974
    new-instance v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Unavailable;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Unavailable;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    :goto_0
    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
