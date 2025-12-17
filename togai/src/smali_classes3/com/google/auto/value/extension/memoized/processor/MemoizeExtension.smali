.class public final Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension;
.super Lcom/google/auto/value/extension/AutoValueExtension;
.source "MemoizeExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;
    }
.end annotation


# static fields
.field private static final AUTO_VALUE_NAME:Ljava/lang/String; = "com.google.auto.value.AutoValue"

.field private static final AUTO_VALUE_PACKAGE_NAME:Ljava/lang/String; = "com.google.auto.value."

.field private static final COPY_ANNOTATIONS_NAME:Ljava/lang/String; = "com.google.auto.value.AutoValue.CopyAnnotations"

.field private static final DO_NOT_PULL_DOWN_ANNOTATIONS:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAZY_INIT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

.field private static final SUPPRESS_WARNINGS:Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 92
    const-class v0, Ljava/lang/Override;

    .line 93
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.auto.value.extension.memoized.Memoized"

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension;->DO_NOT_PULL_DOWN_ANNOTATIONS:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    const-string v0, "com"

    const-string v1, ".google.errorprone.annotations.concurrent"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "LazyInit"

    invoke-static {v0, v2, v1}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v0

    sput-object v0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension;->LAZY_INIT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    .line 106
    const-class v0, Ljava/lang/SuppressWarnings;

    .line 107
    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->builder(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    move-result-object v0

    const-string v1, "Immutable"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "value"

    const-string v3, "$S"

    invoke-virtual {v0, v2, v3, v1}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;

    move-result-object v0

    sput-object v0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension;->SUPPRESS_WARNINGS:Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/google/auto/value/extension/AutoValueExtension;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljavax/lang/model/util/Elements;)Ljava/util/Optional;
    .locals 0

    .line 91
    invoke-static {p0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension;->getLazyInitAnnotation(Ljavax/lang/model/util/Elements;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 0

    .line 91
    invoke-static {p0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension;->memoizedMethods(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Ljava/util/List;)Z
    .locals 0

    .line 91
    invoke-static {p0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension;->containsNullable(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 0

    .line 91
    invoke-static {p0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension;->annotatedType(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1

    sget-object v0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension;->DO_NOT_PULL_DOWN_ANNOTATIONS:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    return-object v0
.end method

.method static synthetic access$900()Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;
    .locals 1

    sget-object v0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension;->SUPPRESS_WARNINGS:Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;

    return-object v0
.end method

.method private static annotatedType(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 2

    .line 600
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$$ExternalSyntheticLambda0;-><init>()V

    .line 601
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 602
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 603
    invoke-static {p0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object p0

    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->annotated(Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object p0

    return-object p0
.end method

.method private static containsNullable(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)Z"
        }
    .end annotation

    .line 592
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$$ExternalSyntheticLambda1;-><init>()V

    .line 593
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$$ExternalSyntheticLambda2;-><init>()V

    .line 594
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private static getLazyInitAnnotation(Ljavax/lang/model/util/Elements;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Elements;",
            ")",
            "Ljava/util/Optional<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension;->LAZY_INIT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    .line 584
    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    if-nez p0, :cond_0

    .line 585
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 587
    :cond_0
    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->builder(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$containsNullable$1(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/Name;
    .locals 0

    .line 593
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$containsNullable$2(Ljavax/lang/model/element/Name;)Z
    .locals 1

    const-string v0, "Nullable"

    .line 594
    invoke-interface {p0, v0}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$memoizedMethods$0(Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 1

    const-string v0, "com.google.auto.value.extension.memoized.Memoized"

    .line 127
    invoke-static {p0, v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizedValidator;->getAnnotationMirror(Ljavax/lang/model/element/Element;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method private static memoizedMethods(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/auto/value/extension/AutoValueExtension$Context;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 126
    invoke-interface {p0}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->autoValueClass()Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$$ExternalSyntheticLambda3;-><init>()V

    .line 127
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 128
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->toImmutableSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    return-object p0
.end method


# virtual methods
.method public applicable(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Z
    .locals 0

    .line 116
    invoke-static {p1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension;->memoizedMethods(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public generateClass(Lcom/google/auto/value/extension/AutoValueExtension$Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 122
    new-instance v0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;-><init>(Lcom/google/auto/value/extension/AutoValueExtension$Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->generate()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public incrementalType(Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/google/auto/value/extension/AutoValueExtension$IncrementalExtensionType;
    .locals 0

    .line 111
    sget-object p1, Lcom/google/auto/value/extension/AutoValueExtension$IncrementalExtensionType;->ISOLATING:Lcom/google/auto/value/extension/AutoValueExtension$IncrementalExtensionType;

    return-object p1
.end method
