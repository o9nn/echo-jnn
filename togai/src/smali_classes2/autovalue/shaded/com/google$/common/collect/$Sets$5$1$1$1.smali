.class Lautovalue/shaded/com/google$/common/collect/$Sets$5$1$1$1;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractIterator;
.source "$Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Sets$5$1$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$AbstractIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field i:I

.field final synthetic this$2:Lautovalue/shaded/com/google$/common/collect/$Sets$5$1$1;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Sets$5$1$1;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1$1$1;->this$2:Lautovalue/shaded/com/google$/common/collect/$Sets$5$1$1;

    .line 1672
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractIterator;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1$1$1;->i:I

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1$1$1;->this$2:Lautovalue/shaded/com/google$/common/collect/$Sets$5$1$1;

    .line 1677
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1$1;->val$copy:Ljava/util/BitSet;

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1$1$1;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1$1$1;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1679
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1$1$1;->this$2:Lautovalue/shaded/com/google$/common/collect/$Sets$5$1$1;

    .line 1681
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1$1;->this$1:Lautovalue/shaded/com/google$/common/collect/$Sets$5$1;

    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$Sets$5;

    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$Sets$5;->val$index:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->asList()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1$1$1;->i:I

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
