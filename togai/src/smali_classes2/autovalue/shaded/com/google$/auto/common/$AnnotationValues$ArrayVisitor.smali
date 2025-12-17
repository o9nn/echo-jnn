.class final Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$ArrayVisitor;
.super Ljavax/lang/model/util/SimpleAnnotationValueVisitor8;
.source "$AnnotationValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/auto/common/$AnnotationValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArrayVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavax/lang/model/util/SimpleAnnotationValueVisitor8<",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
        "TT;>;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final visitT:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljavax/lang/model/element/AnnotationValue;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljavax/lang/model/element/AnnotationValue;",
            "TT;>;)V"
        }
    .end annotation

    .line 316
    invoke-direct {p0}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor8;-><init>()V

    .line 317
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Function;

    iput-object p1, p0, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$ArrayVisitor;->visitT:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public defaultAction(Ljava/lang/Object;Ljava/lang/Void;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Void;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TT;>;"
        }
    .end annotation

    .line 322
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected an array, got instead: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 312
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$ArrayVisitor;->defaultAction(Ljava/lang/Object;Ljava/lang/Void;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Ljava/util/List;Ljava/lang/Void;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;",
            "Ljava/lang/Void;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TT;>;"
        }
    .end annotation

    .line 327
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    iget-object p2, p0, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$ArrayVisitor;->visitT:Ljava/util/function/Function;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->toImmutableList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-object p1
.end method

.method public bridge synthetic visitArray(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 312
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues$ArrayVisitor;->visitArray(Ljava/util/List;Ljava/lang/Void;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method
