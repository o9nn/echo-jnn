.class final Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$RowMap;
.super Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$ImmutableArrayMap;
.source "$DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RowMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$ImmutableArrayMap<",
        "TR;",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;


# direct methods
.method private constructor <init>(Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$RowMap;->this$0:Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;

    .line 191
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->access$200(Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;)[I

    move-result-object p1

    array-length p1, p1

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$ImmutableArrayMap;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$1;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$RowMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;)V

    return-void
.end method


# virtual methods
.method getValue(I)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TC;TV;>;"
        }
    .end annotation

    .line 201
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$Row;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$RowMap;->this$0:Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;

    invoke-direct {v0, v1, p1}, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$Row;-><init>(Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;I)V

    return-object v0
.end method

.method bridge synthetic getValue(I)Ljava/lang/Object;
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$RowMap;->getValue(I)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method keyToIndex()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$RowMap;->this$0:Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;

    .line 196
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->access$600(Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0
.end method
