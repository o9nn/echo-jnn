.class Lcom/google/auto/value/processor/Nullables$NullableFinder;
.super Ljavax/lang/model/util/SimpleTypeVisitor8;
.source "Nullables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/processor/Nullables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullableFinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleTypeVisitor8<",
        "Ljava/util/Optional<",
        "Ljavax/lang/model/element/AnnotationMirror;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final visiting:Lcom/google/auto/value/processor/TypeMirrorSet;


# direct methods
.method public static synthetic $r8$lambda$3xfdS4ExdtamQd0tHEavG4RbAhQ(Ljava/lang/Object;)Ljava/util/Optional;
    .locals 0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AxxKq3-aGja-fmhsDmot7Nn2x4M(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OP3XUcuFATZGI0aRnSgVLPt48F4(Lcom/google/auto/value/processor/Nullables$NullableFinder;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/lang/model/util/AbstractTypeVisitor6;->visit(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yvS8ba_uzbQnyp0w3r_NE0ebUrc(Ljava/util/Optional;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method constructor <init>()V
    .locals 1

    .line 72
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/lang/model/util/SimpleTypeVisitor8;-><init>(Ljava/lang/Object;)V

    .line 69
    new-instance v0, Lcom/google/auto/value/processor/TypeMirrorSet;

    invoke-direct {v0}, Lcom/google/auto/value/processor/TypeMirrorSet;-><init>()V

    iput-object v0, p0, Lcom/google/auto/value/processor/Nullables$NullableFinder;->visiting:Lcom/google/auto/value/processor/TypeMirrorSet;

    return-void
.end method

.method private visitAll(Ljava/util/List;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;)",
            "Ljava/util/Optional<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 124
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda0;-><init>(Lcom/google/auto/value/processor/Nullables$NullableFinder;)V

    .line 125
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda1;-><init>()V

    .line 126
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 127
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    .line 128
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    return-object p1
.end method


# virtual methods
.method synthetic lambda$visitArray$2$com-google-auto-value-processor-Nullables$NullableFinder(Ljavax/lang/model/type/ArrayType;)Ljava/util/Optional;
    .locals 0

    .line 101
    invoke-interface {p1}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/auto/value/processor/Nullables$NullableFinder;->visit(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    return-object p1
.end method

.method synthetic lambda$visitDeclared$0$com-google-auto-value-processor-Nullables$NullableFinder(Ljavax/lang/model/type/DeclaredType;)Ljava/util/Optional;
    .locals 0

    .line 84
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/Nullables$NullableFinder;->visitAll(Ljava/util/List;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$visitIntersection$4$com-google-auto-value-processor-Nullables$NullableFinder(Ljavax/lang/model/type/IntersectionType;)Ljava/util/Optional;
    .locals 0

    .line 120
    invoke-interface {p1}, Ljavax/lang/model/type/IntersectionType;->getBounds()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/Nullables$NullableFinder;->visitAll(Ljava/util/List;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$visitTypeVariable$1$com-google-auto-value-processor-Nullables$NullableFinder(Ljavax/lang/model/type/TypeVariable;)Ljava/util/Optional;
    .locals 1

    .line 94
    invoke-interface {p1}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {p1}, Ljavax/lang/model/type/TypeVariable;->getLowerBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/Nullables$NullableFinder;->visitAll(Ljava/util/List;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$visitWildcard$3$com-google-auto-value-processor-Nullables$NullableFinder(Ljavax/lang/model/type/WildcardType;)Ljava/util/Optional;
    .locals 3

    .line 0
    const/4 v0, 0x2

    new-array v0, v0, [Ljavax/lang/model/type/TypeMirror;

    const/4 v1, 0x0

    .line 111
    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getSuperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda8;-><init>()V

    .line 112
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 113
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 110
    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/Nullables$NullableFinder;->visitAll(Ljava/util/List;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/Nullables$NullableFinder;->visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Void;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Void;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/ArrayType;",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Optional<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-interface {p1}, Ljavax/lang/model/type/ArrayType;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/google/auto/value/processor/Nullables;->access$000(Ljava/util/List;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda2;-><init>()V

    .line 100
    invoke-virtual {p2, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda5;-><init>(Lcom/google/auto/value/processor/Nullables$NullableFinder;Ljavax/lang/model/type/ArrayType;)V

    .line 101
    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    return-object p1
.end method

.method public bridge synthetic visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/Nullables$NullableFinder;->visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Void;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Void;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/DeclaredType;",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Optional<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    iget-object p2, p0, Lcom/google/auto/value/processor/Nullables$NullableFinder;->visiting:Lcom/google/auto/value/processor/TypeMirrorSet;

    .line 79
    invoke-virtual {p2, p1}, Lcom/google/auto/value/processor/TypeMirrorSet;->add(Ljavax/lang/model/type/TypeMirror;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 80
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 82
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/google/auto/value/processor/Nullables;->access$000(Ljava/util/List;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda2;-><init>()V

    .line 83
    invoke-virtual {p2, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda7;-><init>(Lcom/google/auto/value/processor/Nullables$NullableFinder;Ljavax/lang/model/type/DeclaredType;)V

    .line 84
    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    return-object p1
.end method

.method public bridge synthetic visitIntersection(Ljavax/lang/model/type/IntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/Nullables$NullableFinder;->visitIntersection(Ljavax/lang/model/type/IntersectionType;Ljava/lang/Void;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection(Ljavax/lang/model/type/IntersectionType;Ljava/lang/Void;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/IntersectionType;",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Optional<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-interface {p1}, Ljavax/lang/model/type/IntersectionType;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/google/auto/value/processor/Nullables;->access$000(Ljava/util/List;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda2;-><init>()V

    .line 119
    invoke-virtual {p2, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda4;-><init>(Lcom/google/auto/value/processor/Nullables$NullableFinder;Ljavax/lang/model/type/IntersectionType;)V

    .line 120
    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    return-object p1
.end method

.method public bridge synthetic visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/Nullables$NullableFinder;->visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Void;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Void;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeVariable;",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Optional<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    iget-object p2, p0, Lcom/google/auto/value/processor/Nullables$NullableFinder;->visiting:Lcom/google/auto/value/processor/TypeMirrorSet;

    .line 89
    invoke-virtual {p2, p1}, Lcom/google/auto/value/processor/TypeMirrorSet;->add(Ljavax/lang/model/type/TypeMirror;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 90
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 92
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/type/TypeVariable;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/google/auto/value/processor/Nullables;->access$000(Ljava/util/List;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda2;-><init>()V

    .line 93
    invoke-virtual {p2, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda6;-><init>(Lcom/google/auto/value/processor/Nullables$NullableFinder;Ljavax/lang/model/type/TypeVariable;)V

    .line 94
    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    return-object p1
.end method

.method public bridge synthetic visitWildcard(Ljavax/lang/model/type/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/Nullables$NullableFinder;->visitWildcard(Ljavax/lang/model/type/WildcardType;Ljava/lang/Void;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Ljavax/lang/model/type/WildcardType;Ljava/lang/Void;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/WildcardType;",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Optional<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/google/auto/value/processor/Nullables;->access$000(Ljava/util/List;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda2;-><init>()V

    .line 107
    invoke-virtual {p2, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda3;-><init>(Lcom/google/auto/value/processor/Nullables$NullableFinder;Ljavax/lang/model/type/WildcardType;)V

    .line 108
    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    return-object p1
.end method
