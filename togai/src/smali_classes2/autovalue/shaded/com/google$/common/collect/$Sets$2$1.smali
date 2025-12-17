.class Lautovalue/shaded/com/google$/common/collect/$Sets$2$1;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractIterator;
.source "$Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Sets$2;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
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
.field final itr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$Sets$2;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Sets$2;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$2$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$Sets$2;

    .line 794
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractIterator;-><init>()V

    .line 795
    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$Sets$2;->val$set1:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$2$1;->itr:Ljava/util/Iterator;

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

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$2$1;->itr:Ljava/util/Iterator;

    .line 799
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$2$1;->itr:Ljava/util/Iterator;

    .line 800
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$2$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$Sets$2;

    .line 801
    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$Sets$2;->val$set2:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 805
    :cond_1
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$2$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
