.class public Lorg/apache/tvm/rpc/ConnectProxyServerProcessor;
.super Ljava/lang/Object;
.source "ConnectProxyServerProcessor.java"

# interfaces
.implements Lorg/apache/tvm/rpc/ServerProcessor;


# instance fields
.field private callback:Ljava/lang/Runnable;

.field private volatile currSocket:Ljava/net/Socket;

.field private final host:Ljava/lang/String;

.field private final key:Ljava/lang/String;

.field private final port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lorg/apache/tvm/rpc/ConnectProxyServerProcessor;->currSocket:Ljava/net/Socket;

    iput-object p1, p0, Lorg/apache/tvm/rpc/ConnectProxyServerProcessor;->host:Ljava/lang/String;

    iput p2, p0, Lorg/apache/tvm/rpc/ConnectProxyServerProcessor;->port:I

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "server:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tvm/rpc/ConnectProxyServerProcessor;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "Finish serving "

    const-string v1, "RPCProxy connected to "

    const-string v2, "RPCProxy do not have matching client key "

    .line 67
    :try_start_0
    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lorg/apache/tvm/rpc/ConnectProxyServerProcessor;->host:Ljava/lang/String;

    iget v5, p0, Lorg/apache/tvm/rpc/ConnectProxyServerProcessor;->port:I

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget-object v4, p0, Lorg/apache/tvm/rpc/ConnectProxyServerProcessor;->currSocket:Ljava/net/Socket;

    const/16 v5, 0x1770

    .line 68
    invoke-virtual {v4, v3, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object v4, p0, Lorg/apache/tvm/rpc/ConnectProxyServerProcessor;->currSocket:Ljava/net/Socket;

    .line 69
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/tvm/rpc/ConnectProxyServerProcessor;->currSocket:Ljava/net/Socket;

    .line 70
    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    const v6, 0xff271

    .line 71
    invoke-static {v6}, Lorg/apache/tvm/rpc/Utils;->toBytes(I)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    iget-object v7, p0, Lorg/apache/tvm/rpc/ConnectProxyServerProcessor;->key:Ljava/lang/String;

    .line 72
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Lorg/apache/tvm/rpc/Utils;->toBytes(I)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    iget-object v7, p0, Lorg/apache/tvm/rpc/ConnectProxyServerProcessor;->key:Ljava/lang/String;

    .line 73
    invoke-static {v7}, Lorg/apache/tvm/rpc/Utils;->toBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    const/4 v5, 0x4

    .line 74
    invoke-static {v4, v5}, Lorg/apache/tvm/rpc/Utils;->recvAll(Ljava/io/InputStream;I)[B

    move-result-object v7

    invoke-static {v7}, Lorg/apache/tvm/rpc/Utils;->wrapBytes([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    const v8, 0xff272

    if-eq v7, v8, :cond_3

    const v8, 0xff273

    if-ne v7, v8, :cond_0

    .line 79
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v7, p0, Lorg/apache/tvm/rpc/ConnectProxyServerProcessor;->key:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne v7, v6, :cond_2

    .line 84
    :goto_0
    invoke-static {v4, v5}, Lorg/apache/tvm/rpc/Utils;->recvAll(Ljava/io/InputStream;I)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tvm/rpc/Utils;->wrapBytes([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 85
    invoke-static {v4, v2}, Lorg/apache/tvm/rpc/Utils;->recvAll(Ljava/io/InputStream;I)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tvm/rpc/Utils;->decodeToStr([B)Ljava/lang/String;

    .line 86
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tvm/rpc/ConnectProxyServerProcessor;->callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 88
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 91
    :cond_1
    new-instance v1, Lorg/apache/tvm/rpc/SocketChannel;

    iget-object v2, p0, Lorg/apache/tvm/rpc/ConnectProxyServerProcessor;->currSocket:Ljava/net/Socket;

    invoke-direct {v1, v2}, Lorg/apache/tvm/rpc/SocketChannel;-><init>(Ljava/net/Socket;)V

    .line 92
    new-instance v2, Lorg/apache/tvm/rpc/NativeServerLoop;

    invoke-virtual {v1}, Lorg/apache/tvm/rpc/SocketChannel;->getFsend()Lorg/apache/tvm/Function;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/tvm/rpc/SocketChannel;->getFrecv()Lorg/apache/tvm/Function;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Lorg/apache/tvm/rpc/NativeServerLoop;-><init>(Lorg/apache/tvm/Function;Lorg/apache/tvm/Function;)V

    invoke-virtual {v2}, Lorg/apache/tvm/rpc/NativeServerLoop;->run()V

    .line 93
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-virtual {p0}, Lorg/apache/tvm/rpc/ConnectProxyServerProcessor;->terminate()V

    return-void

    .line 81
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not RPC Proxy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "key: %s has already been used in proxy"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tvm/rpc/ConnectProxyServerProcessor;->key:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 77
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 95
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 98
    invoke-virtual {p0}, Lorg/apache/tvm/rpc/ConnectProxyServerProcessor;->terminate()V

    .line 99
    throw v0
.end method

.method public setStartTimeCallback(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/tvm/rpc/ConnectProxyServerProcessor;->callback:Ljava/lang/Runnable;

    return-void
.end method

.method public terminate()V
    .locals 1

    iget-object v0, p0, Lorg/apache/tvm/rpc/ConnectProxyServerProcessor;->currSocket:Ljava/net/Socket;

    .line 62
    invoke-static {v0}, Lorg/apache/tvm/rpc/Utils;->closeQuietly(Ljava/net/Socket;)V

    return-void
.end method
