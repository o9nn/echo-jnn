.class Lautovalue/shaded/com/google$/common/collect/$AbstractMultiset$ElementSet;
.super Lautovalue/shaded/com/google$/common/collect/$Multisets$ElementSet;
.source "$AbstractMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$AbstractMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ElementSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$Multisets$ElementSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$AbstractMultiset;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$AbstractMultiset;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMultiset$ElementSet;->this$0:Lautovalue/shaded/com/google$/common/collect/$AbstractMultiset;

    .line 147
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$ElementSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMultiset$ElementSet;->this$0:Lautovalue/shaded/com/google$/common/collect/$AbstractMultiset;

    .line 155
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMultiset;->elementIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method multiset()Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMultiset$ElementSet;->this$0:Lautovalue/shaded/com/google$/common/collect/$AbstractMultiset;

    return-object v0
.end method
