.class Lautovalue/shaded/com/google$/common/base/$Predicates$CompositionPredicate;
.super Ljava/lang/Object;
.source "$Predicates.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/base/$Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/base/$Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompositionPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lautovalue/shaded/com/google$/common/base/$Predicate<",
        "TA;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final f:Lautovalue/shaded/com/google$/common/base/$Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "TA;+TB;>;"
        }
    .end annotation
.end field

.field final p:Lautovalue/shaded/com/google$/common/base/$Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "TB;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "TB;>;",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "TA;+TB;>;)V"
        }
    .end annotation

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/base/$Predicate;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/base/$Predicates$CompositionPredicate;->p:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 591
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/base/$Function;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/base/$Predicates$CompositionPredicate;->f:Lautovalue/shaded/com/google$/common/base/$Function;

    return-void
.end method

.method synthetic constructor <init>(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Function;Lautovalue/shaded/com/google$/common/base/$Predicates$1;)V
    .locals 0

    .line 585
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/base/$Predicates$CompositionPredicate;-><init>(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Function;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$Predicates$CompositionPredicate;->p:Lautovalue/shaded/com/google$/common/base/$Predicate;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/base/$Predicates$CompositionPredicate;->f:Lautovalue/shaded/com/google$/common/base/$Function;

    .line 596
    invoke-interface {v1, p1}, Lautovalue/shaded/com/google$/common/base/$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicate;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 601
    instance-of v0, p1, Lautovalue/shaded/com/google$/common/base/$Predicates$CompositionPredicate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 602
    check-cast p1, Lautovalue/shaded/com/google$/common/base/$Predicates$CompositionPredicate;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$Predicates$CompositionPredicate;->f:Lautovalue/shaded/com/google$/common/base/$Function;

    .line 603
    iget-object v2, p1, Lautovalue/shaded/com/google$/common/base/$Predicates$CompositionPredicate;->f:Lautovalue/shaded/com/google$/common/base/$Function;

    invoke-interface {v0, v2}, Lautovalue/shaded/com/google$/common/base/$Function;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$Predicates$CompositionPredicate;->p:Lautovalue/shaded/com/google$/common/base/$Predicate;

    iget-object p1, p1, Lautovalue/shaded/com/google$/common/base/$Predicates$CompositionPredicate;->p:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicate;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$Predicates$CompositionPredicate;->f:Lautovalue/shaded/com/google$/common/base/$Function;

    .line 610
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/base/$Predicates$CompositionPredicate;->p:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$Predicates$CompositionPredicate;->p:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 616
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/base/$Predicates$CompositionPredicate;->f:Lautovalue/shaded/com/google$/common/base/$Function;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
