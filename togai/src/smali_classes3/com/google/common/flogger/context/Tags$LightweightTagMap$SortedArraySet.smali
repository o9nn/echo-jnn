.class Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;
.super Ljava/util/AbstractSet;
.source "Tags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/context/Tags$LightweightTagMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SortedArraySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final index:I

.field final synthetic this$0:Lcom/google/common/flogger/context/Tags$LightweightTagMap;


# direct methods
.method constructor <init>(Lcom/google/common/flogger/context/Tags$LightweightTagMap;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->this$0:Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    .line 670
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput p2, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->index:I

    return-void
.end method

.method private getComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 692
    invoke-static {}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->access$1100()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/flogger/context/Tags;->access$400()Ljava/util/Comparator;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->this$0:Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    .line 704
    invoke-static {v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->access$900(Lcom/google/common/flogger/context/Tags$LightweightTagMap;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getEnd()I

    move-result v2

    invoke-direct {p0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getComparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v1, v2, p1, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method getEnd()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->this$0:Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    .line 688
    invoke-static {v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->access$1000(Lcom/google/common/flogger/context/Tags$LightweightTagMap;)[I

    move-result-object v0

    iget v1, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->index:I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method getStart()I
    .locals 2

    iget v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->this$0:Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    .line 684
    invoke-static {v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->access$1000(Lcom/google/common/flogger/context/Tags$LightweightTagMap;)[I

    move-result-object v0

    iget v1, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->index:I

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method getValue(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->this$0:Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    .line 680
    invoke-static {v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->access$900(Lcom/google/common/flogger/context/Tags$LightweightTagMap;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getStart()I

    move-result v1

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method

.method getValuesArray()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->this$0:Lcom/google/common/flogger/context/Tags$LightweightTagMap;

    .line 675
    invoke-static {v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->access$900(Lcom/google/common/flogger/context/Tags$LightweightTagMap;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 709
    new-instance v0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet$1;

    invoke-direct {v0, p0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet$1;-><init>(Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 697
    invoke-virtual {p0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getEnd()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getStart()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
