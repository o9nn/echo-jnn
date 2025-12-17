.class Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$5;
.super Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SortedSetMultimapBuilder;
.source "$MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;->treeSetValues(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SortedSetMultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SortedSetMultimapBuilder<",
        "TK0;TV0;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;

.field final synthetic val$comparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;Ljava/util/Comparator;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$5;->this$0:Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$5;->val$comparator:Ljava/util/Comparator;

    .line 374
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SortedSetMultimapBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 1

    .line 374
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$5;->build()Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lautovalue/shaded/com/google$/common/collect/$SetMultimap;
    .locals 1

    .line 374
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$5;->build()Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public build()Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$5;->this$0:Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;

    .line 378
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;->createMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$TreeSetSupplier;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$5;->val$comparator:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$TreeSetSupplier;-><init>(Ljava/util/Comparator;)V

    .line 377
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps;->newSortedSetMultimap(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Supplier;)Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method
