.class Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$1ValuesImpl$1;
.super Lautovalue/shaded/com/google$/common/collect/$TransformedListIterator;
.source "$LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$1ValuesImpl;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$TransformedListIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$nodeItr:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$1ValuesImpl;Ljava/util/ListIterator;Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;)V
    .locals 0

    iput-object p3, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$1ValuesImpl$1;->val$nodeItr:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;

    .line 751
    invoke-direct {p0, p2}, Lautovalue/shaded/com/google$/common/collect/$TransformedListIterator;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$1ValuesImpl$1;->val$nodeItr:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;

    .line 759
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$NodeIterator;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 751
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$1ValuesImpl$1;->transform(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method transform(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 754
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
