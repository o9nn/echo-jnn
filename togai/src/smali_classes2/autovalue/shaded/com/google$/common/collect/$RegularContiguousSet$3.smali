.class Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet$3;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableAsList;
.source "$RegularContiguousSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet;->createAsList()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableAsList<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet$3;->this$0:Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet;

    .line 125
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic delegateCollection()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet$3;->delegateCollection()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method delegateCollection()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet$3;->this$0:Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet;

    return-object v0
.end method

.method public get(I)Ljava/lang/Comparable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TC;"
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet$3;->size()I

    move-result v0

    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkElementIndex(II)I

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet$3;->this$0:Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet;

    .line 134
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet;->domain:Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet$3;->this$0:Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet;

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet;->first()Ljava/lang/Comparable;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;->offset(Ljava/lang/Comparable;J)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet$3;->get(I)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method
