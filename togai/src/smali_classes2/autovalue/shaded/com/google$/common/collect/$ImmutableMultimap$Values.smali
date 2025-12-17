.class final Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Values;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
.source "$ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient multimap:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 716
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Values;->multimap:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Values;->multimap:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    .line 722
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Values;->multimap:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    .line 733
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->map:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->values()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    .line 734
    invoke-virtual {v1, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p2

    goto :goto_0

    :cond_0
    return p2
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Values;->multimap:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    .line 727
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->valueIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 713
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Values;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Values;->multimap:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    .line 741
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->size()I

    move-result v0

    return v0
.end method
