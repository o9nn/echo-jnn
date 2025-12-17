.class public Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Global;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Global"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final time:J

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1930
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Global;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .line 1939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1940
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Global;->lock:Ljava/util/concurrent/locks/Lock;

    iput-wide p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Global;->time:J

    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Global;->timeUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public acquire()Z
    .locals 4

    :try_start_0
    iget-wide v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Global;->time:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Global;->lock:Ljava/util/concurrent/locks/Lock;

    .line 1951
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Global;->lock:Ljava/util/concurrent/locks/Lock;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Global;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 1952
    invoke-interface {v2, v0, v1, v3}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

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
    iget-wide v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Global;->time:J

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Global;

    iget-wide v4, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Global;->time:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Global;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Global;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/TimeUnit;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Global;->lock:Ljava/util/concurrent/locks/Lock;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Global;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Global;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Global;->time:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Global;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/util/concurrent/TimeUnit;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Global;->lock:Ljava/util/concurrent/locks/Lock;

    .line 1962
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
