.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher$InjectorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BootstrapClassLoaderCapableInjectorFactory"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final bootstrapInjectionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;

.field private final classLoader:Ljava/lang/ClassLoader;

.field private final protectionDomain:Ljava/security/ProtectionDomain;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)V
    .locals 0

    .line 10170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->bootstrapInjectionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;

    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->classLoader:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->protectionDomain:Ljava/security/ProtectionDomain;

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
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->bootstrapInjectionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->bootstrapInjectionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->classLoader:Ljava/lang/ClassLoader;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->protectionDomain:Ljava/security/ProtectionDomain;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->protectionDomain:Ljava/security/ProtectionDomain;

    invoke-virtual {v2, p1}, Ljava/security/ProtectionDomain;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->bootstrapInjectionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->protectionDomain:Ljava/security/ProtectionDomain;

    invoke-virtual {v0}, Ljava/security/ProtectionDomain;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve()Lnet/bytebuddy/dynamic/loading/ClassInjector;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->classLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->bootstrapInjectionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->protectionDomain:Ljava/security/ProtectionDomain;

    .line 10181
    invoke-interface {v0, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;->make(Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassInjector;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->classLoader:Ljava/lang/ClassLoader;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->protectionDomain:Ljava/security/ProtectionDomain;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;-><init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)V

    :goto_0
    return-object v0
.end method
