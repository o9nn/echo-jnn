.class final Lautovalue/shaded/com/google$/common/collect/$Collections2$PermutationCollection;
.super Ljava/util/AbstractCollection;
.source "$Collections2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Collections2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermutationCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final inputList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TE;>;"
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
            "TE;>;)V"
        }
    .end annotation

    .line 583
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$PermutationCollection;->inputList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 604
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 605
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$PermutationCollection;->inputList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 606
    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Collections2;->access$000(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .line 599
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Collections2$PermutationIterator;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$PermutationCollection;->inputList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Collections2$PermutationIterator;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$PermutationCollection;->inputList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 589
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/math/$IntMath;->factorial(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$PermutationCollection;->inputList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 613
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xe

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "permutations("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
