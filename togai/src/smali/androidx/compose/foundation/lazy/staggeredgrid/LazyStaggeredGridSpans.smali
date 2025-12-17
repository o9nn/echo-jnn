.class public final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;
.super Ljava/lang/Object;
.source "LazyStaggeredGridSpans.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyStaggeredGridSpans.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyStaggeredGridSpans.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,159:1\n1#2:160\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0010\u0008\u0000\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004H\u0002J\u000e\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0004J\u0016\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004J\u0016\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004J\u0006\u0010\u0012\u001a\u00020\u0004J\u0006\u0010\u0013\u001a\u00020\u0008J\u0016\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004J\u0006\u0010\u0016\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;",
        "",
        "()V",
        "anchor",
        "",
        "spans",
        "",
        "ensureCapacity",
        "",
        "capacity",
        "newOffset",
        "ensureValidIndex",
        "requestedIndex",
        "findNextItemIndex",
        "item",
        "target",
        "findPreviousItemIndex",
        "getSpan",
        "lowerBound",
        "reset",
        "setSpan",
        "span",
        "upperBound",
        "Companion",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans$Companion;

.field private static final MaxCapacity:I = 0x20000

.field public static final Unset:I = -0x1


# instance fields
.field private anchor:I

.field private spans:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->Companion:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->spans:[I

    return-void
.end method

.method private final ensureCapacity(II)V
    .locals 8

    const/high16 v0, 0x20000

    if-gt p1, v0, :cond_2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->spans:[I

    .line 148
    array-length v1, v0

    if-ge v1, p1, :cond_1

    .line 149
    array-length v0, v0

    :goto_0
    if-ge v0, p1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->spans:[I

    .line 151
    new-array v2, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move v3, p2

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([I[IIIIILjava/lang/Object;)[I

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->spans:[I

    :cond_1
    return-void

    .line 146
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Requested span capacity "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is larger than max supported: 131072!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 145
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static synthetic ensureCapacity$default(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 144
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->ensureCapacity(II)V

    return-void
.end method


# virtual methods
.method public final ensureValidIndex(I)V
    .locals 5

    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->anchor:I

    sub-int v1, p1, v0

    const/4 v2, 0x2

    const/high16 v3, 0x20000

    const/4 v4, 0x0

    if-ltz v1, :cond_0

    if-ge v1, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    const/4 p1, 0x0

    .line 101
    invoke-static {p0, v1, v4, v2, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->ensureCapacity$default(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;IIILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->spans:[I

    .line 106
    array-length v1, v1

    div-int/2addr v1, v2

    sub-int/2addr p1, v1

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->anchor:I

    sub-int/2addr p1, v0

    if-ltz p1, :cond_2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->spans:[I

    .line 111
    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 116
    array-length v1, v0

    .line 112
    invoke-static {v0, v0, v4, p1, v1}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->spans:[I

    .line 120
    array-length v1, v0

    sub-int/2addr v1, p1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->spans:[I

    array-length v1, v1

    invoke-static {v0, v4, p1, v1}, Lkotlin/collections/ArraysKt;->fill([IIII)V

    goto :goto_0

    :cond_2
    neg-int p1, p1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->spans:[I

    .line 124
    array-length v1, v0

    add-int/2addr v1, p1

    if-ge v1, v3, :cond_3

    .line 126
    array-length v0, v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->ensureCapacity(II)V

    goto :goto_0

    .line 129
    :cond_3
    array-length v1, v0

    if-ge p1, v1, :cond_4

    .line 134
    array-length v1, v0

    sub-int/2addr v1, p1

    .line 130
    invoke-static {v0, v0, p1, v4, v1}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    :cond_4
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->spans:[I

    .line 138
    array-length v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, v4, v4, p1}, Lkotlin/collections/ArraysKt;->fill([IIII)V

    :goto_0
    return-void
.end method

.method public final findNextItemIndex(II)I
    .locals 3

    add-int/lit8 p1, p1, 0x1

    .line 87
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->upperBound()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_2

    .line 88
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->getSpan(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1

    .line 93
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->upperBound()I

    move-result p1

    return p1
.end method

.method public final findPreviousItemIndex(II)I
    .locals 2

    add-int/lit8 p1, p1, -0x1

    :goto_0
    const/4 v0, -0x1

    if-ge v0, p1, :cond_2

    .line 74
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->getSpan(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1

    :cond_2
    return v0
.end method

.method public final getSpan(I)I
    .locals 2

    .line 43
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->lowerBound()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->upperBound()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->spans:[I

    iget v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->anchor:I

    sub-int/2addr p1, v1

    .line 46
    aget p1, v0, p1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public final lowerBound()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->anchor:I

    return v0
.end method

.method public final reset()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->spans:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 65
    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt;->fill$default([IIIIILjava/lang/Object;)V

    return-void
.end method

.method public final setSpan(II)V
    .locals 2

    if-ltz p1, :cond_0

    .line 34
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->ensureValidIndex(I)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->spans:[I

    iget v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->anchor:I

    sub-int/2addr p1, v1

    add-int/lit8 p2, p2, 0x1

    .line 35
    aput p2, v0, p1

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative spans are not supported"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final upperBound()I
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->anchor:I

    iget-object v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpans;->spans:[I

    .line 53
    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method
