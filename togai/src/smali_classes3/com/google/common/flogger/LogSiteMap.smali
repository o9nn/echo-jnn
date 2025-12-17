.class public abstract Lcom/google/common/flogger/LogSiteMap;
.super Ljava/lang/Object;
.source "LogSiteMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final concurrentMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/google/common/flogger/LogSiteKey;",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/common/flogger/LogSiteMap;->concurrentMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/flogger/LogSiteMap;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/google/common/flogger/LogSiteMap;->concurrentMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private addRemovalHook(Lcom/google/common/flogger/LogSiteKey;Lcom/google/common/flogger/backend/Metadata;)V
    .locals 5

    .line 87
    invoke-virtual {p2}, Lcom/google/common/flogger/backend/Metadata;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 88
    sget-object v3, Lcom/google/common/flogger/LogContext$Key;->LOG_SITE_GROUPING_KEY:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {p2, v2}, Lcom/google/common/flogger/backend/Metadata;->getKey(I)Lcom/google/common/flogger/MetadataKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/flogger/MetadataKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 91
    :cond_0
    invoke-virtual {p2, v2}, Lcom/google/common/flogger/backend/Metadata;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    .line 92
    instance-of v4, v3, Lcom/google/common/flogger/LoggingScope;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    .line 97
    new-instance v1, Lcom/google/common/flogger/LogSiteMap$1;

    invoke-direct {v1, p0, p1}, Lcom/google/common/flogger/LogSiteMap$1;-><init>(Lcom/google/common/flogger/LogSiteMap;Lcom/google/common/flogger/LogSiteKey;)V

    .line 104
    :cond_2
    check-cast v3, Lcom/google/common/flogger/LoggingScope;

    invoke-virtual {v3, v1}, Lcom/google/common/flogger/LoggingScope;->onClose(Ljava/lang/Runnable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method contains(Lcom/google/common/flogger/LogSiteKey;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/LogSiteMap;->concurrentMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final get(Lcom/google/common/flogger/LogSiteKey;Lcom/google/common/flogger/backend/Metadata;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/LogSiteKey;",
            "Lcom/google/common/flogger/backend/Metadata;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/LogSiteMap;->concurrentMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/flogger/LogSiteMap;->initialValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "initial map value"

    invoke-static {v0, v1}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/flogger/LogSiteMap;->concurrentMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 81
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/LogSiteMap;->addRemovalHook(Lcom/google/common/flogger/LogSiteKey;Lcom/google/common/flogger/backend/Metadata;)V

    return-object v0
.end method

.method protected abstract initialValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method
