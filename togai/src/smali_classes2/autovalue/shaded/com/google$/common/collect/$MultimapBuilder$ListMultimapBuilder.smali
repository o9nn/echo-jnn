.class public abstract Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ListMultimapBuilder;
.super Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder;
.source "$MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ListMultimapBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder<",
        "TK0;TV0;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 420
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder;-><init>(Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$1;)V

    return-void
.end method


# virtual methods
.method public abstract build()Lautovalue/shaded/com/google$/common/collect/$ListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lautovalue/shaded/com/google$/common/collect/$ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public build(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$ListMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>(",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "+TK;+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 428
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder;->build(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$ListMultimap;

    return-object p1
.end method

.method public bridge synthetic build()Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ListMultimapBuilder;->build()Lautovalue/shaded/com/google$/common/collect/$ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ListMultimapBuilder;->build(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$ListMultimap;

    move-result-object p1

    return-object p1
.end method
