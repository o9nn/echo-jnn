.class public abstract Lcom/google/common/flogger/AbstractLogger;
.super Ljava/lang/Object;
.source "AbstractLogger.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<API::",
        "Lcom/google/common/flogger/LoggingApi<",
        "TAPI;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final backend:Lcom/google/common/flogger/backend/LoggerBackend;


# direct methods
.method protected constructor <init>(Lcom/google/common/flogger/backend/LoggerBackend;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "backend"

    .line 43
    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/flogger/backend/LoggerBackend;

    iput-object p1, p0, Lcom/google/common/flogger/AbstractLogger;->backend:Lcom/google/common/flogger/backend/LoggerBackend;

    return-void
.end method


# virtual methods
.method public abstract at(Ljava/util/logging/Level;)Lcom/google/common/flogger/LoggingApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Level;",
            ")TAPI;"
        }
    .end annotation
.end method

.method public final atConfig()Lcom/google/common/flogger/LoggingApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAPI;"
        }
    .end annotation

    .line 83
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lcom/google/common/flogger/AbstractLogger;->at(Ljava/util/logging/Level;)Lcom/google/common/flogger/LoggingApi;

    move-result-object v0

    return-object v0
.end method

.method public final atFine()Lcom/google/common/flogger/LoggingApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAPI;"
        }
    .end annotation

    .line 88
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lcom/google/common/flogger/AbstractLogger;->at(Ljava/util/logging/Level;)Lcom/google/common/flogger/LoggingApi;

    move-result-object v0

    return-object v0
.end method

.method public final atFiner()Lcom/google/common/flogger/LoggingApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAPI;"
        }
    .end annotation

    .line 93
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lcom/google/common/flogger/AbstractLogger;->at(Ljava/util/logging/Level;)Lcom/google/common/flogger/LoggingApi;

    move-result-object v0

    return-object v0
.end method

.method public final atFinest()Lcom/google/common/flogger/LoggingApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAPI;"
        }
    .end annotation

    .line 98
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lcom/google/common/flogger/AbstractLogger;->at(Ljava/util/logging/Level;)Lcom/google/common/flogger/LoggingApi;

    move-result-object v0

    return-object v0
.end method

.method public final atInfo()Lcom/google/common/flogger/LoggingApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAPI;"
        }
    .end annotation

    .line 78
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lcom/google/common/flogger/AbstractLogger;->at(Ljava/util/logging/Level;)Lcom/google/common/flogger/LoggingApi;

    move-result-object v0

    return-object v0
.end method

.method public final atSevere()Lcom/google/common/flogger/LoggingApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAPI;"
        }
    .end annotation

    .line 68
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lcom/google/common/flogger/AbstractLogger;->at(Ljava/util/logging/Level;)Lcom/google/common/flogger/LoggingApi;

    move-result-object v0

    return-object v0
.end method

.method public final atWarning()Lcom/google/common/flogger/LoggingApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAPI;"
        }
    .end annotation

    .line 73
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lcom/google/common/flogger/AbstractLogger;->at(Ljava/util/logging/Level;)Lcom/google/common/flogger/LoggingApi;

    move-result-object v0

    return-object v0
.end method

.method final getBackend()Lcom/google/common/flogger/backend/LoggerBackend;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/AbstractLogger;->backend:Lcom/google/common/flogger/backend/LoggerBackend;

    return-object v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/AbstractLogger;->backend:Lcom/google/common/flogger/backend/LoggerBackend;

    .line 115
    invoke-virtual {v0}, Lcom/google/common/flogger/backend/LoggerBackend;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final isLoggable(Ljava/util/logging/Level;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/AbstractLogger;->backend:Lcom/google/common/flogger/backend/LoggerBackend;

    .line 123
    invoke-virtual {v0, p1}, Lcom/google/common/flogger/backend/LoggerBackend;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    return p1
.end method

.method final write(Lcom/google/common/flogger/backend/LogData;)V
    .locals 3

    const-string v0, "data"

    .line 138
    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/google/common/flogger/AbstractLogger;->backend:Lcom/google/common/flogger/backend/LoggerBackend;

    .line 140
    invoke-virtual {v0, p1}, Lcom/google/common/flogger/backend/LoggerBackend;->log(Lcom/google/common/flogger/backend/LogData;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/google/common/flogger/AbstractLogger;->backend:Lcom/google/common/flogger/backend/LoggerBackend;

    .line 143
    invoke-virtual {v1, v0, p1}, Lcom/google/common/flogger/backend/LoggerBackend;->handleError(Ljava/lang/RuntimeException;Lcom/google/common/flogger/backend/LogData;)V
    :try_end_1
    .catch Lcom/google/common/flogger/backend/LoggingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 148
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logging error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_0
    return-void

    :catch_2
    move-exception p1

    .line 146
    throw p1
.end method
