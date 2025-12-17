.class public Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$AtFixedRate;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtFixedRate"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final time:J

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 5984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$AtFixedRate;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iput-wide p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$AtFixedRate;->time:J

    iput-object p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$AtFixedRate;->timeUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
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
    iget-wide v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$AtFixedRate;->time:J

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$AtFixedRate;

    iget-wide v4, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$AtFixedRate;->time:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$AtFixedRate;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$AtFixedRate;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/TimeUnit;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$AtFixedRate;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$AtFixedRate;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$AtFixedRate;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$AtFixedRate;->time:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$AtFixedRate;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/util/concurrent/TimeUnit;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public isAlive()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$AtFixedRate;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5994
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public schedule(Ljava/lang/Runnable;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable;
    .locals 8

    .line 6001
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable$ForFuture;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$AtFixedRate;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$AtFixedRate;->time:J

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$AtFixedRate;->timeUnit:Ljava/util/concurrent/TimeUnit;

    move-object v2, p1

    move-wide v3, v5

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler$Cancelable$ForFuture;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method
