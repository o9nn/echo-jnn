.class public Lorg/apache/tvm/rpc/Client;
.super Ljava/lang/Object;
.source "Client.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect(Ljava/lang/String;I)Lorg/apache/tvm/rpc/RPCSession;
    .locals 1

    const-string v0, ""

    .line 47
    invoke-static {p0, p1, v0}, Lorg/apache/tvm/rpc/Client;->connect(Ljava/lang/String;ILjava/lang/String;)Lorg/apache/tvm/rpc/RPCSession;

    move-result-object p0

    return-object p0
.end method

.method public static connect(Ljava/lang/String;ILjava/lang/String;)Lorg/apache/tvm/rpc/RPCSession;
    .locals 1

    const-string v0, "Connect"

    .line 32
    invoke-static {v0}, Lorg/apache/tvm/rpc/RPC;->getApi(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0, p0}, Lorg/apache/tvm/Function;->pushArg(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/tvm/Function;->pushArg(I)Lorg/apache/tvm/Function;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/apache/tvm/Function;->pushArg(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    move-result-object p0

    .line 37
    new-instance p1, Lorg/apache/tvm/rpc/RPCSession;

    invoke-virtual {p0}, Lorg/apache/tvm/TVMValue;->asModule()Lorg/apache/tvm/Module;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/tvm/rpc/RPCSession;-><init>(Lorg/apache/tvm/Module;)V

    return-object p1

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Please compile with USE_RPC=1"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
