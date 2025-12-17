.class public Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$StreamWriting;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamWriting"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final printStream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    .line 5461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    return-void
.end method

.method public static toSystemError()Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;
    .locals 2

    .line 5480
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$StreamWriting;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$StreamWriting;-><init>(Ljava/io/PrintStream;)V

    return-object v0
.end method

.method public static toSystemOut()Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;
    .locals 2

    .line 5471
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$StreamWriting;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$StreamWriting;-><init>(Ljava/io/PrintStream;)V

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
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$StreamWriting;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public onBatch(ILjava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    .line 5487
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[Byte Buddy] REDEFINE BATCH #%d [%d of %d type(s)]%n"

    invoke-virtual {v0, p2, p1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public onComplete(ILjava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    .line 5505
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[Byte Buddy] REDEFINE COMPLETE #%d batch(es) containing %d types [%d failed batch(es)]%n"

    invoke-virtual {v0, p2, p1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public onError(ILjava/util/List;Ljava/lang/Throwable;Ljava/util/List;)Ljava/lang/Iterable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    .line 5494
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const-string v2, "[Byte Buddy] REDEFINE ERROR #%d [%d of %d type(s)]%n"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 5495
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v3, p2

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    .line 5496
    invoke-virtual {p3, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 5497
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5498
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 5497
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
