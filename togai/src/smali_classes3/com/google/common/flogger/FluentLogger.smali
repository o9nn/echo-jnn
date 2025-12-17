.class public final Lcom/google/common/flogger/FluentLogger;
.super Lcom/google/common/flogger/AbstractLogger;
.source "FluentLogger.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/FluentLogger$Context;,
        Lcom/google/common/flogger/FluentLogger$NoOp;,
        Lcom/google/common/flogger/FluentLogger$Api;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/flogger/AbstractLogger<",
        "Lcom/google/common/flogger/FluentLogger$Api;",
        ">;"
    }
.end annotation


# static fields
.field static final NO_OP:Lcom/google/common/flogger/FluentLogger$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lcom/google/common/flogger/FluentLogger$NoOp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/flogger/FluentLogger$NoOp;-><init>(Lcom/google/common/flogger/FluentLogger$1;)V

    sput-object v0, Lcom/google/common/flogger/FluentLogger;->NO_OP:Lcom/google/common/flogger/FluentLogger$NoOp;

    return-void
.end method

.method constructor <init>(Lcom/google/common/flogger/backend/LoggerBackend;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/google/common/flogger/AbstractLogger;-><init>(Lcom/google/common/flogger/backend/LoggerBackend;)V

    return-void
.end method

.method public static forEnclosingClass()Lcom/google/common/flogger/FluentLogger;
    .locals 2

    .line 70
    invoke-static {}, Lcom/google/common/flogger/backend/Platform;->getCallerFinder()Lcom/google/common/flogger/backend/Platform$LogCallerFinder;

    move-result-object v0

    const-class v1, Lcom/google/common/flogger/FluentLogger;

    invoke-virtual {v0, v1}, Lcom/google/common/flogger/backend/Platform$LogCallerFinder;->findLoggingClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/google/common/flogger/FluentLogger;

    invoke-static {v0}, Lcom/google/common/flogger/backend/Platform;->getBackend(Ljava/lang/String;)Lcom/google/common/flogger/backend/LoggerBackend;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/common/flogger/FluentLogger;-><init>(Lcom/google/common/flogger/backend/LoggerBackend;)V

    return-object v1
.end method


# virtual methods
.method public at(Ljava/util/logging/Level;)Lcom/google/common/flogger/FluentLogger$Api;
    .locals 3

    .line 81
    invoke-virtual {p0, p1}, Lcom/google/common/flogger/FluentLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    .line 82
    invoke-virtual {p0}, Lcom/google/common/flogger/FluentLogger;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/google/common/flogger/backend/Platform;->shouldForceLogging(Ljava/lang/String;Ljava/util/logging/Level;Z)Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/common/flogger/FluentLogger;->NO_OP:Lcom/google/common/flogger/FluentLogger$NoOp;

    goto :goto_1

    .line 83
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/common/flogger/FluentLogger$Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/common/flogger/FluentLogger$Context;-><init>(Lcom/google/common/flogger/FluentLogger;Ljava/util/logging/Level;ZLcom/google/common/flogger/FluentLogger$1;)V

    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public bridge synthetic at(Ljava/util/logging/Level;)Lcom/google/common/flogger/LoggingApi;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/common/flogger/FluentLogger;->at(Ljava/util/logging/Level;)Lcom/google/common/flogger/FluentLogger$Api;

    move-result-object p1

    return-object p1
.end method
