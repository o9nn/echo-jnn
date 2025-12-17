.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Decoratable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Resolution"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final decorator:Z

.field private final loaded:Z

.field private final module:Lnet/bytebuddy/utility/JavaModule;

.field private final protectionDomain:Ljava/security/ProtectionDomain;

.field private final transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

.field private final typePool:Lnet/bytebuddy/pool/TypePool;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/security/ProtectionDomain;ZLnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;Z)V
    .locals 0

    .line 10066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->classLoader:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->module:Lnet/bytebuddy/utility/JavaModule;

    iput-object p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->protectionDomain:Ljava/security/ProtectionDomain;

    iput-boolean p5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->loaded:Z

    iput-object p6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typePool:Lnet/bytebuddy/pool/TypePool;

    iput-object p7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    iput-boolean p8, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->decorator:Z

    return-void
.end method


# virtual methods
.method public append(Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;
    .locals 11

    .line 10104
    new-instance v9, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->classLoader:Ljava/lang/ClassLoader;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->module:Lnet/bytebuddy/utility/JavaModule;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->protectionDomain:Ljava/security/ProtectionDomain;

    iget-boolean v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->loaded:Z

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typePool:Lnet/bytebuddy/pool/TypePool;

    new-instance v7, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$Compound;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    const/4 v8, 0x0

    iget-object v10, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    aput-object v10, v0, v8

    const/4 v8, 0x1

    aput-object p1, v0, v8

    invoke-direct {v7, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$Compound;-><init>([Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;)V

    iget-boolean v8, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->decorator:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/security/ProtectionDomain;ZLnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;Z)V

    return-object v9
.end method

.method public apply(Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;Lnet/bytebuddy/ByteBuddy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;Ljava/security/AccessControlContext;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;)[B
    .locals 11

    move-object v0, p0

    .line 10125
    invoke-interface {p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;->dispatcher()Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    iget-object v4, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    .line 10129
    invoke-interface/range {p5 .. p5}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;->resolve()Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;

    move-result-object v7

    iget-object v8, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->classLoader:Ljava/lang/ClassLoader;

    iget-object v9, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->module:Lnet/bytebuddy/utility/JavaModule;

    iget-object v10, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->protectionDomain:Ljava/security/ProtectionDomain;

    move-object v3, p3

    move-object v5, p4

    move-object v6, p2

    .line 10126
    invoke-interface/range {v3 .. v10}, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;->builder(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ByteBuddy;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v3

    iget-object v4, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v5, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->classLoader:Ljava/lang/ClassLoader;

    iget-object v6, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->module:Lnet/bytebuddy/utility/JavaModule;

    invoke-interface {v2, v3, v4, v5, v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;->transform(Lnet/bytebuddy/dynamic/DynamicType$Builder;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher;->apply(Lnet/bytebuddy/dynamic/DynamicType$Builder;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v2

    sget-object v3, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;->INSTANCE:Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;

    iget-object v4, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typePool:Lnet/bytebuddy/pool/TypePool;

    .line 10132
    invoke-interface {v2, v3, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make(Lnet/bytebuddy/dynamic/TypeResolutionStrategy;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v2

    iget-object v3, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->classLoader:Ljava/lang/ClassLoader;

    .line 10133
    new-instance v4, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;

    iget-object v5, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->classLoader:Ljava/lang/ClassLoader;

    iget-object v6, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->protectionDomain:Ljava/security/ProtectionDomain;

    move-object/from16 v7, p6

    invoke-direct {v4, v7, v5, v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)V

    invoke-interface {v1, v2, v3, v4}, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher;->register(Lnet/bytebuddy/dynamic/DynamicType;Ljava/lang/ClassLoader;Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher$InjectorFactory;)V

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->classLoader:Ljava/lang/ClassLoader;

    iget-object v4, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->module:Lnet/bytebuddy/utility/JavaModule;

    iget-boolean v5, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->loaded:Z

    move-object/from16 p1, p8

    move-object p2, v1

    move-object p3, v3

    move-object p4, v4

    move/from16 p5, v5

    move-object/from16 p6, v2

    .line 10136
    invoke-interface/range {p1 .. p6}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onTransformation(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLnet/bytebuddy/dynamic/DynamicType;)V

    .line 10137
    invoke-interface {v2}, Lnet/bytebuddy/dynamic/DynamicType$Unloaded;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public asDecoratorOf(Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;
    .locals 0

    .line 10090
    invoke-interface {p1, p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;->prepend(Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Decoratable;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;

    move-result-object p1

    return-object p1
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
    iget-boolean v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->loaded:Z

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;

    iget-boolean v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->loaded:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->decorator:Z

    iget-boolean v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->decorator:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->classLoader:Ljava/lang/ClassLoader;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->module:Lnet/bytebuddy/utility/JavaModule;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->module:Lnet/bytebuddy/utility/JavaModule;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/utility/JavaModule;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->protectionDomain:Ljava/security/ProtectionDomain;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->protectionDomain:Ljava/security/ProtectionDomain;

    invoke-virtual {v2, v3}, Ljava/security/ProtectionDomain;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getSort()Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->decorator:Z

    if-eqz v0, :cond_0

    .line 10081
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;->DECORATOR:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;->TERMINAL:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->module:Lnet/bytebuddy/utility/JavaModule;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaModule;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->protectionDomain:Ljava/security/ProtectionDomain;

    invoke-virtual {v0}, Ljava/security/ProtectionDomain;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->loaded:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->decorator:Z

    add-int/2addr v1, v0

    return v1
.end method

.method public prepend(Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Decoratable;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    .line 10097
    invoke-interface {p1, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Decoratable;->append(Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;

    move-result-object p1

    return-object p1
.end method
