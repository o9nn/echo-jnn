.class Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset$1;
.super Ljava/lang/Object;
.source "$Multisets.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/base/$Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;->createEntrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lautovalue/shaded/com/google$/common/base/$Predicate<",
        "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;

    .line 333
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicate;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 330
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset$1;->apply(Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;)Z

    move-result p1

    return p1
.end method
