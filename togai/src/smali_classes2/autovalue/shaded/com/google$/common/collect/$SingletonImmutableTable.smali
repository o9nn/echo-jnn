.class Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableTable;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableTable;
.source "$SingletonImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableTable<",
        "TR;TC;TV;>;"
    }
.end annotation


# instance fields
.field final singleColumnKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field final singleRowKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field final singleValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Table$Cell;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Table$Cell<",
            "TR;TC;TV;>;)V"
        }
    .end annotation

    .line 42
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableTable;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable;-><init>()V

    .line 36
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableTable;->singleRowKey:Ljava/lang/Object;

    .line 37
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableTable;->singleColumnKey:Ljava/lang/Object;

    .line 38
    invoke-static {p3}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableTable;->singleValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public column(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TR;TV;>;"
        }
    .end annotation

    .line 47
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableTable;->containsColumn(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableTable;->singleRowKey:Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableTable;->singleValue:Ljava/lang/Object;

    .line 49
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p1

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableTable;->column(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method public columnMap()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableTable;->singleColumnKey:Ljava/lang/Object;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableTable;->singleRowKey:Ljava/lang/Object;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableTable;->singleValue:Ljava/lang/Object;

    .line 55
    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v1

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic columnMap()Ljava/util/Map;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableTable;->columnMap()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method createCellSet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Lautovalue/shaded/com/google$/common/collect/$Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableTable;->singleRowKey:Ljava/lang/Object;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableTable;->singleColumnKey:Ljava/lang/Object;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableTable;->singleValue:Ljava/lang/Object;

    .line 70
    invoke-static {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableTable;->cellOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$Table$Cell;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createCellSet()Ljava/util/Set;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableTable;->createCellSet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method createSerializedForm()Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;
    .locals 2

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    filled-new-array {v0}, [I

    move-result-object v0

    .line 80
    invoke-static {p0, v1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;->create(Lautovalue/shaded/com/google$/common/collect/$ImmutableTable;[I[I)Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;

    move-result-object v0

    return-object v0
.end method

.method createValues()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableTable;->singleValue:Ljava/lang/Object;

    .line 75
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createValues()Ljava/util/Collection;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableTable;->createValues()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableTable;->singleRowKey:Ljava/lang/Object;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableTable;->singleColumnKey:Ljava/lang/Object;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableTable;->singleValue:Ljava/lang/Object;

    .line 60
    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v1

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableTable;->rowMap()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
