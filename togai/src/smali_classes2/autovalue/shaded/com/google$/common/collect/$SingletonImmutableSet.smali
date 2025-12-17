.class final Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableSet;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
.source "$SingletonImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient cachedHashCode:I
    .annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/concurrent/$LazyInit;
    .end annotation
.end field

.field final transient element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;-><init>()V

    .line 44
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableSet;->element:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableSet;->element:Ljava/lang/Object;

    iput p2, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableSet;->cachedHashCode:I

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableSet;->element:Ljava/lang/Object;

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableSet;->element:Ljava/lang/Object;

    .line 80
    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method createAsList()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableSet;->element:Ljava/lang/Object;

    .line 70
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableSet;->cachedHashCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableSet;->element:Ljava/lang/Object;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableSet;->cachedHashCode:I

    :cond_0
    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableSet;->cachedHashCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableSet;->element:Ljava/lang/Object;

    .line 65
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->singletonIterator(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableSet;->element:Ljava/lang/Object;

    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
