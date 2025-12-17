.class abstract Lautovalue/shaded/com/google$/common/collect/$Multisets$ViewMultiset;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractMultiset;
.source "$Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ViewMultiset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$AbstractMultiset<",
        "TE;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1147
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMultiset;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Multisets$1;)V
    .locals 0

    .line 1147
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$ViewMultiset;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1155
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$ViewMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method distinctElements()I
    .locals 1

    .line 1165
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$ViewMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1160
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Multisets;->iteratorImpl(Lautovalue/shaded/com/google$/common/collect/$Multiset;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1150
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Multisets;->linearTimeSizeImpl(Lautovalue/shaded/com/google$/common/collect/$Multiset;)I

    move-result v0

    return v0
.end method
