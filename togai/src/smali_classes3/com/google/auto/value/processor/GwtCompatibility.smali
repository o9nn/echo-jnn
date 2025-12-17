.class Lcom/google/auto/value/processor/GwtCompatibility;
.super Ljava/lang/Object;
.source "GwtCompatibility.java"


# instance fields
.field private final gwtCompatibleAnnotation:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavax/lang/model/element/TypeElement;)V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    .line 35
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p1

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 37
    invoke-interface {v1}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    const-string v3, "GwtCompatible"

    .line 38
    invoke-interface {v2, v3}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/google/auto/value/processor/GwtCompatibility;->gwtCompatibleAnnotation:Ljava/util/Optional;

    return-void
.end method

.method static getElementValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object p0

    .line 52
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$gwtCompatibleAnnotationString$0(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method gwtCompatibleAnnotation()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/processor/GwtCompatibility;->gwtCompatibleAnnotation:Ljava/util/Optional;

    return-object v0
.end method

.method gwtCompatibleAnnotationString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/auto/value/processor/GwtCompatibility;->gwtCompatibleAnnotation:Ljava/util/Optional;

    .line 57
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auto/value/processor/GwtCompatibility;->gwtCompatibleAnnotation:Ljava/util/Optional;

    .line 58
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    .line 59
    invoke-interface {v0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeElement;

    .line 61
    invoke-interface {v0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {v0}, Lcom/google/auto/value/processor/GwtCompatibility;->getElementValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/Map;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/processor/GwtCompatibility$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/auto/value/processor/GwtCompatibility$$ExternalSyntheticLambda0;-><init>()V

    .line 68
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, "("

    const-string v3, ")"

    const-string v4, ", "

    .line 69
    invoke-static {v4, v1, v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 71
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method
