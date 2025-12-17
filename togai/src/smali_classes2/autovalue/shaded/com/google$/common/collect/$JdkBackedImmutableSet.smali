.class final Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableSet;
.super Lautovalue/shaded/com/google$/common/collect/$IndexedImmutableSet;
.source "$JdkBackedImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$IndexedImmutableSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "*>;"
        }
    .end annotation
.end field

.field private final delegateList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TE;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$IndexedImmutableSet;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableSet;->delegate:Ljava/util/Set;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableSet;->delegateList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableSet;->delegate:Ljava/util/Set;

    .line 45
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableSet;->delegateList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 40
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableSet;->delegateList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 55
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result v0

    return v0
.end method
