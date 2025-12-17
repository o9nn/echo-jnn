.class public abstract Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;
.super Ljava/lang/Object;
.source "$MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MultimapBuilderWithKeys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_EXPECTED_VALUES_PER_KEY:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public arrayListValues()Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ListMultimapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ListMultimapBuilder<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 282
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues(I)Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ListMultimapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public arrayListValues(I)Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ListMultimapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ListMultimapBuilder<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "expectedValuesPerKey"

    .line 292
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 293
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$1;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;I)V

    return-object v0
.end method

.method abstract createMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end method

.method public enumSetValues(Ljava/lang/Class;)Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SetMultimapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V0:",
            "Ljava/lang/Enum<",
            "TV0;>;>(",
            "Ljava/lang/Class<",
            "TV0;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SetMultimapBuilder<",
            "TK0;TV0;>;"
        }
    .end annotation

    const-string/jumbo v0, "valueClass"

    .line 386
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$6;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$6;-><init>(Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;Ljava/lang/Class;)V

    return-object v0
.end method

.method public hashSetValues()Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SetMultimapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SetMultimapBuilder<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 316
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;->hashSetValues(I)Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SetMultimapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public hashSetValues(I)Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SetMultimapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SetMultimapBuilder<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "expectedValuesPerKey"

    .line 326
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 327
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$3;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$3;-><init>(Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;I)V

    return-object v0
.end method

.method public linkedHashSetValues()Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SetMultimapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SetMultimapBuilder<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 339
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;->linkedHashSetValues(I)Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SetMultimapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public linkedHashSetValues(I)Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SetMultimapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SetMultimapBuilder<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "expectedValuesPerKey"

    .line 349
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 350
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$4;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$4;-><init>(Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;I)V

    return-object v0
.end method

.method public linkedListValues()Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ListMultimapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ListMultimapBuilder<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$2;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$2;-><init>(Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;)V

    return-object v0
.end method

.method public treeSetValues()Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SortedSetMultimapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SortedSetMultimapBuilder<",
            "TK0;",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .line 363
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;->treeSetValues(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SortedSetMultimapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public treeSetValues(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SortedSetMultimapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V0:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TV0;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SortedSetMultimapBuilder<",
            "TK0;TV0;>;"
        }
    .end annotation

    const-string v0, "comparator"

    .line 373
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$5;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys$5;-><init>(Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;Ljava/util/Comparator;)V

    return-object v0
.end method
