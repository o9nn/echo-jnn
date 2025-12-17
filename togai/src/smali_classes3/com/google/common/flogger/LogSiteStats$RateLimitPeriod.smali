.class final Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;
.super Ljava/lang/Object;
.source "LogSiteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/LogSiteStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RateLimitPeriod"
.end annotation


# instance fields
.field private final n:I

.field private skipCount:I

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method private constructor <init>(ILjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;->skipCount:I

    if-lez p1, :cond_0

    iput p1, p0, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;->n:I

    const-string p1, "time unit"

    .line 55
    invoke-static {p2, p1}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;->unit:Ljava/util/concurrent/TimeUnit;

    return-void

    .line 52
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "time period must be positive: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method synthetic constructor <init>(ILjava/util/concurrent/TimeUnit;Lcom/google/common/flogger/LogSiteStats$1;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;-><init>(ILjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;)J
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;->toNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;->setSkipCount(I)V

    return-void
.end method

.method private setSkipCount(I)V
    .locals 0

    iput p1, p0, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;->skipCount:I

    return-void
.end method

.method private toNanos()J
    .locals 3

    iget-object v0, p0, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;->unit:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;->n:I

    int-to-long v1, v1

    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 91
    instance-of v0, p1, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    check-cast p1, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;

    iget v0, p0, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;->n:I

    .line 93
    iget v2, p1, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;->n:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object p1, p1, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;->unit:Ljava/util/concurrent/TimeUnit;

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;->n:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;->unit:Ljava/util/concurrent/TimeUnit;

    .line 86
    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;->n:I

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;->unit:Ljava/util/concurrent/TimeUnit;

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;->skipCount:I

    if-lez v1, :cond_0

    const-string v1, " [skipped: "

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;->skipCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
