.class final Lautovalue/shaded/com/google$/common/collect/$ReverseOrdering;
.super Lautovalue/shaded/com/google$/common/collect/$Ordering;
.source "$ReverseOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$Ordering<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final forwardOrder:Lautovalue/shaded/com/google$/common/collect/$Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Ordering<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Ordering;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Ordering<",
            "-TT;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$Ordering;-><init>()V

    .line 32
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Ordering;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ReverseOrdering;->forwardOrder:Lautovalue/shaded/com/google$/common/collect/$Ordering;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ReverseOrdering;->forwardOrder:Lautovalue/shaded/com/google$/common/collect/$Ordering;

    .line 37
    invoke-virtual {v0, p2, p1}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 98
    :cond_0
    instance-of v0, p1, Lautovalue/shaded/com/google$/common/collect/$ReverseOrdering;

    if-eqz v0, :cond_1

    .line 99
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$ReverseOrdering;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ReverseOrdering;->forwardOrder:Lautovalue/shaded/com/google$/common/collect/$Ordering;

    .line 100
    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$ReverseOrdering;->forwardOrder:Lautovalue/shaded/com/google$/common/collect/$Ordering;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ReverseOrdering;->forwardOrder:Lautovalue/shaded/com/google$/common/collect/$Ordering;

    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public max(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable<",
            "TE;>;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ReverseOrdering;->forwardOrder:Lautovalue/shaded/com/google$/common/collect/$Ordering;

    .line 85
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->min(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ReverseOrdering;->forwardOrder:Lautovalue/shaded/com/google$/common/collect/$Ordering;

    .line 70
    invoke-virtual {v0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs max(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;TE;[TE;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ReverseOrdering;->forwardOrder:Lautovalue/shaded/com/google$/common/collect/$Ordering;

    .line 75
    invoke-virtual {v0, p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public max(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/util/Iterator<",
            "TE;>;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ReverseOrdering;->forwardOrder:Lautovalue/shaded/com/google$/common/collect/$Ordering;

    .line 80
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->min(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable<",
            "TE;>;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ReverseOrdering;->forwardOrder:Lautovalue/shaded/com/google$/common/collect/$Ordering;

    .line 65
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->max(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ReverseOrdering;->forwardOrder:Lautovalue/shaded/com/google$/common/collect/$Ordering;

    .line 50
    invoke-virtual {v0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs min(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;TE;[TE;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ReverseOrdering;->forwardOrder:Lautovalue/shaded/com/google$/common/collect/$Ordering;

    .line 55
    invoke-virtual {v0, p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/util/Iterator<",
            "TE;>;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ReverseOrdering;->forwardOrder:Lautovalue/shaded/com/google$/common/collect/$Ordering;

    .line 60
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->max(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reverse()Lautovalue/shaded/com/google$/common/collect/$Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lautovalue/shaded/com/google$/common/collect/$Ordering<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ReverseOrdering;->forwardOrder:Lautovalue/shaded/com/google$/common/collect/$Ordering;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ReverseOrdering;->forwardOrder:Lautovalue/shaded/com/google$/common/collect/$Ordering;

    .line 107
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".reverse()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
