.class final Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$Complement;
.super Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;
.source "$TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Complement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;)V
    .locals 1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$Complement;->this$0:Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;

    .line 650
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;

    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-direct {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;-><init>(Ljava/util/NavigableMap;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;-><init>(Ljava/util/NavigableMap;Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$1;)V

    return-void
.end method


# virtual methods
.method public add(Lautovalue/shaded/com/google$/common/collect/$Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$Complement;->this$0:Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;

    .line 655
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->remove(Lautovalue/shaded/com/google$/common/collect/$Range;)V

    return-void
.end method

.method public complement()Lautovalue/shaded/com/google$/common/collect/$RangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$RangeSet<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$Complement;->this$0:Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;

    return-object v0
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$Complement;->this$0:Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;

    .line 665
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public remove(Lautovalue/shaded/com/google$/common/collect/$Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$Complement;->this$0:Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;

    .line 660
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->add(Lautovalue/shaded/com/google$/common/collect/$Range;)V

    return-void
.end method
