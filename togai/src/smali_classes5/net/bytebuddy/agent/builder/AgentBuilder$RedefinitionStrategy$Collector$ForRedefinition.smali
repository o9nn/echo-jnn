.class public Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$ForRedefinition;
.super Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ForRedefinition"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 6959
    invoke-direct {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;-><init>()V

    return-void
.end method


# virtual methods
.method protected doApply(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Ljava/util/List;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/instrument/UnmodifiableClassException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 6967
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6968
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :catchall_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 6971
    :try_start_0
    new-instance v2, Ljava/lang/instrument/ClassDefinition;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1}, Lnet/bytebuddy/utility/JavaModule;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaModule;

    move-result-object v4

    invoke-interface {p4, v3, v4}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;->classFileLocator(Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v3

    .line 6972
    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lnet/bytebuddy/dynamic/ClassFileLocator;->locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;

    move-result-object v3

    .line 6973
    invoke-interface {v3}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;->resolve()[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/lang/instrument/ClassDefinition;-><init>(Ljava/lang/Class;[B)V

    .line 6971
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    move-object v8, v2

    .line 6975
    :try_start_1
    invoke-static {v1}, Lnet/bytebuddy/utility/JavaModule;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaModule;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x1

    .line 6977
    :try_start_2
    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v7, 0x1

    move-object v3, p5

    move-object v6, v2

    invoke-interface/range {v3 .. v8}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onError(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLjava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 6979
    :try_start_3
    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-interface {p5, v3, v1, v2, v9}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-interface {p5, v4, v1, v2, v9}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    .line 6980
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6986
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 6987
    invoke-interface {p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->release()V

    const/4 p3, 0x0

    :try_start_4
    new-array p3, p3, [Ljava/lang/instrument/ClassDefinition;

    .line 6989
    invoke-interface {v0, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/instrument/ClassDefinition;

    invoke-interface {p1, p3}, Ljava/lang/instrument/Instrumentation;->redefineClasses([Ljava/lang/instrument/ClassDefinition;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 6991
    invoke-interface {p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->acquire()Z

    goto :goto_1

    :catchall_3
    move-exception p1

    invoke-interface {p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->acquire()Z

    .line 6992
    throw p1

    :cond_1
    :goto_1
    return-void
.end method
