.class final Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$AsRanges;
.super Lautovalue/shaded/com/google$/common/collect/$ForwardingCollection;
.source "$TreeRangeSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AsRanges"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$ForwardingCollection<",
        "Lautovalue/shaded/com/google$/common/collect/$Range<",
        "TC;>;>;",
        "Ljava/util/Set<",
        "Lautovalue/shaded/com/google$/common/collect/$Range<",
        "TC;>;>;"
    }
.end annotation


# instance fields
.field final delegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ForwardingCollection;-><init>()V

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$AsRanges;->delegate:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$AsRanges;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$AsRanges;->delegate:Ljava/util/Collection;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 116
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Sets;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 111
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
