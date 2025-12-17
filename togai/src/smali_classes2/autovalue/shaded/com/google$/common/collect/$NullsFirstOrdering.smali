.class final Lautovalue/shaded/com/google$/common/collect/$NullsFirstOrdering;
.super Lautovalue/shaded/com/google$/common/collect/$Ordering;
.source "$NullsFirstOrdering.java"

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
.field final ordering:Lautovalue/shaded/com/google$/common/collect/$Ordering;
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

    .line 28
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$Ordering;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$NullsFirstOrdering;->ordering:Lautovalue/shaded/com/google$/common/collect/$Ordering;

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

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$NullsFirstOrdering;->ordering:Lautovalue/shaded/com/google$/common/collect/$Ordering;

    .line 43
    invoke-virtual {v0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 68
    :cond_0
    instance-of v0, p1, Lautovalue/shaded/com/google$/common/collect/$NullsFirstOrdering;

    if-eqz v0, :cond_1

    .line 69
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$NullsFirstOrdering;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$NullsFirstOrdering;->ordering:Lautovalue/shaded/com/google$/common/collect/$Ordering;

    .line 70
    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$NullsFirstOrdering;->ordering:Lautovalue/shaded/com/google$/common/collect/$Ordering;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$NullsFirstOrdering;->ordering:Lautovalue/shaded/com/google$/common/collect/$Ordering;

    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x39153a74

    xor-int/2addr v0, v1

    return v0
.end method

.method public nullsFirst()Lautovalue/shaded/com/google$/common/collect/$Ordering;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lautovalue/shaded/com/google$/common/collect/$Ordering<",
            "TS;>;"
        }
    .end annotation

    return-object p0
.end method

.method public nullsLast()Lautovalue/shaded/com/google$/common/collect/$Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lautovalue/shaded/com/google$/common/collect/$Ordering<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$NullsFirstOrdering;->ordering:Lautovalue/shaded/com/google$/common/collect/$Ordering;

    .line 60
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->nullsLast()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    return-object v0
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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$NullsFirstOrdering;->ordering:Lautovalue/shaded/com/google$/common/collect/$Ordering;

    .line 49
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->reverse()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->nullsLast()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$NullsFirstOrdering;->ordering:Lautovalue/shaded/com/google$/common/collect/$Ordering;

    .line 82
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".nullsFirst()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
