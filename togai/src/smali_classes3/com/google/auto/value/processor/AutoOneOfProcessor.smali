.class public Lcom/google/auto/value/processor/AutoOneOfProcessor;
.super Lcom/google/auto/value/processor/AutoValueishProcessor;
.source "AutoOneOfProcessor.java"


# annotations
.annotation runtime Ljavax/annotation/processing/SupportedAnnotationTypes;
    value = {
        "com.google.auto.value.AutoOneOf"
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$d8asp7u7Q_DwgobgEKKGonwYnhU(Lcom/google/auto/value/processor/AutoOneOfProcessor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->transformName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.auto.value.AutoOneOf"

    .line 63
    invoke-direct {p0, v0}, Lcom/google/auto/value/processor/AutoValueishProcessor;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private defineVarsForType(Ljavax/lang/model/element/TypeElement;Lcom/google/auto/value/processor/AutoOneOfTemplateVars;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Ljavax/lang/model/element/ExecutableElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Lcom/google/auto/value/processor/AutoOneOfTemplateVars;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;",
            "Ljavax/lang/model/element/ExecutableElement;",
            ")V"
        }
    .end annotation

    .line 269
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object v0

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object v1

    .line 268
    invoke-virtual {p0, p3, v0, v1}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->propertySet(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p3

    iput-object p3, p2, Lcom/google/auto/value/processor/AutoOneOfTemplateVars;->props:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    .line 270
    invoke-interface {p4}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/google/auto/value/processor/AutoOneOfTemplateVars;->kindGetter:Ljava/lang/String;

    .line 271
    invoke-interface {p4}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p3

    invoke-static {p3}, Lcom/google/auto/value/processor/TypeEncoder;->encode(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/google/auto/value/processor/AutoOneOfTemplateVars;->kindType:Ljava/lang/String;

    .line 272
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->elementUtils()Ljavax/lang/model/util/Elements;

    move-result-object p3

    const-string p4, "java.io.Serializable"

    invoke-interface {p3, p4}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->typeUtils()Ljavax/lang/model/util/Types;

    move-result-object p4

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-interface {p3}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p3

    invoke-interface {p4, p1, p3}, Ljavax/lang/model/util/Types;->isAssignable(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 274
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p2, Lcom/google/auto/value/processor/AutoOneOfTemplateVars;->serializable:Ljava/lang/Boolean;

    return-void
.end method

.method private findKindGetterOrAbort(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/type/TypeMirror;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)Ljavax/lang/model/element/ExecutableElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljavax/lang/model/type/TypeMirror;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;)",
            "Ljavax/lang/model/element/ExecutableElement;"
        }
    .end annotation

    .line 211
    invoke-virtual {p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v0, Lcom/google/auto/value/processor/AutoOneOfProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/google/auto/value/processor/AutoOneOfProcessor$$ExternalSyntheticLambda0;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 212
    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v0, Lcom/google/auto/value/processor/AutoOneOfProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/auto/value/processor/AutoOneOfProcessor$$ExternalSyntheticLambda1;-><init>()V

    .line 213
    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p3

    .line 214
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    .line 215
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    if-eq v0, p1, :cond_0

    .line 227
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljavax/lang/model/element/ExecutableElement;

    .line 228
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object v0

    const-string v1, "[AutoOneOfTwoKindGetters] More than one abstract method returns %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    .line 229
    invoke-virtual {v0, p3, v1, v2}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 225
    :cond_0
    invoke-static {p3}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/element/ExecutableElement;

    return-object p1

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object p3

    const-string v0, "[AutoOneOfNoKindGetter] %s must have a no-arg abstract method returning %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 218
    invoke-virtual {p3, p1, v0, p2}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    :cond_2
    new-instance p1, Lcom/google/auto/value/processor/AbortProcessingException;

    invoke-direct {p1}, Lcom/google/auto/value/processor/AbortProcessingException;-><init>()V

    throw p1
.end method

.method static synthetic lambda$findKindGetterOrAbort$6(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 0

    .line 212
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->sameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$findKindGetterOrAbort$7(Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 0

    .line 213
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$propertyToKindMap$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$propertyToKindMap$1(Ljavax/lang/model/element/Element;)Z
    .locals 1

    .line 160
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object p0

    sget-object v0, Ljavax/lang/model/element/ElementKind;->ENUM_CONSTANT:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {p0, v0}, Ljavax/lang/model/element/ElementKind;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$propertyToKindMap$3(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/Element;
    .locals 0

    return-object p0
.end method

.method private mirrorForKindType(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/type/DeclaredType;
    .locals 2

    const-string v0, "com.google.auto.value.AutoOneOf"

    .line 128
    invoke-static {p1, v0}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->getAnnotationMirror(Ljavax/lang/model/element/Element;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/element/AnnotationMirror;

    const-string v0, "value"

    .line 130
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/auto/common/$AnnotationMirrors;->getAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object p1

    .line 131
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 132
    instance-of v0, p1, Ljavax/lang/model/type/TypeMirror;

    if-eqz v0, :cond_2

    .line 133
    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    .line 134
    sget-object v0, Lcom/google/auto/value/processor/AutoOneOfProcessor$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Lcom/google/auto/value/processor/MissingTypes$MissingTypeException;

    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asError(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ErrorType;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/auto/value/processor/MissingTypes$MissingTypeException;-><init>(Ljavax/lang/model/type/ErrorType;)V

    throw v0

    .line 136
    :cond_1
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p1

    return-object p1

    .line 143
    :cond_2
    :goto_0
    new-instance p1, Lcom/google/auto/value/processor/MissingTypes$MissingTypeException;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/auto/value/processor/MissingTypes$MissingTypeException;-><init>(Ljavax/lang/model/type/ErrorType;)V

    throw p1
.end method

.method private propertyToKindMap(Ljavax/lang/model/type/DeclaredType;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/DeclaredType;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljava/lang/String;",
            ">;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    .line 155
    invoke-virtual {p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/google/auto/value/processor/AutoOneOfProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/google/auto/value/processor/AutoOneOfProcessor$$ExternalSyntheticLambda2;-><init>(Lcom/google/auto/value/processor/AutoOneOfProcessor;)V

    new-instance v1, Lcom/google/auto/value/processor/AutoOneOfProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/google/auto/value/processor/AutoOneOfProcessor$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 158
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/processor/AutoOneOfProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/google/auto/value/processor/AutoOneOfProcessor$$ExternalSyntheticLambda4;-><init>()V

    .line 160
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/processor/AutoOneOfProcessor$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/google/auto/value/processor/AutoOneOfProcessor$$ExternalSyntheticLambda5;-><init>(Lcom/google/auto/value/processor/AutoOneOfProcessor;)V

    new-instance v2, Lcom/google/auto/value/processor/AutoOneOfProcessor$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/google/auto/value/processor/AutoOneOfProcessor$$ExternalSyntheticLambda6;-><init>()V

    .line 161
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 163
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    move-result-object p1

    .line 165
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 167
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 168
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/Element;

    invoke-interface {v2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {p1, v3, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p1

    return-object p1

    .line 175
    :cond_1
    new-instance v1, Lcom/google/auto/value/processor/AutoOneOfProcessor$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/auto/value/processor/AutoOneOfProcessor$$ExternalSyntheticLambda7;-><init>(Lcom/google/auto/value/processor/AutoOneOfProcessor;Ljava/util/Map;Ljavax/lang/model/element/TypeElement;)V

    invoke-interface {p2, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 187
    new-instance p1, Lcom/google/auto/value/processor/AutoOneOfProcessor$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, p2}, Lcom/google/auto/value/processor/AutoOneOfProcessor$$ExternalSyntheticLambda8;-><init>(Lcom/google/auto/value/processor/AutoOneOfProcessor;Ljava/util/Map;)V

    invoke-interface {v0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 198
    new-instance p1, Lcom/google/auto/value/processor/AbortProcessingException;

    invoke-direct {p1}, Lcom/google/auto/value/processor/AbortProcessingException;-><init>()V

    throw p1
.end method

.method private static sameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z
    .locals 1

    .line 289
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->equivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private transformName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 202
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "_"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private validateMethods(Ljavax/lang/model/element/TypeElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Ljavax/lang/model/element/ExecutableElement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;",
            "Ljavax/lang/model/element/ExecutableElement;",
            ")V"
        }
    .end annotation

    .line 243
    invoke-virtual {p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    .line 244
    invoke-virtual {p3, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {p0, p1, v0}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->checkReturnType(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;)V

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {v0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    invoke-static {v0}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->objectMethodToOverride(Ljavax/lang/model/element/ExecutableElement;)Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;

    move-result-object v1

    sget-object v2, Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;->NONE:Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;

    if-ne v1, v2, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "[AutoOneOfParams] Abstract methods in @AutoOneOf classes must have no parameters"

    .line 255
    invoke-virtual {v1, v0, v3, v2}, Lcom/google/auto/value/processor/ErrorReporter;->reportWarning(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 260
    :cond_2
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/auto/value/processor/ErrorReporter;->abortIfAnyError()V

    return-void
.end method


# virtual methods
.method public bridge synthetic init(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->init(Ljavax/annotation/processing/ProcessingEnvironment;)V

    return-void
.end method

.method synthetic lambda$propertyToKindMap$2$com-google-auto-value-processor-AutoOneOfProcessor(Ljavax/lang/model/element/Element;)Ljava/lang/String;
    .locals 0

    .line 161
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->transformName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$propertyToKindMap$4$com-google-auto-value-processor-AutoOneOfProcessor(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 177
    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object p1

    const-string p3, "[AutoOneOfNoEnumConstant] Enum has no constant with name corresponding to property \'%s\'"

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    .line 179
    invoke-virtual {p1, p2, p3, p4}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$propertyToKindMap$5$com-google-auto-value-processor-AutoOneOfProcessor(Ljava/util/Map;Ljava/lang/String;Ljavax/lang/model/element/Element;)V
    .locals 1

    .line 189
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object p1

    .line 195
    invoke-interface {p3}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "[AutoOneOfBadEnumConstant] Name of enum constant \'%s\' does not correspond to any property name"

    .line 191
    invoke-virtual {p1, p3, v0, p2}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method nullableAnnotationForMethod(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 280
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->nullableAnnotationFor(Ljavax/lang/model/element/Element;Ljavax/lang/model/type/TypeMirror;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[AutoOneOfNullable] @AutoOneOf properties cannot be @Nullable"

    .line 282
    invoke-virtual {v0, p1, v2, v1}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method processType(Ljavax/lang/model/element/TypeElement;)V
    .locals 7

    .line 73
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    if-eq v0, v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[AutoOneOfNotClass] @com.google.auto.value.AutoOneOf only applies to classes"

    .line 75
    invoke-virtual {v0, p1, v2, v1}, Lcom/google/auto/value/processor/ErrorReporter;->abortWithError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/auto/value/processor/AbortProcessingException;

    .line 79
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->checkModifiersIfNested(Ljavax/lang/model/element/TypeElement;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->mirrorForKindType(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/google/auto/value/processor/AutoOneOfProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 97
    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v1

    iget-object v2, p0, Lcom/google/auto/value/processor/AutoOneOfProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v2}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v2

    .line 96
    invoke-static {p1, v1, v2}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->getLocalAndInheritedMethods(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v1

    .line 98
    invoke-static {v1}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->abstractMethodsIn(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v2

    .line 100
    invoke-direct {p0, p1, v0, v2}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->findKindGetterOrAbort(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/type/TypeMirror;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v3

    .line 101
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 102
    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {p0, v4, p1}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->propertyMethodsIn(Ljava/util/Set;Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v4

    .line 107
    invoke-virtual {v4}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->propertyNameToMethodMap(Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object v5

    .line 108
    invoke-virtual {v4}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v6

    invoke-direct {p0, p1, v2, v6, v3}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->validateMethods(Ljavax/lang/model/element/TypeElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Ljavax/lang/model/element/ExecutableElement;)V

    .line 110
    invoke-virtual {v5}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->propertyToKindMap(Ljavax/lang/model/type/DeclaredType;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    const-string v2, "AutoOneOf_"

    .line 112
    invoke-static {p1, v2}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->generatedClassName(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    new-instance v5, Lcom/google/auto/value/processor/AutoOneOfTemplateVars;

    invoke-direct {v5}, Lcom/google/auto/value/processor/AutoOneOfTemplateVars;-><init>()V

    .line 114
    invoke-static {v2}, Lcom/google/auto/value/processor/TypeSimplifier;->simpleNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/google/auto/value/processor/AutoOneOfTemplateVars;->generatedClass:Ljava/lang/String;

    .line 115
    iput-object v0, v5, Lcom/google/auto/value/processor/AutoOneOfTemplateVars;->propertyToKind:Ljava/util/Map;

    .line 116
    invoke-virtual {p0, p1, v1, v5}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->defineSharedVarsForType(Ljavax/lang/model/element/TypeElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lcom/google/auto/value/processor/AutoValueishTemplateVars;)V

    .line 117
    invoke-direct {p0, p1, v5, v4, v3}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->defineVarsForType(Ljavax/lang/model/element/TypeElement;Lcom/google/auto/value/processor/AutoOneOfTemplateVars;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Ljavax/lang/model/element/ExecutableElement;)V

    .line 119
    invoke-virtual {v5}, Lcom/google/auto/value/processor/AutoOneOfTemplateVars;->toText()Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/google/auto/value/processor/AutoOneOfProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    iget-object v3, v5, Lcom/google/auto/value/processor/AutoOneOfTemplateVars;->pkg:Ljava/lang/String;

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/google/auto/value/processor/TypeEncoder;->decode(Ljava/lang/String;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/google/auto/value/processor/Reformatter;->fixup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/auto/value/processor/AutoOneOfProcessor;->writeSourceFile(Ljava/lang/String;Ljava/lang/String;Ljavax/lang/model/element/TypeElement;)V

    return-void
.end method

.method propertiesCanBeVoid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
