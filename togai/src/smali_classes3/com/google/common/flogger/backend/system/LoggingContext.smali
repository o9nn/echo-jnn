.class public abstract Lcom/google/common/flogger/backend/system/LoggingContext;
.super Lcom/google/common/flogger/context/ContextDataProvider;
.source "LoggingContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final NO_OP_API:Lcom/google/common/flogger/context/ScopedLoggingContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext;-><init>(Lcom/google/common/flogger/backend/system/LoggingContext$1;)V

    sput-object v0, Lcom/google/common/flogger/backend/system/LoggingContext;->NO_OP_API:Lcom/google/common/flogger/context/ScopedLoggingContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/common/flogger/context/ContextDataProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getContextApiSingleton()Lcom/google/common/flogger/context/ScopedLoggingContext;
    .locals 1

    sget-object v0, Lcom/google/common/flogger/backend/system/LoggingContext;->NO_OP_API:Lcom/google/common/flogger/context/ScopedLoggingContext;

    return-object v0
.end method
