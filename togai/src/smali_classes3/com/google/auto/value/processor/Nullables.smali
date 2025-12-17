.class Lcom/google/auto/value/processor/Nullables;
.super Ljava/lang/Object;
.source "Nullables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/value/processor/Nullables$NullableFinder;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$2PpT7Gs6YeyuKUB7bwemKmKkSp0(Ljavax/lang/model/type/TypeMirror;)Ljava/util/Optional;
    .locals 0

    invoke-static {p0}, Lcom/google/auto/value/processor/Nullables;->nullableIn(Ljavax/lang/model/type/TypeMirror;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yvS8ba_uzbQnyp0w3r_NE0ebUrc(Ljava/util/Optional;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/Optional;
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/google/auto/value/processor/Nullables;->nullableIn(Ljava/util/List;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$nullableIn$1(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1

    .line 63
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p0

    const-string v0, "Nullable"

    invoke-interface {p0, v0}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$nullableIn$2(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$nullableMentionedInMethods$0(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/stream/Stream;
    .locals 2

    .line 48
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 49
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 47
    invoke-static {v0, p0}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static nullableIn(Ljava/util/List;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)",
            "Ljava/util/Optional<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/processor/Nullables$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/auto/value/processor/Nullables$$ExternalSyntheticLambda3;-><init>()V

    .line 63
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/processor/Nullables$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/google/auto/value/processor/Nullables$$ExternalSyntheticLambda4;-><init>()V

    .line 64
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 65
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static nullableIn(Ljavax/lang/model/type/TypeMirror;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Ljava/util/Optional<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/google/auto/value/processor/Nullables$NullableFinder;

    invoke-direct {v0}, Lcom/google/auto/value/processor/Nullables$NullableFinder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/auto/value/processor/Nullables$NullableFinder;->visit(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method static nullableMentionedInMethods(Ljava/util/Collection;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;)",
            "Ljava/util/Optional<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/processor/Nullables$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/auto/value/processor/Nullables$$ExternalSyntheticLambda0;-><init>()V

    .line 45
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/processor/Nullables$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/auto/value/processor/Nullables$$ExternalSyntheticLambda1;-><init>()V

    .line 50
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/processor/Nullables$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/auto/value/processor/Nullables$$ExternalSyntheticLambda2;-><init>()V

    .line 51
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 52
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    .line 53
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method
