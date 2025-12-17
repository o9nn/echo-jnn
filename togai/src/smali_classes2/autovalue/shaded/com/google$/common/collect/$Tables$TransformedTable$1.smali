.class Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable$1;
.super Ljava/lang/Object;
.source "$Tables.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/base/$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->cellFunction()Lautovalue/shaded/com/google$/common/base/$Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lautovalue/shaded/com/google$/common/base/$Function<",
        "Lautovalue/shaded/com/google$/common/collect/$Table$Cell<",
        "TR;TC;TV1;>;",
        "Lautovalue/shaded/com/google$/common/collect/$Table$Cell<",
        "TR;TC;TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lautovalue/shaded/com/google$/common/collect/$Table$Cell;)Lautovalue/shaded/com/google$/common/collect/$Table$Cell;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Table$Cell<",
            "TR;TC;TV1;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Table$Cell<",
            "TR;TC;TV2;>;"
        }
    .end annotation

    .line 439
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;

    iget-object v2, v2, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->function:Lautovalue/shaded/com/google$/common/base/$Function;

    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v2, p1}, Lautovalue/shaded/com/google$/common/base/$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 438
    invoke-static {v0, v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Tables;->immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$Table$Cell;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 435
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Table$Cell;

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable$1;->apply(Lautovalue/shaded/com/google$/common/collect/$Table$Cell;)Lautovalue/shaded/com/google$/common/collect/$Table$Cell;

    move-result-object p1

    return-object p1
.end method
