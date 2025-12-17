.class Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;
.super Ljava/util/AbstractCollection;
.source "$AbstractMapBasedMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrappedCollection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final ancestor:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap<",
            "TK;TV;>.WrappedCollection;"
        }
    .end annotation
.end field

.field final ancestorDelegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field delegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Collection;Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;",
            "Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap<",
            "TK;TV;>.WrappedCollection;)V"
        }
    .end annotation

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->this$0:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;

    .line 330
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->key:Ljava/lang/Object;

    iput-object p3, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    iput-object p4, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {p4}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->getDelegate()Ljava/util/Collection;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->ancestorDelegate:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 481
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 482
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 483
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->this$0:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;

    .line 485
    invoke-static {v1}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;->access$208(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;)I

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->addToMap()V

    :cond_0
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 501
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 504
    :cond_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->size()I

    move-result v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 505
    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 507
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->this$0:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;

    sub-int/2addr v1, v0

    .line 508
    invoke-static {v2, v1}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;->access$212(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;I)I

    if-nez v0, :cond_1

    .line 510
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->addToMap()V

    :cond_1
    return p1
.end method

.method addToMap()V
    .locals 3

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->addToMap()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->this$0:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;

    .line 384
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;->access$000(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->key:Ljava/lang/Object;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public clear()V
    .locals 2

    .line 530
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 534
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->this$0:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;

    .line 535
    invoke-static {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;->access$220(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;I)I

    .line 536
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 518
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 519
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 524
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 525
    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 399
    :cond_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 400
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method getAncestor()Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap<",
            "TK;TV;>.WrappedCollection;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;

    return-object v0
.end method

.method getDelegate()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    return-object v0
.end method

.method getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 405
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 406
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 421
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 422
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;-><init>(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;)V

    return-object v0
.end method

.method refreshIfEmpty()V
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;

    .line 347
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->getDelegate()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->ancestorDelegate:Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 350
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->this$0:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;

    .line 351
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;->access$000(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    :cond_2
    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 541
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 542
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->this$0:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;

    .line 544
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;->access$210(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;)I

    .line 545
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    :cond_0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 552
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 555
    :cond_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->size()I

    move-result v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 556
    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 558
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->this$0:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;

    sub-int/2addr v1, v0

    .line 559
    invoke-static {v2, v1}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;->access$212(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;I)I

    .line 560
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    :cond_1
    return p1
.end method

.method removeIfEmpty()V
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 365
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->this$0:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;

    .line 366
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;->access$000(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 567
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->size()I

    move-result v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 569
    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 571
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->this$0:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;

    sub-int/2addr v1, v0

    .line 572
    invoke-static {v2, v1}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;->access$212(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;I)I

    .line 573
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    :cond_0
    return p1
.end method

.method public size()I
    .locals 1

    .line 390
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 391
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TV;>;"
        }
    .end annotation

    .line 427
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 428
    invoke-interface {v0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 411
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 412
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
