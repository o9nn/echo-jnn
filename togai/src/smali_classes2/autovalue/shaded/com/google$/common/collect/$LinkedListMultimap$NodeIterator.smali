.class Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;
.super Ljava/lang/Object;
.source "$LinkedListMultimap.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NodeIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field current:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field expectedModCount:I

.field next:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field previous:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;I)V
    .locals 2

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->this$0:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;->access$000(Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;)I

    move-result v0

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->expectedModCount:I

    .line 316
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;->size()I

    move-result v0

    .line 317
    invoke-static {p2, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkPositionIndex(II)I

    .line 318
    div-int/lit8 v1, v0, 0x2

    if-lt p2, v1, :cond_0

    .line 319
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;->access$100(Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;)Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->previous:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->nextIndex:I

    :goto_0
    add-int/lit8 p1, p2, 0x1

    if-ge p2, v0, :cond_1

    .line 322
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->previous()Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    move p2, p1

    goto :goto_0

    .line 325
    :cond_0
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;->access$200(Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;)Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->next:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    :goto_1
    add-int/lit8 p1, p2, -0x1

    if-lez p2, :cond_1

    .line 327
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->next()Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    move p2, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->current:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    return-void
.end method

.method private checkForConcurrentModification()V
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->this$0:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;

    .line 334
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;->access$000(Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;)I

    move-result v0

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    return-void

    .line 335
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 308
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->add(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public add(Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 405
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hasNext()Z
    .locals 1

    .line 341
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->next:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 373
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->previous:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 348
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->next:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    .line 349
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;->access$300(Ljava/lang/Object;)V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->next:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->current:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->previous:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    .line 351
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;->next:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->next:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->nextIndex:I

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->current:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 308
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->next()Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->nextIndex:I

    return v0
.end method

.method public previous()Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 380
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->previous:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    .line 381
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;->access$300(Ljava/lang/Object;)V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->previous:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->current:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->next:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    .line 383
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;->previous:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->previous:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->nextIndex:I

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->current:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    return-object v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 308
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->previous()Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    .line 358
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->current:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 359
    :goto_0
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkRemove(Z)V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->current:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->next:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    if-eq v0, v2, :cond_1

    .line 361
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;->previous:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->previous:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->nextIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->nextIndex:I

    goto :goto_1

    .line 364
    :cond_1
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;->next:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->next:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    :goto_1
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->this$0:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->current:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    .line 366
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;->access$400(Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->current:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->this$0:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;

    .line 368
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;->access$000(Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;)I

    move-result v0

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->expectedModCount:I

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 308
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->set(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public set(Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 400
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->current:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 409
    :goto_0
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkState(Z)V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->current:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    .line 410
    iput-object p1, v0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;->value:Ljava/lang/Object;

    return-void
.end method
