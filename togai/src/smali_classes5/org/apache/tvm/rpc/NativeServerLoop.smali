.class public Lorg/apache/tvm/rpc/NativeServerLoop;
.super Ljava/lang/Object;
.source "NativeServerLoop.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final frecv:Lorg/apache/tvm/Function;

.field private final fsend:Lorg/apache/tvm/Function;


# direct methods
.method public constructor <init>(Lorg/apache/tvm/Function;Lorg/apache/tvm/Function;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tvm/rpc/NativeServerLoop;->fsend:Lorg/apache/tvm/Function;

    iput-object p2, p0, Lorg/apache/tvm/rpc/NativeServerLoop;->frecv:Lorg/apache/tvm/Function;

    return-void
.end method

.method private static serverEnv()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "tvm4j_rpc_"

    const-string v1, ""

    .line 73
    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    new-instance v1, Lorg/apache/tvm/rpc/NativeServerLoop$1;

    invoke-direct {v1, v0}, Lorg/apache/tvm/rpc/NativeServerLoop$1;-><init>(Ljava/io/File;)V

    const-string v2, "tvm.rpc.server.workpath"

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lorg/apache/tvm/Function;->register(Ljava/lang/String;Lorg/apache/tvm/Function$Callback;Z)V

    .line 84
    new-instance v1, Lorg/apache/tvm/rpc/NativeServerLoop$2;

    invoke-direct {v1, v0}, Lorg/apache/tvm/rpc/NativeServerLoop$2;-><init>(Ljava/io/File;)V

    const-string v2, "tvm.rpc.server.load_module"

    invoke-static {v2, v1, v3}, Lorg/apache/tvm/Function;->register(Ljava/lang/String;Lorg/apache/tvm/Function$Callback;Z)V

    return-object v0

    .line 75
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t create directory "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "[WARN] Couldn\'t delete temporary file "

    const-string v1, "[WARN] Couldn\'t delete temporary directory "

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 47
    :try_start_0
    invoke-static {}, Lorg/apache/tvm/rpc/NativeServerLoop;->serverEnv()Ljava/io/File;

    move-result-object v3

    .line 48
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "starting server loop..."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v4, "ServerLoop"

    .line 49
    invoke-static {v4}, Lorg/apache/tvm/rpc/RPC;->getApi(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/tvm/rpc/NativeServerLoop;->fsend:Lorg/apache/tvm/Function;

    invoke-virtual {v4, v5}, Lorg/apache/tvm/Function;->pushArg(Lorg/apache/tvm/Function;)Lorg/apache/tvm/Function;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/tvm/rpc/NativeServerLoop;->frecv:Lorg/apache/tvm/Function;

    invoke-virtual {v4, v5}, Lorg/apache/tvm/Function;->pushArg(Lorg/apache/tvm/Function;)Lorg/apache/tvm/Function;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    .line 50
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "done server loop..."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    .line 55
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 56
    array-length v5, v4

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 57
    new-instance v7, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 59
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 60
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 59
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 64
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 65
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v4

    goto :goto_4

    :catch_0
    move-exception v4

    .line 52
    :try_start_1
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_4

    .line 55
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 56
    array-length v5, v4

    :goto_2
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    .line 57
    new-instance v7, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_2

    .line 59
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 60
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 59
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 63
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 64
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 65
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_3
    return-void

    :goto_4
    if-eqz v3, :cond_7

    .line 55
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 56
    array-length v6, v5

    :goto_5
    if-ge v2, v6, :cond_6

    aget-object v7, v5, v2

    .line 57
    new-instance v8, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_5

    .line 59
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 60
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 59
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 63
    :cond_6
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_7

    .line 64
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 65
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    :cond_7
    throw v4
.end method
