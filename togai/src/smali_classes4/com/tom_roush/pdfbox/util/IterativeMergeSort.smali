.class public final Lcom/tom_roush/pdfbox/util/IterativeMergeSort;
.super Ljava/lang/Object;
.source "IterativeMergeSort.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static iterativeMergeSort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    move v7, v1

    .line 92
    :goto_0
    array-length v1, p0

    if-ge v7, v1, :cond_1

    const/4 v1, 0x0

    move v3, v1

    .line 94
    :goto_1
    array-length v1, p0

    if-ge v3, v1, :cond_0

    add-int v4, v3, v7

    shl-int/lit8 v1, v7, 0x1

    add-int v8, v3, v1

    move-object v1, p0

    move-object v2, v0

    move v5, v8

    move-object v6, p1

    .line 96
    invoke-static/range {v1 .. v6}, Lcom/tom_roush/pdfbox/util/IterativeMergeSort;->merge([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V

    move v3, v8

    goto :goto_1

    :cond_0
    shl-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static merge([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 116
    array-length v0, p0

    if-lt p3, v0, :cond_0

    return-void

    .line 120
    :cond_0
    array-length v0, p0

    if-le p4, v0, :cond_1

    .line 122
    array-length p4, p0

    :cond_1
    move v0, p2

    move v1, v0

    move v2, p3

    :goto_0
    if-ge v0, p4, :cond_5

    if-ne v1, p3, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 130
    aget-object v2, p0, v2

    aput-object v2, p1, v0

    :goto_1
    move v2, v3

    goto :goto_3

    :cond_2
    if-ne v2, p4, :cond_3

    add-int/lit8 v3, v1, 0x1

    .line 134
    aget-object v1, p0, v1

    aput-object v1, p1, v0

    :goto_2
    move v1, v3

    goto :goto_3

    .line 136
    :cond_3
    aget-object v3, p0, v2

    aget-object v4, p0, v1

    invoke-interface {p5, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    .line 138
    aget-object v2, p0, v2

    aput-object v2, p1, v0

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v1, 0x1

    .line 142
    aget-object v1, p0, v1

    aput-object v1, p1, v0

    goto :goto_2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    sub-int/2addr p4, p2

    .line 145
    invoke-static {p1, p2, p0, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static sort(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 65
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 70
    invoke-static {v0, p1}, Lcom/tom_roush/pdfbox/util/IterativeMergeSort;->iterativeMergeSort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 72
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    .line 73
    array-length p1, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, v0, v1

    .line 75
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 76
    invoke-interface {p0, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
