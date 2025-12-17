.class final Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;
.super Ljava/lang/Object;
.source "$ImmutableTable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final cellColumnIndices:[I

.field private final cellRowIndices:[I

.field private final cellValues:[Ljava/lang/Object;

.field private final columnKeys:[Ljava/lang/Object;

.field private final rowKeys:[Ljava/lang/Object;


# direct methods
.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[I[I)V
    .locals 0

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;->rowKeys:[Ljava/lang/Object;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;->columnKeys:[Ljava/lang/Object;

    iput-object p3, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;->cellValues:[Ljava/lang/Object;

    iput-object p4, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;->cellRowIndices:[I

    iput-object p5, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;->cellColumnIndices:[I

    return-void
.end method

.method static create(Lautovalue/shaded/com/google$/common/collect/$ImmutableTable;[I[I)Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableTable<",
            "***>;[I[I)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;"
        }
    .end annotation

    .line 449
    new-instance v6, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;

    .line 450
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable;->rowKeySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 451
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable;->columnKeySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 452
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable;->values()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    move-result-object p0

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;-><init>([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[I[I)V

    return-object v6
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;->cellValues:[Ljava/lang/Object;

    .line 458
    array-length v1, v0

    if-nez v1, :cond_0

    .line 459
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableTable;

    move-result-object v0

    return-object v0

    .line 461
    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;->rowKeys:[Ljava/lang/Object;

    .line 462
    aget-object v1, v1, v3

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;->columnKeys:[Ljava/lang/Object;

    aget-object v2, v2, v3

    aget-object v0, v0, v3

    invoke-static {v1, v2, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableTable;

    move-result-object v0

    return-object v0

    .line 464
    :cond_1
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;->cellValues:[Ljava/lang/Object;

    array-length v1, v1

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;-><init>(I)V

    :goto_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;->cellValues:[Ljava/lang/Object;

    .line 466
    array-length v2, v1

    if-ge v3, v2, :cond_2

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;->rowKeys:[Ljava/lang/Object;

    iget-object v4, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;->cellRowIndices:[I

    .line 467
    aget v4, v4, v3

    aget-object v2, v2, v4

    iget-object v4, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;->columnKeys:[Ljava/lang/Object;

    iget-object v5, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;->cellColumnIndices:[I

    aget v5, v5, v3

    aget-object v4, v4, v5

    aget-object v1, v1, v3

    .line 468
    invoke-static {v2, v4, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable;->cellOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$Table$Cell;

    move-result-object v1

    .line 467
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 471
    :cond_2
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;->rowKeys:[Ljava/lang/Object;

    invoke-static {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->copyOf([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;->columnKeys:[Ljava/lang/Object;

    invoke-static {v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->copyOf([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v2

    .line 470
    invoke-static {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable;->forOrderedComponents(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable;

    move-result-object v0

    return-object v0
.end method
