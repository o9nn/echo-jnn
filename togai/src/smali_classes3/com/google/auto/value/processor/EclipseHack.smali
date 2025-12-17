.class Lcom/google/auto/value/processor/EclipseHack;
.super Ljava/lang/Object;
.source "EclipseHack.java"


# instance fields
.field private final elementUtils:Ljavax/lang/model/util/Elements;

.field private final typeUtils:Ljavax/lang/model/util/Types;


# direct methods
.method constructor <init>(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 1

    .line 51
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/auto/value/processor/EclipseHack;-><init>(Ljavax/lang/model/util/Elements;Ljavax/lang/model/util/Types;)V

    return-void
.end method

.method constructor <init>(Ljavax/lang/model/util/Elements;Ljavax/lang/model/util/Types;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/EclipseHack;->elementUtils:Ljavax/lang/model/util/Elements;

    iput-object p2, p0, Lcom/google/auto/value/processor/EclipseHack;->typeUtils:Ljavax/lang/model/util/Types;

    return-void
.end method

.method static getEnclosingType(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/type/TypeMirror;
    .locals 4

    .line 85
    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->getEnclosingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    .line 86
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eclipse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    .line 96
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 97
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/google/auto/value/processor/EclipseHack$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/google/auto/value/processor/EclipseHack$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/google/auto/value/processor/EclipseHack$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/google/auto/value/processor/EclipseHack$$ExternalSyntheticLambda1;-><init>()V

    .line 101
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 102
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 103
    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    .line 105
    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/google/auto/value/processor/EclipseHack$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/google/auto/value/processor/EclipseHack$$ExternalSyntheticLambda2;-><init>()V

    .line 106
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 107
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    :goto_0
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->getEnclosingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    return-object p0
.end method

.method static synthetic lambda$getEnclosingType$0(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 1

    .line 97
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object p0

    sget-object v0, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {p0, v0}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getEnclosingType$1(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Name;
    .locals 0

    .line 101
    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asTypeVariable(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeVariable;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p0

    return-object p0
.end method

.method private noArgMethodsIn(Ljavax/lang/model/type/DeclaredType;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/DeclaredType;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/Name;",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/processor/EclipseHack;->typeUtils:Ljavax/lang/model/util/Types;

    .line 176
    invoke-interface {v0, p1}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    iget-object v0, p0, Lcom/google/auto/value/processor/EclipseHack;->elementUtils:Ljavax/lang/model/util/Elements;

    .line 178
    invoke-interface {v0, p1}, Ljavax/lang/model/util/Elements;->getAllMembers(Ljavax/lang/model/element/TypeElement;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 179
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 180
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/ExecutableElement;

    .line 181
    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method methodReturnType(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/type/TypeMirror;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/auto/value/processor/EclipseHack;->typeUtils:Ljavax/lang/model/util/Types;

    .line 124
    invoke-interface {v0, p2, p1}, Ljavax/lang/model/util/Types;->asMemberOf(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 125
    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asExecutable(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ExecutableType;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/ExecutableType;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 127
    :catch_0
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/auto/value/processor/EclipseHack;->methodReturnTypes(Ljava/util/Set;Ljavax/lang/model/type/DeclaredType;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    return-object p1
.end method

.method methodReturnTypes(Ljava/util/Set;Ljavax/lang/model/type/DeclaredType;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;",
            "Ljavax/lang/model/type/DeclaredType;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation

    .line 146
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    move-result-object v0

    .line 148
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/ExecutableElement;

    :try_start_0
    iget-object v4, p0, Lcom/google/auto/value/processor/EclipseHack;->typeUtils:Ljavax/lang/model/util/Types;

    .line 151
    invoke-interface {v4, p2, v3}, Ljavax/lang/model/util/Types;->asMemberOf(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 152
    invoke-static {v4}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asExecutable(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ExecutableType;

    move-result-object v4

    invoke-interface {v4}, Ljavax/lang/model/type/ExecutableType;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 154
    :catch_0
    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_0

    .line 156
    invoke-direct {p0, p2}, Lcom/google/auto/value/processor/EclipseHack;->noArgMethodsIn(Ljavax/lang/model/type/DeclaredType;)Ljava/util/Map;

    move-result-object v2

    .line 158
    :cond_0
    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v4}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    if-nez v4, :cond_2

    .line 162
    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 164
    :cond_2
    invoke-virtual {v0, v3, v4}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    goto :goto_0

    .line 166
    :cond_3
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p1

    return-object p1
.end method
