.class Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$2;
.super Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
.source "$ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->valueIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

.field valueCollectionItr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field valueItr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$2;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    .line 694
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;-><init>()V

    .line 695
    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->map:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->values()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$2;->valueCollectionItr:Ljava/util/Iterator;

    .line 696
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->emptyIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$2;->valueItr:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$2;->valueItr:Ljava/util/Iterator;

    .line 700
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$2;->valueCollectionItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$2;->valueItr:Ljava/util/Iterator;

    .line 705
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$2;->valueCollectionItr:Ljava/util/Iterator;

    .line 706
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$2;->valueItr:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$2;->valueItr:Ljava/util/Iterator;

    .line 708
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
