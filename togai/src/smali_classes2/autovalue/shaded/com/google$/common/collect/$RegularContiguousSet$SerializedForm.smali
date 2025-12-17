.class final Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet$SerializedForm;
.super Ljava/lang/Object;
.source "$RegularContiguousSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet;
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
.field final domain:Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain<",
            "TC;>;"
        }
    .end annotation
.end field

.field final range:Lautovalue/shaded/com/google$/common/collect/$Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Range;Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;",
            "Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain<",
            "TC;>;)V"
        }
    .end annotation

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet$SerializedForm;->range:Lautovalue/shaded/com/google$/common/collect/$Range;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet$SerializedForm;->domain:Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;

    return-void
.end method

.method synthetic constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Range;Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet$1;)V
    .locals 0

    .line 217
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet$SerializedForm;-><init>(Lautovalue/shaded/com/google$/common/collect/$Range;Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    .line 227
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet$SerializedForm;->range:Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet$SerializedForm;->domain:Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$RegularContiguousSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$Range;Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;)V

    return-object v0
.end method
