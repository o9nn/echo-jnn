.class Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext$1;
.super Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
.source "LoggingContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext;->newContext()Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext;


# direct methods
.method constructor <init>(Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext$1;->this$0:Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext;

    .line 42
    invoke-direct {p0}, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public install()Lcom/google/common/flogger/context/ScopedLoggingContext$LoggingContextCloseable;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext$1;->this$0:Lcom/google/common/flogger/backend/system/LoggingContext$NoOpScopedLoggingContext;

    return-object v0
.end method
