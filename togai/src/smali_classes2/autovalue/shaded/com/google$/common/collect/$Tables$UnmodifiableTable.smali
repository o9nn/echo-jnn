.class Lautovalue/shaded/com/google$/common/collect/$Tables$UnmodifiableTable;
.super Lautovalue/shaded/com/google$/common/collect/$ForwardingTable;
.source "$Tables.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Tables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ForwardingTable<",
        "TR;TC;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lautovalue/shaded/com/google$/common/collect/$Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "+TR;+TC;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Table;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "+TR;+TC;+TV;>;)V"
        }
    .end annotation

    .line 515
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ForwardingTable;-><init>()V

    .line 516
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Table;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$UnmodifiableTable;->delegate:Lautovalue/shaded/com/google$/common/collect/$Table;

    return-void
.end method


# virtual methods
.method public cellSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lautovalue/shaded/com/google$/common/collect/$Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 527
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$ForwardingTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 532
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 537
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ForwardingTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public columnKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation

    .line 542
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$ForwardingTable;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    .line 547
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Tables;->access$000()Lautovalue/shaded/com/google$/common/base/$Function;

    move-result-object v0

    .line 548
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$ForwardingTable;->columnMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->transformValues(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Lautovalue/shaded/com/google$/common/collect/$Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "TR;TC;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$UnmodifiableTable;->delegate:Lautovalue/shaded/com/google$/common/collect/$Table;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Tables$UnmodifiableTable;->delegate()Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .line 553
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Lautovalue/shaded/com/google$/common/collect/$Table;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "+TR;+TC;+TV;>;)V"
        }
    .end annotation

    .line 558
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 563
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 568
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ForwardingTable;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public rowKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TR;>;"
        }
    .end annotation

    .line 573
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$ForwardingTable;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 578
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Tables;->access$000()Lautovalue/shaded/com/google$/common/base/$Function;

    move-result-object v0

    .line 579
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$ForwardingTable;->rowMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->transformValues(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 584
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$ForwardingTable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
