.class public abstract Lcom/google/common/flogger/context/ScopedLoggingContext;
.super Ljava/lang/Object;
.source "ScopedLoggingContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/context/ScopedLoggingContext$InvalidLoggingContextStateException;,
        Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;,
        Lcom/google/common/flogger/context/ScopedLoggingContext$ScopeList;,
        Lcom/google/common/flogger/context/ScopedLoggingContext$LoggingContextCloseable;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/flogger/context/ScopedLoggingContext$LoggingContextCloseable;Z)V
    .locals 0

    .line 83
    invoke-static {p0, p1}, Lcom/google/common/flogger/context/ScopedLoggingContext;->closeAndMaybePropagateError(Lcom/google/common/flogger/context/ScopedLoggingContext$LoggingContextCloseable;Z)V

    return-void
.end method

.method private static closeAndMaybePropagateError(Lcom/google/common/flogger/context/ScopedLoggingContext$LoggingContextCloseable;Z)V
    .locals 1

    .line 426
    :try_start_0
    invoke-interface {p0}, Lcom/google/common/flogger/context/ScopedLoggingContext$LoggingContextCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    if-nez p1, :cond_1

    .line 431
    instance-of p1, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$InvalidLoggingContextStateException;

    if-eqz p1, :cond_0

    .line 432
    check-cast p0, Lcom/google/common/flogger/context/ScopedLoggingContext$InvalidLoggingContextStateException;

    goto :goto_0

    .line 433
    :cond_0
    new-instance p1, Lcom/google/common/flogger/context/ScopedLoggingContext$InvalidLoggingContextStateException;

    const-string v0, "invalid logging context state"

    invoke-direct {p1, v0, p0}, Lcom/google/common/flogger/context/ScopedLoggingContext$InvalidLoggingContextStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_0
    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/google/common/flogger/context/ScopedLoggingContext;
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .line 323
    invoke-static {}, Lcom/google/common/flogger/context/ContextDataProvider;->getInstance()Lcom/google/common/flogger/context/ContextDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/flogger/context/ContextDataProvider;->getContextApiSingleton()Lcom/google/common/flogger/context/ScopedLoggingContext;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addMetadata(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;TT;)Z"
        }
    .end annotation

    const-string v0, "key"

    .line 394
    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "value"

    .line 395
    invoke-static {p2, p1}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public addTags(Lcom/google/common/flogger/context/Tags;)Z
    .locals 1

    const-string v0, "tags"

    .line 380
    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public applyLogLevelMap(Lcom/google/common/flogger/context/LogLevelMap;)Z
    .locals 1

    const-string v0, "log level map"

    .line 414
    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public abstract newContext()Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation
.end method

.method public newScope()Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 363
    invoke-virtual {p0}, Lcom/google/common/flogger/context/ScopedLoggingContext;->newContext()Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;

    move-result-object v0

    return-object v0
.end method
