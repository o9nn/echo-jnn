.class Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$1;
.super Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ListMultimapBuilder;
.source "$MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues(I)Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ListMultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ListMultimapBuilder<",
        "TK0;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;

.field final synthetic val$expectedValuesPerKey:I


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;I)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;

    iput p2, p0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$1;->val$expectedValuesPerKey:I

    .line 293
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ListMultimapBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lautovalue/shaded/com/google$/common/collect/$ListMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;

    .line 297
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;->createMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ArrayListSupplier;

    iget v2, p0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$1;->val$expectedValuesPerKey:I

    invoke-direct {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ArrayListSupplier;-><init>(I)V

    .line 296
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps;->newListMultimap(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Supplier;)Lautovalue/shaded/com/google$/common/collect/$ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$1;->build()Lautovalue/shaded/com/google$/common/collect/$ListMultimap;

    move-result-object v0

    return-object v0
.end method
