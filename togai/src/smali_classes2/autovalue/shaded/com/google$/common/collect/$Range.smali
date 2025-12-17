.class public final Lautovalue/shaded/com/google$/common/collect/$Range;
.super Lautovalue/shaded/com/google$/common/collect/$RangeGwtSerializationDependencies;
.source "$Range.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/base/$Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$Range$RangeLexOrdering;,
        Lautovalue/shaded/com/google$/common/collect/$Range$UpperBoundFn;,
        Lautovalue/shaded/com/google$/common/collect/$Range$LowerBoundFn;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$RangeGwtSerializationDependencies;",
        "Lautovalue/shaded/com/google$/common/base/$Predicate<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ALL:Lautovalue/shaded/com/google$/common/collect/$Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field final lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;"
        }
    .end annotation
.end field

.field final upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 298
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Range;

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowAll()Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v1

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Cut;->aboveAll()Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Range;-><init>(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$Range;->ALL:Lautovalue/shaded/com/google$/common/collect/$Range;

    return-void
.end method

.method private constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;)V"
        }
    .end annotation

    .line 352
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$RangeGwtSerializationDependencies;-><init>()V

    .line 353
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Cut;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 354
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Cut;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 355
    invoke-virtual {p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Cut;->compareTo(Lautovalue/shaded/com/google$/common/collect/$Cut;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 356
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Cut;->aboveAll()Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 357
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowAll()Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 358
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Range;->toString(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v1, "Invalid range: "

    if-eqz p2, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static all()Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$Range;->ALL:Lautovalue/shaded/com/google$/common/collect/$Range;

    return-object v0
.end method

.method public static atLeast(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    .line 278
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowValue(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object p0

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Cut;->aboveAll()Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v0

    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->create(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p0

    return-object p0
.end method

.method public static atMost(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    .line 243
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowAll()Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Cut;->aboveValue(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object p0

    invoke-static {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Range;->create(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p0

    return-object p0
.end method

.method private static cast(Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/util/SortedSet<",
            "TT;>;"
        }
    .end annotation

    .line 699
    check-cast p0, Ljava/util/SortedSet;

    return-object p0
.end method

.method public static closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;TC;)",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    .line 181
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowValue(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object p0

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->aboveValue(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object p1

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->create(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p0

    return-object p0
.end method

.method public static closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;TC;)",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    .line 193
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowValue(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object p0

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowValue(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object p1

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->create(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p0

    return-object p0
.end method

.method static compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0

    .line 712
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static create(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    .line 156
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Range;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;-><init>(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)V

    return-object v0
.end method

.method public static downTo(Ljava/lang/Comparable;Lautovalue/shaded/com/google$/common/collect/$BoundType;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;",
            "Lautovalue/shaded/com/google$/common/collect/$BoundType;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    .line 288
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$Range$1;->$SwitchMap$com$google$common$collect$BoundType:[I

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$BoundType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 292
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Range;->atLeast(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p0

    return-object p0

    .line 294
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 290
    :cond_1
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Range;->greaterThan(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p0

    return-object p0
.end method

.method public static encloseAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "TC;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    .line 330
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_1

    .line 332
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Range;->cast(Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    .line 333
    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    .line 334
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_1

    .line 335
    :cond_0
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Comparable;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p0

    return-object p0

    .line 338
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 339
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    move-object v1, v0

    .line 341
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 342
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-static {v2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    .line 343
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 344
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    goto :goto_0

    .line 346
    :cond_2
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p0

    return-object p0
.end method

.method public static greaterThan(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    .line 269
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Cut;->aboveValue(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object p0

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Cut;->aboveAll()Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v0

    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->create(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p0

    return-object p0
.end method

.method public static lessThan(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    .line 234
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowAll()Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowValue(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object p0

    invoke-static {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Range;->create(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p0

    return-object p0
.end method

.method static lowerBoundFn()Lautovalue/shaded/com/google$/common/base/$Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;>;"
        }
    .end annotation

    .line 143
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$Range$LowerBoundFn;->INSTANCE:Lautovalue/shaded/com/google$/common/collect/$Range$LowerBoundFn;

    return-object v0
.end method

.method public static open(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;TC;)",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    .line 169
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Cut;->aboveValue(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object p0

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowValue(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object p1

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->create(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p0

    return-object p0
.end method

.method public static openClosed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;TC;)",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    .line 205
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Cut;->aboveValue(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object p0

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->aboveValue(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object p1

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->create(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p0

    return-object p0
.end method

.method public static range(Ljava/lang/Comparable;Lautovalue/shaded/com/google$/common/collect/$BoundType;Ljava/lang/Comparable;Lautovalue/shaded/com/google$/common/collect/$BoundType;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;",
            "Lautovalue/shaded/com/google$/common/collect/$BoundType;",
            "TC;",
            "Lautovalue/shaded/com/google$/common/collect/$BoundType;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    .line 218
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-static {p3}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$BoundType;->OPEN:Lautovalue/shaded/com/google$/common/collect/$BoundType;

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Cut;->aboveValue(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowValue(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object p0

    .line 224
    :goto_0
    sget-object p1, Lautovalue/shaded/com/google$/common/collect/$BoundType;->OPEN:Lautovalue/shaded/com/google$/common/collect/$BoundType;

    if-ne p3, p1, :cond_1

    invoke-static {p2}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowValue(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/collect/$Cut;->aboveValue(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object p1

    .line 225
    :goto_1
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->create(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p0

    return-object p0
.end method

.method static rangeLexOrdering()Lautovalue/shaded/com/google$/common/collect/$Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lautovalue/shaded/com/google$/common/collect/$Ordering<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 152
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$Range$RangeLexOrdering;->INSTANCE:Lautovalue/shaded/com/google$/common/collect/$Ordering;

    return-object v0
.end method

.method public static singleton(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    .line 317
    invoke-static {p0, p0}, Lautovalue/shaded/com/google$/common/collect/$Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p0

    return-object p0
.end method

.method private static toString(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "*>;",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 691
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Cut;->describeAsLowerBound(Ljava/lang/StringBuilder;)V

    const-string p0, ".."

    .line 692
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Cut;->describeAsUpperBound(Ljava/lang/StringBuilder;)V

    .line 694
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static upTo(Ljava/lang/Comparable;Lautovalue/shaded/com/google$/common/collect/$BoundType;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;",
            "Lautovalue/shaded/com/google$/common/collect/$BoundType;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    .line 253
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$Range$1;->$SwitchMap$com$google$common$collect$BoundType:[I

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$BoundType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 257
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Range;->atMost(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p0

    return-object p0

    .line 259
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 255
    :cond_1
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Range;->lessThan(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p0

    return-object p0
.end method

.method static upperBoundFn()Lautovalue/shaded/com/google$/common/base/$Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;>;"
        }
    .end annotation

    .line 148
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$Range$UpperBoundFn;->INSTANCE:Lautovalue/shaded/com/google$/common/collect/$Range$UpperBoundFn;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Comparable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 445
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->apply(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public canonical(Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain<",
            "TC;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    .line 652
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 653
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->canonical(Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 654
    invoke-virtual {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->canonical(Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object p1

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    if-ne p1, v1, :cond_0

    move-object p1, p0

    goto :goto_0

    .line 655
    :cond_0
    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->create(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 433
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 435
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsAll(Ljava/lang/Iterable;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TC;>;)Z"
        }
    .end annotation

    .line 453
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 458
    :cond_0
    instance-of v0, p1, Ljava/util/SortedSet;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 459
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->cast(Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    .line 460
    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v3

    .line 461
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v3, :cond_3

    .line 462
    :cond_1
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    .line 466
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 467
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_5
    return v1
.end method

.method public encloses(Lautovalue/shaded/com/google$/common/collect/$Range;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 498
    iget-object v1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->compareTo(Lautovalue/shaded/com/google$/common/collect/$Cut;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 499
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->compareTo(Lautovalue/shaded/com/google$/common/collect/$Cut;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 667
    instance-of v0, p1, Lautovalue/shaded/com/google$/common/collect/$Range;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 668
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 669
    iget-object v2, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {v0, v2}, Lautovalue/shaded/com/google$/common/collect/$Cut;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public gap(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 590
    iget-object v1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->compareTo(Lautovalue/shaded/com/google$/common/collect/$Cut;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 591
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->compareTo(Lautovalue/shaded/com/google$/common/collect/$Cut;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x27

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ranges have a nonempty intersection: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 596
    iget-object v1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->compareTo(Lautovalue/shaded/com/google$/common/collect/$Cut;)I

    move-result v0

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    move-object v1, p0

    goto :goto_2

    :cond_3
    move-object v1, p1

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move-object p1, p0

    .line 599
    :goto_3
    iget-object v0, v1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->create(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1

    return-object p1
.end method

.method public hasLowerBound()Z
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 364
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowAll()Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUpperBound()Z
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 390
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Cut;->aboveAll()Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 677
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Cut;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public intersection(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 549
    iget-object v1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->compareTo(Lautovalue/shaded/com/google$/common/collect/$Cut;)I

    move-result v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 550
    iget-object v2, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Cut;->compareTo(Lautovalue/shaded/com/google$/common/collect/$Cut;)I

    move-result v1

    if-ltz v0, :cond_0

    if-gtz v1, :cond_0

    return-object p0

    :cond_0
    if-gtz v0, :cond_1

    if-ltz v1, :cond_1

    return-object p1

    :cond_1
    if-ltz v0, :cond_2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    goto :goto_0

    .line 556
    :cond_2
    iget-object v0, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    :goto_0
    if-gtz v1, :cond_3

    iget-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    goto :goto_1

    .line 557
    :cond_3
    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 558
    :goto_1
    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->create(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1

    return-object p1
.end method

.method public isConnected(Lautovalue/shaded/com/google$/common/collect/$Range;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 528
    iget-object v1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->compareTo(Lautovalue/shaded/com/google$/common/collect/$Cut;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 529
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Cut;->compareTo(Lautovalue/shaded/com/google$/common/collect/$Cut;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 424
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public lowerBoundType()Lautovalue/shaded/com/google$/common/collect/$BoundType;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 385
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Cut;->typeAsLowerBound()Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object v0

    return-object v0
.end method

.method public lowerEndpoint()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 374
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Cut;->endpoint()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$Range;->ALL:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 703
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Range;->all()Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public span(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 614
    iget-object v1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->compareTo(Lautovalue/shaded/com/google$/common/collect/$Cut;)I

    move-result v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 615
    iget-object v2, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Cut;->compareTo(Lautovalue/shaded/com/google$/common/collect/$Cut;)I

    move-result v1

    if-gtz v0, :cond_0

    if-ltz v1, :cond_0

    return-object p0

    :cond_0
    if-ltz v0, :cond_1

    if-gtz v1, :cond_1

    return-object p1

    :cond_1
    if-gtz v0, :cond_2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    goto :goto_0

    .line 621
    :cond_2
    iget-object v0, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    :goto_0
    if-ltz v1, :cond_3

    iget-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    goto :goto_1

    .line 622
    :cond_3
    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 623
    :goto_1
    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->create(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 686
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Range;->toString(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upperBoundType()Lautovalue/shaded/com/google$/common/collect/$BoundType;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 411
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Cut;->typeAsUpperBound()Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object v0

    return-object v0
.end method

.method public upperEndpoint()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 400
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Cut;->endpoint()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method
