.class final Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$SerializedForm;
.super Ljava/lang/Object;
.source "$ImmutableRangeSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$SerializedForm;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$SerializedForm;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 823
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$SerializedForm;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 825
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Range;->all()Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v1

    invoke-static {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 826
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->all()Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    move-result-object v0

    return-object v0

    .line 828
    :cond_1
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$SerializedForm;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    return-object v0
.end method
