.class public Lcom/google/auto/value/processor/AutoAnnotationProcessor;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "AutoAnnotationProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/value/processor/AutoAnnotationProcessor$Parameter;,
        Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedAnnotationTypes;
    value = {
        "com.google.auto.value.AutoAnnotation"
    }
.end annotation


# instance fields
.field private elementUtils:Ljavax/lang/model/util/Elements;

.field private typeUtils:Ljavax/lang/model/util/Types;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    return-void
.end method

.method private varargs abortWithError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/auto/value/processor/AbortProcessingException;
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    new-instance p1, Lcom/google/auto/value/processor/AbortProcessingException;

    invoke-direct {p1}, Lcom/google/auto/value/processor/AbortProcessingException;-><init>()V

    return-object p1
.end method

.method private compatibleTypes(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->typeUtils:Ljavax/lang/model/util/Types;

    .line 385
    invoke-interface {v0, p1, p2}, Ljavax/lang/model/util/Types;->isAssignable(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 394
    :cond_0
    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v2, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    .line 397
    :cond_1
    invoke-static {p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asArray(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ArrayType;

    move-result-object p2

    invoke-interface {p2}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p2

    .line 399
    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->typeUtils:Ljavax/lang/model/util/Types;

    check-cast p2, Ljavax/lang/model/type/PrimitiveType;

    .line 400
    invoke-interface {v0, p2}, Ljavax/lang/model/util/Types;->boxedClass(Ljavax/lang/model/type/PrimitiveType;)Ljavax/lang/model/element/TypeElement;

    move-result-object p2

    invoke-interface {p2}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p2

    :cond_2
    iget-object v0, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->elementUtils:Ljavax/lang/model/util/Elements;

    .line 402
    const-class v2, Ljava/util/Collection;

    .line 403
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    iget-object v2, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->typeUtils:Ljavax/lang/model/util/Types;

    new-array v1, v1, [Ljavax/lang/model/type/TypeMirror;

    aput-object p2, v1, v3

    .line 405
    invoke-interface {v2, v0, v1}, Ljavax/lang/model/util/Types;->getDeclaredType(Ljavax/lang/model/element/TypeElement;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p2

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->typeUtils:Ljavax/lang/model/util/Types;

    .line 406
    invoke-interface {v0, p1, p2}, Ljavax/lang/model/util/Types;->isAssignable(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    return p1
.end method

.method private static computeSerialVersionUid(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;",
            ">;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/processor/AutoAnnotationProcessor$Parameter;",
            ">;)J"
        }
    .end annotation

    .line 474
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/processor/AutoAnnotationProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/google/auto/value/processor/AutoAnnotationProcessor$$ExternalSyntheticLambda0;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)V

    .line 475
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/google/auto/value/processor/AutoAnnotationProcessor$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/google/auto/value/processor/AutoAnnotationProcessor$$ExternalSyntheticLambda1;-><init>()V

    .line 476
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/google/auto/value/processor/AutoAnnotationProcessor$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/google/auto/value/processor/AutoAnnotationProcessor$$ExternalSyntheticLambda2;-><init>()V

    .line 477
    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/google/auto/value/processor/AutoAnnotationProcessor$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/google/auto/value/processor/AutoAnnotationProcessor$$ExternalSyntheticLambda3;-><init>()V

    .line 478
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string p1, ";"

    .line 479
    invoke-static {p1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 480
    invoke-static {}, Lautovalue/shaded/com/google$/common/hash/$Hashing;->murmur3_128()Lautovalue/shaded/com/google$/common/hash/$HashFunction;

    move-result-object p1

    invoke-interface {p1, p0}, Lautovalue/shaded/com/google$/common/hash/$HashFunction;->hashUnencodedChars(Ljava/lang/CharSequence;)Lautovalue/shaded/com/google$/common/hash/$HashCode;

    move-result-object p0

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/hash/$HashCode;->asLong()J

    move-result-wide p0

    return-wide p0
.end method

.method private static fullyQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 443
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private generatedClassName(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;
    .locals 5

    .line 259
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 260
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    :goto_0
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    instance-of v2, v2, Ljavax/lang/model/element/TypeElement;

    const-string v3, "_"

    if-eqz v2, :cond_0

    .line 262
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AutoAnnotation_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAnnotationReturnType(Ljavax/lang/model/element/ExecutableElement;)Ljavax/lang/model/element/TypeElement;
    .locals 4

    .line 269
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 270
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->typeUtils:Ljavax/lang/model/util/Types;

    .line 271
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 272
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/element/ElementKind;->ANNOTATION_TYPE:Ljavax/lang/model/element/ElementKind;

    if-ne v2, v3, :cond_0

    .line 273
    invoke-static {v1}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "Return type of @AutoAnnotation method must be an annotation type, not %s"

    .line 276
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->abortWithError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/auto/value/processor/AbortProcessingException;

    move-result-object p1

    throw p1
.end method

.method private getDefaultValues(Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;"
        }
    .end annotation

    .line 304
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    move-result-object v0

    .line 306
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

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

    .line 307
    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getDefaultValue()Ljavax/lang/model/element/AnnotationValue;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {v0, v2, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    goto :goto_0

    .line 313
    :cond_1
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method private getGeneratedTypeName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->elementUtils:Ljavax/lang/model/util/Elements;

    .line 184
    iget-object v1, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getSourceVersion()Ljavax/lang/model/SourceVersion;

    move-result-object v1

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotations;->generatedAnnotation(Ljavax/lang/model/util/Elements;Ljavax/lang/model/SourceVersion;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/processor/AutoAnnotationProcessor$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/google/auto/value/processor/AutoAnnotationProcessor$$ExternalSyntheticLambda6;-><init>()V

    .line 185
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    .line 186
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getMemberMethods(Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 283
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    move-result-object v0

    .line 285
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/ExecutableElement;

    .line 286
    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    invoke-virtual {v0, v2, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method private getMembers(Ljavax/lang/model/element/Element;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;",
            ">;"
        }
    .end annotation

    .line 294
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    move-result-object v0

    .line 295
    invoke-virtual {p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p2

    invoke-virtual {p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 296
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/ExecutableElement;

    .line 297
    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    new-instance v3, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;

    iget-object v4, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-direct {v3, v4, p1, v1}, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/element/Element;Ljavax/lang/model/element/ExecutableElement;)V

    invoke-virtual {v0, v2, v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method private getParameters(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;Ljava/util/Map;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;",
            ">;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/processor/AutoAnnotationProcessor$Parameter;",
            ">;"
        }
    .end annotation

    .line 318
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    move-result-object v0

    .line 320
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/VariableElement;

    .line 321
    invoke-interface {v2}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 322
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;

    const/4 v5, 0x1

    if-nez v4, :cond_0

    const-string v1, "@AutoAnnotation method parameter \'%s\' must have the same name as a member of %s"

    .line 324
    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move v1, v5

    goto :goto_0

    .line 331
    :cond_0
    invoke-interface {v2}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    .line 332
    invoke-virtual {v4}, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;->getTypeMirror()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 333
    invoke-direct {p0, v6, v4}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->compatibleTypes(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 334
    new-instance v2, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Parameter;

    invoke-direct {v2, v6}, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Parameter;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    invoke-virtual {v0, v3, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    goto :goto_0

    :cond_1
    const-string v1, "@AutoAnnotation method parameter \'%s\' has type %s but %s.%s has type %s"

    .line 336
    filled-new-array {v3, v6, p1, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 351
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p1

    return-object p1

    .line 349
    :cond_3
    new-instance p1, Lcom/google/auto/value/processor/AbortProcessingException;

    invoke-direct {p1}, Lcom/google/auto/value/processor/AbortProcessingException;-><init>()V

    throw p1
.end method

.method private getTypeMirror(Ljava/lang/Class;)Ljavax/lang/model/type/TypeMirror;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljavax/lang/model/type/TypeMirror;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->elementUtils:Ljavax/lang/model/util/Elements;

    .line 431
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    return-object p1
.end method

.method private static invariableHash(Ljava/util/List;)Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;)",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 212
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationValue;

    .line 213
    invoke-static {v1}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->invariableHash(Ljavax/lang/model/element/AnnotationValue;)Ljava/util/Optional;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 217
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 219
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static invariableHash(Ljavax/lang/model/element/AnnotationValue;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationValue;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 197
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 198
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/primitives/$Primitives;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 202
    check-cast p0, Ljava/util/List;

    .line 203
    invoke-static {p0}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->invariableHash(Ljava/util/List;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 205
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 199
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static invariableHashes(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;",
            ">;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljava/lang/String;",
            ">;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 228
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    move-result-object v0

    .line 229
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 230
    invoke-virtual {p1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 231
    invoke-virtual {p0, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;

    .line 232
    invoke-static {v3}, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;->access$000(Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getDefaultValue()Ljavax/lang/model/element/AnnotationValue;

    move-result-object v3

    .line 233
    invoke-static {v3}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->invariableHash(Ljavax/lang/model/element/AnnotationValue;)Ljava/util/Optional;

    move-result-object v3

    .line 234
    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    mul-int/lit8 v4, v4, 0x7f

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    xor-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method private static isGwtCompatible(Ljavax/lang/model/element/TypeElement;)Z
    .locals 1

    .line 436
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p0

    .line 437
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/processor/AutoAnnotationProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/google/auto/value/processor/AutoAnnotationProcessor$$ExternalSyntheticLambda4;-><init>()V

    .line 438
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/processor/AutoAnnotationProcessor$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/google/auto/value/processor/AutoAnnotationProcessor$$ExternalSyntheticLambda5;-><init>()V

    .line 439
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$computeSerialVersionUid$3(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Ljava/util/Map$Entry;)Z
    .locals 0

    .line 475
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$computeSerialVersionUid$4(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 3

    .line 476
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;

    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;->getType()Ljava/lang/String;

    move-result-object p0

    const-string v1, "`"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$computeSerialVersionUid$5(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 2

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getGeneratedTypeName$0(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;
    .locals 0

    .line 185
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    invoke-static {p0}, Lcom/google/auto/value/processor/TypeEncoder;->encode(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$isGwtCompatible$1(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/Element;
    .locals 0

    .line 438
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$isGwtCompatible$2(Ljavax/lang/model/element/Element;)Z
    .locals 1

    .line 439
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p0

    const-string v0, "GwtCompatible"

    invoke-interface {p0, v0}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private methodsAreOverloaded(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;)Z"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 245
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/ExecutableElement;

    .line 248
    invoke-static {v3}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v4

    invoke-interface {v4}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-direct {p0, v3}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->generatedClassName(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v5

    .line 247
    invoke-static {v4, v5}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->fullyQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v2, "@AutoAnnotation methods cannot be overloaded"

    new-array v4, v1, [Ljava/lang/Object;

    .line 252
    invoke-direct {p0, v3, v2, v4}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private process(Ljavax/annotation/processing/RoundEnvironment;)V
    .locals 3

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->elementUtils:Ljavax/lang/model/util/Elements;

    const-string v1, "com.google.auto.value.AutoAnnotation"

    .line 119
    invoke-interface {v0, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 121
    invoke-interface {p1, v0}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljavax/lang/model/element/TypeElement;)Ljava/util/Set;

    move-result-object p1

    .line 122
    invoke-static {p1}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 123
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation;->validateElements(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->methodsAreOverloaded(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    .line 128
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->processMethod(Ljavax/lang/model/element/ExecutableElement;)V
    :try_end_0
    .catch Lcom/google/auto/value/processor/AbortProcessingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 132
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Throwables;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "@AutoAnnotation processor threw an exception: %s"

    .line 133
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method private processMethod(Ljavax/lang/model/element/ExecutableElement;)V
    .locals 13

    .line 140
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 144
    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->getAnnotationReturnType(Ljavax/lang/model/element/ExecutableElement;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 146
    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->wrapperTypesUsedInCollections(Ljavax/lang/model/element/ExecutableElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v8

    .line 148
    invoke-direct {p0, v0}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->getMemberMethods(Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v2

    .line 149
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    invoke-static {v3}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v9

    .line 150
    invoke-static {v9}, Lcom/google/auto/value/processor/TypeSimplifier;->packageNameOf(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;

    move-result-object v10

    .line 152
    invoke-direct {p0, v0}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->getDefaultValues(Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v7

    .line 153
    invoke-direct {p0, p1, v2}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->getMembers(Ljavax/lang/model/element/Element;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v11

    .line 154
    invoke-direct {p0, v0, p1, v11}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->getParameters(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;Ljava/util/Map;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v12

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, v11

    move-object v6, v12

    .line 155
    invoke-direct/range {v2 .. v7}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->validateParameters(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)V

    .line 157
    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->generatedClassName(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object p1

    .line 159
    new-instance v2, Lcom/google/auto/value/processor/AutoAnnotationTemplateVars;

    invoke-direct {v2}, Lcom/google/auto/value/processor/AutoAnnotationTemplateVars;-><init>()V

    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/auto/value/processor/AutoAnnotationTemplateVars;->annotationFullName:Ljava/lang/String;

    .line 161
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-static {v3}, Lcom/google/auto/value/processor/TypeEncoder;->encode(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/auto/value/processor/AutoAnnotationTemplateVars;->annotationName:Ljava/lang/String;

    .line 162
    iput-object p1, v2, Lcom/google/auto/value/processor/AutoAnnotationTemplateVars;->className:Ljava/lang/String;

    .line 163
    invoke-direct {p0}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->getGeneratedTypeName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/auto/value/processor/AutoAnnotationTemplateVars;->generated:Ljava/lang/String;

    .line 164
    iput-object v11, v2, Lcom/google/auto/value/processor/AutoAnnotationTemplateVars;->members:Ljava/util/Map;

    .line 165
    iput-object v12, v2, Lcom/google/auto/value/processor/AutoAnnotationTemplateVars;->params:Ljava/util/Map;

    .line 166
    iput-object v10, v2, Lcom/google/auto/value/processor/AutoAnnotationTemplateVars;->pkg:Ljava/lang/String;

    .line 167
    iput-object v8, v2, Lcom/google/auto/value/processor/AutoAnnotationTemplateVars;->wrapperTypesUsedInCollections:Ljava/util/Set;

    .line 168
    invoke-static {v0}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->isGwtCompatible(Ljavax/lang/model/element/TypeElement;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/google/auto/value/processor/AutoAnnotationTemplateVars;->gwtCompatible:Ljava/lang/Boolean;

    .line 169
    invoke-static {v11, v12}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->computeSerialVersionUid(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/auto/value/processor/AutoAnnotationTemplateVars;->serialVersionUID:Ljava/lang/Long;

    .line 170
    invoke-virtual {v12}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->invariableHashes(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v3

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/google/auto/value/processor/AutoAnnotationTemplateVars;->invariableHashSum:Ljava/lang/Integer;

    .line 172
    invoke-virtual {v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->values()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    move-result-object v1

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 173
    iget-object v5, v2, Lcom/google/auto/value/processor/AutoAnnotationTemplateVars;->invariableHashSum:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/google/auto/value/processor/AutoAnnotationTemplateVars;->invariableHashSum:Ljava/lang/Integer;

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v1

    iput-object v1, v2, Lcom/google/auto/value/processor/AutoAnnotationTemplateVars;->invariableHashes:Ljava/util/Set;

    .line 176
    invoke-virtual {v2}, Lcom/google/auto/value/processor/AutoAnnotationTemplateVars;->toText()Ljava/lang/String;

    move-result-object v1

    .line 177
    iget-object v2, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v1, v2, v10, v0}, Lcom/google/auto/value/processor/TypeEncoder;->decode(Ljava/lang/String;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Lcom/google/auto/value/processor/Reformatter;->fixup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v10, p1}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->fullyQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-direct {p0, p1, v0, v9}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->writeSourceFile(Ljava/lang/String;Ljava/lang/String;Ljavax/lang/model/element/TypeElement;)V

    return-void

    :cond_1
    const-string v0, "@AutoAnnotation method must be static"

    new-array v1, v1, [Ljava/lang/Object;

    .line 141
    invoke-direct {p0, p1, v0, v1}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->abortWithError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/auto/value/processor/AbortProcessingException;

    move-result-object p1

    throw p1
.end method

.method private varargs reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 93
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 94
    iget-object p3, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {p3}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object p3

    sget-object v0, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {p3, v0, p2, p1}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    return-void
.end method

.method private validateParameters(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;",
            ">;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/processor/AutoAnnotationProcessor$Parameter;",
            ">;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;)V"
        }
    .end annotation

    .line 361
    invoke-virtual {p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 362
    invoke-virtual {p4, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p5, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 368
    invoke-virtual {p3, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;

    invoke-virtual {v1}, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;->getType()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1, p1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "@AutoAnnotation method needs a parameter with name \'%s\' and type %s corresponding to %s.%s, which has no default value"

    .line 363
    invoke-direct {p0, p2, v2, v1}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    return-void

    .line 375
    :cond_2
    new-instance p1, Lcom/google/auto/value/processor/AbortProcessingException;

    invoke-direct {p1}, Lcom/google/auto/value/processor/AbortProcessingException;-><init>()V

    throw p1
.end method

.method private wrapperTypesUsedInCollections(Ljavax/lang/model/element/ExecutableElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->elementUtils:Ljavax/lang/model/util/Elements;

    .line 415
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 416
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object v1

    .line 417
    invoke-static {}, Lautovalue/shaded/com/google$/common/primitives/$Primitives;->allWrapperTypes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    iget-object v4, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->typeUtils:Ljavax/lang/model/util/Types;

    const/4 v5, 0x1

    new-array v5, v5, [Ljavax/lang/model/type/TypeMirror;

    const/4 v6, 0x0

    .line 419
    invoke-direct {p0, v3}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->getTypeMirror(Ljava/lang/Class;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v4, v0, v5}, Ljavax/lang/model/util/Types;->getDeclaredType(Ljavax/lang/model/element/TypeElement;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v4

    .line 420
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/VariableElement;

    iget-object v7, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->typeUtils:Ljavax/lang/model/util/Types;

    .line 421
    invoke-interface {v6}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-interface {v7, v6, v4}, Ljavax/lang/model/util/Types;->isAssignable(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 422
    invoke-virtual {v1, v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    goto :goto_0

    .line 427
    :cond_2
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method private writeSourceFile(Ljava/lang/String;Ljava/lang/String;Ljavax/lang/model/element/TypeElement;)V
    .locals 3

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 486
    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getFiler()Ljavax/annotation/processing/Filer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/lang/model/element/Element;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-interface {v0, p1, v1}, Ljavax/annotation/processing/Filer;->createSourceFile(Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/JavaFileObject;

    move-result-object p3

    .line 487
    invoke-interface {p3}, Ljavax/tools/JavaFileObject;->openWriter()Ljava/io/Writer;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :try_start_1
    invoke-virtual {p3, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_1

    .line 489
    :try_start_2
    invoke-virtual {p3}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 487
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p3, :cond_0

    .line 489
    :try_start_4
    invoke-virtual {p3}, Ljava/io/Writer;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p3

    :try_start_5
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p2

    .line 497
    iget-object p3, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 498
    invoke-interface {p3}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object p3

    sget-object v0, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not write generated class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 499
    invoke-interface {p3, v0, p1}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;
    .locals 1

    .line 84
    invoke-static {}, Ljavax/lang/model/SourceVersion;->latestSupported()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")Z"
        }
    .end annotation

    .line 112
    iget-object p1, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->elementUtils:Ljavax/lang/model/util/Elements;

    .line 113
    iget-object p1, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->typeUtils:Ljavax/lang/model/util/Types;

    .line 114
    invoke-direct {p0, p2}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->process(Ljavax/annotation/processing/RoundEnvironment;)V

    const/4 p1, 0x0

    return p1
.end method
