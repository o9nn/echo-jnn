.class final Lautovalue/shaded/com/google$/common/collect/$ComparisonChain$InactiveComparisonChain;
.super Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;
.source "$ComparisonChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InactiveComparisonChain"
.end annotation


# instance fields
.field final result:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;-><init>(Lautovalue/shaded/com/google$/common/collect/$ComparisonChain$1;)V

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$ComparisonChain$InactiveComparisonChain;->result:I

    return-void
.end method


# virtual methods
.method public compare(DD)Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;
    .locals 0

    return-object p0
.end method

.method public compare(FF)Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;
    .locals 0

    return-object p0
.end method

.method public compare(II)Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;
    .locals 0

    return-object p0
.end method

.method public compare(JJ)Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;
    .locals 0

    return-object p0
.end method

.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;
    .locals 0

    return-object p0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;"
        }
    .end annotation

    return-object p0
.end method

.method public compareFalseFirst(ZZ)Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;
    .locals 0

    return-object p0
.end method

.method public compareTrueFirst(ZZ)Lautovalue/shaded/com/google$/common/collect/$ComparisonChain;
    .locals 0

    return-object p0
.end method

.method public result()I
    .locals 1

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ComparisonChain$InactiveComparisonChain;->result:I

    return v0
.end method
