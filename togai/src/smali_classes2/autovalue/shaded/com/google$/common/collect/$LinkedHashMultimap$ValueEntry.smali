.class final Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableEntry;
.source "$LinkedHashMultimap.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ValueEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableEntry<",
        "TK;TV;>;",
        "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field nextInValueBucket:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field predecessorInMultimap:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field predecessorInValueSet:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final smearedValueHash:I

.field successorInMultimap:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field successorInValueSet:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput p3, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->smearedValueHash:I

    iput-object p4, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    return-void
.end method


# virtual methods
.method public getPredecessorInMultimap()Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->predecessorInMultimap:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    return-object v0
.end method

.method public getPredecessorInValueSet()Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->predecessorInValueSet:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    return-object v0
.end method

.method public getSuccessorInMultimap()Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->successorInMultimap:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    return-object v0
.end method

.method public getSuccessorInValueSet()Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->successorInValueSet:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    return-object v0
.end method

.method matchesValue(Ljava/lang/Object;I)Z
    .locals 1

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->smearedValueHash:I

    if-ne v0, p2, :cond_0

    .line 175
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p1}, Lautovalue/shaded/com/google$/common/base/$Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setPredecessorInMultimap(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->predecessorInMultimap:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    return-void
.end method

.method public setPredecessorInValueSet(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->predecessorInValueSet:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    return-void
.end method

.method public setSuccessorInMultimap(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->successorInMultimap:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    return-void
.end method

.method public setSuccessorInValueSet(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->successorInValueSet:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    return-void
.end method
