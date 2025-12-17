.class Lorg/apache/tvm/rpc/SocketChannel$2;
.super Ljava/lang/Object;
.source "SocketChannel.java"

# interfaces
.implements Lorg/apache/tvm/Function$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tvm/rpc/SocketChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/tvm/rpc/SocketChannel;


# direct methods
.method constructor <init>(Lorg/apache/tvm/rpc/SocketChannel;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/tvm/rpc/SocketChannel$2;->this$0:Lorg/apache/tvm/rpc/SocketChannel;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs invoke([Lorg/apache/tvm/TVMValue;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    .line 51
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/apache/tvm/TVMValue;->asLong()J

    move-result-wide v0

    .line 53
    :try_start_0
    new-instance p1, Lorg/apache/tvm/TVMValueBytes;

    iget-object v2, p0, Lorg/apache/tvm/rpc/SocketChannel$2;->this$0:Lorg/apache/tvm/rpc/SocketChannel;

    invoke-static {v2}, Lorg/apache/tvm/rpc/SocketChannel;->-$$Nest$fgetsocket(Lorg/apache/tvm/rpc/SocketChannel;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    long-to-int v0, v0

    invoke-static {v2, v0}, Lorg/apache/tvm/rpc/Utils;->recvAll(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/tvm/TVMValueBytes;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, -0x1

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
