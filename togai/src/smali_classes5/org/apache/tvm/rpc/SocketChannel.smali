.class public Lorg/apache/tvm/rpc/SocketChannel;
.super Ljava/lang/Object;
.source "SocketChannel.java"


# instance fields
.field private frecv:Lorg/apache/tvm/Function;

.field private fsend:Lorg/apache/tvm/Function;

.field private final socket:Ljava/net/Socket;


# direct methods
.method static bridge synthetic -$$Nest$fgetsocket(Lorg/apache/tvm/rpc/SocketChannel;)Ljava/net/Socket;
    .locals 0

    iget-object p0, p0, Lorg/apache/tvm/rpc/SocketChannel;->socket:Ljava/net/Socket;

    return-object p0
.end method

.method constructor <init>(Ljava/net/Socket;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/apache/tvm/rpc/SocketChannel$1;

    invoke-direct {v0, p0}, Lorg/apache/tvm/rpc/SocketChannel$1;-><init>(Lorg/apache/tvm/rpc/SocketChannel;)V

    invoke-static {v0}, Lorg/apache/tvm/Function;->convertFunc(Lorg/apache/tvm/Function$Callback;)Lorg/apache/tvm/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tvm/rpc/SocketChannel;->fsend:Lorg/apache/tvm/Function;

    .line 49
    new-instance v0, Lorg/apache/tvm/rpc/SocketChannel$2;

    invoke-direct {v0, p0}, Lorg/apache/tvm/rpc/SocketChannel$2;-><init>(Lorg/apache/tvm/rpc/SocketChannel;)V

    invoke-static {v0}, Lorg/apache/tvm/Function;->convertFunc(Lorg/apache/tvm/Function$Callback;)Lorg/apache/tvm/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tvm/rpc/SocketChannel;->frecv:Lorg/apache/tvm/Function;

    iput-object p1, p0, Lorg/apache/tvm/rpc/SocketChannel;->socket:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public getFrecv()Lorg/apache/tvm/Function;
    .locals 1

    iget-object v0, p0, Lorg/apache/tvm/rpc/SocketChannel;->frecv:Lorg/apache/tvm/Function;

    return-object v0
.end method

.method public getFsend()Lorg/apache/tvm/Function;
    .locals 1

    iget-object v0, p0, Lorg/apache/tvm/rpc/SocketChannel;->fsend:Lorg/apache/tvm/Function;

    return-object v0
.end method
