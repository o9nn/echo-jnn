.class public final Lautovalue/shaded/com/google$/auto/common/$AnnotationMirrors;
.super Ljava/lang/Object;
.source "$AnnotationMirrors.java"


# static fields
.field private static final ANNOTATION_MIRROR_EQUIVALENCE:Lautovalue/shaded/com/google$/common/base/$Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/base/$Equivalence<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$AnnotationMirrors$1;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/auto/common/$AnnotationMirrors$1;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/auto/common/$AnnotationMirrors;->ANNOTATION_MIRROR_EQUIVALENCE:Lautovalue/shaded/com/google$/common/base/$Equivalence;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/base/$Equivalence<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    sget-object v0, Lautovalue/shaded/com/google$/auto/common/$AnnotationMirrors;->ANNOTATION_MIRROR_EQUIVALENCE:Lautovalue/shaded/com/google$/common/base/$Equivalence;

    return-object v0
.end method

.method public static getAnnotatedAnnotations(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 150
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p0

    .line 151
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$FluentIterable;->from(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$FluentIterable;

    move-result-object p0

    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$AnnotationMirrors$2;

    invoke-direct {v0, p1}, Lautovalue/shaded/com/google$/auto/common/$AnnotationMirrors$2;-><init>(Ljava/lang/Class;)V

    .line 152
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$FluentIterable;->filter(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$FluentIterable;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$FluentIterable;->toSet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static getAnnotationElementAndValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;"
        }
    .end annotation

    .line 131
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$AnnotationMirrors;->getAnnotationValuesWithDefaults(Ljavax/lang/model/element/AnnotationMirror;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 135
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-interface {v2, p1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 139
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 140
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "@%s does not define an element %s()"

    .line 139
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationValue;
    .locals 0

    .line 119
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/auto/common/$AnnotationMirrors;->getAnnotationElementAndValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/element/AnnotationValue;

    return-object p0
.end method

.method public static getAnnotationValuesWithDefaults(Ljavax/lang/model/element/AnnotationMirror;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    move-result-object v0

    .line 92
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v1

    .line 94
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getEnclosedElements()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    .line 96
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    goto :goto_0

    .line 98
    :cond_0
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getDefaultValue()Ljavax/lang/model/element/AnnotationValue;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 99
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getDefaultValue()Ljavax/lang/model/element/AnnotationValue;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    goto :goto_0

    .line 101
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unset annotation value without default should never happen: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-static {v1}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_2
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p0

    return-object p0
.end method
