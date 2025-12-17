.class Lautovalue/shaded/com/google$/common/collect/$Range$RangeLexOrdering;
.super Lautovalue/shaded/com/google$/common/collect/$Ordering;
.source "$Range.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RangeLexOrdering"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$Ordering<",
        "Lautovalue/shaded/com/google$/common/collect/$Range<",
        "*>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lautovalue/shaded/com/google$/common/collect/$Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Ordering<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 717
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Range$RangeLexOrdering;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$Range$RangeLexOrdering;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$Range$RangeLexOrdering;->INSTANCE:Lautovalue/shaded/com/google$/common/collect/$Ordering;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 716
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$Ordering;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lautovalue/shaded/com/google$/common/collect/$Range;Lautovalue/shaded/com/google$/common/collect/$Range;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "*>;",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "*>;)I"
        }
    .end annotation

    .line 721
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;->start()Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;

    move-result-object v0

    iget-object v1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v2, p2, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 722
    invoke-virtual {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;

    move-result-object v0

    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object p2, p2, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 723
    invoke-virtual {v0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;

    move-result-object p1

    .line 724
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;->result()I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 716
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Range;

    check-cast p2, Lautovalue/shaded/com/google$/common/collect/$Range;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Range$RangeLexOrdering;->compare(Lautovalue/shaded/com/google$/common/collect/$Range;Lautovalue/shaded/com/google$/common/collect/$Range;)I

    move-result p1

    return p1
.end method
