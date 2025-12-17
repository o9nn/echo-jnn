.class Lcom/google/auto/value/processor/TypeMirrorSet;
.super Ljava/util/AbstractSet;
.source "TypeMirrorSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljavax/lang/model/type/TypeMirror;",
        ">;"
    }
.end annotation


# instance fields
.field private final wrappers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/auto/value/processor/TypeMirrorSet;->wrappers:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/auto/value/processor/TypeMirrorSet;->wrappers:Ljava/util/Set;

    .line 39
    invoke-virtual {p0, p1}, Lcom/google/auto/value/processor/TypeMirrorSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static varargs of([Ljavax/lang/model/type/TypeMirror;)Lcom/google/auto/value/processor/TypeMirrorSet;
    .locals 1

    .line 43
    new-instance v0, Lcom/google/auto/value/processor/TypeMirrorSet;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->copyOf([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/auto/value/processor/TypeMirrorSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private wrap(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->equivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v0

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->wrap(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 33
    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1}, Lcom/google/auto/value/processor/TypeMirrorSet;->add(Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    return p1
.end method

.method public add(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/TypeMirrorSet;->wrappers:Ljava/util/Set;

    .line 52
    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/TypeMirrorSet;->wrap(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 83
    instance-of v0, p1, Ljavax/lang/model/type/TypeMirror;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/auto/value/processor/TypeMirrorSet;->wrappers:Ljava/util/Set;

    .line 84
    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/TypeMirrorSet;->wrap(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 101
    instance-of v0, p1, Lcom/google/auto/value/processor/TypeMirrorSet;

    if-eqz v0, :cond_0

    .line 102
    check-cast p1, Lcom/google/auto/value/processor/TypeMirrorSet;

    iget-object v0, p0, Lcom/google/auto/value/processor/TypeMirrorSet;->wrappers:Ljava/util/Set;

    .line 103
    iget-object p1, p1, Lcom/google/auto/value/processor/TypeMirrorSet;->wrappers:Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/TypeMirrorSet;->wrappers:Ljava/util/Set;

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/processor/TypeMirrorSet;->wrappers:Ljava/util/Set;

    .line 57
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/google/auto/value/processor/TypeMirrorSet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/auto/value/processor/TypeMirrorSet$1;-><init>(Lcom/google/auto/value/processor/TypeMirrorSet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 92
    instance-of v0, p1, Ljavax/lang/model/type/TypeMirror;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/auto/value/processor/TypeMirrorSet;->wrappers:Ljava/util/Set;

    .line 93
    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/TypeMirrorSet;->wrap(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/TypeMirrorSet;->wrappers:Ljava/util/Set;

    .line 78
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
