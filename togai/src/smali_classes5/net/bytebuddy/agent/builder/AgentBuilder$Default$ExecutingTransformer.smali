.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;
.super Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer$AbstractBase;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ExecutingTransformer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$LegacyVmDispatcher;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory;
    }
.end annotation


# static fields
.field protected static final FACTORY:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory;


# instance fields
.field private final accessControlContext:Ljava/security/AccessControlContext;

.field private final bootstrapInjectionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;

.field private final byteBuddy:Lnet/bytebuddy/ByteBuddy;

.field private final circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

.field private final classFileBufferStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;

.field private final descriptionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

.field private final fallbackStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;

.field private final ignoredTypeMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

.field private final initializationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;

.field private final installationListener:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

.field private final lambdaInstrumentationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

.field private final listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

.field private final locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

.field private final nativeMethodStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;

.field private final poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

.field private final transformation:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;

.field private final typeStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10285
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$CreationAction;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$CreationAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory;

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->FACTORY:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/ByteBuddy;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;)V
    .locals 2

    move-object v0, p0

    .line 10407
    invoke-direct {p0}, Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer$AbstractBase;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    move-object v1, p4

    iput-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->typeStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;

    move-object v1, p3

    iput-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    move-object v1, p5

    iput-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    move-object v1, p2

    iput-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    move-object v1, p6

    iput-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->nativeMethodStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;

    move-object v1, p7

    iput-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->initializationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;

    move-object v1, p8

    iput-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->bootstrapInjectionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;

    move-object v1, p9

    iput-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->lambdaInstrumentationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    move-object v1, p10

    iput-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->descriptionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    move-object v1, p11

    iput-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->fallbackStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;

    move-object v1, p12

    iput-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->classFileBufferStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;

    move-object v1, p13

    iput-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->installationListener:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

    move-object/from16 v1, p14

    iput-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->ignoredTypeMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    move-object/from16 v1, p15

    iput-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->transformation:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;

    move-object/from16 v1, p16

    iput-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    .line 10424
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    iput-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->accessControlContext:Ljava/security/AccessControlContext;

    return-void
.end method

.method static synthetic access$1500(Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B
    .locals 0

    .line 10280
    invoke-direct/range {p0 .. p6}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->transform(Lnet/bytebuddy/utility/JavaModule;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B

    move-result-object p0

    return-object p0
.end method

.method private doTransform(Lnet/bytebuddy/utility/JavaModule;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;ZLjava/security/ProtectionDomain;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/dynamic/ClassFileLocator;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/utility/JavaModule;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/security/ProtectionDomain;",
            "Lnet/bytebuddy/pool/TypePool;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")[B"
        }
    .end annotation

    move-object v0, p0

    .line 10551
    invoke-direct/range {p0 .. p7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->resolve(Lnet/bytebuddy/utility/JavaModule;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;ZLjava/security/ProtectionDomain;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->initializationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;

    iget-object v4, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->typeStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;

    iget-object v5, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    iget-object v6, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->nativeMethodStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;

    iget-object v7, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->bootstrapInjectionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;

    iget-object v8, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->accessControlContext:Ljava/security/AccessControlContext;

    iget-object v9, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    move-object/from16 v3, p8

    invoke-interface/range {v1 .. v9}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;->apply(Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;Lnet/bytebuddy/ByteBuddy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;Ljava/security/AccessControlContext;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;)[B

    move-result-object v1

    return-object v1
.end method

.method private resolve(Lnet/bytebuddy/utility/JavaModule;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;ZLjava/security/ProtectionDomain;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/utility/JavaModule;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/security/ProtectionDomain;",
            "Lnet/bytebuddy/pool/TypePool;",
            ")",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->descriptionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    iget-object v5, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p7

    move-object/from16 v6, p2

    move-object v7, p1

    .line 10581
    invoke-interface/range {v1 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;->apply(Ljava/lang/String;Ljava/lang/Class;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    iget-object v6, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->ignoredTypeMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    move-object v7, v1

    move-object/from16 v8, p2

    move-object v9, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    .line 10582
    invoke-interface/range {v6 .. v11}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;->matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p5

    invoke-direct {v2, v1, v4, p1, v5}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    goto :goto_0

    :cond_0
    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p5

    iget-object v6, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->transformation:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;

    move-object v7, v1

    move-object/from16 v8, p2

    move-object v9, p1

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    .line 10584
    invoke-interface/range {v6 .. v13}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;->resolve(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;ZLjava/security/ProtectionDomain;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method private transform(Lnet/bytebuddy/utility/JavaModule;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/utility/JavaModule;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            "[B)[B"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v0, p3

    move-object/from16 v13, p4

    if-eqz v0, :cond_9

    iget-object v1, v10, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->lambdaInstrumentationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    .line 10501
    invoke-virtual {v1, v13}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->isInstrumented(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const/16 v1, 0x2f

    const/16 v2, 0x2e

    .line 10504
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    :try_start_0
    iget-object v0, v10, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    if-eqz v13, :cond_1

    move v1, v15

    goto :goto_0

    :cond_1
    move/from16 v1, v16

    .line 10506
    :goto_0
    invoke-interface {v0, v14, v12, v11, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onDiscovery(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    .line 10507
    new-instance v9, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v1, v10, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->classFileBufferStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;

    move-object v2, v14

    move-object/from16 v3, p6

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;->resolve(Ljava/lang/String;[BLjava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v1

    aput-object v1, v0, v16

    iget-object v1, v10, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    .line 10511
    invoke-interface {v1, v12, v11}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;->classFileLocator(Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v1

    aput-object v1, v0, v15

    invoke-direct {v9, v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;-><init>([Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    iget-object v0, v10, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    .line 10512
    invoke-interface {v0, v9, v12}, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;->typePool(Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/lang/ClassLoader;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v13, :cond_2

    move v6, v15

    goto :goto_1

    :cond_2
    move/from16 v6, v16

    :goto_1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v14

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, v17

    move-object/from16 v18, v9

    .line 10514
    :try_start_1
    invoke-direct/range {v1 .. v9}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->doTransform(Lnet/bytebuddy/utility/JavaModule;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;ZLjava/security/ProtectionDomain;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/dynamic/ClassFileLocator;)[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, v10, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    if-eqz v13, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v15, v16

    .line 10526
    :goto_2
    invoke-interface {v1, v14, v12, v11, v15}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v13, :cond_5

    :try_start_2
    iget-object v0, v10, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->descriptionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    .line 10516
    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;->isLoadedFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v10, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->fallbackStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;

    invoke-interface {v0, v13, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;->isFallback(Ljava/lang/Class;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10517
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->access$1400()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v14

    move-object/from16 v7, p5

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->doTransform(Lnet/bytebuddy/utility/JavaModule;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;ZLjava/security/ProtectionDomain;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/dynamic/ClassFileLocator;)[B

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, v10, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    if-eqz v13, :cond_4

    goto :goto_3

    :cond_4
    move/from16 v15, v16

    .line 10526
    :goto_3
    invoke-interface {v1, v14, v12, v11, v15}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    return-object v0

    .line 10519
    :cond_5
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v6, v0

    :try_start_4
    iget-object v1, v10, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    if-eqz v13, :cond_6

    move v5, v15

    goto :goto_4

    :cond_6
    move/from16 v5, v16

    :goto_4
    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    .line 10523
    invoke-interface/range {v1 .. v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onError(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLjava/lang/Throwable;)V

    .line 10524
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->access$1300()[B

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v1, v10, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    if-eqz v13, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v15, v16

    .line 10526
    :goto_5
    invoke-interface {v1, v14, v12, v11, v15}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    return-object v0

    :catchall_2
    move-exception v0

    iget-object v1, v10, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    if-eqz v13, :cond_8

    goto :goto_6

    :cond_8
    move/from16 v15, v16

    :goto_6
    invoke-interface {v1, v14, v12, v11, v15}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    .line 10527
    throw v0

    .line 10502
    :cond_9
    :goto_7
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->access$1300()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized reset(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 10595
    :try_start_0
    invoke-interface {v0, v1}, Ljava/lang/instrument/Instrumentation;->removeTransformer(Ljava/lang/instrument/ClassFileTransformer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10596
    sget-object v4, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$NoOp;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$NoOp;

    sget-object v5, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Inactive;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Inactive;

    iget-object v6, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v7, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v11, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->lambdaInstrumentationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    iget-object v12, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->descriptionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    iget-object v13, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->fallbackStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;

    iget-object v14, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->transformation:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;

    iget-object v15, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->ignoredTypeMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v2 .. v15}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->apply(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)V

    iget-object v2, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->installationListener:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

    .line 10609
    invoke-interface {v2, v0, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;->onReset(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10610
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 10612
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            "[B)[B"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    .line 10435
    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->acquire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10437
    :try_start_0
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$LegacyVmDispatcher;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$LegacyVmDispatcher;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)V

    iget-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->accessControlContext:Ljava/security/AccessControlContext;

    invoke-static {v0, p1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    .line 10443
    invoke-interface {p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->release()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    invoke-interface {p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->release()V

    .line 10444
    throw p1

    .line 10446
    :cond_0
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->access$1300()[B

    move-result-object p1

    return-object p1
.end method

.method protected transform(Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            "[B)[B"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    .line 10468
    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->acquire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10470
    :try_start_0
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)V

    iget-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->accessControlContext:Ljava/security/AccessControlContext;

    invoke-static {v0, p1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    .line 10477
    invoke-interface {p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->release()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    invoke-interface {p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->release()V

    .line 10478
    throw p1

    .line 10480
    :cond_0
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->access$1300()[B

    move-result-object p1

    return-object p1
.end method
