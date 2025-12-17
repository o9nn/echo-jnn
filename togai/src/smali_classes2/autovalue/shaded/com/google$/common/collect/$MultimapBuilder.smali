.class public abstract Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder;
.super Ljava/lang/Object;
.source "$MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SortedSetMultimapBuilder;,
        Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SetMultimapBuilder;,
        Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ListMultimapBuilder;,
        Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;,
        Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$EnumSetSupplier;,
        Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$TreeSetSupplier;,
        Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedHashSetSupplier;,
        Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$HashSetSupplier;,
        Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$LinkedListSupplier;,
        Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ArrayListSupplier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_EXPECTED_KEYS:I = 0x8


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$1;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder;-><init>()V

    return-void
.end method

.method public static enumKeys(Ljava/lang/Class;)Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Enum<",
            "TK0;>;>(",
            "Ljava/lang/Class<",
            "TK0;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys<",
            "TK0;>;"
        }
    .end annotation

    .line 171
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$4;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$4;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static hashKeys()Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 76
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder;->hashKeys(I)Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    return-object v0
.end method

.method public static hashKeys(I)Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "expectedKeys"

    .line 86
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 87
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$1;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$1;-><init>(I)V

    return-object v0
.end method

.method public static linkedHashKeys()Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 104
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder;->linkedHashKeys(I)Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    return-object v0
.end method

.method public static linkedHashKeys(I)Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "expectedKeys"

    .line 117
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 118
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$2;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$2;-><init>(I)V

    return-object v0
.end method

.method public static treeKeys()Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder;->treeKeys(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    return-object v0
.end method

.method public static treeKeys(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TK0;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys<",
            "TK0;>;"
        }
    .end annotation

    .line 155
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$3;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$3;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public abstract build()Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public build(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>(",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "+TK;+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 409
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder;->build()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v0

    .line 410
    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->putAll(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Z

    return-object v0
.end method
