.class public Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;
.super Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;
.source "VirtualMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnUnix"
.end annotation


# static fields
.field private static final ATTACH_FILE_PREFIX:Ljava/lang/String; = ".attach_pid"

.field private static final DEFAULT_ATTEMPTS:I = 0xa

.field private static final DEFAULT_PAUSE:J = 0xc8L

.field private static final DEFAULT_TIMEOUT:J = 0x1388L

.field private static final SOCKET_FILE_PREFIX:Ljava/lang/String; = ".java_pid"

.field private static final TEMPORARY_DIRECTORY:Ljava/lang/String; = "/tmp"


# instance fields
.field private final attempts:I

.field private final pause:J

.field private final socket:Ljava/lang/Object;

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;

.field private final timeout:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;IJJLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 247
    invoke-direct {p0, p1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->socket:Ljava/lang/Object;

    iput p3, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->attempts:I

    iput-wide p4, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->pause:J

    iput-wide p6, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->timeout:J

    iput-object p8, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->timeUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public static assertAvailability()Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    const-string v0, "java.lang.Module"

    .line 264
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 265
    const-class v1, Ljava/lang/Class;

    const-string v2, "getModule"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "canRead"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v0, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-class v5, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;

    new-array v6, v3, [Ljava/lang/Object;

    .line 266
    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-class v6, Lorg/newsclub/net/unix/AFUNIXSocket;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 267
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "addReads"

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v0, v4, v3

    .line 268
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_0
    invoke-static {}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->doAssertAvailability()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 272
    :catch_0
    invoke-static {}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->doAssertAvailability()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static attach(Ljava/lang/String;)Lnet/bytebuddy/agent/VirtualMachine;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    new-instance v9, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;

    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSocket;->newInstance()Lorg/newsclub/net/unix/AFUNIXSocket;

    move-result-object v2

    const/16 v3, 0xa

    const-wide/16 v4, 0xc8

    const-wide/16 v6, 0x1388

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;-><init>(Ljava/lang/String;Ljava/lang/Object;IJJLjava/util/concurrent/TimeUnit;)V

    return-object v9
.end method

.method private static doAssertAvailability()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 282
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSocket;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "java.vm.name"

    .line 284
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hotspot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;

    return-object v0

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot apply attachment on non-Hotspot compatible VM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "POSIX sockets are not supported on the current system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected connect()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Could not create attach file: "

    const-string v1, "kill -3 "

    .line 307
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ".java_pid"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->processId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/tmp"

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, ".attach_pid"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->processId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/proc/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->processId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cwd/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 310
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :catch_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 318
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    :cond_2
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->processId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->attempts:I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v3
    :try_end_2
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_5

    :try_start_3
    iget v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->attempts:I

    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_3

    .line 342
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->pause:J

    .line 343
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    move v0, v1

    goto :goto_2

    .line 345
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_4

    .line 351
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_8

    .line 352
    invoke-virtual {v6}, Ljava/io/File;->deleteOnExit()V

    goto :goto_4

    .line 346
    :cond_4
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target VM did not respond: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->processId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 329
    :cond_5
    :try_start_5
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while sending signal to target VM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->processId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    add-int/lit8 v1, v1, -0x1

    :try_start_6
    iget-object v3, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->pause:J

    .line 335
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    if-lez v1, :cond_6

    goto :goto_1

    .line 339
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target VM did not respond to signal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->processId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    .line 349
    :try_start_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Interrupted during wait for process"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 351
    :goto_3
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_7

    .line 352
    invoke-virtual {v6}, Ljava/io/File;->deleteOnExit()V

    .line 354
    :cond_7
    throw v0

    :cond_8
    :goto_4
    iget-wide v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->timeout:J

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->socket:Ljava/lang/Object;

    .line 357
    check-cast v3, Lorg/newsclub/net/unix/AFUNIXSocket;

    iget-object v4, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {v3, v0}, Lorg/newsclub/net/unix/AFUNIXSocket;->setSoTimeout(I)V

    :cond_9
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->socket:Ljava/lang/Object;

    .line 359
    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocket;

    new-instance v1, Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    invoke-direct {v1, v2}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lorg/newsclub/net/unix/AFUNIXSocket;->connect(Ljava/net/SocketAddress;)V

    return-void
.end method

.method public detach()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->socket:Ljava/lang/Object;

    .line 380
    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFUNIXSocket;->close()V

    return-void
.end method

.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->socket:Ljava/lang/Object;

    .line 366
    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFUNIXSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->socket:Ljava/lang/Object;

    .line 373
    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFUNIXSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
