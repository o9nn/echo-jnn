.class final Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
.source "$ImmutableMapValues.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues$SerializedForm;
    }
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


# instance fields
.field private final map:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues;->map:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    return-void
.end method

.method static synthetic access$000(Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 0

    .line 36
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues;->map:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    return-object p0
.end method

.method static synthetic lambda$forEach$0(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 100
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public asList()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues;->map:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 82
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->asList()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    .line 83
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues$2;

    invoke-direct {v1, p0, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues$2;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    return-object v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->contains(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 99
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues;->map:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 100
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
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

    .line 50
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues$1;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues;->map:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 45
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->size()I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues;->map:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 67
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators;->map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
