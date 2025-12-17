.class public Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$ForRetransformation;
.super Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ForRetransformation"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 7000
    invoke-direct {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;-><init>()V

    return-void
.end method


# virtual methods
.method protected doApply(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Ljava/util/List;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;)V
    .locals 0
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
            Ljava/lang/instrument/UnmodifiableClassException;
        }
    .end annotation

    .line 7008
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_0

    .line 7009
    invoke-interface {p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->release()V

    .line 7011
    :try_start_0
    sget-object p4, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->DISPATCHER:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher;

    const/4 p5, 0x0

    new-array p5, p5, [Ljava/lang/Class;

    invoke-interface {p3, p5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/Class;

    invoke-interface {p4, p1, p3}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher;->retransformClasses(Ljava/lang/instrument/Instrumentation;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7013
    invoke-interface {p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->acquire()Z

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->acquire()Z

    .line 7014
    throw p1

    :cond_0
    :goto_0
    return-void
.end method
