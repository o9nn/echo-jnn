.class final Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext;
.super Lcom/google/common/flogger/context/ScopedLoggingContext;
.source "NoOpContextDataProvider.java"

# interfaces
.implements Lcom/google/common/flogger/context/ScopedLoggingContext$LoggingContextCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/backend/NoOpContextDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoOpScopedLoggingContext"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext$LazyLogger;
    }
.end annotation


# instance fields
.field private final haveWarned:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/google/common/flogger/context/ScopedLoggingContext;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext;->haveWarned:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/flogger/backend/NoOpContextDataProvider$1;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext;->logWarningOnceOnly()V

    return-void
.end method

.method private logWarningOnceOnly()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext;->haveWarned:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 56
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext$LazyLogger;->access$000()Lcom/google/common/flogger/FluentLogger;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/google/common/flogger/FluentLogger;->atWarning()Lcom/google/common/flogger/LoggingApi;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/FluentLogger$Api;

    sget-object v1, Lcom/google/common/flogger/StackSize;->SMALL:Lcom/google/common/flogger/StackSize;

    .line 59
    invoke-interface {v0, v1}, Lcom/google/common/flogger/FluentLogger$Api;->withStackTrace(Lcom/google/common/flogger/StackSize;)Lcom/google/common/flogger/LoggingApi;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/FluentLogger$Api;

    const-string v1, "Scoped logging contexts are disabled; no context data provider was installed.\nTo enable scoped logging contexts in your application, see the site-specific Platform class used to configure logging behaviour.\nDefault Platform: com.google.common.flogger.backend.system.DefaultPlatform"

    .line 60
    invoke-interface {v0, v1}, Lcom/google/common/flogger/FluentLogger$Api;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addTags(Lcom/google/common/flogger/context/Tags;)Z
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext;->logWarningOnceOnly()V

    const/4 p1, 0x0

    return p1
.end method

.method public applyLogLevelMap(Lcom/google/common/flogger/context/LogLevelMap;)Z
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext;->logWarningOnceOnly()V

    const/4 p1, 0x0

    return p1
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public newContext()Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
    .locals 1

    .line 70
    new-instance v0, Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext$1;

    invoke-direct {v0, p0}, Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext$1;-><init>(Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext;)V

    return-object v0
.end method
