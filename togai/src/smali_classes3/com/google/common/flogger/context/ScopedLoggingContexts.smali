.class public final Lcom/google/common/flogger/context/ScopedLoggingContexts;
.super Ljava/lang/Object;
.source "ScopedLoggingContexts.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newContext()Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .line 42
    invoke-static {}, Lcom/google/common/flogger/context/ScopedLoggingContext;->getInstance()Lcom/google/common/flogger/context/ScopedLoggingContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/flogger/context/ScopedLoggingContext;->newContext()Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;

    move-result-object v0

    return-object v0
.end method
