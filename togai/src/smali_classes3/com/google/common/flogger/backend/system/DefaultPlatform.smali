.class public Lcom/google/common/flogger/backend/system/DefaultPlatform;
.super Lcom/google/common/flogger/backend/Platform;
.source "DefaultPlatform.java"


# static fields
.field private static final BACKEND_FACTORY:Ljava/lang/String; = "flogger.backend_factory"

.field private static final CLOCK:Ljava/lang/String; = "flogger.clock"

.field private static final LOGGING_CONTEXT:Ljava/lang/String; = "flogger.logging_context"


# instance fields
.field private final backendFactory:Lcom/google/common/flogger/backend/system/BackendFactory;

.field private final callerFinder:Lcom/google/common/flogger/backend/Platform$LogCallerFinder;

.field private final clock:Lcom/google/common/flogger/backend/system/Clock;

.field private final context:Lcom/google/common/flogger/context/ContextDataProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/google/common/flogger/backend/Platform;-><init>()V

    const-string v0, "flogger.backend_factory"

    .line 68
    const-class v1, Lcom/google/common/flogger/backend/system/BackendFactory;

    invoke-static {v0, v1}, Lcom/google/common/flogger/util/StaticMethodCaller;->callGetterFromSystemProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/backend/system/BackendFactory;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {}, Lcom/google/common/flogger/backend/system/SimpleBackendFactory;->getInstance()Lcom/google/common/flogger/backend/system/BackendFactory;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->backendFactory:Lcom/google/common/flogger/backend/system/BackendFactory;

    const-string v0, "flogger.logging_context"

    .line 70
    const-class v1, Lcom/google/common/flogger/context/ContextDataProvider;

    .line 71
    invoke-static {v0, v1}, Lcom/google/common/flogger/util/StaticMethodCaller;->callGetterFromSystemProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/context/ContextDataProvider;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 72
    :cond_1
    invoke-static {}, Lcom/google/common/flogger/backend/NoOpContextDataProvider;->getInstance()Lcom/google/common/flogger/context/ContextDataProvider;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->context:Lcom/google/common/flogger/context/ContextDataProvider;

    const-string v0, "flogger.clock"

    .line 73
    const-class v1, Lcom/google/common/flogger/backend/system/Clock;

    invoke-static {v0, v1}, Lcom/google/common/flogger/util/StaticMethodCaller;->callGetterFromSystemProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/backend/system/Clock;

    if-eqz v0, :cond_2

    goto :goto_2

    .line 74
    :cond_2
    invoke-static {}, Lcom/google/common/flogger/backend/system/SystemClock;->getInstance()Lcom/google/common/flogger/backend/system/SystemClock;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->clock:Lcom/google/common/flogger/backend/system/Clock;

    .line 76
    invoke-static {}, Lcom/google/common/flogger/backend/system/StackBasedCallerFinder;->getInstance()Lcom/google/common/flogger/backend/Platform$LogCallerFinder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->callerFinder:Lcom/google/common/flogger/backend/Platform$LogCallerFinder;

    return-void
.end method

.method constructor <init>(Lcom/google/common/flogger/backend/system/BackendFactory;Lcom/google/common/flogger/context/ContextDataProvider;Lcom/google/common/flogger/backend/system/Clock;Lcom/google/common/flogger/backend/Platform$LogCallerFinder;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/google/common/flogger/backend/Platform;-><init>()V

    iput-object p1, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->backendFactory:Lcom/google/common/flogger/backend/system/BackendFactory;

    iput-object p2, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->context:Lcom/google/common/flogger/context/ContextDataProvider;

    iput-object p3, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->clock:Lcom/google/common/flogger/backend/system/Clock;

    iput-object p4, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->callerFinder:Lcom/google/common/flogger/backend/Platform$LogCallerFinder;

    return-void
.end method


# virtual methods
.method protected getBackendImpl(Ljava/lang/String;)Lcom/google/common/flogger/backend/LoggerBackend;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->backendFactory:Lcom/google/common/flogger/backend/system/BackendFactory;

    .line 98
    invoke-virtual {v0, p1}, Lcom/google/common/flogger/backend/system/BackendFactory;->create(Ljava/lang/String;)Lcom/google/common/flogger/backend/LoggerBackend;

    move-result-object p1

    return-object p1
.end method

.method protected getCallerFinderImpl()Lcom/google/common/flogger/backend/Platform$LogCallerFinder;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->callerFinder:Lcom/google/common/flogger/backend/Platform$LogCallerFinder;

    return-object v0
.end method

.method protected getConfigInfoImpl()Ljava/lang/String;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Platform: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nBackendFactory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->backendFactory:Lcom/google/common/flogger/backend/system/BackendFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nClock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->clock:Lcom/google/common/flogger/backend/system/Clock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nLoggingContext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->context:Lcom/google/common/flogger/context/ContextDataProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nLogCallerFinder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->callerFinder:Lcom/google/common/flogger/backend/Platform$LogCallerFinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContextDataProviderImpl()Lcom/google/common/flogger/context/ContextDataProvider;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->context:Lcom/google/common/flogger/context/ContextDataProvider;

    return-object v0
.end method

.method protected getCurrentTimeNanosImpl()J
    .locals 2

    iget-object v0, p0, Lcom/google/common/flogger/backend/system/DefaultPlatform;->clock:Lcom/google/common/flogger/backend/system/Clock;

    .line 108
    invoke-virtual {v0}, Lcom/google/common/flogger/backend/system/Clock;->getCurrentTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method
