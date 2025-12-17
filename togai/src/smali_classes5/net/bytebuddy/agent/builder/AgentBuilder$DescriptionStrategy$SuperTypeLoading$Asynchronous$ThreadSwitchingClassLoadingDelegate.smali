.class public Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ThreadSwitchingClassLoadingDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate$NotifyingClassLoadingAction;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate$SimpleClassLoadingAction;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 3681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate;->executorService:Ljava/util/concurrent/ExecutorService;

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
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate;->executorService:Ljava/util/concurrent/ExecutorService;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public load(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
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

    if-eqz p2, :cond_0

    .line 3689
    invoke-static {p2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3690
    :goto_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 3691
    new-instance v3, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate$NotifyingClassLoadingAction;

    invoke-direct {v3, p1, p2, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate$NotifyingClassLoadingAction;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto :goto_1

    :cond_1
    new-instance v3, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate$SimpleClassLoadingAction;

    invoke-direct {v3, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate$SimpleClassLoadingAction;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    :goto_1
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    :goto_2
    const-string v3, " asynchronously"

    const-string v4, "Could not load "

    if-eqz v0, :cond_2

    .line 3695
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3696
    invoke-virtual {p2}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 3698
    :cond_2
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 3702
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p2

    .line 3700
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
