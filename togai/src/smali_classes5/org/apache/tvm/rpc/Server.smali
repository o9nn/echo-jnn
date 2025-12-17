.class public Lorg/apache/tvm/rpc/Server;
.super Ljava/lang/Object;
.source "Server.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tvm/rpc/Server$WorkerThread;
    }
.end annotation


# instance fields
.field private final worker:Lorg/apache/tvm/rpc/Server$WorkerThread;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lorg/apache/tvm/rpc/Server$WorkerThread;

    new-instance v1, Lorg/apache/tvm/rpc/StandaloneServerProcessor;

    invoke-direct {v1, p1}, Lorg/apache/tvm/rpc/StandaloneServerProcessor;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/apache/tvm/rpc/Server$WorkerThread;-><init>(Lorg/apache/tvm/rpc/ServerProcessor;)V

    iput-object v0, p0, Lorg/apache/tvm/rpc/Server;->worker:Lorg/apache/tvm/rpc/Server$WorkerThread;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lorg/apache/tvm/rpc/Server$WorkerThread;

    new-instance v1, Lorg/apache/tvm/rpc/ConnectProxyServerProcessor;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/tvm/rpc/ConnectProxyServerProcessor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/tvm/rpc/Server$WorkerThread;-><init>(Lorg/apache/tvm/rpc/ServerProcessor;)V

    iput-object v0, p0, Lorg/apache/tvm/rpc/Server;->worker:Lorg/apache/tvm/rpc/Server$WorkerThread;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 1

    iget-object v0, p0, Lorg/apache/tvm/rpc/Server;->worker:Lorg/apache/tvm/rpc/Server$WorkerThread;

    .line 79
    invoke-virtual {v0}, Lorg/apache/tvm/rpc/Server$WorkerThread;->start()V

    return-void
.end method

.method public terminate()V
    .locals 1

    iget-object v0, p0, Lorg/apache/tvm/rpc/Server;->worker:Lorg/apache/tvm/rpc/Server$WorkerThread;

    .line 86
    invoke-virtual {v0}, Lorg/apache/tvm/rpc/Server$WorkerThread;->terminate()V

    return-void
.end method
