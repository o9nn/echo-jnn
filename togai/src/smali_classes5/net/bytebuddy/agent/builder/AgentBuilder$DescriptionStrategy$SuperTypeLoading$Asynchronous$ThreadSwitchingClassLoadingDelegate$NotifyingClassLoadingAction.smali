.class public Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate$NotifyingClassLoadingAction;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NotifyingClassLoadingAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final name:Ljava/lang/String;

.field private final signal:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 3768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate$NotifyingClassLoadingAction;->name:Ljava/lang/String;

    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate$NotifyingClassLoadingAction;->classLoader:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate$NotifyingClassLoadingAction;->signal:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate$NotifyingClassLoadingAction;->classLoader:Ljava/lang/ClassLoader;

    .line 3778
    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate$NotifyingClassLoadingAction;->name:Ljava/lang/String;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate$NotifyingClassLoadingAction;->classLoader:Ljava/lang/ClassLoader;

    .line 3780
    invoke-static {v2, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate$NotifyingClassLoadingAction;->signal:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3782
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate$NotifyingClassLoadingAction;->classLoader:Ljava/lang/ClassLoader;

    .line 3783
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate$NotifyingClassLoadingAction;->signal:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3782
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate$NotifyingClassLoadingAction;->classLoader:Ljava/lang/ClassLoader;

    .line 3783
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3784
    throw v2

    :catchall_1
    move-exception v1

    .line 3785
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3744
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate$NotifyingClassLoadingAction;->call()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
