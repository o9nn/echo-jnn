.class Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntrySet;
.source "$ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$IteratorBasedImmutableMap;->createEntrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySetImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$IteratorBasedImmutableMap;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$IteratorBasedImmutableMap;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$IteratorBasedImmutableMap;

    .line 492
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntrySet;-><init>()V

    return-void
.end method


# virtual methods
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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$IteratorBasedImmutableMap;

    .line 500
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$IteratorBasedImmutableMap;->entryIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 492
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$IteratorBasedImmutableMap;

    return-object v0
.end method
