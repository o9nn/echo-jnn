.class public abstract Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SortedSetMultimapBuilder;
.super Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SetMultimapBuilder;
.source "$MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SortedSetMultimapBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SetMultimapBuilder<",
        "TK0;TV0;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 456
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SetMultimapBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 1

    .line 455
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SortedSetMultimapBuilder;->build()Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 0

    .line 455
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SortedSetMultimapBuilder;->build(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic build()Lautovalue/shaded/com/google$/common/collect/$SetMultimap;
    .locals 1

    .line 455
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SortedSetMultimapBuilder;->build()Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$SetMultimap;
    .locals 0

    .line 455
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SortedSetMultimapBuilder;->build(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;

    move-result-object p1

    return-object p1
.end method

.method public abstract build()Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public build(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>(",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "+TK;+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 464
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SetMultimapBuilder;->build(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;

    return-object p1
.end method
