.class public Lorg/apache/tvm/rpc/StandaloneServerProcessor;
.super Ljava/lang/Object;
.source "StandaloneServerProcessor.java"

# interfaces
.implements Lorg/apache/tvm/rpc/ServerProcessor;


# instance fields
.field private final server:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tvm/rpc/StandaloneServerProcessor;->server:Ljava/net/ServerSocket;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "Finish serving "

    const-string v1, "Connection from "

    :try_start_0
    iget-object v2, p0, Lorg/apache/tvm/rpc/StandaloneServerProcessor;->server:Ljava/net/ServerSocket;

    .line 46
    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 48
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/4 v5, 0x4

    .line 49
    invoke-static {v3, v5}, Lorg/apache/tvm/rpc/Utils;->recvAll(Ljava/io/InputStream;I)[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/tvm/rpc/Utils;->wrapBytes([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    const v7, 0xff271

    if-eq v6, v7, :cond_0

    .line 51
    invoke-static {v2}, Lorg/apache/tvm/rpc/Utils;->closeQuietly(Ljava/net/Socket;)V

    return-void

    .line 54
    :cond_0
    invoke-static {v3, v5}, Lorg/apache/tvm/rpc/Utils;->recvAll(Ljava/io/InputStream;I)[B

    move-result-object v5

    invoke-static {v5}, Lorg/apache/tvm/rpc/Utils;->wrapBytes([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 55
    invoke-static {v3, v5}, Lorg/apache/tvm/rpc/Utils;->recvAll(Ljava/io/InputStream;I)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/tvm/rpc/Utils;->decodeToStr([B)Ljava/lang/String;

    move-result-object v3

    const-string v5, "client:"

    .line 56
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const v3, 0xff273

    .line 57
    invoke-static {v3}, Lorg/apache/tvm/rpc/Utils;->toBytes(I)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 59
    :cond_1
    invoke-static {v7}, Lorg/apache/tvm/rpc/Utils;->toBytes(I)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    const-string v3, "server:java"

    const/16 v5, 0xb

    .line 62
    invoke-static {v5}, Lorg/apache/tvm/rpc/Utils;->toBytes(I)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 63
    invoke-static {v3}, Lorg/apache/tvm/rpc/Utils;->toBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    .line 66
    :goto_0
    new-instance v3, Lorg/apache/tvm/rpc/SocketChannel;

    invoke-direct {v3, v2}, Lorg/apache/tvm/rpc/SocketChannel;-><init>(Ljava/net/Socket;)V

    .line 67
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    new-instance v1, Lorg/apache/tvm/rpc/NativeServerLoop;

    invoke-virtual {v3}, Lorg/apache/tvm/rpc/SocketChannel;->getFsend()Lorg/apache/tvm/Function;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/tvm/rpc/SocketChannel;->getFrecv()Lorg/apache/tvm/Function;

    move-result-object v3

    invoke-direct {v1, v4, v3}, Lorg/apache/tvm/rpc/NativeServerLoop;-><init>(Lorg/apache/tvm/Function;Lorg/apache/tvm/Function;)V

    invoke-virtual {v1}, Lorg/apache/tvm/rpc/NativeServerLoop;->run()V

    .line 69
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    invoke-static {v2}, Lorg/apache/tvm/rpc/Utils;->closeQuietly(Ljava/net/Socket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public terminate()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/tvm/rpc/StandaloneServerProcessor;->server:Ljava/net/ServerSocket;

    .line 38
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
