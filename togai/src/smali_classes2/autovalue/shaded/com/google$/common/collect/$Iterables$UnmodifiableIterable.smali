.class final Lautovalue/shaded/com/google$/common/collect/$Iterables$UnmodifiableIterable;
.super Lautovalue/shaded/com/google$/common/collect/$FluentIterable;
.source "$Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Iterables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnmodifiableIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$FluentIterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final iterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$FluentIterable;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$UnmodifiableIterable;->iterable:Ljava/lang/Iterable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Iterable;Lautovalue/shaded/com/google$/common/collect/$Iterables$1;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Iterables$UnmodifiableIterable;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$UnmodifiableIterable;->iterable:Ljava/lang/Iterable;

    .line 106
    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$UnmodifiableIterable;->iterable:Ljava/lang/Iterable;

    .line 101
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$UnmodifiableIterable;->iterable:Ljava/lang/Iterable;

    .line 112
    invoke-interface {v0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$UnmodifiableIterable;->iterable:Ljava/lang/Iterable;

    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
