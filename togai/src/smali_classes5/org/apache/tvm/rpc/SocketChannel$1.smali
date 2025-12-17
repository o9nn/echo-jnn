.class Lorg/apache/tvm/rpc/SocketChannel$1;
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

    iput-object p1, p0, Lorg/apache/tvm/rpc/SocketChannel$1;->this$0:Lorg/apache/tvm/rpc/SocketChannel;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs invoke([Lorg/apache/tvm/TVMValue;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 38
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/apache/tvm/TVMValue;->asBytes()[B

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lorg/apache/tvm/rpc/SocketChannel$1;->this$0:Lorg/apache/tvm/rpc/SocketChannel;

    .line 40
    invoke-static {v0}, Lorg/apache/tvm/rpc/SocketChannel;->-$$Nest$fgetsocket(Lorg/apache/tvm/rpc/SocketChannel;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, -0x1

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
