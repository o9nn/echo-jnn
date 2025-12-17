.class final Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntrySet$RegularEntrySet;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntrySet;
.source "$ImmutableMapEntrySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RegularEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient entries:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final transient map:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntrySet;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntrySet$RegularEntrySet;->map:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntrySet$RegularEntrySet;->entries:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-void
.end method

.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;[Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;TV;>;[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 40
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->asImmutableList([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntrySet$RegularEntrySet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    return-void
.end method


# virtual methods
.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntrySet$RegularEntrySet;->entries:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 56
    invoke-virtual {v0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method createAsList()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 76
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableAsList;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntrySet$RegularEntrySet;->entries:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableAsList;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntrySet$RegularEntrySet;->entries:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 71
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntrySet$RegularEntrySet;->entries:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 61
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntrySet$RegularEntrySet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method map()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntrySet$RegularEntrySet;->map:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntrySet$RegularEntrySet;->entries:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 66
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
