.class Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$1;
.super Ljava/lang/Object;
.source "$LinkedHashMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field nextEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;

.field toRemove:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->access$300(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;)Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    move-result-object p1

    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->successorInMultimap:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$1;->nextEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$1;->nextEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;

    .line 526
    invoke-static {v1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->access$300(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;)Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 520
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 531
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$1;->nextEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$1;->toRemove:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    .line 536
    iget-object v1, v0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->successorInMultimap:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    iput-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$1;->nextEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    return-object v0

    .line 532
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$1;->toRemove:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 542
    :goto_0
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkRemove(Z)V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$1;->toRemove:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    .line 543
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$1;->toRemove:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    invoke-virtual {v2}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$1;->toRemove:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    return-void
.end method
