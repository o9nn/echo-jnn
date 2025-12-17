.class public abstract Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
.super Ljava/lang/Object;
.source "ScopedLoggingContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/context/ScopedLoggingContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# instance fields
.field private logLevelMap:Lcom/google/common/flogger/context/LogLevelMap;

.field private metadata:Lcom/google/common/flogger/context/ScopeMetadata$Builder;

.field private tags:Lcom/google/common/flogger/context/Tags;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->tags:Lcom/google/common/flogger/context/Tags;

    iput-object v0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->metadata:Lcom/google/common/flogger/context/ScopeMetadata$Builder;

    iput-object v0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->logLevelMap:Lcom/google/common/flogger/context/LogLevelMap;

    return-void
.end method


# virtual methods
.method public final call(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 240
    invoke-virtual {p0, p1}, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->wrap(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final callUnchecked(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 249
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->call(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 253
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checked exception caught during context call"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 251
    throw p1
.end method

.method protected final getLogLevelMap()Lcom/google/common/flogger/context/LogLevelMap;
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->logLevelMap:Lcom/google/common/flogger/context/LogLevelMap;

    return-object v0
.end method

.method protected final getMetadata()Lcom/google/common/flogger/context/ScopeMetadata;
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->metadata:Lcom/google/common/flogger/context/ScopeMetadata$Builder;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Lcom/google/common/flogger/context/ScopeMetadata$Builder;->build()Lcom/google/common/flogger/context/ScopeMetadata;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected final getTags()Lcom/google/common/flogger/context/Tags;
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->tags:Lcom/google/common/flogger/context/Tags;

    return-object v0
.end method

.method public abstract install()Lcom/google/common/flogger/context/ScopedLoggingContext$LoggingContextCloseable;
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation
.end method

.method public final run(Ljava/lang/Runnable;)V
    .locals 0

    .line 235
    invoke-virtual {p0, p1}, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final withLogLevelMap(Lcom/google/common/flogger/context/LogLevelMap;)Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
    .locals 2
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->logLevelMap:Lcom/google/common/flogger/context/LogLevelMap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "log level map already set"

    .line 173
    invoke-static {v0, v1}, Lcom/google/common/flogger/util/Checks;->checkState(ZLjava/lang/String;)V

    const-string v0, "log level map"

    .line 174
    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->logLevelMap:Lcom/google/common/flogger/context/LogLevelMap;

    return-object p0
.end method

.method public final withMetadata(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;TT;)",
            "Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->metadata:Lcom/google/common/flogger/context/ScopeMetadata$Builder;

    if-nez v0, :cond_0

    .line 161
    invoke-static {}, Lcom/google/common/flogger/context/ScopeMetadata;->builder()Lcom/google/common/flogger/context/ScopeMetadata$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->metadata:Lcom/google/common/flogger/context/ScopeMetadata$Builder;

    :cond_0
    iget-object v0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->metadata:Lcom/google/common/flogger/context/ScopeMetadata$Builder;

    .line 163
    invoke-virtual {v0, p1, p2}, Lcom/google/common/flogger/context/ScopeMetadata$Builder;->add(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)Lcom/google/common/flogger/context/ScopeMetadata$Builder;

    return-object p0
.end method

.method public final withTags(Lcom/google/common/flogger/context/Tags;)Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
    .locals 2
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->tags:Lcom/google/common/flogger/context/Tags;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "tags already set"

    .line 148
    invoke-static {v0, v1}, Lcom/google/common/flogger/util/Checks;->checkState(ZLjava/lang/String;)V

    const-string v0, "tags"

    .line 149
    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->tags:Lcom/google/common/flogger/context/Tags;

    return-object p0
.end method

.method public final wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .line 189
    new-instance v0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder$1;-><init>(Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final wrap(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;)",
            "Ljava/util/concurrent/Callable<",
            "TR;>;"
        }
    .end annotation

    .line 216
    new-instance v0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder$2;-><init>(Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
