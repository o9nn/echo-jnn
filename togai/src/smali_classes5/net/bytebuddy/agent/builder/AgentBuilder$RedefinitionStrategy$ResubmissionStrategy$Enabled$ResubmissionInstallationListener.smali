.class public Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;
.super Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Adapter;
.source "AgentBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ResubmissionInstallationListener"
.end annotation


# instance fields
.field private volatile cancelable:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable;

.field private final circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

.field private final instrumentation:Ljava/lang/instrument/Instrumentation;

.field private final listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

.field private final locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

.field private final matcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

.field private final redefinitionBatchAllocator:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;

.field private final redefinitionBatchListener:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;

.field private final redefinitionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

.field private final resubmissionScheduler:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;

.field private final types:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;",
            "Ljava/lang/instrument/Instrumentation;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 6337
    invoke-direct {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Adapter;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->resubmissionScheduler:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;

    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->instrumentation:Ljava/lang/instrument/Instrumentation;

    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iput-object p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    iput-object p5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    iput-object p6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->matcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    iput-object p7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->redefinitionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    iput-object p8, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->redefinitionBatchAllocator:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;

    iput-object p9, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->redefinitionBatchListener:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;

    iput-object p10, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->types:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public onInstall(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
    .locals 0

    iget-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->resubmissionScheduler:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;

    .line 6353
    invoke-interface {p1, p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;->schedule(Ljava/lang/Runnable;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->cancelable:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable;

    return-void
.end method

.method public onReset(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
    .locals 0

    iget-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->cancelable:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable;

    if-eqz p1, :cond_0

    .line 6360
    invoke-interface {p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable;->cancel()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 13

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    .line 6368
    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->acquire()Z

    move-result v0

    :try_start_0
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->types:Ljava/util/concurrent/ConcurrentMap;

    .line 6370
    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6371
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6372
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 6373
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    .line 6431
    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->release()V

    :cond_1
    return-void

    .line 6376
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 6377
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;

    invoke-virtual {v4}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ClassLoader;

    if-nez v4, :cond_4

    .line 6378
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;

    invoke-virtual {v5}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;->isBootstrapLoader()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 6415
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6379
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 6380
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6381
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v5, :cond_6

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    .line 6431
    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->release()V

    :cond_5
    return-void

    .line 6385
    :cond_6
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6387
    :try_start_3
    sget-object v6, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->DISPATCHER:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher;

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-interface {v6, v7, v5}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher;->isModifiableClass(Ljava/lang/instrument/Instrumentation;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->matcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    invoke-static {v5}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v8

    .line 6388
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 6389
    invoke-static {v5}, Lnet/bytebuddy/utility/JavaModule;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaModule;

    move-result-object v10

    .line 6391
    invoke-virtual {v5}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v12

    move-object v11, v5

    .line 6387
    invoke-interface/range {v7 .. v12}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;->matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 6392
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v6

    move-object v12, v6

    const/4 v6, 0x1

    :try_start_4
    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    .line 6396
    invoke-static {v5}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    .line 6397
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 6398
    invoke-static {v5}, Lnet/bytebuddy/utility/JavaModule;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaModule;

    move-result-object v10

    const/4 v11, 0x1

    .line 6396
    invoke-interface/range {v7 .. v12}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onError(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLjava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    .line 6402
    invoke-static {v5}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    .line 6403
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 6404
    invoke-static {v5}, Lnet/bytebuddy/utility/JavaModule;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaModule;

    move-result-object v5

    .line 6402
    invoke-interface {v7, v8, v9, v5, v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 6411
    :catchall_1
    :cond_7
    :goto_3
    :try_start_6
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_2
    move-exception v7

    :try_start_7
    iget-object v8, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    .line 6402
    invoke-static {v5}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    .line 6403
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 6404
    invoke-static {v5}, Lnet/bytebuddy/utility/JavaModule;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaModule;

    move-result-object v5

    .line 6402
    invoke-interface {v8, v9, v10, v5, v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    .line 6406
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 6418
    :cond_8
    :try_start_8
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->redefinitionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    .line 6419
    invoke-virtual {v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->make()Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;

    move-result-object v3

    .line 6420
    invoke-virtual {v3, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->include(Ljava/util/List;)V

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->instrumentation:Ljava/lang/instrument/Instrumentation;

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    iget-object v8, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->redefinitionBatchAllocator:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;

    iget-object v9, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->redefinitionBatchListener:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;

    const/4 v10, 0x0

    .line 6421
    invoke-virtual/range {v3 .. v10}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->apply(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;I)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_9
    if-eqz v0, :cond_a

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    .line 6431
    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->release()V

    :cond_a
    return-void

    :catchall_3
    move-exception v1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->release()V

    .line 6433
    :cond_b
    throw v1
.end method
