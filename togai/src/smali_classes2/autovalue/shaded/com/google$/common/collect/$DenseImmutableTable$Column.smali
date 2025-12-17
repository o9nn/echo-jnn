.class final Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$Column;
.super Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$ImmutableArrayMap;
.source "$DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Column"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$ImmutableArrayMap<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field private final columnIndex:I

.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;I)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$Column;->this$0:Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;

    .line 168
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->access$500(Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;)[I

    move-result-object p1

    aget p1, p1, p2

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$ImmutableArrayMap;-><init>(I)V

    iput p2, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$Column;->columnIndex:I

    return-void
.end method


# virtual methods
.method getValue(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$Column;->this$0:Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;

    .line 179
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->access$400(Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;)[[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$Column;->columnIndex:I

    aget-object p1, p1, v0

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x1

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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$Column;->this$0:Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;

    .line 174
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->access$600(Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0
.end method
