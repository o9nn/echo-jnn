.class final Lcom/google/common/flogger/LogSiteStats;
.super Ljava/lang/Object;
.source "LogSiteStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;
    }
.end annotation


# static fields
.field private static final map:Lcom/google/common/flogger/LogSiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/LogSiteMap<",
            "Lcom/google/common/flogger/LogSiteStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final invocationCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final lastTimestampNanos:Ljava/util/concurrent/atomic/AtomicLong;

.field private final skippedLogStatements:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Lcom/google/common/flogger/LogSiteStats$1;

    invoke-direct {v0}, Lcom/google/common/flogger/LogSiteStats$1;-><init>()V

    sput-object v0, Lcom/google/common/flogger/LogSiteStats;->map:Lcom/google/common/flogger/LogSiteMap;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/google/common/flogger/LogSiteStats;->invocationCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/google/common/flogger/LogSiteStats;->lastTimestampNanos:Ljava/util/concurrent/atomic/AtomicLong;

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/flogger/LogSiteStats;->skippedLogStatements:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static getStatsForKey(Lcom/google/common/flogger/LogSiteKey;Lcom/google/common/flogger/backend/Metadata;)Lcom/google/common/flogger/LogSiteStats;
    .locals 1

    sget-object v0, Lcom/google/common/flogger/LogSiteStats;->map:Lcom/google/common/flogger/LogSiteMap;

    .line 107
    invoke-virtual {v0, p0, p1}, Lcom/google/common/flogger/LogSiteMap;->get(Lcom/google/common/flogger/LogSiteKey;Lcom/google/common/flogger/backend/Metadata;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/flogger/LogSiteStats;

    return-object p0
.end method

.method static newRateLimitPeriod(ILjava/util/concurrent/TimeUnit;)Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;
    .locals 2

    .line 34
    new-instance v0, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;-><init>(ILjava/util/concurrent/TimeUnit;Lcom/google/common/flogger/LogSiteStats$1;)V

    return-object v0
.end method


# virtual methods
.method checkLastTimestamp(JLcom/google/common/flogger/LogSiteStats$RateLimitPeriod;)Z
    .locals 8

    iget-object v0, p0, Lcom/google/common/flogger/LogSiteStats;->lastTimestampNanos:Ljava/util/concurrent/atomic/AtomicLong;

    .line 129
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 134
    invoke-static {p3}, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;->access$100(Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;)J

    move-result-wide v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const/4 v7, 0x0

    if-ltz v6, :cond_1

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/google/common/flogger/LogSiteStats;->lastTimestampNanos:Ljava/util/concurrent/atomic/AtomicLong;

    .line 137
    invoke-virtual {v2, v0, v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/common/flogger/LogSiteStats;->skippedLogStatements:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 138
    invoke-virtual {p1, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    invoke-static {p3, p1}, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;->access$200(Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object p1, p0, Lcom/google/common/flogger/LogSiteStats;->skippedLogStatements:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 141
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return v7
.end method

.method incrementAndCheckInvocationCount(I)Z
    .locals 4

    iget-object v0, p0, Lcom/google/common/flogger/LogSiteStats;->invocationCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 120
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    int-to-long v2, p1

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
