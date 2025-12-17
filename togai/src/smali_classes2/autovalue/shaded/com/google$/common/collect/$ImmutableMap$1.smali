.class Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$1;
.super Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
.source "$ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->keyIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic val$entryIterator:Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;)V
    .locals 0

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$1;->val$entryIterator:Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    .line 752
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$1;->val$entryIterator:Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    .line 755
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$1;->val$entryIterator:Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    .line 760
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
