.class Lautovalue/shaded/com/google$/common/collect/$Multisets$5;
.super Lautovalue/shaded/com/google$/common/collect/$TransformedIterator;
.source "$Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Multisets;->elementIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$TransformedIterator<",
        "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
        "TE;>;TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    .line 952
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method transform(Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 955
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 952
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multisets$5;->transform(Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
