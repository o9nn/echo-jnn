.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;
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

    .line 1468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    return-void
.end method

.method public static toSystemError()Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;
    .locals 2

    .line 1487
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;-><init>(Ljava/io/PrintStream;)V

    return-object v0
.end method

.method public static toSystemOut()Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;
    .locals 2

    .line 1478
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;-><init>(Ljava/io/PrintStream;)V

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
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    .line 1543
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[Byte Buddy] COMPLETE %s [%s, %s, loaded=%b]%n"

    invoke-virtual {v0, p2, p1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public onDiscovery(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    .line 1512
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[Byte Buddy] DISCOVERY %s [%s, %s, loaded=%b]%n"

    invoke-virtual {v0, p2, p1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLjava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    .line 1533
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const-string v2, "[Byte Buddy] ERROR %s [%s, %s, loaded=%b]%n"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    const/4 p1, 0x2

    aput-object p3, v3, p1

    .line 1534
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v3, p2

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    .line 1535
    invoke-virtual {p5, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1536
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onIgnored(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    .line 1526
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[Byte Buddy] IGNORE %s [%s, %s, loaded=%b]%n"

    invoke-virtual {v0, p2, p1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public onTransformation(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLnet/bytebuddy/dynamic/DynamicType;)V
    .locals 0

    iget-object p5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    .line 1519
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[Byte Buddy] TRANSFORM %s [%s, %s, loaded=%b]%n"

    invoke-virtual {p5, p2, p1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public withErrorsOnly()Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;
    .locals 1

    .line 1505
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$WithErrorsOnly;

    invoke-direct {v0, p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$WithErrorsOnly;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;)V

    return-object v0
.end method

.method public withTransformationsOnly()Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;
    .locals 1

    .line 1496
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$WithTransformationsOnly;

    invoke-direct {v0, p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$WithTransformationsOnly;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;)V

    return-object v0
.end method
