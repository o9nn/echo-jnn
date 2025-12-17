.class public Lcom/google/auto/value/processor/AutoValueProcessor;
.super Lcom/google/auto/value/processor/AutoValueishProcessor;
.source "AutoValueProcessor.java"


# annotations
.annotation runtime Ljavax/annotation/processing/SupportedAnnotationTypes;
    value = {
        "com.google.auto.value.AutoValue"
    }
.end annotation


# static fields
.field private static final OLD_MEMOIZE_EXTENSION:Ljava/lang/String; = "com.google.auto.value.extension.memoized.MemoizeExtension"

.field static final OMIT_IDENTIFIERS_OPTION:Ljava/lang/String; = "com.google.auto.value.OmitIdentifiers"


# instance fields
.field private extensions:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lcom/google/auto/value/extension/AutoValueExtension;",
            ">;"
        }
    .end annotation
.end field

.field private final loaderForExtensions:Ljava/lang/ClassLoader;


# direct methods
.method public static synthetic $r8$lambda$RqMwW1Qi7f-oFiW9JvqRcMsy1zg(Lcom/google/auto/value/processor/AutoValueProcessor;Lcom/google/auto/value/extension/AutoValueExtension;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/AutoValueProcessor;->extensionName(Lcom/google/auto/value/extension/AutoValueExtension;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/google/auto/value/processor/AutoValueProcessor;

    .line 78
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/auto/value/processor/AutoValueProcessor;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    const-string v0, "com.google.auto.value.AutoValue"

    .line 83
    invoke-direct {p0, v0}, Lcom/google/auto/value/processor/AutoValueishProcessor;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/auto/value/processor/AutoValueProcessor;->extensions:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    iput-object p1, p0, Lcom/google/auto/value/processor/AutoValueProcessor;->loaderForExtensions:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/auto/value/extension/AutoValueExtension;",
            ">;)V"
        }
    .end annotation

    const-string v0, "com.google.auto.value.AutoValue"

    .line 90
    invoke-direct {p0, v0}, Lcom/google/auto/value/processor/AutoValueishProcessor;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->copyOf(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/processor/AutoValueProcessor;->extensions:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/auto/value/processor/AutoValueProcessor;->loaderForExtensions:Ljava/lang/ClassLoader;

    return-void
.end method

.method private ancestorIsAutoValue(Ljavax/lang/model/element/TypeElement;)Z
    .locals 2

    .line 471
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    .line 472
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 475
    :cond_1
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoValueProcessor;->typeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/element/TypeElement;

    const-string v0, "com.google.auto.value.AutoValue"

    .line 476
    invoke-static {p1, v0}, Lcom/google/auto/value/processor/AutoValueProcessor;->hasAnnotationMirror(Ljavax/lang/model/element/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method private applicableExtensions(Ljavax/lang/model/element/TypeElement;Lcom/google/auto/value/processor/ExtensionContext;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Lcom/google/auto/value/processor/ExtensionContext;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lcom/google/auto/value/extension/AutoValueExtension;",
            ">;"
        }
    .end annotation

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/auto/value/processor/AutoValueProcessor;->extensions:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 312
    invoke-virtual {v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/auto/value/extension/AutoValueExtension;

    .line 313
    invoke-virtual {v3, p2}, Lcom/google/auto/value/extension/AutoValueExtension;->applicable(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 314
    invoke-virtual {v3, p2}, Lcom/google/auto/value/extension/AutoValueExtension;->mustBeFinal(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 315
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 317
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 321
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_4

    const/4 v2, 0x1

    if-eq p2, v2, :cond_3

    .line 328
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoValueProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object p2

    .line 333
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/google/auto/value/processor/AutoValueProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/google/auto/value/processor/AutoValueProcessor$$ExternalSyntheticLambda4;-><init>(Lcom/google/auto/value/processor/AutoValueProcessor;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[AutoValueMultiFinal] More than one extension wants to generate the final class: %s"

    .line 329
    invoke-virtual {p2, p1, v2, v1}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 325
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 336
    :cond_4
    :goto_1
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->copyOf(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method private defineVarsForType(Ljavax/lang/model/element/TypeElement;Lcom/google/auto/value/processor/AutoValueTemplateVars;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Ljava/util/Optional;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Lcom/google/auto/value/processor/AutoValueTemplateVars;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/google/auto/value/processor/BuilderSpec$Builder;",
            ">;)V"
        }
    .end annotation

    .line 425
    invoke-virtual {p4}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    .line 428
    invoke-virtual {p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v1, Lcom/google/auto/value/processor/AutoValueProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/auto/value/processor/AutoValueProcessor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    invoke-static {p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->copyOf(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p3

    iput-object p3, p2, Lcom/google/auto/value/processor/AutoValueTemplateVars;->toBuilderMethods:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 429
    iget-object p3, p2, Lcom/google/auto/value/processor/AutoValueTemplateVars;->toBuilderMethods:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    invoke-virtual {p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->isEmpty()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p2, Lcom/google/auto/value/processor/AutoValueTemplateVars;->toBuilderConstructor:Ljava/lang/Boolean;

    .line 431
    invoke-virtual {p0, p1, v0}, Lcom/google/auto/value/processor/AutoValueProcessor;->propertyFieldAnnotationMap(Ljavax/lang/model/element/TypeElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object p3

    .line 433
    invoke-virtual {p0, p1, v0}, Lcom/google/auto/value/processor/AutoValueProcessor;->propertyMethodAnnotationMap(Ljavax/lang/model/element/TypeElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object p1

    .line 435
    invoke-virtual {p0, p4, p3, p1}, Lcom/google/auto/value/processor/AutoValueProcessor;->propertySet(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    iput-object p1, p2, Lcom/google/auto/value/processor/AutoValueTemplateVars;->props:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    .line 437
    new-instance p1, Lcom/google/auto/value/processor/AutoValueProcessor$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v0, p2}, Lcom/google/auto/value/processor/AutoValueProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/google/auto/value/processor/AutoValueProcessor;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lcom/google/auto/value/processor/AutoValueTemplateVars;)V

    invoke-virtual {p5, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private extensionName(Lcom/google/auto/value/extension/AutoValueExtension;)Ljava/lang/String;
    .locals 0

    .line 416
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static extensionsFromLoader(Ljava/lang/ClassLoader;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lcom/google/auto/value/extension/AutoValueExtension;",
            ">;"
        }
    .end annotation

    .line 103
    const-class v0, Lcom/google/auto/value/extension/AutoValueExtension;

    .line 105
    invoke-static {v0, p0}, Lcom/google/auto/value/processor/SimpleServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/processor/AutoValueProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/auto/value/processor/AutoValueProcessor$$ExternalSyntheticLambda2;-><init>()V

    .line 104
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->filter(Ljava/lang/Iterable;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/lang/Iterable;

    move-result-object p0

    .line 103
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->copyOf(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method static generatedSubclassName(Ljavax/lang/model/element/TypeElement;I)Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-static {v1, p1}, Lautovalue/shaded/com/google$/common/base/$Strings;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "AutoValue_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/auto/value/processor/AutoValueProcessor;->generatedClassName(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    .line 488
    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    return-object p1
.end method

.method private static immutableSetDifference(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 492
    invoke-static {p0, p1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 495
    :cond_0
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$Sets$SetView;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->copyOf(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method private implementsAnnotation(Ljavax/lang/model/element/TypeElement;)Z
    .locals 2

    .line 484
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoValueProcessor;->typeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    const-class v1, Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v1}, Lcom/google/auto/value/processor/AutoValueProcessor;->getTypeMirror(Ljava/lang/Class;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljavax/lang/model/util/Types;->isAssignable(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$extensionsFromLoader$0(Lcom/google/auto/value/extension/AutoValueExtension;)Z
    .locals 1

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.google.auto.value.extension.memoized.MemoizeExtension"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private methodsConsumedByExtensions(Ljavax/lang/model/element/TypeElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lcom/google/auto/value/processor/ExtensionContext;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lcom/google/auto/value/extension/AutoValueExtension;",
            ">;",
            "Lcom/google/auto/value/processor/ExtensionContext;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 345
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 346
    invoke-virtual {p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/auto/value/extension/AutoValueExtension;

    .line 347
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 348
    invoke-virtual {v1, p3}, Lcom/google/auto/value/extension/AutoValueExtension;->consumeProperties(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 349
    invoke-virtual {p5, v4}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/ExecutableElement;

    if-nez v5, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoValueProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object v5

    .line 356
    invoke-direct {p0, v1}, Lcom/google/auto/value/processor/AutoValueProcessor;->extensionName(Lcom/google/auto/value/extension/AutoValueExtension;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "[AutoValueConsumeNonexist] Extension %s wants to consume a property that does not exist: %s"

    .line 352
    invoke-virtual {v5, p1, v6, v4}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 359
    :cond_0
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 362
    :cond_1
    invoke-virtual {v1, p3}, Lcom/google/auto/value/extension/AutoValueExtension;->consumeMethods(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/ExecutableElement;

    .line 363
    invoke-virtual {p4, v4}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 364
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoValueProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object v5

    .line 369
    invoke-direct {p0, v1}, Lcom/google/auto/value/processor/AutoValueProcessor;->extensionName(Lcom/google/auto/value/extension/AutoValueExtension;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "[AutoValueConsumeNotAbstract] Extension %s wants to consume a method that is not one of the abstract methods in this class: %s"

    .line 365
    invoke-virtual {v5, p1, v6, v4}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 372
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 375
    :cond_3
    invoke-static {v0, v2}, Lautovalue/shaded/com/google$/common/collect/$Sets;->intersection(Ljava/util/Set;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$Sets$SetView;

    move-result-object v3

    invoke-virtual {v3}, Lautovalue/shaded/com/google$/common/collect/$Sets$SetView;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/ExecutableElement;

    .line 376
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoValueProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object v5

    .line 381
    invoke-direct {p0, v1}, Lcom/google/auto/value/processor/AutoValueProcessor;->extensionName(Lcom/google/auto/value/extension/AutoValueExtension;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "[AutoValueMultiConsume] Extension %s wants to consume a method that was already consumed by another extension"

    .line 377
    invoke-virtual {v5, v4, v7, v6}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 383
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 385
    :cond_5
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->copyOf(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method private static optionsFor(Lcom/google/auto/value/extension/AutoValueExtension$IncrementalExtensionType;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/auto/value/extension/AutoValueExtension$IncrementalExtensionType;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/google/auto/value/processor/AutoValueProcessor$1;->$SwitchMap$com$google$auto$value$extension$AutoValueExtension$IncrementalExtensionType:[I

    invoke-virtual {p0}, Lcom/google/auto/value/extension/AutoValueExtension$IncrementalExtensionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 156
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 154
    :cond_1
    sget-object p0, Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;->AGGREGATING:Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;

    invoke-virtual {p0}, Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;->getProcessorOption()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0

    .line 152
    :cond_2
    sget-object p0, Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;->ISOLATING:Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;

    invoke-virtual {p0}, Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;->getProcessorOption()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method static prefixedGettersIn(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 453
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object v0

    .line 454
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/ExecutableElement;

    .line 455
    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "get"

    .line 457
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v6

    :goto_1
    const-string v4, "is"

    .line 459
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 460
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 461
    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v4, Ljavax/lang/model/type/TypeKind;->BOOLEAN:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v4, :cond_2

    goto :goto_2

    :cond_2
    move v5, v6

    :goto_2
    if-nez v3, :cond_3

    if-eqz v5, :cond_0

    .line 463
    :cond_3
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    goto :goto_0

    .line 466
    :cond_4
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method private validateMethods(Ljavax/lang/model/element/TypeElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Z)V
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
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;Z)V"
        }
    .end annotation

    .line 394
    invoke-virtual {p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    .line 395
    invoke-virtual {p4, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    invoke-virtual {p0, p1, v0}, Lcom/google/auto/value/processor/AutoValueProcessor;->checkReturnType(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;)V

    goto :goto_0

    .line 397
    :cond_1
    invoke-virtual {p3, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    invoke-static {v0}, Lcom/google/auto/value/processor/AutoValueProcessor;->objectMethodToOverride(Ljavax/lang/model/element/ExecutableElement;)Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;

    move-result-object v1

    sget-object v2, Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;->NONE:Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;

    if-ne v1, v2, :cond_0

    if-eqz p5, :cond_2

    const-string v1, ", and no extension consumed it"

    goto :goto_1

    :cond_2
    const-string v1, ""

    .line 404
    :goto_1
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoValueProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object v2

    const-string v3, "[AutoValueBuilderWhat] Abstract method is neither a property getter nor a Builder converter%s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 405
    invoke-virtual {v2, v0, v3, v1}, Lcom/google/auto/value/processor/ErrorReporter;->reportWarning(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 412
    :cond_3
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoValueProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/auto/value/processor/ErrorReporter;->abortIfAnyError()V

    return-void
.end method

.method private writeExtensions(Ljavax/lang/model/element/TypeElement;Lcom/google/auto/value/processor/ExtensionContext;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Lcom/google/auto/value/processor/ExtensionContext;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lcom/google/auto/value/extension/AutoValueExtension;",
            ">;)I"
        }
    .end annotation

    .line 292
    invoke-virtual {p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object p3

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/auto/value/extension/AutoValueExtension;

    add-int/lit8 v3, v1, 0x1

    .line 293
    invoke-static {p1, v3}, Lcom/google/auto/value/processor/AutoValueProcessor;->generatedSubclassName(Ljavax/lang/model/element/TypeElement;I)Ljava/lang/String;

    move-result-object v4

    .line 294
    invoke-static {v4}, Lcom/google/auto/value/processor/TypeSimplifier;->simpleNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 295
    invoke-static {p1, v1}, Lcom/google/auto/value/processor/AutoValueProcessor;->generatedSubclassName(Ljavax/lang/model/element/TypeElement;I)Ljava/lang/String;

    move-result-object v5

    .line 296
    invoke-static {v5}, Lcom/google/auto/value/processor/TypeSimplifier;->simpleNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v1, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    move v7, v0

    .line 298
    :goto_1
    invoke-virtual {v2, p2, v6, v4, v7}, Lcom/google/auto/value/extension/AutoValueExtension;->generateClass(Lcom/google/auto/value/extension/AutoValueExtension$Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 300
    invoke-static {v2}, Lcom/google/auto/value/processor/Reformatter;->fixup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-virtual {p0, v5, v1, p1}, Lcom/google/auto/value/processor/AutoValueProcessor;->writeSourceFile(Ljava/lang/String;Ljava/lang/String;Ljavax/lang/model/element/TypeElement;)V

    move v1, v3

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public getSupportedOptions()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/processor/AutoValueProcessor;->extensions:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 137
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/google/auto/value/processor/AutoValueProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/google/auto/value/processor/AutoValueProcessor$$ExternalSyntheticLambda3;-><init>(Lcom/google/auto/value/processor/AutoValueProcessor;)V

    .line 138
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 139
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/google/auto/value/extension/AutoValueExtension$IncrementalExtensionType;->ISOLATING:Lcom/google/auto/value/extension/AutoValueExtension$IncrementalExtensionType;

    .line 140
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/auto/value/extension/AutoValueExtension$IncrementalExtensionType;

    const-string v2, "com.google.auto.value.OmitIdentifiers"

    .line 141
    invoke-virtual {v0, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object v2

    invoke-static {v1}, Lcom/google/auto/value/processor/AutoValueProcessor;->optionsFor(Lcom/google/auto/value/extension/AutoValueExtension$IncrementalExtensionType;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v1

    invoke-virtual {v2, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    iget-object v1, p0, Lcom/google/auto/value/processor/AutoValueProcessor;->extensions:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 142
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/auto/value/extension/AutoValueExtension;

    .line 143
    invoke-virtual {v2}, Lcom/google/auto/value/extension/AutoValueExtension;->getSupportedOptions()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized init(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 5

    monitor-enter p0

    .line 111
    :try_start_0
    invoke-super {p0, p1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->init(Ljavax/annotation/processing/ProcessingEnvironment;)V

    iget-object p1, p0, Lcom/google/auto/value/processor/AutoValueProcessor;->extensions:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    :try_start_1
    iget-object p1, p0, Lcom/google/auto/value/processor/AutoValueProcessor;->loaderForExtensions:Ljava/lang/ClassLoader;

    .line 115
    invoke-static {p1}, Lcom/google/auto/value/processor/AutoValueProcessor;->extensionsFromLoader(Ljava/lang/ClassLoader;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/processor/AutoValueProcessor;->extensions:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 117
    :goto_0
    :try_start_2
    instance-of v0, p1, Ljava/util/ServiceConfigurationError;

    if-eqz v0, :cond_0

    const-string v0, " This may be due to a corrupt jar file in the compiler\'s classpath."

    goto :goto_1

    :cond_0
    const-string v0, ""

    .line 121
    :goto_1
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoValueProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object v1

    const-string v2, "[AutoValueExtensionsException] An exception occurred while looking for AutoValue extensions. No extensions will function.%s\n%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 127
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Throwables;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v3, v0

    const/4 p1, 0x0

    .line 122
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/auto/value/processor/ErrorReporter;->reportWarning(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/processor/AutoValueProcessor;->extensions:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method synthetic lambda$defineVarsForType$2$com-google-auto-value-processor-AutoValueProcessor(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lcom/google/auto/value/processor/AutoValueTemplateVars;Lcom/google/auto/value/processor/BuilderSpec$Builder;)V
    .locals 0

    .line 440
    invoke-virtual {p0, p1}, Lcom/google/auto/value/processor/AutoValueProcessor;->propertyNameToMethodMap(Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->inverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object p1

    .line 441
    invoke-virtual {p3, p2, p1}, Lcom/google/auto/value/processor/BuilderSpec$Builder;->defineVarsForAutoValue(Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;)V

    const-string p1, "Builder"

    .line 442
    iput-object p1, p2, Lcom/google/auto/value/processor/AutoValueTemplateVars;->builderName:Ljava/lang/String;

    .line 443
    invoke-virtual {p3}, Lcom/google/auto/value/processor/BuilderSpec$Builder;->builderType()Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/auto/value/processor/AutoValueProcessor;->copiedClassAnnotations(Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    iput-object p1, p2, Lcom/google/auto/value/processor/AutoValueTemplateVars;->builderAnnotations:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-void
.end method

.method synthetic lambda$getSupportedOptions$1$com-google-auto-value-processor-AutoValueProcessor(Lcom/google/auto/value/extension/AutoValueExtension;)Lcom/google/auto/value/extension/AutoValueExtension$IncrementalExtensionType;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-virtual {p1, v0}, Lcom/google/auto/value/extension/AutoValueExtension;->incrementalType(Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/google/auto/value/extension/AutoValueExtension$IncrementalExtensionType;

    move-result-object p1

    return-object p1
.end method

.method nullableAnnotationForMethod(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Optional;
    .locals 1
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

    .line 449
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/auto/value/processor/AutoValueProcessor;->nullableAnnotationFor(Ljavax/lang/model/element/Element;Ljavax/lang/model/type/TypeMirror;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method processType(Ljavax/lang/model/element/TypeElement;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 167
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    const/4 v8, 0x0

    if-eq v0, v1, :cond_0

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/google/auto/value/processor/AutoValueProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object v0

    const-string v1, "[AutoValueNotClass] @AutoValue only applies to classes"

    new-array v2, v8, [Ljava/lang/Object;

    .line 169
    invoke-virtual {v0, v7, v1, v2}, Lcom/google/auto/value/processor/ErrorReporter;->abortWithError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/auto/value/processor/AbortProcessingException;

    .line 171
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/google/auto/value/processor/AutoValueProcessor;->ancestorIsAutoValue(Ljavax/lang/model/element/TypeElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/google/auto/value/processor/AutoValueProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object v0

    const-string v1, "[AutoValueExtend] One @AutoValue class may not extend another"

    new-array v2, v8, [Ljava/lang/Object;

    .line 173
    invoke-virtual {v0, v7, v1, v2}, Lcom/google/auto/value/processor/ErrorReporter;->abortWithError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/auto/value/processor/AbortProcessingException;

    .line 175
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/google/auto/value/processor/AutoValueProcessor;->implementsAnnotation(Ljavax/lang/model/element/TypeElement;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/google/auto/value/processor/AutoValueProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object v0

    const-string v1, "[AutoValueImplAnnotation] @AutoValue may not be used to implement an annotation interface; try using @AutoAnnotation instead"

    new-array v2, v8, [Ljava/lang/Object;

    .line 177
    invoke-virtual {v0, v7, v1, v2}, Lcom/google/auto/value/processor/ErrorReporter;->abortWithError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/auto/value/processor/AbortProcessingException;

    .line 182
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/google/auto/value/processor/AutoValueProcessor;->checkModifiersIfNested(Ljavax/lang/model/element/TypeElement;)V

    .line 201
    iget-object v0, v6, Lcom/google/auto/value/processor/AutoValueProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 203
    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    iget-object v1, v6, Lcom/google/auto/value/processor/AutoValueProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v1

    .line 202
    invoke-static {v7, v0, v1}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->getLocalAndInheritedMethods(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v9

    .line 204
    invoke-static {v9}, Lcom/google/auto/value/processor/AutoValueProcessor;->abstractMethodsIn(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v10

    .line 206
    new-instance v0, Lcom/google/auto/value/processor/BuilderSpec;

    iget-object v1, v6, Lcom/google/auto/value/processor/AutoValueProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-virtual/range {p0 .. p0}, Lcom/google/auto/value/processor/AutoValueProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object v2

    invoke-direct {v0, v7, v1, v2}, Lcom/google/auto/value/processor/BuilderSpec;-><init>(Ljavax/lang/model/element/TypeElement;Ljavax/annotation/processing/ProcessingEnvironment;Lcom/google/auto/value/processor/ErrorReporter;)V

    .line 207
    invoke-virtual {v0}, Lcom/google/auto/value/processor/BuilderSpec;->getBuilder()Ljava/util/Optional;

    move-result-object v11

    .line 209
    invoke-virtual {v11}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    invoke-virtual {v11}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/auto/value/processor/BuilderSpec$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/auto/value/processor/AutoValueProcessor;->typeUtils()Ljavax/lang/model/util/Types;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v10}, Lcom/google/auto/value/processor/BuilderSpec$Builder;->toBuilderMethods(Ljavax/lang/model/util/Types;Ljavax/lang/model/element/TypeElement;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 212
    :cond_3
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    :goto_0
    move-object v12, v0

    .line 216
    invoke-static {v10, v12}, Lcom/google/auto/value/processor/AutoValueProcessor;->immutableSetDifference(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Lcom/google/auto/value/processor/AutoValueProcessor;->propertyMethodsIn(Ljava/util/Set;Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v13

    .line 218
    invoke-virtual {v13}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/auto/value/processor/AutoValueProcessor;->propertyNameToMethodMap(Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object v14

    .line 220
    new-instance v15, Lcom/google/auto/value/processor/ExtensionContext;

    iget-object v1, v6, Lcom/google/auto/value/processor/AutoValueProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    move-object v0, v15

    move-object/from16 v2, p1

    move-object v3, v14

    move-object v4, v13

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/google/auto/value/processor/ExtensionContext;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/element/TypeElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)V

    .line 222
    invoke-direct {v6, v7, v15}, Lcom/google/auto/value/processor/AutoValueProcessor;->applicableExtensions(Ljavax/lang/model/element/TypeElement;Lcom/google/auto/value/processor/ExtensionContext;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v15

    move-object v4, v10

    move-object/from16 v16, v5

    move-object v5, v14

    .line 224
    invoke-direct/range {v0 .. v5}, Lcom/google/auto/value/processor/AutoValueProcessor;->methodsConsumedByExtensions(Ljavax/lang/model/element/TypeElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lcom/google/auto/value/processor/ExtensionContext;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 229
    invoke-static {v10, v0}, Lcom/google/auto/value/processor/AutoValueProcessor;->immutableSetDifference(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v13

    .line 230
    invoke-static {v12, v0}, Lcom/google/auto/value/processor/AutoValueProcessor;->immutableSetDifference(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v12

    .line 232
    invoke-static {v13, v12}, Lcom/google/auto/value/processor/AutoValueProcessor;->immutableSetDifference(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Lcom/google/auto/value/processor/AutoValueProcessor;->propertyMethodsIn(Ljava/util/Set;Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v14

    .line 233
    invoke-virtual {v14}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/auto/value/processor/AutoValueProcessor;->propertyNameToMethodMap(Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object v3

    .line 234
    new-instance v15, Lcom/google/auto/value/processor/ExtensionContext;

    iget-object v1, v6, Lcom/google/auto/value/processor/AutoValueProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    move-object v0, v15

    move-object/from16 v2, p1

    move-object v4, v14

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/google/auto/value/processor/ExtensionContext;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/element/TypeElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)V

    move-object v2, v13

    goto :goto_1

    :cond_4
    move-object v2, v10

    move-object v14, v13

    .line 238
    :goto_1
    invoke-virtual {v14}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v4

    .line 239
    invoke-virtual/range {v16 .. v16}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->isEmpty()Z

    move-result v0

    const/4 v10, 0x1

    xor-int/lit8 v5, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v12

    .line 240
    invoke-direct/range {v0 .. v5}, Lcom/google/auto/value/processor/AutoValueProcessor;->validateMethods(Ljavax/lang/model/element/TypeElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Z)V

    .line 242
    invoke-static {v7, v8}, Lcom/google/auto/value/processor/AutoValueProcessor;->generatedSubclassName(Ljavax/lang/model/element/TypeElement;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/auto/value/processor/TypeSimplifier;->simpleNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 243
    new-instance v5, Lcom/google/auto/value/processor/AutoValueTemplateVars;

    invoke-direct {v5}, Lcom/google/auto/value/processor/AutoValueTemplateVars;-><init>()V

    .line 244
    iget-object v0, v6, Lcom/google/auto/value/processor/AutoValueProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    iput-object v0, v5, Lcom/google/auto/value/processor/AutoValueTemplateVars;->types:Ljavax/lang/model/util/Types;

    .line 245
    iget-object v0, v6, Lcom/google/auto/value/processor/AutoValueProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "com.google.auto.value.OmitIdentifiers"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v5, Lcom/google/auto/value/processor/AutoValueTemplateVars;->identifiers:Ljava/lang/Boolean;

    .line 246
    invoke-virtual {v6, v7, v9, v5}, Lcom/google/auto/value/processor/AutoValueProcessor;->defineSharedVarsForType(Ljavax/lang/model/element/TypeElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lcom/google/auto/value/processor/AutoValueishTemplateVars;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v12

    move-object v4, v14

    move-object v9, v5

    move-object v5, v11

    .line 247
    invoke-direct/range {v0 .. v5}, Lcom/google/auto/value/processor/AutoValueProcessor;->defineVarsForType(Ljavax/lang/model/element/TypeElement;Lcom/google/auto/value/processor/AutoValueTemplateVars;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Ljava/util/Optional;)V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v9, Lcom/google/auto/value/processor/AutoValueTemplateVars;->origClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Lcom/google/auto/value/processor/AutoValueTemplateVars;->actualTypes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/auto/value/processor/AutoValueTemplateVars;->builtType:Ljava/lang/String;

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Lcom/google/auto/value/processor/AutoValueTemplateVars;->actualTypes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/auto/value/processor/AutoValueTemplateVars;->build:Ljava/lang/String;

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/google/auto/value/processor/AutoValueProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/auto/value/processor/ErrorReporter;->abortIfAnyError()V

    .line 256
    new-instance v0, Lcom/google/auto/value/processor/GwtCompatibility;

    invoke-direct {v0, v7}, Lcom/google/auto/value/processor/GwtCompatibility;-><init>(Ljavax/lang/model/element/TypeElement;)V

    .line 257
    invoke-virtual {v0}, Lcom/google/auto/value/processor/GwtCompatibility;->gwtCompatibleAnnotationString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/google/auto/value/processor/AutoValueTemplateVars;->gwtCompatibleAnnotation:Ljava/lang/String;

    .line 259
    new-instance v1, Lcom/google/auto/value/processor/AutoValueProcessor$$ExternalSyntheticLambda5;

    invoke-direct {v1, v15}, Lcom/google/auto/value/processor/AutoValueProcessor$$ExternalSyntheticLambda5;-><init>(Lcom/google/auto/value/processor/ExtensionContext;)V

    invoke-virtual {v11, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    move-object/from16 v1, v16

    .line 260
    invoke-direct {v6, v7, v15, v1}, Lcom/google/auto/value/processor/AutoValueProcessor;->writeExtensions(Ljavax/lang/model/element/TypeElement;Lcom/google/auto/value/processor/ExtensionContext;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)I

    move-result v1

    .line 261
    invoke-static {v7, v1}, Lcom/google/auto/value/processor/AutoValueProcessor;->generatedSubclassName(Ljavax/lang/model/element/TypeElement;I)Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-static {v2}, Lcom/google/auto/value/processor/TypeSimplifier;->simpleNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/google/auto/value/processor/AutoValueTemplateVars;->subclass:Ljava/lang/String;

    if-nez v1, :cond_5

    move v8, v10

    .line 263
    :cond_5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v9, Lcom/google/auto/value/processor/AutoValueTemplateVars;->isFinal:Ljava/lang/Boolean;

    .line 264
    iget-object v1, v9, Lcom/google/auto/value/processor/AutoValueTemplateVars;->isFinal:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "final "

    goto :goto_2

    :cond_6
    const-string v1, "abstract "

    :goto_2
    iput-object v1, v9, Lcom/google/auto/value/processor/AutoValueTemplateVars;->modifiers:Ljava/lang/String;

    .line 266
    invoke-virtual {v9}, Lcom/google/auto/value/processor/AutoValueTemplateVars;->toText()Ljava/lang/String;

    move-result-object v1

    .line 267
    iget-object v3, v6, Lcom/google/auto/value/processor/AutoValueProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    iget-object v4, v9, Lcom/google/auto/value/processor/AutoValueTemplateVars;->pkg:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/google/auto/value/processor/TypeEncoder;->decode(Ljava/lang/String;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-static {v1}, Lcom/google/auto/value/processor/Reformatter;->fixup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-virtual {v6, v2, v1, v7}, Lcom/google/auto/value/processor/AutoValueProcessor;->writeSourceFile(Ljava/lang/String;Ljava/lang/String;Ljavax/lang/model/element/TypeElement;)V

    .line 270
    new-instance v1, Lcom/google/auto/value/processor/GwtSerialization;

    iget-object v2, v6, Lcom/google/auto/value/processor/AutoValueProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-direct {v1, v0, v2, v7}, Lcom/google/auto/value/processor/GwtSerialization;-><init>(Lcom/google/auto/value/processor/GwtCompatibility;Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/element/TypeElement;)V

    .line 271
    invoke-virtual {v1, v9, v13}, Lcom/google/auto/value/processor/GwtSerialization;->maybeWriteGwtSerializer(Lcom/google/auto/value/processor/AutoValueTemplateVars;Ljava/lang/String;)V

    return-void
.end method
