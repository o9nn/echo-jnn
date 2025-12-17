.class Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap$1;
.super Lautovalue/shaded/com/google$/common/collect/$Maps$NavigableKeySet;
.source "$Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;->navigableKeySet()Ljava/util/NavigableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$Maps$NavigableKeySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;Ljava/util/NavigableMap;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;

    .line 3025
    invoke-direct {p0, p2}, Lautovalue/shaded/com/google$/common/collect/$Maps$NavigableKeySet;-><init>(Ljava/util/NavigableMap;)V

    return-void
.end method


# virtual methods
.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;

    .line 3028
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;->access$600(Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;

    invoke-static {v1}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;->access$500(Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;->removeAllKeys(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Predicate;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;

    .line 3033
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;->access$600(Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;

    invoke-static {v1}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;->access$500(Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;->retainAllKeys(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Predicate;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
