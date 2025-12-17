.class final Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext;
.super Lcom/google/common/flogger/context/ScopedLoggingContext;
.source "LoggingContext.java"

# interfaces
.implements Lcom/google/common/flogger/context/ScopedLoggingContext$LoggingContextCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/backend/system/LoggingContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoOpScopedLoggingContext"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/google/common/flogger/context/ScopedLoggingContext;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/flogger/backend/system/LoggingContext$1;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext;-><init>()V

    return-void
.end method


# virtual methods
.method public addTags(Lcom/google/common/flogger/context/Tags;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public applyLogLevelMap(Lcom/google/common/flogger/context/LogLevelMap;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public newContext()Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
    .locals 1

    .line 42
    new-instance v0, Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext$1;

    invoke-direct {v0, p0}, Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext$1;-><init>(Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext;)V

    return-object v0
.end method
