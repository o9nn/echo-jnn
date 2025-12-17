.class public abstract Lcom/google/common/flogger/LogContext;
.super Ljava/lang/Object;
.source "LogContext.java"

# interfaces
.implements Lcom/google/common/flogger/LoggingApi;
.implements Lcom/google/common/flogger/backend/LogData;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/LogContext$MutableMetadata;,
        Lcom/google/common/flogger/LogContext$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "LOGGER:Lcom/google/common/flogger/AbstractLogger<",
        "TAPI;>;API::",
        "Lcom/google/common/flogger/LoggingApi<",
        "TAPI;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/common/flogger/LoggingApi<",
        "TAPI;>;",
        "Lcom/google/common/flogger/backend/LogData;"
    }
.end annotation


# static fields
.field private static final LITERAL_VALUE_MESSAGE:Ljava/lang/String;


# instance fields
.field private args:[Ljava/lang/Object;

.field private final level:Ljava/util/logging/Level;

.field private logSite:Lcom/google/common/flogger/LogSite;

.field private metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

.field private templateContext:Lcom/google/common/flogger/backend/TemplateContext;

.field private final timestampNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 303
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/google/common/flogger/LogContext;->LITERAL_VALUE_MESSAGE:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/util/logging/Level;Z)V
    .locals 2

    .line 329
    invoke-static {}, Lcom/google/common/flogger/backend/Platform;->getCurrentTimeNanos()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/common/flogger/LogContext;-><init>(Ljava/util/logging/Level;ZJ)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/logging/Level;ZJ)V
    .locals 1

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    iput-object v0, p0, Lcom/google/common/flogger/LogContext;->logSite:Lcom/google/common/flogger/LogSite;

    iput-object v0, p0, Lcom/google/common/flogger/LogContext;->templateContext:Lcom/google/common/flogger/backend/TemplateContext;

    iput-object v0, p0, Lcom/google/common/flogger/LogContext;->args:[Ljava/lang/Object;

    const-string v0, "level"

    .line 344
    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/logging/Level;

    iput-object p1, p0, Lcom/google/common/flogger/LogContext;->level:Ljava/util/logging/Level;

    iput-wide p3, p0, Lcom/google/common/flogger/LogContext;->timestampNanos:J

    if-eqz p2, :cond_0

    .line 347
    sget-object p1, Lcom/google/common/flogger/LogContext$Key;->WAS_FORCED:Lcom/google/common/flogger/MetadataKey;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->addMetadata(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private varargs logImpl(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    iput-object p2, p0, Lcom/google/common/flogger/LogContext;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 634
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 635
    aget-object v1, p2, v0

    instance-of v2, v1, Lcom/google/common/flogger/LazyArg;

    if-eqz v2, :cond_0

    .line 636
    check-cast v1, Lcom/google/common/flogger/LazyArg;

    invoke-interface {v1}, Lcom/google/common/flogger/LazyArg;->evaluate()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/google/common/flogger/LogContext;->LITERAL_VALUE_MESSAGE:Ljava/lang/String;

    if-eq p1, p2, :cond_2

    .line 644
    new-instance p2, Lcom/google/common/flogger/backend/TemplateContext;

    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->getMessageParser()Lcom/google/common/flogger/parser/MessageParser;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/common/flogger/backend/TemplateContext;-><init>(Lcom/google/common/flogger/parser/MessageParser;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/common/flogger/LogContext;->templateContext:Lcom/google/common/flogger/backend/TemplateContext;

    .line 646
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->getLogger()Lcom/google/common/flogger/AbstractLogger;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/common/flogger/AbstractLogger;->write(Lcom/google/common/flogger/backend/LogData;)V

    return-void
.end method

.method private shouldLog()Z
    .locals 3

    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->logSite:Lcom/google/common/flogger/LogSite;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 580
    invoke-static {}, Lcom/google/common/flogger/backend/Platform;->getCallerFinder()Lcom/google/common/flogger/backend/Platform$LogCallerFinder;

    move-result-object v0

    const-class v2, Lcom/google/common/flogger/LogContext;

    invoke-virtual {v0, v2, v1}, Lcom/google/common/flogger/backend/Platform$LogCallerFinder;->findLogSite(Ljava/lang/Class;I)Lcom/google/common/flogger/LogSite;

    move-result-object v0

    const-string v2, "logger backend must not return a null LogSite"

    invoke-static {v0, v2}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/LogSite;

    iput-object v0, p0, Lcom/google/common/flogger/LogContext;->logSite:Lcom/google/common/flogger/LogSite;

    :cond_0
    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->logSite:Lcom/google/common/flogger/LogSite;

    .line 584
    sget-object v2, Lcom/google/common/flogger/LogSite;->INVALID:Lcom/google/common/flogger/LogSite;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->logSite:Lcom/google/common/flogger/LogSite;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 587
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/common/flogger/LogContext;->postProcess(Lcom/google/common/flogger/LogSiteKey;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    .line 593
    :cond_2
    invoke-static {}, Lcom/google/common/flogger/backend/Platform;->getInjectedTags()Lcom/google/common/flogger/context/Tags;

    move-result-object v0

    .line 594
    invoke-virtual {v0}, Lcom/google/common/flogger/context/Tags;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 595
    sget-object v2, Lcom/google/common/flogger/LogContext$Key;->TAGS:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {p0, v2, v0}, Lcom/google/common/flogger/LogContext;->addMetadata(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V

    :cond_3
    return v1
.end method

.method static specializeLogSiteKeyFromMetadata(Lcom/google/common/flogger/LogSiteKey;Lcom/google/common/flogger/backend/Metadata;)Lcom/google/common/flogger/LogSiteKey;
    .locals 4

    const-string v0, "logSiteKey"

    .line 609
    invoke-static {p0, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 610
    invoke-virtual {p1}, Lcom/google/common/flogger/backend/Metadata;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 611
    sget-object v2, Lcom/google/common/flogger/LogContext$Key;->LOG_SITE_GROUPING_KEY:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {p1, v1}, Lcom/google/common/flogger/backend/Metadata;->getKey(I)Lcom/google/common/flogger/MetadataKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/flogger/MetadataKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 612
    invoke-virtual {p1, v1}, Lcom/google/common/flogger/backend/Metadata;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    .line 614
    instance-of v3, v2, Lcom/google/common/flogger/LoggingScope;

    if-eqz v3, :cond_0

    .line 615
    check-cast v2, Lcom/google/common/flogger/LoggingScope;

    invoke-virtual {v2, p0}, Lcom/google/common/flogger/LoggingScope;->specialize(Lcom/google/common/flogger/LogSiteKey;)Lcom/google/common/flogger/LogSiteKey;

    move-result-object p0

    goto :goto_1

    .line 617
    :cond_0
    invoke-static {p0, v2}, Lcom/google/common/flogger/SpecializedLogSiteKey;->of(Lcom/google/common/flogger/LogSiteKey;Ljava/lang/Object;)Lcom/google/common/flogger/LogSiteKey;

    move-result-object p0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method


# virtual methods
.method protected final addMetadata(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    if-nez v0, :cond_0

    .line 460
    new-instance v0, Lcom/google/common/flogger/LogContext$MutableMetadata;

    invoke-direct {v0}, Lcom/google/common/flogger/LogContext$MutableMetadata;-><init>()V

    iput-object v0, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    :cond_0
    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    .line 462
    invoke-virtual {v0, p1, p2}, Lcom/google/common/flogger/LogContext$MutableMetadata;->addValue(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract api()Lcom/google/common/flogger/LoggingApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAPI;"
        }
    .end annotation
.end method

.method public final atMostEvery(ILjava/util/concurrent/TimeUnit;)Lcom/google/common/flogger/LoggingApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/TimeUnit;",
            ")TAPI;"
        }
    .end annotation

    .line 739
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->wasForced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->api()Lcom/google/common/flogger/LoggingApi;

    move-result-object p1

    return-object p1

    :cond_0
    if-ltz p1, :cond_2

    if-lez p1, :cond_1

    .line 748
    sget-object v0, Lcom/google/common/flogger/LogContext$Key;->LOG_AT_MOST_EVERY:Lcom/google/common/flogger/MetadataKey;

    invoke-static {p1, p2}, Lcom/google/common/flogger/LogSiteStats;->newRateLimitPeriod(ILjava/util/concurrent/TimeUnit;)Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/flogger/LogContext;->addMetadata(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V

    .line 750
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->api()Lcom/google/common/flogger/LoggingApi;

    move-result-object p1

    return-object p1

    .line 743
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rate limit period cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final every(I)Lcom/google/common/flogger/LoggingApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TAPI;"
        }
    .end annotation

    .line 723
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->wasForced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->api()Lcom/google/common/flogger/LoggingApi;

    move-result-object p1

    return-object p1

    :cond_0
    if-lez p1, :cond_2

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 731
    sget-object v0, Lcom/google/common/flogger/LogContext$Key;->LOG_EVERY_N:Lcom/google/common/flogger/MetadataKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/flogger/LogContext;->addMetadata(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V

    .line 733
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->api()Lcom/google/common/flogger/LoggingApi;

    move-result-object p1

    return-object p1

    .line 727
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "rate limit count must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getArguments()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->templateContext:Lcom/google/common/flogger/backend/TemplateContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->args:[Ljava/lang/Object;

    return-object v0

    .line 416
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot get arguments unless a template context exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getLevel()Ljava/util/logging/Level;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->level:Ljava/util/logging/Level;

    return-object v0
.end method

.method public final getLiteralArgument()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->templateContext:Lcom/google/common/flogger/backend/TemplateContext;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 426
    aget-object v0, v0, v1

    return-object v0

    .line 424
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot get literal argument if a template context exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getLogSite()Lcom/google/common/flogger/LogSite;
    .locals 2

    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->logSite:Lcom/google/common/flogger/LogSite;

    if-eqz v0, :cond_0

    return-object v0

    .line 403
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot request log site information prior to postProcess()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getLogger()Lcom/google/common/flogger/AbstractLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "LOGGER;"
        }
    .end annotation
.end method

.method public final getLoggerName()Ljava/lang/String;
    .locals 1

    .line 397
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->getLogger()Lcom/google/common/flogger/AbstractLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/flogger/AbstractLogger;->getBackend()Lcom/google/common/flogger/backend/LoggerBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/flogger/backend/LoggerBackend;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getMessageParser()Lcom/google/common/flogger/parser/MessageParser;
.end method

.method public final getMetadata()Lcom/google/common/flogger/backend/Metadata;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    invoke-static {}, Lcom/google/common/flogger/backend/Metadata;->empty()Lcom/google/common/flogger/backend/Metadata;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getTemplateContext()Lcom/google/common/flogger/backend/TemplateContext;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->templateContext:Lcom/google/common/flogger/backend/TemplateContext;

    return-object v0
.end method

.method public final getTimestampMicros()J
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 387
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/google/common/flogger/LogContext;->timestampNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTimestampNanos()J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/flogger/LogContext;->timestampNanos:J

    return-wide v0
.end method

.method public final isEnabled()Z
    .locals 2

    .line 682
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->wasForced()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->getLogger()Lcom/google/common/flogger/AbstractLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/flogger/LogContext;->level:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/google/common/flogger/AbstractLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final log()V
    .locals 2

    .line 761
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/flogger/LogContext;->LITERAL_VALUE_MESSAGE:Ljava/lang/String;

    const-string v1, ""

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;)V
    .locals 1

    .line 766
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/flogger/LogContext;->LITERAL_VALUE_MESSAGE:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;B)V
    .locals 1

    .line 915
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;BB)V
    .locals 1

    .line 1105
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;BC)V
    .locals 1

    .line 1065
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;BD)V
    .locals 1

    .line 1305
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;BF)V
    .locals 1

    .line 1265
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;BI)V
    .locals 1

    .line 1185
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;BJ)V
    .locals 1

    .line 1225
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;BLjava/lang/Object;)V
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 985
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;BS)V
    .locals 1

    .line 1145
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;BZ)V
    .locals 1

    .line 1025
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;C)V
    .locals 1

    .line 910
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;CB)V
    .locals 1

    .line 1100
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;CC)V
    .locals 1

    .line 1060
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;CD)V
    .locals 1

    .line 1300
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;CF)V
    .locals 1

    .line 1260
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;CI)V
    .locals 1

    .line 1180
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;CJ)V
    .locals 1

    .line 1220
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;CLjava/lang/Object;)V
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 980
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;CS)V
    .locals 1

    .line 1140
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;CZ)V
    .locals 1

    .line 1020
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;DB)V
    .locals 1

    .line 1130
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;DC)V
    .locals 1

    .line 1090
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;DD)V
    .locals 1

    .line 1330
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;DF)V
    .locals 1

    .line 1290
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;DI)V
    .locals 1

    .line 1210
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;DJ)V
    .locals 1

    .line 1250
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;DLjava/lang/Object;)V
    .locals 1
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1010
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    filled-new-array {p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;DS)V
    .locals 1

    .line 1170
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;DZ)V
    .locals 1

    .line 1050
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;FB)V
    .locals 1

    .line 1125
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;FC)V
    .locals 1

    .line 1085
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;FD)V
    .locals 1

    .line 1325
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;FF)V
    .locals 1

    .line 1285
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;FI)V
    .locals 1

    .line 1205
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;FJ)V
    .locals 1

    .line 1245
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;FLjava/lang/Object;)V
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1005
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;FS)V
    .locals 1

    .line 1165
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;FZ)V
    .locals 1

    .line 1045
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;I)V
    .locals 1

    .line 925
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;IB)V
    .locals 1

    .line 1115
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;IC)V
    .locals 1

    .line 1075
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;ID)V
    .locals 1

    .line 1315
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;IF)V
    .locals 1

    .line 1275
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;II)V
    .locals 1

    .line 1195
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;IJ)V
    .locals 1

    .line 1235
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 995
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;IS)V
    .locals 1

    .line 1155
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;IZ)V
    .locals 1

    .line 1035
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;J)V
    .locals 1

    .line 930
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;JB)V
    .locals 1

    .line 1120
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;JC)V
    .locals 1

    .line 1080
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;JD)V
    .locals 1

    .line 1320
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;JF)V
    .locals 1

    .line 1280
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;JI)V
    .locals 1

    .line 1200
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;JJ)V
    .locals 1

    .line 1240
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;JLjava/lang/Object;)V
    .locals 1
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1000
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;JS)V
    .locals 1

    .line 1160
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;JZ)V
    .locals 1

    .line 1040
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 771
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;B)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 945
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;C)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 940
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;D)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 970
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;F)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 965
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 955
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 960
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 776
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 782
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 792
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    filled-new-array {p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 803
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    filled-new-array {p2, p3, p4, p5, p6}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 815
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    filled-new-array/range {p2 .. p7}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 828
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    filled-new-array/range {p2 .. p8}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 842
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    filled-new-array/range {p2 .. p9}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 857
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    filled-new-array/range {p2 .. p10}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 873
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    filled-new-array/range {p2 .. p11}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final varargs log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 890
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    array-length v0, p12

    const/16 v1, 0xa

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 893
    aput-object p2, v0, v2

    const/4 p2, 0x1

    .line 894
    aput-object p3, v0, p2

    const/4 p2, 0x2

    .line 895
    aput-object p4, v0, p2

    const/4 p2, 0x3

    .line 896
    aput-object p5, v0, p2

    const/4 p2, 0x4

    .line 897
    aput-object p6, v0, p2

    const/4 p2, 0x5

    .line 898
    aput-object p7, v0, p2

    const/4 p2, 0x6

    .line 899
    aput-object p8, v0, p2

    const/4 p2, 0x7

    .line 900
    aput-object p9, v0, p2

    const/16 p2, 0x8

    .line 901
    aput-object p10, v0, p2

    const/16 p2, 0x9

    .line 902
    aput-object p11, v0, p2

    .line 903
    array-length p2, p12

    invoke-static {p12, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 904
    invoke-direct {p0, p1, v0}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;S)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 950
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 935
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;S)V
    .locals 1

    .line 920
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;SB)V
    .locals 1

    .line 1110
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;SC)V
    .locals 1

    .line 1070
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;SD)V
    .locals 1

    .line 1310
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;SF)V
    .locals 1

    .line 1270
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;SI)V
    .locals 1

    .line 1190
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;SJ)V
    .locals 1

    .line 1230
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;SLjava/lang/Object;)V
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 990
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;SS)V
    .locals 1

    .line 1150
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;SZ)V
    .locals 1

    .line 1030
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;ZB)V
    .locals 1

    .line 1095
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;ZC)V
    .locals 1

    .line 1055
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;ZD)V
    .locals 1

    .line 1295
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;ZF)V
    .locals 1

    .line 1255
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;ZI)V
    .locals 1

    .line 1175
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;ZJ)V
    .locals 1

    .line 1215
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;ZLjava/lang/Object;)V
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 975
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;ZS)V
    .locals 1

    .line 1135
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final log(Ljava/lang/String;ZZ)V
    .locals 1

    .line 1015
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final logVarargs(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p2    # [Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1335
    invoke-direct {p0}, Lcom/google/common/flogger/LogContext;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->logImpl(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected abstract noOp()Lcom/google/common/flogger/LoggingApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAPI;"
        }
    .end annotation
.end method

.method protected postProcess(Lcom/google/common/flogger/LogSiteKey;)Z
    .locals 6
    .param p1    # Lcom/google/common/flogger/LogSiteKey;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 524
    sget-object v2, Lcom/google/common/flogger/LogContext$Key;->LOG_EVERY_N:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {v0, v2}, Lcom/google/common/flogger/LogContext$MutableMetadata;->findValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    .line 525
    sget-object v3, Lcom/google/common/flogger/LogContext$Key;->LOG_AT_MOST_EVERY:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {v2, v3}, Lcom/google/common/flogger/LogContext$MutableMetadata;->findValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;

    iget-object v3, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    .line 526
    invoke-static {p1, v3}, Lcom/google/common/flogger/LogSiteStats;->getStatsForKey(Lcom/google/common/flogger/LogSiteKey;Lcom/google/common/flogger/backend/Metadata;)Lcom/google/common/flogger/LogSiteStats;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/common/flogger/LogSiteStats;->incrementAndCheckInvocationCount(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    if-eqz v2, :cond_1

    .line 532
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->getTimestampNanos()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5, v2}, Lcom/google/common/flogger/LogSiteStats;->checkLastTimestamp(JLcom/google/common/flogger/LogSiteStats$RateLimitPeriod;)Z

    move-result p1

    if-nez p1, :cond_1

    return v3

    :cond_1
    iget-object p1, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    .line 538
    sget-object v0, Lcom/google/common/flogger/LogContext$Key;->CONTEXT_STACK_SIZE:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {p1, v0}, Lcom/google/common/flogger/LogContext$MutableMetadata;->findValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/flogger/StackSize;

    if-eqz p1, :cond_2

    .line 541
    sget-object v0, Lcom/google/common/flogger/LogContext$Key;->CONTEXT_STACK_SIZE:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {p0, v0}, Lcom/google/common/flogger/LogContext;->removeMetadata(Lcom/google/common/flogger/MetadataKey;)V

    .line 554
    new-instance v0, Lcom/google/common/flogger/LogSiteStackTrace;

    .line 556
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->getMetadata()Lcom/google/common/flogger/backend/Metadata;

    move-result-object v2

    sget-object v3, Lcom/google/common/flogger/LogContext$Key;->LOG_CAUSE:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {v2, v3}, Lcom/google/common/flogger/backend/Metadata;->findValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 558
    invoke-virtual {p1}, Lcom/google/common/flogger/StackSize;->getMaxDepth()I

    move-result v4

    const-class v5, Lcom/google/common/flogger/LogContext;

    invoke-static {v5, v3, v4, v1}, Lcom/google/common/flogger/util/CallerFinder;->getStackForCallerOf(Ljava/lang/Class;Ljava/lang/Throwable;II)[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-direct {v0, v2, p1, v3}, Lcom/google/common/flogger/LogSiteStackTrace;-><init>(Ljava/lang/Throwable;Lcom/google/common/flogger/StackSize;[Ljava/lang/StackTraceElement;)V

    .line 560
    sget-object p1, Lcom/google/common/flogger/LogContext$Key;->LOG_CAUSE:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/flogger/LogContext;->addMetadata(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V

    :cond_2
    return v1
.end method

.method protected final removeMetadata(Lcom/google/common/flogger/MetadataKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0, p1}, Lcom/google/common/flogger/LogContext$MutableMetadata;->removeAllValues(Lcom/google/common/flogger/MetadataKey;)V

    :cond_0
    return-void
.end method

.method public final wasForced()Z
    .locals 3

    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    if-eqz v0, :cond_0

    .line 432
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/google/common/flogger/LogContext;->metadata:Lcom/google/common/flogger/LogContext$MutableMetadata;

    sget-object v2, Lcom/google/common/flogger/LogContext$Key;->WAS_FORCED:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {v1, v2}, Lcom/google/common/flogger/LogContext$MutableMetadata;->findValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final with(Lcom/google/common/flogger/MetadataKey;)Lcom/google/common/flogger/LoggingApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "Ljava/lang/Boolean;",
            ">;)TAPI;"
        }
    .end annotation

    .line 701
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/flogger/LogContext;->with(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)Lcom/google/common/flogger/LoggingApi;

    move-result-object p1

    return-object p1
.end method

.method public final with(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)Lcom/google/common/flogger/LoggingApi;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;TT;)TAPI;"
        }
    .end annotation

    const-string v0, "metadata key"

    .line 692
    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 694
    invoke-virtual {p0, p1, p2}, Lcom/google/common/flogger/LogContext;->addMetadata(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V

    .line 696
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->api()Lcom/google/common/flogger/LoggingApi;

    move-result-object p1

    return-object p1
.end method

.method public final withCause(Ljava/lang/Throwable;)Lcom/google/common/flogger/LoggingApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TAPI;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 707
    sget-object v0, Lcom/google/common/flogger/LogContext$Key;->LOG_CAUSE:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/common/flogger/LogContext;->addMetadata(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V

    .line 709
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->api()Lcom/google/common/flogger/LoggingApi;

    move-result-object p1

    return-object p1
.end method

.method public final withInjectedLogSite(Lcom/google/common/flogger/LogSite;)Lcom/google/common/flogger/LoggingApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/LogSite;",
            ")TAPI;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/LogContext;->logSite:Lcom/google/common/flogger/LogSite;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/common/flogger/LogContext;->logSite:Lcom/google/common/flogger/LogSite;

    .line 660
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->api()Lcom/google/common/flogger/LoggingApi;

    move-result-object p1

    return-object p1
.end method

.method public final withInjectedLogSite(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/common/flogger/LoggingApi;
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")TAPI;"
        }
    .end annotation

    .line 671
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/flogger/LogSite;->injectedLogSite(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/common/flogger/LogSite;

    move-result-object p1

    .line 670
    invoke-virtual {p0, p1}, Lcom/google/common/flogger/LogContext;->withInjectedLogSite(Lcom/google/common/flogger/LogSite;)Lcom/google/common/flogger/LoggingApi;

    move-result-object p1

    return-object p1
.end method

.method public withStackTrace(Lcom/google/common/flogger/StackSize;)Lcom/google/common/flogger/LoggingApi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/StackSize;",
            ")TAPI;"
        }
    .end annotation

    const-string v0, "stack size"

    .line 714
    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/common/flogger/StackSize;->NONE:Lcom/google/common/flogger/StackSize;

    if-eq v0, v1, :cond_0

    .line 715
    sget-object v0, Lcom/google/common/flogger/LogContext$Key;->CONTEXT_STACK_SIZE:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/common/flogger/LogContext;->addMetadata(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V

    .line 717
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext;->api()Lcom/google/common/flogger/LoggingApi;

    move-result-object p1

    return-object p1
.end method
