.class public abstract Lcom/google/common/flogger/backend/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/backend/Platform$LogCallerFinder;,
        Lcom/google/common/flogger/backend/Platform$LazyHolder;
    }
.end annotation


# static fields
.field private static final AVAILABLE_PLATFORMS:[Ljava/lang/String;

.field private static DEFAULT_PLATFORM:Ljava/lang/String; = "com.google.common.flogger.backend.system.DefaultPlatform"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.google.common.flogger.backend.system.DefaultPlatform"

    .line 54
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/backend/Platform;->AVAILABLE_PLATFORMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/common/flogger/backend/Platform;->AVAILABLE_PLATFORMS:[Ljava/lang/String;

    return-object v0
.end method

.method public static getBackend(Ljava/lang/String;)Lcom/google/common/flogger/backend/LoggerBackend;
    .locals 1

    .line 176
    invoke-static {}, Lcom/google/common/flogger/backend/Platform$LazyHolder;->access$100()Lcom/google/common/flogger/backend/Platform;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/flogger/backend/Platform;->getBackendImpl(Ljava/lang/String;)Lcom/google/common/flogger/backend/LoggerBackend;

    move-result-object p0

    return-object p0
.end method

.method public static getCallerFinder()Lcom/google/common/flogger/backend/Platform$LogCallerFinder;
    .locals 1

    .line 161
    invoke-static {}, Lcom/google/common/flogger/backend/Platform$LazyHolder;->access$100()Lcom/google/common/flogger/backend/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/flogger/backend/Platform;->getCallerFinderImpl()Lcom/google/common/flogger/backend/Platform$LogCallerFinder;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigInfo()Ljava/lang/String;
    .locals 1

    .line 260
    invoke-static {}, Lcom/google/common/flogger/backend/Platform$LazyHolder;->access$100()Lcom/google/common/flogger/backend/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/flogger/backend/Platform;->getConfigInfoImpl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContextDataProvider()Lcom/google/common/flogger/context/ContextDataProvider;
    .locals 1

    .line 187
    invoke-static {}, Lcom/google/common/flogger/backend/Platform$LazyHolder;->access$100()Lcom/google/common/flogger/backend/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/flogger/backend/Platform;->getContextDataProviderImpl()Lcom/google/common/flogger/context/ContextDataProvider;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentTimeNanos()J
    .locals 2

    .line 234
    invoke-static {}, Lcom/google/common/flogger/backend/Platform$LazyHolder;->access$100()Lcom/google/common/flogger/backend/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/flogger/backend/Platform;->getCurrentTimeNanosImpl()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInjectedMetadata()Lcom/google/common/flogger/backend/Metadata;
    .locals 1

    .line 221
    invoke-static {}, Lcom/google/common/flogger/backend/Platform;->getContextDataProvider()Lcom/google/common/flogger/context/ContextDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/flogger/context/ContextDataProvider;->getMetadata()Lcom/google/common/flogger/backend/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public static getInjectedTags()Lcom/google/common/flogger/context/Tags;
    .locals 1

    .line 215
    invoke-static {}, Lcom/google/common/flogger/backend/Platform;->getContextDataProvider()Lcom/google/common/flogger/context/ContextDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/flogger/context/ContextDataProvider;->getTags()Lcom/google/common/flogger/context/Tags;

    move-result-object v0

    return-object v0
.end method

.method public static shouldForceLogging(Ljava/lang/String;Ljava/util/logging/Level;Z)Z
    .locals 1

    .line 210
    invoke-static {}, Lcom/google/common/flogger/backend/Platform;->getContextDataProvider()Lcom/google/common/flogger/context/ContextDataProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/common/flogger/context/ContextDataProvider;->shouldForceLogging(Ljava/lang/String;Ljava/util/logging/Level;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected abstract getBackendImpl(Ljava/lang/String;)Lcom/google/common/flogger/backend/LoggerBackend;
.end method

.method protected abstract getCallerFinderImpl()Lcom/google/common/flogger/backend/Platform$LogCallerFinder;
.end method

.method protected abstract getConfigInfoImpl()Ljava/lang/String;
.end method

.method protected getContextDataProviderImpl()Lcom/google/common/flogger/context/ContextDataProvider;
    .locals 1

    .line 193
    invoke-static {}, Lcom/google/common/flogger/backend/NoOpContextDataProvider;->getInstance()Lcom/google/common/flogger/context/ContextDataProvider;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentTimeNanosImpl()J
    .locals 3

    .line 242
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method
