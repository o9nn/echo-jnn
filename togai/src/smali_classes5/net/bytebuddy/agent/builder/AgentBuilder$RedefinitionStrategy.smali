.class public abstract enum Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "RedefinitionStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

.field public static final enum DISABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

.field protected static final DISPATCHER:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher;

.field public static final enum REDEFINITION:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

.field public static final enum RETRANSFORMATION:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;


# instance fields
.field private final enabled:Z

.field private final retransforming:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4504
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$1;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$1;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->DISABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    .line 4549
    new-instance v1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$2;

    const-string v3, "REDEFINITION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$2;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->REDEFINITION:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    .line 4579
    new-instance v3, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$3;

    const-string v5, "RETRANSFORMATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4, v4}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$3;-><init>(Ljava/lang/String;IZZ)V

    sput-object v3, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->RETRANSFORMATION:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    const/4 v5, 0x3

    new-array v5, v5, [Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    .line 4499
    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    .line 4596
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$CreationAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher;

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->DISPATCHER:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 4614
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->enabled:Z

    iput-boolean p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->retransforming:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZZLnet/bytebuddy/agent/builder/AgentBuilder$1;)V
    .locals 0

    .line 4499
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;-><init>(Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    .line 4499
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    .line 4499
    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)V
    .locals 25

    move-object/from16 v9, p1

    move-object/from16 v8, p2

    .line 4684
    invoke-virtual/range {p0 .. p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->check(Ljava/lang/instrument/Instrumentation;)V

    move-object/from16 v0, p6

    .line 4686
    invoke-interface {v0, v9}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;->resolve(Ljava/lang/instrument/Instrumentation;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    const/4 v0, 0x0

    move/from16 v20, v0

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 4687
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->make()Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;

    move-result-object v21

    .line 4688
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :catchall_0
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/Class;

    if-eqz v15, :cond_3

    .line 4689
    invoke-virtual {v15}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_3

    move-object/from16 v14, p9

    invoke-virtual {v14, v15}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->isInstrumented(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4692
    :cond_0
    invoke-static {v15}, Lnet/bytebuddy/utility/JavaModule;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaModule;

    move-result-object v13

    const/4 v12, 0x1

    .line 4694
    :try_start_0
    invoke-virtual {v15}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    move-object/from16 v11, p5

    invoke-interface {v11, v0, v13}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;->classFileLocator(Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-virtual {v15}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object/from16 v10, p4

    invoke-interface {v10, v0, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;->typePool(Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/lang/ClassLoader;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 4699
    :try_start_1
    invoke-static {v15}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 v1, p10

    move-object v3, v15

    move-object v4, v7

    move-object/from16 v5, p3

    move-object/from16 v23, v7

    move-object v7, v13

    :try_start_2
    invoke-interface/range {v1 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;->apply(Ljava/lang/String;Ljava/lang/Class;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->DISPATCHER:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher;

    .line 4703
    invoke-interface {v1, v9, v15}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher;->isModifiableClass(Ljava/lang/instrument/Instrumentation;Ljava/lang/Class;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    xor-int/lit8 v18, v1, 0x1

    move-object/from16 v10, v21

    move-object/from16 v11, p12

    move v7, v12

    move-object/from16 v12, p13

    move-object v6, v13

    move-object/from16 v13, p2

    move-object v14, v0

    move-object v5, v15

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .line 4696
    :try_start_3
    invoke-virtual/range {v10 .. v18}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->consider(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/utility/JavaModule;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v23, v7

    :goto_2
    move v7, v12

    move-object v6, v13

    move-object v5, v15

    .line 4705
    :goto_3
    :try_start_4
    invoke-interface/range {p10 .. p10}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;->isLoadedFirst()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz v1, :cond_1

    move-object/from16 v10, p11

    :try_start_5
    invoke-interface {v10, v5, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;->isFallback(Ljava/lang/Class;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4709
    invoke-static {v5}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v23

    invoke-interface {v1, v0}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object/from16 v1, v21

    move-object/from16 v2, p12

    move-object/from16 v3, p13

    move-object/from16 v4, p2

    move-object v11, v5

    move-object v5, v0

    move-object v12, v6

    move-object v6, v11

    move v13, v7

    move-object v7, v12

    .line 4706
    :try_start_6
    invoke-virtual/range {v1 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->consider(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Class;Lnet/bytebuddy/utility/JavaModule;)V

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    goto :goto_4

    :cond_1
    move-object/from16 v10, p11

    :cond_2
    move-object v11, v5

    move-object v12, v6

    move v13, v7

    .line 4713
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object/from16 v10, p11

    :goto_4
    move-object v11, v5

    move-object v12, v6

    move v13, v7

    goto :goto_5

    :catchall_7
    move-exception v0

    move-object/from16 v10, p11

    move-object v11, v15

    move-object/from16 v24, v13

    move v13, v12

    move-object/from16 v12, v24

    :goto_5
    move-object v6, v0

    .line 4719
    :try_start_7
    invoke-static {v11}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v5, 0x1

    move-object/from16 v1, p2

    move-object v4, v12

    invoke-interface/range {v1 .. v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onError(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLjava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 4721
    :try_start_8
    invoke-static {v11}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-interface {v8, v0, v1, v12, v13}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    goto/16 :goto_1

    :catchall_8
    move-exception v0

    invoke-static {v11}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-interface {v8, v1, v2, v12, v13}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    .line 4722
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_3
    :goto_6
    move-object/from16 v10, p11

    goto/16 :goto_1

    :cond_4
    move-object/from16 v10, p11

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p2

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, v20

    .line 4728
    invoke-virtual/range {v1 .. v8}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->apply(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;I)I

    move-result v20

    move-object/from16 v8, p2

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method protected abstract check(Ljava/lang/instrument/Instrumentation;)V
.end method

.method protected isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->enabled:Z

    return v0
.end method

.method protected isRetransforming()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->retransforming:Z

    return v0
.end method

.method protected abstract make()Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;
.end method
