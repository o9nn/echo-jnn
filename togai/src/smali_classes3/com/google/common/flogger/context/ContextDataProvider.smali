.class public abstract Lcom/google/common/flogger/context/ContextDataProvider;
.super Ljava/lang/Object;
.source "ContextDataProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/common/flogger/context/ContextDataProvider;
    .locals 1

    .line 43
    invoke-static {}, Lcom/google/common/flogger/backend/Platform;->getContextDataProvider()Lcom/google/common/flogger/context/ContextDataProvider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getContextApiSingleton()Lcom/google/common/flogger/context/ScopedLoggingContext;
.end method

.method public getMetadata()Lcom/google/common/flogger/backend/Metadata;
    .locals 1

    .line 110
    invoke-static {}, Lcom/google/common/flogger/backend/Metadata;->empty()Lcom/google/common/flogger/backend/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public getScope(Lcom/google/common/flogger/context/ScopeType;)Lcom/google/common/flogger/LoggingScope;
    .locals 0
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTags()Lcom/google/common/flogger/context/Tags;
    .locals 1

    .line 98
    invoke-static {}, Lcom/google/common/flogger/context/Tags;->empty()Lcom/google/common/flogger/context/Tags;

    move-result-object v0

    return-object v0
.end method

.method public shouldForceLogging(Ljava/lang/String;Ljava/util/logging/Level;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
