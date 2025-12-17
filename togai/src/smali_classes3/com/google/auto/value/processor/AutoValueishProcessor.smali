.class abstract Lcom/google/auto/value/processor/AutoValueishProcessor;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "AutoValueishProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/value/processor/AutoValueishProcessor$ContainsMutableVisitor;,
        Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;,
        Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;,
        Lcom/google/auto/value/processor/AutoValueishProcessor$Property;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final annotationClassName:Ljava/lang/String;

.field private annotationType:Ljavax/lang/model/element/TypeElement;

.field private final deferredTypeNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

.field private simpleAnnotationName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$B74JtVdCpyNddyuLquZtgwfV8ac(Lcom/google/auto/value/processor/AutoValueishProcessor;Ljavax/lang/model/element/TypeElement;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->annotationAppliesToFields(Ljavax/lang/model/element/TypeElement;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->deferredTypeNames:Ljava/util/List;

    iput-object p1, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->annotationClassName:Ljava/lang/String;

    return-void
.end method

.method static abstractMethodsIn(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 5
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

    .line 769
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 770
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object v1

    .line 771
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    .line 772
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 773
    invoke-static {v2}, Lcom/google/auto/value/processor/MissingTypes;->deferIfMissingTypesIn(Ljavax/lang/model/element/ExecutableElement;)V

    .line 774
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    .line 775
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 784
    :cond_1
    invoke-virtual {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    goto :goto_0

    .line 788
    :cond_2
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method private annotationAppliesToFields(Ljavax/lang/model/element/TypeElement;)Z
    .locals 1

    .line 1086
    const-class v0, Ljava/lang/annotation/Target;

    invoke-interface {p1, v0}, Ljavax/lang/model/element/TypeElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Target;

    if-eqz p1, :cond_1

    .line 1087
    invoke-interface {p1}, Ljava/lang/annotation/Target;->value()[Ljava/lang/annotation/ElementType;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    sget-object v0, Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static annotationStrings(Ljava/util/List;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 473
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 472
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->copyOf(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private annotationVisibleFrom(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/Element;)Z
    .locals 4

    .line 1091
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    .line 1092
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$Visibility;->effectiveVisibilityOfElement(Ljavax/lang/model/element/Element;)Lautovalue/shaded/com/google$/auto/common/$Visibility;

    move-result-object v0

    .line 1093
    sget-object v1, Lcom/google/auto/value/processor/AutoValueishProcessor$1;->$SwitchMap$com$google$auto$common$Visibility:[I

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/auto/common/$Visibility;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return v3

    .line 1112
    :cond_0
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object p1

    invoke-static {p2}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1108
    :cond_1
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v0

    invoke-static {p2}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1109
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->typeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    .line 1110
    invoke-interface {p2}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p2

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :cond_3
    :goto_0
    return v1
.end method

.method private copyAnnotations(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 948
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/auto/value/processor/AutoValueishProcessor;->annotationsToCopy(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    .line 949
    invoke-static {p1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->annotationStrings(Ljava/util/List;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method private static determineObjectMethodsToGenerate(Ljava/util/Set;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 723
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 724
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/ExecutableElement;

    .line 725
    invoke-static {v1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->objectMethodToOverride(Ljavax/lang/model/element/ExecutableElement;)Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;

    move-result-object v2

    .line 727
    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 728
    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    invoke-static {v3}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v3

    invoke-static {v3}, Lcom/google/auto/value/processor/AutoValueishProcessor;->isJavaLangObject(Ljavax/lang/model/element/TypeElement;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 729
    :goto_2
    sget-object v4, Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;->NONE:Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;

    invoke-virtual {v2, v4}, Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    .line 730
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static disambiguate(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 700
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 703
    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    .line 708
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 709
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static equalsParameterType(Ljava/util/Map;Ljava/util/Optional;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;",
            "Ljava/util/Optional<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 746
    sget-object v0, Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;->EQUALS:Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/element/ExecutableElement;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 750
    :cond_0
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/VariableElement;

    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 755
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, v0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->nullableAnnotationFor(Ljavax/lang/model/element/Element;Ljavax/lang/model/type/TypeMirror;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-nez p0, :cond_1

    .line 756
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p0

    goto :goto_0

    .line 757
    :cond_1
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p0

    .line 758
    :goto_0
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/google/auto/value/processor/TypeEncoder;->encodeWithAnnotations(Ljavax/lang/model/type/TypeMirror;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static fixReservedIdentifiers(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "*",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 691
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 692
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 693
    invoke-static {v2}, Ljavax/lang/model/SourceVersion;->isKeyword(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 694
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/auto/value/processor/AutoValueishProcessor;->disambiguate(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method static generatedClassName(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 486
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    :goto_0
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    instance-of v1, v1, Ljavax/lang/model/element/TypeElement;

    if-eqz v1, :cond_0

    .line 488
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 491
    :cond_0
    invoke-static {p0}, Lcom/google/auto/value/processor/TypeSimplifier;->packageNameOf(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;

    move-result-object p0

    .line 492
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    const-string v1, "."

    .line 493
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAnnotationFqName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;
    .locals 0

    .line 998
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/element/QualifiedNameable;

    .line 999
    invoke-interface {p0}, Ljavax/lang/model/element/QualifiedNameable;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p0

    .line 1000
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    .line 1134
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

    .line 1135
    invoke-interface {v0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    invoke-static {v1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    .line 1136
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-interface {v1, p1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1137
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 1140
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static getAnnotationsMarkedWithInherited(Ljavax/lang/model/element/Element;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 986
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p0

    .line 987
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda7;-><init>()V

    .line 988
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda8;-><init>()V

    .line 989
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 990
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private getExcludedAnnotationClassNames(Ljavax/lang/model/element/Element;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 977
    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->getExcludedAnnotationTypes(Ljavax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object p1

    .line 978
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda0;-><init>()V

    .line 979
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda13;-><init>()V

    .line 980
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 981
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method private getExcludedAnnotationTypes(Ljavax/lang/model/element/Element;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            ")",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation

    const-string v0, "com.google.auto.value.AutoValue.CopyAnnotations"

    .line 958
    invoke-static {p1, v0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->getAnnotationMirror(Ljavax/lang/model/element/Element;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    .line 959
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 960
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    return-object p1

    .line 965
    :cond_0
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/element/AnnotationMirror;

    const-string v0, "exclude"

    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/auto/common/$AnnotationMirrors;->getAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 967
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda10;-><init>()V

    .line 968
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda12;-><init>()V

    .line 969
    invoke-static {v0}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method private getReturnTypeAnnotations(Ljavax/lang/model/element/ExecutableElement;Ljava/util/function/Predicate;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/util/function/Predicate<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1075
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    .line 1076
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p1

    .line 1077
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda14;-><init>()V

    .line 1078
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$$ExternalSyntheticLambda2;-><init>()V

    .line 1079
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1080
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda15;

    invoke-direct {p2}, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda15;-><init>()V

    .line 1081
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1082
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method private static gettersAllPrefixed(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;)Z"
        }
    .end annotation

    .line 568
    invoke-static {p0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->prefixedGettersIn(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static hasAnnotationMirror(Ljavax/lang/model/element/Element;Ljava/lang/String;)Z
    .locals 0

    .line 1144
    invoke-static {p0, p1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->getAnnotationMirror(Ljavax/lang/model/element/Element;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method private isInAutoValuePackage(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.google.auto.value."

    .line 929
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Test"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static isJavaLangObject(Ljavax/lang/model/element/TypeElement;)Z
    .locals 2

    .line 497
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object p0

    sget-object v0, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isNullable(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1

    .line 606
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

.method static isPrefixedGetter(Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 3

    .line 621
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get"

    .line 623
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "is"

    .line 624
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 626
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object p0

    sget-object v0, Ljavax/lang/model/type/TypeKind;->BOOLEAN:Ljavax/lang/model/type/TypeKind;

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$defineSharedVarsForType$2(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;
    .locals 0

    .line 453
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    invoke-static {p0}, Lcom/google/auto/value/processor/TypeEncoder;->encode(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getAnnotationsMarkedWithInherited$6(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1

    .line 988
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    const-class v0, Ljava/lang/annotation/Inherited;

    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->isAnnotationPresent(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getAnnotationsMarkedWithInherited$7(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;
    .locals 0

    .line 989
    invoke-static {p0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->getAnnotationFqName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getExcludedAnnotationClassNames$5(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;
    .locals 0

    .line 980
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getExcludedAnnotationTypes$4(Ljavax/lang/model/element/AnnotationValue;)Ljavax/lang/model/type/DeclaredType;
    .locals 0

    .line 968
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/DeclaredType;

    return-object p0
.end method

.method static synthetic lambda$getReturnTypeAnnotations$12(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/Element;
    .locals 0

    .line 1078
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getReturnTypeAnnotations$13(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;
    .locals 0

    .line 1081
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$nullableAnnotationIndex$3(Ljava/util/List;I)Z
    .locals 0

    .line 601
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->isNullable(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$propertyFieldAnnotations$11(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;
    .locals 0

    .line 1060
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$propertyFieldAnnotations$9(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/Element;
    .locals 0

    .line 1057
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$propertyMethodAnnotations$8(Ljavax/lang/model/element/TypeElement;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$wildcardTypeParametersString$14(Ljavax/lang/model/element/TypeParameterElement;)Ljava/lang/String;
    .locals 0

    const-string p0, "?"

    return-object p0
.end method

.method static nameWithoutPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "get"

    .line 641
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 642
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 645
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 647
    :goto_0
    invoke-static {p0}, Lcom/google/auto/value/processor/PropertyNames;->decapitalizeLikeJavaBeans(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static nullableAnnotationFor(Ljavax/lang/model/element/Element;Ljavax/lang/model/type/TypeMirror;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 585
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p1

    .line 586
    invoke-static {p1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->nullableAnnotationIndex(Ljava/util/List;)Ljava/util/OptionalInt;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, ""

    .line 587
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 589
    :cond_0
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p0

    .line 590
    invoke-static {p0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->nullableAnnotationIndex(Ljava/util/List;)Ljava/util/OptionalInt;

    move-result-object p1

    .line 591
    invoke-virtual {p1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    invoke-static {p0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->annotationStrings(Ljava/util/List;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p0

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 595
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static nullableAnnotationIndex(Ljava/util/List;)Ljava/util/OptionalInt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)",
            "Ljava/util/OptionalInt;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 600
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda18;-><init>(Ljava/util/List;)V

    .line 601
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 602
    invoke-interface {p0}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0
.end method

.method static objectMethodToOverride(Ljavax/lang/model/element/ExecutableElement;)Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;
    .locals 3

    .line 512
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "equals"

    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 523
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/element/VariableElement;

    invoke-interface {p0}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    .line 524
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 525
    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    .line 526
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p0

    const-string v0, "java.lang.Object"

    invoke-interface {p0, v0}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 527
    sget-object p0, Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;->EQUALS:Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;

    return-object p0

    :cond_1
    const-string p0, "toString"

    .line 515
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 516
    sget-object p0, Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;->TO_STRING:Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;

    return-object p0

    :cond_2
    const-string p0, "hashCode"

    .line 517
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 518
    sget-object p0, Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;->HASH_CODE:Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;

    return-object p0

    .line 535
    :cond_3
    :goto_0
    sget-object p0, Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;->NONE:Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;

    return-object p0
.end method

.method static prefixedGettersIn(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 615
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda5;-><init>()V

    .line 616
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 617
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->toImmutableSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    return-object p0
.end method

.method private propertyFieldAnnotations(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljavax/lang/model/element/ExecutableElement;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    const-string v0, "com.google.auto.value.AutoValue.CopyAnnotations"

    .line 1040
    invoke-static {p2, v0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->hasAnnotationMirror(Ljavax/lang/model/element/Element;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1041
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1

    .line 1044
    :cond_0
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object v0

    .line 1045
    invoke-direct {p0, p2}, Lcom/google/auto/value/processor/AutoValueishProcessor;->getExcludedAnnotationClassNames(Ljavax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object v0

    const-class v1, Ljava/lang/Override;

    .line 1046
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object v0

    .line 1047
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    .line 1051
    new-instance v1, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/google/auto/value/processor/AutoValueishProcessor;)V

    .line 1052
    invoke-direct {p0, p2, v1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->getReturnTypeAnnotations(Ljavax/lang/model/element/ExecutableElement;Ljava/util/function/Predicate;)Ljava/util/Set;

    move-result-object v1

    .line 1055
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v2

    .line 1056
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda2;-><init>()V

    .line 1057
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$$ExternalSyntheticLambda2;-><init>()V

    .line 1058
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda3;-><init>(Lcom/google/auto/value/processor/AutoValueishProcessor;)V

    .line 1059
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda4;-><init>()V

    .line 1060
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 1061
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 1064
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object v3

    .line 1065
    invoke-virtual {v3, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object v0

    .line 1066
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object v0

    .line 1067
    invoke-virtual {v0, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object v0

    .line 1068
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    .line 1069
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->annotationsToCopy(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method private propertyMethodAnnotations(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljavax/lang/model/element/ExecutableElement;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 1016
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object v0

    .line 1017
    invoke-direct {p0, p2}, Lcom/google/auto/value/processor/AutoValueishProcessor;->getExcludedAnnotationClassNames(Ljavax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object v0

    const-class v1, Ljava/lang/Override;

    .line 1018
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object v0

    .line 1019
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    .line 1023
    new-instance v1, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda16;-><init>()V

    invoke-direct {p0, p2, v1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->getReturnTypeAnnotations(Ljavax/lang/model/element/ExecutableElement;Ljava/util/function/Predicate;)Ljava/util/Set;

    move-result-object v1

    .line 1024
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Sets;->union(Ljava/util/Set;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$Sets$SetView;

    move-result-object v0

    .line 1025
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->annotationsToCopy(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method private warnAboutPrimitiveArrays(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;)V
    .locals 3

    const-string v0, "java.lang.SuppressWarnings"

    .line 839
    invoke-static {p2, v0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->getAnnotationMirror(Ljavax/lang/model/element/Element;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    .line 840
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 841
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    const-string v1, "value"

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/auto/common/$AnnotationMirrors;->getAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object v0

    .line 842
    new-instance v1, Lcom/google/auto/value/processor/AutoValueishProcessor$ContainsMutableVisitor;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/auto/value/processor/AutoValueishProcessor$ContainsMutableVisitor;-><init>(Lcom/google/auto/value/processor/AutoValueishProcessor$1;)V

    invoke-interface {v0, v1, v2}, Ljavax/lang/model/element/AnnotationValue;->accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 852
    :cond_0
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p2

    :cond_1
    if-eqz v0, :cond_2

    const-string p2, ""

    goto :goto_0

    .line 854
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Method: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    iget-object v1, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->simpleAnnotationName:Ljava/lang/String;

    .line 855
    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "[AutoValueMutable] An @%s property that is a primitive array returns the original array, which can therefore be modified by the caller. If this is OK, you can suppress this warning with @SuppressWarnings(\"mutable\"). Otherwise, you should replace the property with an immutable type, perhaps a simple wrapper around the original array.%s"

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/auto/value/processor/ErrorReporter;->reportWarning(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private static wildcardTypeParametersString(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;
    .locals 3

    .line 1124
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object p0

    .line 1125
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1128
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, "<"

    const-string v1, ">"

    const-string v2, ", "

    invoke-static {v2, v0, v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method annotationsToCopy(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 908
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object v0

    .line 909
    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 910
    invoke-static {v1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->getAnnotationFqName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v2

    .line 913
    invoke-direct {p0, v2}, Lcom/google/auto/value/processor/AutoValueishProcessor;->isInAutoValuePackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 914
    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 915
    invoke-direct {p0, v1, p1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->annotationVisibleFrom(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/Element;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 916
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    goto :goto_0

    .line 920
    :cond_1
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method final checkModifiersIfNested(Ljavax/lang/model/element/TypeElement;)V
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->simpleAnnotationName:Ljava/lang/String;

    .line 657
    invoke-virtual {p0, p1, p1, v0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->checkModifiersIfNested(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)V

    return-void
.end method

.method final checkModifiersIfNested(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)V
    .locals 3

    .line 661
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    .line 662
    invoke-virtual {v0}, Ljavax/lang/model/element/ElementKind;->isClass()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljavax/lang/model/element/ElementKind;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 663
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getModifiers()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    iget-object v1, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->simpleAnnotationName:Ljava/lang/String;

    .line 664
    filled-new-array {v1, p3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[%sPrivate] @%s class must not be private"

    invoke-virtual {v0, p2, v2, v1}, Lcom/google/auto/value/processor/ErrorReporter;->abortWithError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/auto/value/processor/AbortProcessingException;

    goto :goto_0

    .line 666
    :cond_1
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$Visibility;->effectiveVisibilityOfElement(Ljavax/lang/model/element/Element;)Lautovalue/shaded/com/google$/auto/common/$Visibility;

    move-result-object v0

    sget-object v1, Lautovalue/shaded/com/google$/auto/common/$Visibility;->PRIVATE:Lautovalue/shaded/com/google$/auto/common/$Visibility;

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/auto/common/$Visibility;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    iget-object v1, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->simpleAnnotationName:Ljava/lang/String;

    .line 669
    filled-new-array {v1, p3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[%sInPrivate] @%s class must not be nested in a private class"

    invoke-virtual {v0, p2, v2, v1}, Lcom/google/auto/value/processor/ErrorReporter;->abortWithError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/auto/value/processor/AbortProcessingException;

    .line 675
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getModifiers()Ljava/util/Set;

    move-result-object p1

    sget-object v0, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->simpleAnnotationName:Ljava/lang/String;

    .line 676
    filled-new-array {v0, p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "[%sInner] Nested @%s class must be static"

    invoke-virtual {p1, p2, v0, p3}, Lcom/google/auto/value/processor/ErrorReporter;->abortWithError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/auto/value/processor/AbortProcessingException;

    :cond_3
    return-void
.end method

.method final checkReturnType(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;)V
    .locals 3

    .line 821
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 822
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_1

    .line 823
    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asArray(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ArrayType;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 824
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    invoke-direct {p0, p1, p2}, Lcom/google/auto/value/processor/AutoValueishProcessor;->warnAboutPrimitiveArrays(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->simpleAnnotationName:Ljava/lang/String;

    .line 827
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[AutoValueArray] An @%s class cannot define an array-valued property unless it is a primitive array"

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method copiedClassAnnotations(Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "com.google.auto.value.AutoValue.CopyAnnotations"

    .line 934
    invoke-static {p1, v0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->hasAnnotationMirror(Ljavax/lang/model/element/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->getExcludedAnnotationClassNames(Ljavax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->getAnnotationsMarkedWithInherited(Ljavax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Sets;->union(Ljava/util/Set;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$Sets$SetView;

    move-result-object v0

    .line 938
    invoke-direct {p0, p1, p1, v0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->copyAnnotations(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1

    .line 940
    :cond_0
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method final deferredTypeNames()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->deferredTypeNames:Ljava/util/List;

    .line 137
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->copyOf(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method final defineSharedVarsForType(Ljavax/lang/model/element/TypeElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lcom/google/auto/value/processor/AutoValueishTemplateVars;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;",
            "Lcom/google/auto/value/processor/AutoValueishTemplateVars;",
            ")V"
        }
    .end annotation

    .line 448
    invoke-static {p1}, Lcom/google/auto/value/processor/TypeSimplifier;->packageNameOf(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/google/auto/value/processor/AutoValueishTemplateVars;->pkg:Ljava/lang/String;

    .line 449
    invoke-static {p1}, Lcom/google/auto/value/processor/TypeSimplifier;->classNameOf(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/google/auto/value/processor/AutoValueishTemplateVars;->origClass:Ljava/lang/String;

    .line 450
    iget-object v0, p3, Lcom/google/auto/value/processor/AutoValueishTemplateVars;->origClass:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/auto/value/processor/TypeSimplifier;->simpleNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/google/auto/value/processor/AutoValueishTemplateVars;->simpleClassName:Ljava/lang/String;

    .line 452
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->elementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getSourceVersion()Ljavax/lang/model/SourceVersion;

    move-result-object v1

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotations;->generatedAnnotation(Ljavax/lang/model/util/Elements;Ljavax/lang/model/SourceVersion;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda0;-><init>()V

    .line 453
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    .line 454
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p3, Lcom/google/auto/value/processor/AutoValueishTemplateVars;->generated:Ljava/lang/String;

    .line 455
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/auto/value/processor/TypeEncoder;->typeParametersString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/google/auto/value/processor/AutoValueishTemplateVars;->formalTypes:Ljava/lang/String;

    .line 456
    invoke-static {p1}, Lcom/google/auto/value/processor/TypeSimplifier;->actualTypeParametersString(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/google/auto/value/processor/AutoValueishTemplateVars;->actualTypes:Ljava/lang/String;

    .line 457
    invoke-static {p1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->wildcardTypeParametersString(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/google/auto/value/processor/AutoValueishTemplateVars;->wildcardTypes:Ljava/lang/String;

    .line 458
    invoke-virtual {p0, p1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->copiedClassAnnotations(Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    iput-object v0, p3, Lcom/google/auto/value/processor/AutoValueishTemplateVars;->annotations:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 460
    invoke-static {p2}, Lcom/google/auto/value/processor/AutoValueishProcessor;->determineObjectMethodsToGenerate(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 461
    sget-object v1, Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;->TO_STRING:Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p3, Lcom/google/auto/value/processor/AutoValueishTemplateVars;->toString:Ljava/lang/Boolean;

    .line 462
    sget-object v1, Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;->EQUALS:Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p3, Lcom/google/auto/value/processor/AutoValueishTemplateVars;->equals:Ljava/lang/Boolean;

    .line 463
    sget-object v1, Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;->HASH_CODE:Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p3, Lcom/google/auto/value/processor/AutoValueishTemplateVars;->hashCode:Ljava/lang/Boolean;

    .line 464
    invoke-static {p2}, Lcom/google/auto/value/processor/Nullables;->nullableMentionedInMethods(Ljava/util/Collection;)Ljava/util/Optional;

    move-result-object p2

    .line 465
    invoke-static {v0, p2}, Lcom/google/auto/value/processor/AutoValueishProcessor;->equalsParameterType(Ljava/util/Map;Ljava/util/Optional;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/google/auto/value/processor/AutoValueishTemplateVars;->equalsParameterType:Ljava/lang/String;

    .line 466
    invoke-virtual {p0, p1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->getSerialVersionUID(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/google/auto/value/processor/AutoValueishTemplateVars;->serialVersionUID:Ljava/lang/String;

    return-void
.end method

.method final elementUtils()Ljavax/lang/model/util/Elements;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    return-object v0
.end method

.method final errorReporter()Lcom/google/auto/value/processor/ErrorReporter;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    return-object v0
.end method

.method final getSerialVersionUID(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;
    .locals 6

    .line 884
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->elementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 885
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->typeUtils()Ljavax/lang/model/util/Types;

    move-result-object v1

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljavax/lang/model/util/Types;->isAssignable(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 886
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljavax/lang/model/util/ElementFilter;->fieldsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 887
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/VariableElement;

    .line 888
    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    const-string v2, "serialVersionUID"

    invoke-interface {v1, v2}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 889
    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->getConstantValue()Ljava/lang/Object;

    move-result-object p1

    .line 890
    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->getModifiers()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljavax/lang/model/element/Modifier;

    sget-object v3, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    sget-object v5, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v5, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 891
    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_1

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "private static final long serialVersionUID = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "L;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    const-string v1, "serialVersionUID must be a static final long compile-time constant"

    new-array v2, v4, [Ljava/lang/Object;

    .line 895
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method public final getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;
    .locals 1

    .line 142
    invoke-static {}, Ljavax/lang/model/SourceVersion;->latestSupported()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized init(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 1

    monitor-enter p0

    .line 115
    :try_start_0
    invoke-super {p0, p1}, Ljavax/annotation/processing/AbstractProcessor;->init(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 116
    new-instance v0, Lcom/google/auto/value/processor/ErrorReporter;

    invoke-direct {v0, p1}, Lcom/google/auto/value/processor/ErrorReporter;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;)V

    iput-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method synthetic lambda$process$0$com-google-auto-value-processor-AutoValueishProcessor(Ljava/lang/String;)Ljavax/lang/model/element/TypeElement;
    .locals 1

    .line 323
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->elementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$propertyFieldAnnotations$10$com-google-auto-value-processor-AutoValueishProcessor(Ljavax/lang/model/element/TypeElement;)Z
    .locals 0

    .line 1059
    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->annotationAppliesToFields(Ljavax/lang/model/element/TypeElement;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method synthetic lambda$propertySet$1$com-google-auto-value-processor-AutoValueishProcessor(Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;Ljava/util/Map;Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/TypeMirror;)V
    .locals 12

    .line 0
    move-object v0, p0

    move-object/from16 v9, p6

    .line 415
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    invoke-direct {p0, v9}, Lcom/google/auto/value/processor/AutoValueishProcessor;->getExcludedAnnotationTypes(Ljavax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object v2

    move-object/from16 v10, p7

    .line 414
    invoke-static {v10, v1, v2}, Lcom/google/auto/value/processor/TypeEncoder;->encodeWithAnnotations(Ljavax/lang/model/type/TypeMirror;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    .line 416
    invoke-virtual {p1, v9}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    move-object v1, p2

    .line 417
    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    move-object v1, p3

    .line 419
    invoke-virtual {p3, v9}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->get(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    invoke-static {v1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->annotationStrings(Ljava/util/List;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v6

    move-object/from16 v1, p4

    .line 421
    invoke-virtual {v1, v9}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->get(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    .line 422
    invoke-static {v1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->annotationStrings(Ljava/util/List;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v7

    .line 423
    invoke-virtual {p0, v9}, Lcom/google/auto/value/processor/AutoValueishProcessor;->nullableAnnotationForMethod(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Optional;

    move-result-object v8

    .line 424
    new-instance v11, Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;

    move-object v1, v11

    move-object/from16 v4, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljava/util/Optional;)V

    move-object/from16 v1, p5

    .line 433
    invoke-virtual {v1, v11}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    .line 434
    invoke-virtual {v11}, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;->isNullable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {p7 .. p7}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "[AutoValueNullPrimitive] Primitive types cannot be @Nullable"

    .line 436
    invoke-virtual {v1, v9, v3, v2}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method abstract nullableAnnotationForMethod(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Optional;
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
.end method

.method public final process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 4
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

    .line 306
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->elementUtils()Ljavax/lang/model/util/Elements;

    move-result-object p1

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->annotationClassName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->annotationType:Ljavax/lang/model/element/TypeElement;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 310
    iget-object p1, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 311
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object p1

    sget-object p2, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Did not process @"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->annotationClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because the annotation class was not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-interface {p1, p2, v1}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    return v0

    .line 319
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->simpleAnnotationName:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->deferredTypeNames:Ljava/util/List;

    .line 322
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda17;-><init>(Lcom/google/auto/value/processor/AutoValueishProcessor;)V

    .line 323
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 324
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 325
    invoke-interface {p2}, Ljavax/annotation/processing/RoundEnvironment;->processingOver()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/lang/model/element/TypeElement;

    iget-object v1, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    iget-object v2, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->simpleAnnotationName:Ljava/lang/String;

    .line 335
    invoke-interface {p2}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "[AutoValueUndefined] Did not generate @%s class for %s because it references undefined types"

    .line 330
    invoke-virtual {v1, p2, v3, v2}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->annotationType:Ljavax/lang/model/element/TypeElement;

    .line 340
    invoke-interface {p2, v1}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljavax/lang/model/element/TypeElement;)Ljava/util/Set;

    move-result-object p2

    .line 341
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    invoke-direct {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;-><init>()V

    .line 343
    invoke-virtual {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object p1

    .line 344
    invoke-static {p2}, Ljavax/lang/model/util/ElementFilter;->typesIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object p1

    .line 345
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    iget-object p2, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->deferredTypeNames:Ljava/util/List;

    .line 346
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 347
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/lang/model/element/TypeElement;

    .line 349
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/auto/value/processor/AutoValueishProcessor;->processType(Ljavax/lang/model/element/TypeElement;)V
    :try_end_0
    .catch Lcom/google/auto/value/processor/AbortProcessingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/auto/value/processor/MissingTypes$MissingTypeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 361
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Throwables;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    iget-object v2, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->simpleAnnotationName:Ljava/lang/String;

    .line 362
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "[AutoValueException] @%s processor threw an exception: %s"

    invoke-virtual {v1, p2, v2, v0}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    throw p1

    :catch_2
    iget-object v1, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->deferredTypeNames:Ljava/util/List;

    .line 359
    invoke-interface {p2}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return v0
.end method

.method abstract processType(Ljavax/lang/model/element/TypeElement;)V
.end method

.method propertiesCanBeVoid()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final propertyFieldAnnotationMap(Ljavax/lang/model/element/TypeElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 1031
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    move-result-object v0

    .line 1032
    invoke-virtual {p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/ExecutableElement;

    .line 1033
    invoke-direct {p0, p1, v1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->propertyFieldAnnotations(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    goto :goto_0

    .line 1035
    :cond_0
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object p1

    return-object p1
.end method

.method final propertyMethodAnnotationMap(Ljavax/lang/model/element/TypeElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 1006
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    move-result-object v0

    .line 1007
    invoke-virtual {p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/ExecutableElement;

    .line 1008
    invoke-direct {p0, p1, v1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->propertyMethodAnnotations(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    goto :goto_0

    .line 1010
    :cond_0
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object p1

    return-object p1
.end method

.method propertyMethodsIn(Ljava/util/Set;Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation

    .line 799
    invoke-interface {p2}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p2

    invoke-static {p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p2

    .line 800
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object v0

    .line 801
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/ExecutableElement;

    .line 802
    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 803
    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->VOID:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->propertiesCanBeVoid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 804
    :cond_1
    invoke-static {v1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->objectMethodToOverride(Ljavax/lang/model/element/ExecutableElement;)Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;

    move-result-object v2

    sget-object v3, Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;->NONE:Lcom/google/auto/value/processor/AutoValueishProcessor$ObjectMethod;

    if-ne v2, v3, :cond_0

    .line 805
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    goto :goto_0

    .line 808
    :cond_2
    new-instance p1, Lcom/google/auto/value/processor/EclipseHack;

    iget-object v1, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-direct {p1, v1}, Lcom/google/auto/value/processor/EclipseHack;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;)V

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/google/auto/value/processor/EclipseHack;->methodReturnTypes(Ljava/util/Set;Ljavax/lang/model/type/DeclaredType;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method final propertyNameToMethodMap(Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 541
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 542
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 543
    invoke-static {p1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->gettersAllPrefixed(Ljava/util/Set;)Z

    move-result v2

    .line 544
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/ExecutableElement;

    .line 545
    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_1

    .line 546
    invoke-static {v4}, Lcom/google/auto/value/processor/AutoValueishProcessor;->nameWithoutPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 547
    :cond_1
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/ExecutableElement;

    if-eqz v5, :cond_0

    .line 549
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    new-array v7, v7, [Ljavax/lang/model/element/ExecutableElement;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 550
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 551
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/ExecutableElement;

    iget-object v6, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    iget-object v7, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->simpleAnnotationName:Ljava/lang/String;

    .line 556
    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "[AutoValueDupProperty] More than one @%s property called %s"

    invoke-virtual {v6, v5, v8, v7}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 564
    :cond_3
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->copyOf(Ljava/util/Map;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object p1

    return-object p1
.end method

.method final propertySet(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Lcom/google/auto/value/processor/AutoValueishProcessor$Property;",
            ">;"
        }
    .end annotation

    .line 406
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->propertyNameToMethodMap(Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->inverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object v3

    .line 407
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 408
    invoke-static {v4}, Lcom/google/auto/value/processor/AutoValueishProcessor;->fixReservedIdentifiers(Ljava/util/Map;)V

    .line 410
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object v0

    .line 411
    new-instance v8, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda9;

    move-object v1, v8

    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda9;-><init>(Lcom/google/auto/value/processor/AutoValueishProcessor;Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;Ljava/util/Map;Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;)V

    invoke-virtual {p1, v8}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 440
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method final typeUtils()Ljavax/lang/model/util/Types;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    return-object v0
.end method

.method final writeSourceFile(Ljava/lang/String;Ljava/lang/String;Ljavax/lang/model/element/TypeElement;)V
    .locals 3

    .line 1149
    :try_start_0
    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 1150
    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getFiler()Ljavax/annotation/processing/Filer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/lang/model/element/Element;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-interface {v0, p1, v1}, Ljavax/annotation/processing/Filer;->createSourceFile(Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    .line 1151
    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->openWriter()Ljava/io/Writer;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 1153
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 1151
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_0

    .line 1153
    :try_start_4
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p2

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    const-string v1, "[AutoValueCouldNotWrite] Could not write generated class %s: %s"

    .line 1161
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p3, v1, p1}, Lcom/google/auto/value/processor/ErrorReporter;->reportWarning(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method
