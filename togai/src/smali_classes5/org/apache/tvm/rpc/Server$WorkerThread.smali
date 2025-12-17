.class Lorg/apache/tvm/rpc/Server$WorkerThread;
.super Ljava/lang/Thread;
.source "Server.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tvm/rpc/Server;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerThread"
.end annotation


# instance fields
.field private final processor:Lorg/apache/tvm/rpc/ServerProcessor;

.field private volatile running:Z


# direct methods
.method public constructor <init>(Lorg/apache/tvm/rpc/ServerProcessor;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tvm/rpc/Server$WorkerThread;->running:Z

    iput-object p1, p0, Lorg/apache/tvm/rpc/Server$WorkerThread;->processor:Lorg/apache/tvm/rpc/ServerProcessor;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lorg/apache/tvm/rpc/Server$WorkerThread;->running:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tvm/rpc/Server$WorkerThread;->processor:Lorg/apache/tvm/rpc/ServerProcessor;

    .line 38
    invoke-interface {v0}, Lorg/apache/tvm/rpc/ServerProcessor;->run()V

    const-wide/16 v0, 0x3e8

    .line 40
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public terminate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tvm/rpc/Server$WorkerThread;->running:Z

    iget-object v0, p0, Lorg/apache/tvm/rpc/Server$WorkerThread;->processor:Lorg/apache/tvm/rpc/ServerProcessor;

    .line 49
    invoke-interface {v0}, Lorg/apache/tvm/rpc/ServerProcessor;->terminate()V

    return-void
.end method
