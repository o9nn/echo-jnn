.class public final Lcom/google/common/flogger/LogSites;
.super Ljava/lang/Object;
.source "LogSites.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callerOf(Ljava/lang/Class;)Lcom/google/common/flogger/LogSite;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/common/flogger/LogSite;"
        }
    .end annotation

    .line 76
    invoke-static {}, Lcom/google/common/flogger/backend/Platform;->getCallerFinder()Lcom/google/common/flogger/backend/Platform$LogCallerFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/common/flogger/backend/Platform$LogCallerFinder;->findLogSite(Ljava/lang/Class;I)Lcom/google/common/flogger/LogSite;

    move-result-object p0

    return-object p0
.end method

.method public static logSite()Lcom/google/common/flogger/LogSite;
    .locals 3

    .line 120
    invoke-static {}, Lcom/google/common/flogger/backend/Platform;->getCallerFinder()Lcom/google/common/flogger/backend/Platform$LogCallerFinder;

    move-result-object v0

    const-class v1, Lcom/google/common/flogger/LogSites;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/common/flogger/backend/Platform$LogCallerFinder;->findLogSite(Ljava/lang/Class;I)Lcom/google/common/flogger/LogSite;

    move-result-object v0

    return-object v0
.end method
