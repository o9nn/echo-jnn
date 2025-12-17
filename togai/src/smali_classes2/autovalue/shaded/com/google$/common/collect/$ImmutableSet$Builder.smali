.class public Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;
.source "$ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field forceCopy:Z

.field private impl:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 481
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 484
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;-><init>()V

    .line 485
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;

    invoke-direct {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;-><init>(I)V

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->impl:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 488
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->impl:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;
    .locals 0

    .line 476
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;
    .locals 0

    .line 476
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->add([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 511
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->copyIfNecessary()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->impl:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;

    .line 513
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->impl:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;

    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 520
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;->add([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;

    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;
    .locals 0

    .line 476
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;
    .locals 0

    .line 476
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->addAll(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 535
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;

    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 542
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;->addAll(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
    .locals 1

    .line 476
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->forceCopy:Z

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->impl:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;

    .line 555
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;->review()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->impl:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;

    .line 556
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method combine(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder<",
            "TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 547
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->copyIfNecessary()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->impl:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;

    .line 548
    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->impl:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;->combine(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->impl:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;

    return-object p0
.end method

.method copy()V
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->impl:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;

    .line 505
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;->copy()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->impl:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;

    return-void
.end method

.method final copyIfNecessary()V
    .locals 1

    iget-boolean v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->forceCopy:Z

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->copy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->forceCopy:Z

    :cond_0
    return-void
.end method

.method forceJdk()V
    .locals 2

    .line 494
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$JdkBackedSetBuilderImpl;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->impl:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$JdkBackedSetBuilderImpl;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;)V

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->impl:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;

    return-void
.end method
