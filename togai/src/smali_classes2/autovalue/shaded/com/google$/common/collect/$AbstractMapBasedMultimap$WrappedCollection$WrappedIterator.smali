.class Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;
.super Ljava/lang/Object;
.source "$AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrappedIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final delegateIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field

.field final originalDelegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;)V
    .locals 1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iget-object v0, p1, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->originalDelegate:Ljava/util/Collection;

    .line 437
    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;->access$100(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    return-void
.end method

.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->originalDelegate:Ljava/util/Collection;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method getDelegateIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 474
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->validateIterator()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 456
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->validateIterator()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    .line 457
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 462
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->validateIterator()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    .line 463
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    .line 468
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;

    .line 469
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->this$0:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;->access$210(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;)I

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;

    .line 470
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    return-void
.end method

.method validateIterator()V
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;

    .line 448
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;

    .line 449
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->originalDelegate:Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    return-void

    .line 450
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
