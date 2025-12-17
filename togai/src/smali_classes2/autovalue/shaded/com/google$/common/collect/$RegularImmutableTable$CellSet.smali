.class final Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable$CellSet;
.super Lautovalue/shaded/com/google$/common/collect/$IndexedImmutableSet;
.source "$RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CellSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$IndexedImmutableSet<",
        "Lautovalue/shaded/com/google$/common/collect/$Table$Cell<",
        "TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable;


# direct methods
.method private constructor <init>(Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable$CellSet;->this$0:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable;

    .line 46
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$IndexedImmutableSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable;Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable$CellSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .line 59
    instance-of v0, p1, Lautovalue/shaded/com/google$/common/collect/$Table$Cell;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Table$Cell;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable$CellSet;->this$0:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable;

    .line 61
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method get(I)Lautovalue/shaded/com/google$/common/collect/$Table$Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lautovalue/shaded/com/google$/common/collect/$Table$Cell<",
            "TR;TC;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable$CellSet;->this$0:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable;

    .line 54
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable;->getCell(I)Lautovalue/shaded/com/google$/common/collect/$Table$Cell;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable$CellSet;->get(I)Lautovalue/shaded/com/google$/common/collect/$Table$Cell;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable$CellSet;->this$0:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable;

    .line 49
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable;->size()I

    move-result v0

    return v0
.end method
