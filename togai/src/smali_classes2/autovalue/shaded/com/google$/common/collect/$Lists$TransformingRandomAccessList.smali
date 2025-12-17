.class Lautovalue/shaded/com/google$/common/collect/$Lists$TransformingRandomAccessList;
.super Ljava/util/AbstractList;
.source "$Lists.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransformingRandomAccessList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TT;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final fromList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TF;>;"
        }
    .end annotation
.end field

.field final function:Lautovalue/shaded/com/google$/common/base/$Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "-TF;+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lautovalue/shaded/com/google$/common/base/$Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TF;>;",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "-TF;+TT;>;)V"
        }
    .end annotation

    .line 589
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 590
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    .line 591
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/base/$Function;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Lists$TransformingRandomAccessList;->function:Lautovalue/shaded/com/google$/common/base/$Function;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    .line 596
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Lists$TransformingRandomAccessList;->function:Lautovalue/shaded/com/google$/common/base/$Function;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    .line 601
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    .line 621
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
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

    .line 606
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Lists$TransformingRandomAccessList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$removeIf$0$autovalue-shaded-com-google$-common-collect-$Lists$TransformingRandomAccessList(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Lists$TransformingRandomAccessList;->function:Lautovalue/shaded/com/google$/common/base/$Function;

    .line 627
    invoke-interface {v0, p2}, Lautovalue/shaded/com/google$/common/base/$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 611
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Lists$TransformingRandomAccessList$1;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Lists$TransformingRandomAccessList$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$Lists$TransformingRandomAccessList;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Lists$TransformingRandomAccessList;->function:Lautovalue/shaded/com/google$/common/base/$Function;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    .line 632
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 626
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    .line 627
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$Lists$TransformingRandomAccessList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Lists$TransformingRandomAccessList$$ExternalSyntheticLambda0;-><init>(Lautovalue/shaded/com/google$/common/collect/$Lists$TransformingRandomAccessList;Ljava/util/function/Predicate;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    .line 637
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
