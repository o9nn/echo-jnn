.class public Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;
.super Ljava/lang/Object;
.source "ConnectTrackerServerProcessor.java"

# interfaces
.implements Lorg/apache/tvm/rpc/ServerProcessor;


# static fields
.field public static final HARD_TIMEOUT_DEFAULT:I = 0x12c

.field public static final MAX_SERVER_PORT:I = 0x15b3

.field public static final RETRY_PERIOD:I = 0x1770

.field public static final STALE_TRACKER_TIMEOUT:I = 0x493e0

.field public static final TRACKER_TIMEOUT:I = 0x1770


# instance fields
.field private final key:Ljava/lang/String;

.field private final matchKey:Ljava/lang/String;

.field private server:Ljava/net/ServerSocket;

.field private serverPort:I

.field private final trackerHost:Ljava/lang/String;

.field private final trackerPort:I

.field private trackerSocket:Ljava/net/Socket;

.field private watchdog:Lorg/apache/tvm/rpc/RPCWatchdog;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/tvm/rpc/RPCWatchdog;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1389

    iput v0, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->serverPort:I

    .line 71
    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->serverPort:I

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->server:Ljava/net/ServerSocket;

    const v1, 0x493e0

    .line 72
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget v1, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->serverPort:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "using port: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->trackerHost:Ljava/lang/String;

    iput p2, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->trackerPort:I

    iput-object p3, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->key:Ljava/lang/String;

    .line 87
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->matchKey:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->watchdog:Lorg/apache/tvm/rpc/RPCWatchdog;

    return-void

    :catch_0
    move-exception v0

    .line 75
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget v2, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->serverPort:I

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    .line 76
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    iget v1, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->serverPort:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->serverPort:I

    const/16 v2, 0x15b3

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    throw v0
.end method

.method private connectToTracker()Ljava/net/Socket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->trackerSocket:Ljava/net/Socket;

    .line 192
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->trackerHost:Ljava/lang/String;

    iget v2, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->trackerPort:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->trackerSocket:Ljava/net/Socket;

    const/16 v2, 0x1770

    .line 193
    invoke-virtual {v1, v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object v0, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->trackerSocket:Ljava/net/Socket;

    .line 194
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->trackerSocket:Ljava/net/Socket;

    .line 195
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const v2, 0x2f271

    .line 196
    invoke-static {v2}, Lorg/apache/tvm/rpc/Utils;->toBytes(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    const/4 v3, 0x4

    .line 197
    invoke-static {v0, v3}, Lorg/apache/tvm/rpc/Utils;->recvAll(Ljava/io/InputStream;I)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/tvm/rpc/Utils;->wrapBytes([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    if-ne v3, v2, :cond_1

    iget-object v2, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->key:Ljava/lang/String;

    .line 201
    invoke-direct {p0, v2}, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->generateCinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-static {v1, v2}, Lorg/apache/tvm/rpc/Utils;->sendString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 203
    invoke-static {v0}, Lorg/apache/tvm/rpc/Utils;->recvString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->trackerSocket:Ljava/net/Socket;

    return-object v0

    .line 205
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "failed to connect to tracker (not SUCCESS)"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_1
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "failed to connect to tracker (WRONG MAGIC)"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateCinfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->serverPort:I

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"key\" : \"server:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\", \"addr\": [null, \""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\"]}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[5, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateGetPendingMatchKeys(I)Ljava/lang/String;
    .locals 2

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generatePut(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\", ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\"], null]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private needRefreshKey()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->trackerSocket:Ljava/net/Socket;

    .line 231
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->trackerSocket:Ljava/net/Socket;

    .line 232
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x7

    .line 233
    invoke-direct {p0, v2}, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->generateGetPendingMatchKeys(I)Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-static {v1, v2}, Lorg/apache/tvm/rpc/Utils;->sendString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 235
    invoke-static {v0}, Lorg/apache/tvm/rpc/Utils;->recvString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 236
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pending matchkeys: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->matchKey:Ljava/lang/String;

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private register()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->trackerSocket:Ljava/net/Socket;

    .line 214
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->trackerSocket:Ljava/net/Socket;

    .line 215
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->key:Ljava/lang/String;

    iget v3, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->serverPort:I

    iget-object v4, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->matchKey:Ljava/lang/String;

    const/4 v5, 0x3

    .line 218
    invoke-direct {p0, v5, v2, v3, v4}, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->generatePut(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-static {v1, v2}, Lorg/apache/tvm/rpc/Utils;->sendString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 220
    invoke-static {v0}, Lorg/apache/tvm/rpc/Utils;->recvString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 224
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "registered with tracker..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 222
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "failed to register with tracker (not SUCCESS)"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMatchKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->matchKey:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 9

    .line 106
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->connectToTracker()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->trackerSocket:Ljava/net/Socket;

    .line 108
    invoke-direct {p0}, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->register()V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "waiting for requests..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->server:Ljava/net/ServerSocket;

    .line 116
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 118
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const/4 v3, 0x4

    .line 119
    invoke-static {v1, v3}, Lorg/apache/tvm/rpc/Utils;->recvAll(Ljava/io/InputStream;I)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/tvm/rpc/Utils;->wrapBytes([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    const v4, 0xff271

    const v5, 0xff273

    if-eq v3, v4, :cond_1

    .line 121
    invoke-static {v5}, Lorg/apache/tvm/rpc/Utils;->toBytes(I)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 122
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "incorrect RPC magic"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    invoke-static {v0}, Lorg/apache/tvm/rpc/Utils;->closeQuietly(Ljava/net/Socket;)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {v1}, Lorg/apache/tvm/rpc/Utils;->recvString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 127
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v6, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->matchKey:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "matchKey:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->matchKey:Ljava/lang/String;

    .line 130
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2

    .line 131
    invoke-static {v5}, Lorg/apache/tvm/rpc/Utils;->toBytes(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 132
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v3, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->matchKey:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key mismatch, expected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    invoke-static {v0}, Lorg/apache/tvm/rpc/Utils;->closeQuietly(Ljava/net/Socket;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_2
    :try_start_2
    const-string v3, "-timeout="

    .line 148
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_3

    add-int/lit8 v3, v3, 0x9

    .line 150
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_3
    const/16 v3, 0x12c

    .line 152
    :goto_1
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "alloted timeout: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v6, "client:"

    .line 153
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 154
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "recv key mismatch..."

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    invoke-static {v5}, Lorg/apache/tvm/rpc/Utils;->toBytes(I)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_2

    .line 157
    :cond_4
    invoke-static {v4}, Lorg/apache/tvm/rpc/Utils;->toBytes(I)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 159
    invoke-static {v2, v1}, Lorg/apache/tvm/rpc/Utils;->sendString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 162
    :goto_2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->watchdog:Lorg/apache/tvm/rpc/RPCWatchdog;

    mul-int/lit16 v3, v3, 0x3e8

    .line 164
    invoke-virtual {v1, v3}, Lorg/apache/tvm/rpc/RPCWatchdog;->startTimeout(I)V

    .line 165
    new-instance v1, Lorg/apache/tvm/rpc/SocketChannel;

    invoke-direct {v1, v0}, Lorg/apache/tvm/rpc/SocketChannel;-><init>(Ljava/net/Socket;)V

    .line 166
    new-instance v2, Lorg/apache/tvm/rpc/NativeServerLoop;

    invoke-virtual {v1}, Lorg/apache/tvm/rpc/SocketChannel;->getFsend()Lorg/apache/tvm/Function;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/tvm/rpc/SocketChannel;->getFrecv()Lorg/apache/tvm/Function;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/apache/tvm/rpc/NativeServerLoop;-><init>(Lorg/apache/tvm/Function;Lorg/apache/tvm/Function;)V

    invoke-virtual {v2}, Lorg/apache/tvm/rpc/NativeServerLoop;->run()V

    .line 167
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finish serving "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 168
    invoke-static {v0}, Lorg/apache/tvm/rpc/Utils;->closeQuietly(Ljava/net/Socket;)V
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->trackerSocket:Ljava/net/Socket;

    if-eqz v0, :cond_5

    .line 181
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_5
    iget-object v0, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->server:Ljava/net/ServerSocket;

    .line 183
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    .line 139
    :catch_0
    :try_start_4
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "no incoming connections, refreshing..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->needRefreshKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "reregistering..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->register()V
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 177
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v0, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->trackerSocket:Ljava/net/Socket;

    if-eqz v0, :cond_6

    .line 181
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_6
    iget-object v0, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->server:Ljava/net/ServerSocket;

    .line 183
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_1
    const-wide/16 v0, 0x1770

    .line 172
    :try_start_7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    .line 174
    :catch_2
    :try_start_8
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "interrupted before retrying to connect to tracker..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_3
    :try_start_9
    iget-object v0, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->trackerSocket:Ljava/net/Socket;

    if-eqz v0, :cond_7

    .line 181
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_7
    iget-object v0, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->server:Ljava/net/ServerSocket;

    .line 183
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_4
    return-void

    :goto_5
    :try_start_a
    iget-object v1, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->trackerSocket:Ljava/net/Socket;

    if-eqz v1, :cond_8

    .line 181
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    :cond_8
    iget-object v1, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->server:Ljava/net/ServerSocket;

    .line 183
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v1

    .line 185
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 187
    :goto_6
    throw v0
.end method

.method public terminate()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/tvm/rpc/ConnectTrackerServerProcessor;->server:Ljava/net/ServerSocket;

    .line 97
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
