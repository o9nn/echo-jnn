.class final Lcom/google/auto/value/extension/toprettystring/processor/Annotations;
.super Ljava/lang/Object;
.source "Annotations.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAnnotationMirror(Ljavax/lang/model/element/Element;Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    .line 31
    invoke-interface {v0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    invoke-static {v1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-interface {v1, p1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 36
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static toPrettyStringAnnotation(Ljavax/lang/model/element/Element;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            ")",
            "Ljava/util/Optional<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    const-string v0, "com.google.auto.value.extension.toprettystring.ToPrettyString"

    .line 40
    invoke-static {p0, v0}, Lcom/google/auto/value/extension/toprettystring/processor/Annotations;->getAnnotationMirror(Ljavax/lang/model/element/Element;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
