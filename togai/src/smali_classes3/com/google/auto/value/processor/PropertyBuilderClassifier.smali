.class Lcom/google/auto/value/processor/PropertyBuilderClassifier;
.super Ljava/lang/Object;
.source "PropertyBuilderClassifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;
    }
.end annotation


# static fields
.field private static final ADD_ALL_PUT_ALL:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final BUILDER_METHOD_NAMES:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ONE_ARGUMENT_BUILDER_METHOD_NAMES:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final builderMethodClassifier:Lcom/google/auto/value/processor/BuilderMethodClassifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/auto/value/processor/BuilderMethodClassifier<",
            "*>;"
        }
    .end annotation
.end field

.field private final eclipseHack:Lcom/google/auto/value/processor/EclipseHack;

.field private final elementUtils:Ljavax/lang/model/util/Elements;

.field private final errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

.field private final propertyIsNullable:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final propertyTypes:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation
.end field

.field private final typeUtils:Ljavax/lang/model/util/Types;


# direct methods
.method public static synthetic $r8$lambda$lhvKEfNoXMXW1VYMDVLKCI08RWg(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string v0, "newBuilder"

    const-string v1, "naturalOrder"

    const-string v2, "builder"

    .line 343
    invoke-static {v1, v2, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->BUILDER_METHOD_NAMES:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    .line 355
    invoke-static {v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->ONE_ARGUMENT_BUILDER_METHOD_NAMES:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    const-string v0, "addAll"

    const-string v1, "putAll"

    .line 426
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->ADD_ALL_PUT_ALL:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    return-void
.end method

.method constructor <init>(Lcom/google/auto/value/processor/ErrorReporter;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;Lcom/google/auto/value/processor/BuilderMethodClassifier;Ljava/util/function/Predicate;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Lcom/google/auto/value/processor/EclipseHack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/auto/value/processor/ErrorReporter;",
            "Ljavax/lang/model/util/Types;",
            "Ljavax/lang/model/util/Elements;",
            "Lcom/google/auto/value/processor/BuilderMethodClassifier<",
            "*>;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;",
            "Lcom/google/auto/value/processor/EclipseHack;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    iput-object p2, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->typeUtils:Ljavax/lang/model/util/Types;

    iput-object p3, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->elementUtils:Ljavax/lang/model/util/Elements;

    iput-object p4, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->builderMethodClassifier:Lcom/google/auto/value/processor/BuilderMethodClassifier;

    iput-object p5, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->propertyIsNullable:Ljava/util/function/Predicate;

    iput-object p6, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->propertyTypes:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    iput-object p7, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->eclipseHack:Lcom/google/auto/value/processor/EclipseHack;

    return-void
.end method

.method private addAllPutAll(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/type/TypeMirror;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljavax/lang/model/type/DeclaredType;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Ljava/util/Optional<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->typeUtils:Ljavax/lang/model/util/Types;

    iget-object v1, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->elementUtils:Ljavax/lang/model/util/Elements;

    .line 440
    invoke-static {p1, v0, v1}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->getLocalAndInheritedMethods(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    .line 441
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda0;-><init>()V

    .line 442
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda4;-><init>(Lcom/google/auto/value/processor/PropertyBuilderClassifier;Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/type/TypeMirror;)V

    .line 446
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 452
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method private builderMaker(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Ljava/util/Map;Ljavax/lang/model/element/TypeElement;I)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;",
            "Ljavax/lang/model/element/TypeElement;",
            "I)",
            "Ljava/util/Optional<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 370
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2}, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda5;-><init>(Ljava/util/Map;)V

    .line 371
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda6;

    invoke-direct {p2}, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda6;-><init>()V

    .line 372
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda7;

    invoke-direct {p2}, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda7;-><init>()V

    .line 373
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, p3}, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda8;-><init>(Lcom/google/auto/value/processor/PropertyBuilderClassifier;Ljavax/lang/model/element/TypeElement;)V

    .line 374
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 379
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    .line 381
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 389
    :cond_0
    invoke-interface {p3}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljavax/lang/model/util/ElementFilter;->constructorsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda9;

    invoke-direct {p2, p4}, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda9;-><init>(I)V

    .line 390
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda10;

    invoke-direct {p2}, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda10;-><init>()V

    .line 391
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 392
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method private static isStaticInterfaceMethodNotIn(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Z
    .locals 2

    .line 421
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 423
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object p0

    sget-object p1, Ljavax/lang/model/element/ElementKind;->INTERFACE:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {p0, p1}, Ljavax/lang/model/element/ElementKind;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$addAllPutAll$8(Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 2

    sget-object v0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->ADD_ALL_PUT_ALL:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    .line 444
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$builderMaker$0(Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 1

    .line 373
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object p0

    sget-object v0, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$builderMaker$2(ILjavax/lang/model/element/ExecutableElement;)Z
    .locals 0

    .line 390
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$builderMaker$3(Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 1

    .line 391
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object p0

    sget-object v0, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$methodsOf$4(ILjavax/lang/model/element/ExecutableElement;)Z
    .locals 0

    .line 405
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$methodsOf$5(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 0

    .line 406
    invoke-static {p1, p0}, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->isStaticInterfaceMethodNotIn(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$methodsOf$6(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;
    .locals 0

    .line 410
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$methodsOf$7(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/ExecutableElement;)Ljavax/lang/model/element/ExecutableElement;
    .locals 0

    return-object p0
.end method

.method private methodsOf(Ljavax/lang/model/element/TypeElement;I)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "I)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->elementUtils:Ljavax/lang/model/util/Elements;

    .line 404
    invoke-interface {v0, p1}, Ljavax/lang/model/util/Elements;->getAllMembers(Ljavax/lang/model/element/TypeElement;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda11;

    invoke-direct {v1, p2}, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda11;-><init>(I)V

    .line 405
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda12;-><init>(Ljavax/lang/model/element/TypeElement;)V

    .line 406
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda1;-><init>()V

    .line 411
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda2;-><init>()V

    .line 409
    invoke-static {p2, v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object p2

    new-instance v0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda3;-><init>()V

    .line 408
    invoke-static {p2, v0}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p2

    .line 407
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    return-object p1
.end method

.method private noArgBuilderMaker(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Ljava/util/Optional<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->BUILDER_METHOD_NAMES:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    const/4 v1, 0x0

    .line 351
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->builderMaker(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Ljava/util/Map;Ljavax/lang/model/element/TypeElement;I)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method private noArgMethodsOf(Ljavax/lang/model/element/TypeElement;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 396
    invoke-direct {p0, p1, v0}, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->methodsOf(Ljavax/lang/model/element/TypeElement;I)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method private oneArgBuilderMaker(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Ljava/util/Optional<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->ONE_ARGUMENT_BUILDER_METHOD_NAMES:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    const/4 v1, 0x1

    .line 360
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->builderMaker(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Ljava/util/Map;Ljavax/lang/model/element/TypeElement;I)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method private oneArgumentMethodsOf(Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 1
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

    const/4 v0, 0x1

    .line 400
    invoke-direct {p0, p1, v0}, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->methodsOf(Ljavax/lang/model/element/TypeElement;I)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method synthetic lambda$addAllPutAll$9$com-google-auto-value-processor-PropertyBuilderClassifier(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->typeUtils:Ljavax/lang/model/util/Types;

    .line 449
    invoke-interface {v0, p1, p3}, Ljavax/lang/model/util/Types;->asMemberOf(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asExecutable(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ExecutableType;

    move-result-object p1

    iget-object p3, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->typeUtils:Ljavax/lang/model/util/Types;

    .line 450
    invoke-interface {p1}, Ljavax/lang/model/type/ExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    invoke-interface {p3, p2, p1}, Ljavax/lang/model/util/Types;->isAssignable(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$builderMaker$1$com-google-auto-value-processor-PropertyBuilderClassifier(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->typeUtils:Ljavax/lang/model/util/Types;

    .line 377
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p2

    invoke-interface {v0, p2}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p2

    iget-object v1, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->typeUtils:Ljavax/lang/model/util/Types;

    .line 378
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-interface {v1, p1}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    .line 376
    invoke-interface {v0, p2, p1}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    return p1
.end method

.method makePropertyBuilder(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;)Ljava/util/Optional;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->builderMethodClassifier:Lcom/google/auto/value/processor/BuilderMethodClassifier;

    .line 207
    invoke-virtual {v0, p1}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->builderMethodReturnType(Ljavax/lang/model/element/ExecutableElement;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 208
    invoke-interface {v4}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object p2, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    const-string v0, "[AutoValueOddBuilderMethod] Method looks like a property builder, but its return type is not a class or interface"

    new-array v1, v2, [Ljava/lang/Object;

    .line 209
    invoke-virtual {p2, p1, v0, v1}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 215
    :cond_0
    invoke-static {v4}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    .line 216
    invoke-static {v4}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    .line 217
    invoke-direct {p0, v1}, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->noArgMethodsOf(Ljavax/lang/model/element/TypeElement;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->propertyTypes:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 219
    invoke-virtual {v5, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/type/TypeMirror;

    .line 220
    invoke-interface {v5}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-eq v6, v7, :cond_1

    iget-object v0, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    const-string v1, "[AutoValueBadBuilderMethod] Method looks like a property builder, but the type of property %s is not a class or interface"

    .line 221
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v6, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->propertyIsNullable:Ljava/util/function/Predicate;

    .line 228
    invoke-interface {v6, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    const-string v7, "[AutoValueNullBuilder] Property %s is @Nullable so it cannot have a property builder"

    .line 229
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, p1, v7, v8}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    :cond_2
    invoke-static {v5}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object v6

    .line 235
    invoke-direct {p0, v6}, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->noArgMethodsOf(Ljavax/lang/model/element/TypeElement;)Ljava/util/Map;

    move-result-object v7

    const-string v8, "build"

    .line 238
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/ExecutableElement;

    if-eqz v3, :cond_c

    .line 239
    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v8

    sget-object v9, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v8, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->eclipseHack:Lcom/google/auto/value/processor/EclipseHack;

    .line 250
    invoke-virtual {v8, v3, v0}, Lcom/google/auto/value/processor/EclipseHack;->methodReturnType(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 251
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->equivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v8

    invoke-virtual {v8, v5, v3}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v0, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    const-string v2, "[AutoValueBuilderWrongType] Property builder for %s has type %s whose build() method returns %s instead of %s"

    .line 252
    filled-new-array {p2, v1, v3, v5}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, v2, p2}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 264
    :cond_4
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 265
    invoke-direct {p0, v7, v1}, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->noArgBuilderMaker(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;)Ljava/util/Optional;

    move-result-object v3

    goto :goto_0

    .line 267
    :cond_5
    invoke-direct {p0, v6}, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->oneArgumentMethodsOf(Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v3

    .line 268
    invoke-direct {p0, v3, v1}, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->oneArgBuilderMaker(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;)Ljava/util/Optional;

    move-result-object v3

    .line 270
    :goto_0
    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object p2, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    const-string v0, "[AutoValueCantMakePropertyBuilder] Method looks like a property builder, but its type %s does not have a public constructor and %s does not have a static builder() or newBuilder() method that returns %s"

    .line 271
    filled-new-array {v1, v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 281
    :cond_6
    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/ExecutableElement;

    .line 283
    invoke-static {v4}, Lcom/google/auto/value/processor/TypeEncoder;->encodeWithAnnotations(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v6

    .line 284
    invoke-static {v5}, Lcom/google/auto/value/processor/TypeEncoder;->encodeRaw(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v8

    .line 286
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v2, "()"

    goto :goto_1

    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/VariableElement;

    invoke-interface {v2}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ")"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    :goto_1
    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v9

    sget-object v10, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v9, v10, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "new "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 292
    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v9, v2

    const-string v2, "toBuilder"

    .line 295
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    .line 297
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v10

    sget-object v11, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->typeUtils:Ljavax/lang/model/util/Types;

    .line 299
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v11

    invoke-interface {v10, v11}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v11

    iget-object v12, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->typeUtils:Ljavax/lang/model/util/Types;

    .line 300
    invoke-interface {v12, v4}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v12

    .line 298
    invoke-interface {v10, v11, v12}, Ljavax/lang/model/util/Types;->isAssignable(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 301
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v3

    goto :goto_3

    .line 304
    :cond_9
    invoke-direct {p0, v1, v0, v5}, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->addAllPutAll(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/type/TypeMirror;)Ljava/util/Optional;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 306
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    move-object v0, v3

    goto :goto_3

    :cond_a
    move-object v0, v3

    move-object v10, v0

    :goto_3
    const-string v1, "of"

    .line 309
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/ExecutableElement;

    if-eqz v1, :cond_b

    .line 310
    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 322
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ".of()"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, ""

    goto :goto_4

    .line 324
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "$builder"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ".build()"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_4
    move-object v7, p2

    move-object p2, v1

    .line 329
    new-instance v11, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;

    move-object v1, v11

    move-object v2, p1

    move-object v3, v6

    move-object v5, v9

    move-object v6, p2

    move-object v8, v0

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;-><init>(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {v11}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_c
    :goto_5
    iget-object p2, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    const-string v0, "[AutoValueBuilderNotBuildable] Method looks like a property builder, but it returns %s which does not have a non-static build() method"

    .line 240
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
