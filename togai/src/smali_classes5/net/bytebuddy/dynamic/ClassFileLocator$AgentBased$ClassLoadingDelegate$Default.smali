.class public Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$Default;
.super Ljava/lang/Object;
.source "ClassFileLocator.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field protected final classLoader:Ljava/lang/ClassLoader;


# direct methods
.method protected constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$Default;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public static of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate;
    .locals 1

    .line 1497
    invoke-static {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader;->isDelegating(Ljava/lang/ClassLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader;

    invoke-direct {v0, p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$Default;

    if-nez p0, :cond_1

    .line 1499
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    :cond_1
    invoke-direct {v0, p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$Default;-><init>(Ljava/lang/ClassLoader;)V

    :goto_0
    return-object v0
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$Default;->classLoader:Ljava/lang/ClassLoader;

    check-cast p1, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$Default;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$Default;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$Default;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$Default;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public locate(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$Default;->classLoader:Ljava/lang/ClassLoader;

    .line 1506
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
