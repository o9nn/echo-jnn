.class Lautovalue/shaded/com/google$/common/collect/$Sets$4$1;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractIterator;
.source "$Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Sets$4;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
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
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$Sets$4;

.field final synthetic val$itr1:Ljava/util/Iterator;

.field final synthetic val$itr2:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Sets$4;Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$4$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$Sets$4;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$4$1;->val$itr1:Ljava/util/Iterator;

    iput-object p3, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$4$1;->val$itr2:Ljava/util/Iterator;

    .line 935
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$4$1;->val$itr1:Ljava/util/Iterator;

    .line 938
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$4$1;->val$itr1:Ljava/util/Iterator;

    .line 939
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$4$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$Sets$4;

    .line 940
    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$Sets$4;->val$set2:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$4$1;->val$itr2:Ljava/util/Iterator;

    .line 944
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$4$1;->val$itr2:Ljava/util/Iterator;

    .line 945
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$4$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$Sets$4;

    .line 946
    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$Sets$4;->val$set1:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 950
    :cond_2
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$4$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
