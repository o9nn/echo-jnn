.class public Lorg/mockito/internal/junit/UnusedStubbings;
.super Ljava/lang/Object;
.source "UnusedStubbings.java"


# instance fields
.field private final unused:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lorg/mockito/stubbing/Stubbing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/mockito/stubbing/Stubbing;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/junit/UnusedStubbings;->unused:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method format(Ljava/lang/String;Lorg/mockito/plugins/MockitoLogger;)V
    .locals 5

    iget-object v0, p0, Lorg/mockito/internal/junit/UnusedStubbings;->unused:Ljava/util/Collection;

    .line 28
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 32
    :cond_0
    new-instance v0, Lorg/mockito/internal/junit/StubbingHint;

    invoke-direct {v0, p1}, Lorg/mockito/internal/junit/StubbingHint;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mockito/internal/junit/UnusedStubbings;->unused:Ljava/util/Collection;

    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/stubbing/Stubbing;

    .line 35
    invoke-interface {v2}, Lorg/mockito/stubbing/Stubbing;->wasUsed()Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v2

    invoke-interface {v2}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v2

    const-string v4, ". Unused "

    filled-new-array {v1, v4, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mockito/internal/junit/StubbingHint;->appendLine([Ljava/lang/Object;)V

    move v1, v3

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v0}, Lorg/mockito/internal/junit/StubbingHint;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/mockito/plugins/MockitoLogger;->log(Ljava/lang/Object;)V

    return-void
.end method

.method reportUnused()V
    .locals 3

    iget-object v0, p0, Lorg/mockito/internal/junit/UnusedStubbings;->unused:Ljava/util/Collection;

    .line 51
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lorg/mockito/internal/junit/UnusedStubbings;->unused:Ljava/util/Collection;

    .line 56
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/stubbing/Stubbing;

    .line 57
    invoke-interface {v2}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 63
    :cond_2
    invoke-static {v0}, Lorg/mockito/internal/exceptions/Reporter;->unncessaryStubbingException(Ljava/util/List;)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/junit/UnusedStubbings;->unused:Ljava/util/Collection;

    .line 43
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/junit/UnusedStubbings;->unused:Ljava/util/Collection;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
