.class Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnKeyIterator;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractIterator;
.source "$StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$StandardTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColumnKeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$AbstractIterator<",
        "TC;>;"
    }
.end annotation


# instance fields
.field entryIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field

.field final mapIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field

.field final seen:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$StandardTable;


# direct methods
.method private constructor <init>(Lautovalue/shaded/com/google$/common/collect/$StandardTable;)V
    .locals 1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnKeyIterator;->this$0:Lautovalue/shaded/com/google$/common/collect/$StandardTable;

    .line 715
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractIterator;-><init>()V

    .line 718
    iget-object v0, p1, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->factory:Lautovalue/shaded/com/google$/common/base/$Supplier;

    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/base/$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnKeyIterator;->seen:Ljava/util/Map;

    .line 719
    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnKeyIterator;->mapIterator:Ljava/util/Iterator;

    .line 720
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->emptyIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnKeyIterator;->entryIterator:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lautovalue/shaded/com/google$/common/collect/$StandardTable;Lautovalue/shaded/com/google$/common/collect/$StandardTable$1;)V
    .locals 0

    .line 715
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnKeyIterator;-><init>(Lautovalue/shaded/com/google$/common/collect/$StandardTable;)V

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnKeyIterator;->entryIterator:Ljava/util/Iterator;

    .line 725
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnKeyIterator;->entryIterator:Ljava/util/Iterator;

    .line 726
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnKeyIterator;->seen:Ljava/util/Map;

    .line 727
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnKeyIterator;->seen:Ljava/util/Map;

    .line 728
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnKeyIterator;->mapIterator:Ljava/util/Iterator;

    .line 731
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnKeyIterator;->mapIterator:Ljava/util/Iterator;

    .line 732
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnKeyIterator;->entryIterator:Ljava/util/Iterator;

    goto :goto_0

    .line 734
    :cond_2
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnKeyIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
