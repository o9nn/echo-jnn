.class public Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PrependableIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/List<",
        "Ljava/lang/Class<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field private final backlog:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;>;"
        }
    .end annotation
.end field

.field private current:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;)V"
        }
    .end annotation

    .line 6908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6909
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;->current:Ljava/util/Iterator;

    .line 6910
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;->backlog:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;->current:Ljava/util/Iterator;

    .line 6932
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 6891
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;->next()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;->current:Ljava/util/Iterator;

    .line 6940
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;->current:Ljava/util/Iterator;

    .line 6942
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;->backlog:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;->backlog:Ljava/util/LinkedList;

    .line 6943
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    iput-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;->current:Ljava/util/Iterator;

    goto :goto_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    :goto_1
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;->current:Ljava/util/Iterator;

    .line 6942
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;->backlog:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;->backlog:Ljava/util/LinkedList;

    .line 6943
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    iput-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;->current:Ljava/util/Iterator;

    goto :goto_1

    .line 6945
    :cond_1
    throw v0
.end method

.method public prepend(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;)V"
        }
    .end annotation

    .line 6919
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 6920
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;->current:Ljava/util/Iterator;

    .line 6921
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;->backlog:Ljava/util/LinkedList;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;->current:Ljava/util/Iterator;

    .line 6922
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;->current:Ljava/util/Iterator;

    :cond_1
    return-void
.end method

.method public remove()V
    .locals 2

    .line 6952
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
