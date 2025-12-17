.class Lcom/google/common/flogger/context/ScopedLoggingContext$Builder$2;
.super Ljava/lang/Object;
.source "ScopedLoggingContext.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->wrap(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;

.field final synthetic val$c:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder$2;->this$0:Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;

    iput-object p2, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder$2;->val$c:Ljava/util/concurrent/Callable;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder$2;->this$0:Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;

    .line 220
    invoke-virtual {v0}, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;->install()Lcom/google/common/flogger/context/ScopedLoggingContext$LoggingContextCloseable;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder$2;->val$c:Ljava/util/concurrent/Callable;

    .line 223
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 227
    invoke-static {v0, v2}, Lcom/google/common/flogger/context/ScopedLoggingContext;->access$000(Lcom/google/common/flogger/context/ScopedLoggingContext$LoggingContextCloseable;Z)V

    return-object v1

    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/common/flogger/context/ScopedLoggingContext;->access$000(Lcom/google/common/flogger/context/ScopedLoggingContext$LoggingContextCloseable;Z)V

    .line 228
    throw v1
.end method
