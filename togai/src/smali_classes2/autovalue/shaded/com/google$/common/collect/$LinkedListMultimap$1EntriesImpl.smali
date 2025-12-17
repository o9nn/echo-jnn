.class Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$1EntriesImpl;
.super Ljava/util/AbstractSequentialList;
.source "$LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;->createEntries()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntriesImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSequentialList<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$1EntriesImpl;->this$0:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;

    .line 791
    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 804
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$1EntriesImpl;->this$0:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;

    .line 805
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;->access$200(Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;)Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 806
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 805
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;->next:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 799
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$1EntriesImpl;->this$0:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;

    invoke-direct {v0, v1, p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;-><init>(Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$1EntriesImpl;->this$0:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;

    .line 794
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;->access$900(Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;)I

    move-result v0

    return v0
.end method
