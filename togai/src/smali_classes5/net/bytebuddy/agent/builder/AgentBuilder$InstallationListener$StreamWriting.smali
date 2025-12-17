.class public Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamWriting"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field protected static final PREFIX:Ljava/lang/String; = "[Byte Buddy]"


# instance fields
.field private final printStream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    .line 4266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    return-void
.end method

.method public static toSystemError()Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
    .locals 2

    .line 4285
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;-><init>(Ljava/io/PrintStream;)V

    return-object v0
.end method

.method public static toSystemOut()Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
    .locals 2

    .line 4276
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;-><init>(Ljava/io/PrintStream;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public onBeforeInstall(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const-string v1, "[Byte Buddy] BEFORE_INSTALL %s on %s%n"

    .line 4292
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public onError(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    .line 4306
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const-string v2, "[Byte Buddy] ERROR %s on %s%n"

    .line 4307
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    .line 4308
    invoke-virtual {p3, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 4309
    monitor-exit v0

    return-object p3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onInstall(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const-string v1, "[Byte Buddy] INSTALL %s on %s%n"

    .line 4299
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public onReset(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const-string v1, "[Byte Buddy] RESET %s on %s%n"

    .line 4317
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method
