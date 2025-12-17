.class Lautovalue/shaded/com/google$/common/collect/$RegularImmutableAsList;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableAsList;
.source "$RegularImmutableAsList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableAsList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final delegateList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection<",
            "TE;>;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "+TE;>;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableAsList;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableAsList;->delegate:Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableAsList;->delegateList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-void
.end method

.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection<",
            "TE;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->asImmutableList([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableAsList;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    return-void
.end method


# virtual methods
.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableAsList;->delegateList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 68
    invoke-virtual {v0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method delegateCollection()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableAsList;->delegate:Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    return-object v0
.end method

.method delegateList()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "+TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableAsList;->delegateList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableAsList;->delegateList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 62
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableAsList;->delegateList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 88
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method internalArray()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableAsList;->delegateList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 73
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->internalArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method internalArrayEnd()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableAsList;->delegateList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 83
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->internalArrayEnd()I

    move-result v0

    return v0
.end method

.method internalArrayStart()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableAsList;->delegateList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 78
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->internalArrayStart()I

    move-result v0

    return v0
.end method

.method public listIterator(I)Lautovalue/shaded/com/google$/common/collect/$UnmodifiableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lautovalue/shaded/com/google$/common/collect/$UnmodifiableListIterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableAsList;->delegateList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 56
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->listIterator(I)Lautovalue/shaded/com/google$/common/collect/$UnmodifiableListIterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableAsList;->listIterator(I)Lautovalue/shaded/com/google$/common/collect/$UnmodifiableListIterator;

    move-result-object p1

    return-object p1
.end method
