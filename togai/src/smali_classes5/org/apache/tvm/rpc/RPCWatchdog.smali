.class public Lorg/apache/tvm/rpc/RPCWatchdog;
.super Ljava/lang/Thread;
.source "RPCWatchdog.java"


# instance fields
.field private started:Z

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tvm/rpc/RPCWatchdog;->timeout:I

    iput-boolean v0, p0, Lorg/apache/tvm/rpc/RPCWatchdog;->started:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized finishTimeout()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/tvm/rpc/RPCWatchdog;->started:Z

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .line 55
    :goto_0
    monitor-enter p0

    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tvm/rpc/RPCWatchdog;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 58
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 60
    :catch_0
    :try_start_2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "watchdog interrupted..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 63
    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    monitor-enter p0

    :goto_2
    :try_start_3
    iget-boolean v0, p0, Lorg/apache/tvm/rpc/RPCWatchdog;->started:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_2

    .line 67
    :try_start_4
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget v1, p0, Lorg/apache/tvm/rpc/RPCWatchdog;->timeout:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waiting for timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/tvm/rpc/RPCWatchdog;->timeout:I

    int-to-long v0, v0

    .line 68
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    iget-boolean v0, p0, Lorg/apache/tvm/rpc/RPCWatchdog;->started:Z

    if-nez v0, :cond_1

    .line 70
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "watchdog woken up, ok..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 72
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "watchdog woke up!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "terminating..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lorg/apache/tvm/rpc/RPCWatchdog;->terminate()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 77
    :catch_1
    :try_start_5
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "watchdog interrupted..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 80
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 63
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public declared-synchronized startTimeout(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/apache/tvm/rpc/RPCWatchdog;->timeout:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/tvm/rpc/RPCWatchdog;->started:Z

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected terminate()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
