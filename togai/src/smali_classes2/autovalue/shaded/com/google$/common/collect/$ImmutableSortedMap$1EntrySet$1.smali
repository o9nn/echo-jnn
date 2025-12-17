.class Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$1EntrySet$1;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableAsList;
.source "$ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$1EntrySet;->createAsList()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableAsList<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$1EntrySet;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$1EntrySet;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$1EntrySet$1;->this$1:Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$1EntrySet;

    .line 622
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method delegateCollection()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$1EntrySet$1;->this$1:Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$1EntrySet;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 622
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$1EntrySet$1;->get(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 625
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$1EntrySet$1;->this$1:Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$1EntrySet;

    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$1EntrySet;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    .line 626
    invoke-static {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->access$200(Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;)Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    move-result-object v1

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;->asList()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$1EntrySet$1;->this$1:Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$1EntrySet;

    iget-object v2, v2, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$1EntrySet;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    invoke-static {v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->access$300(Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 632
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$1EntrySet$1;->size()I

    move-result v0

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$1EntrySet$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$1EntrySet$1$$ExternalSyntheticLambda0;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$1EntrySet$1;)V

    const/16 v2, 0x511

    .line 631
    invoke-static {v0, v2, v1}, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators;->indexed(IILjava/util/function/IntFunction;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
