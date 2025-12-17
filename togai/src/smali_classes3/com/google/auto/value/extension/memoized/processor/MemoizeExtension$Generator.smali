.class final Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;
.super Ljava/lang/Object;
.source "MemoizeExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Generator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private final classToExtend:Ljava/lang/String;

.field private final context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

.field private final elements:Ljavax/lang/model/util/Elements;

.field private hasErrors:Z

.field private final isFinal:Z

.field private final lazyInitAnnotation:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final messager:Ljavax/annotation/processing/Messager;

.field private final sourceVersion:Ljavax/lang/model/SourceVersion;

.field private final types:Ljavax/lang/model/util/Types;


# direct methods
.method public static synthetic $r8$lambda$LmTKsBwg-CViALp1-Pkn0gps7PI(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->getAnnotationFqName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/google/auto/value/extension/AutoValueExtension$Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    iput-object p2, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->className:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->classToExtend:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->isFinal:Z

    .line 148
    invoke-interface {p1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->processingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object p2

    invoke-interface {p2}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object p2

    iput-object p2, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->elements:Ljavax/lang/model/util/Elements;

    .line 149
    invoke-interface {p1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->processingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object p3

    invoke-interface {p3}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object p3

    iput-object p3, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->types:Ljavax/lang/model/util/Types;

    .line 150
    invoke-interface {p1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->processingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object p3

    invoke-interface {p3}, Ljavax/annotation/processing/ProcessingEnvironment;->getSourceVersion()Ljavax/lang/model/SourceVersion;

    move-result-object p3

    iput-object p3, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->sourceVersion:Ljavax/lang/model/SourceVersion;

    .line 151
    invoke-interface {p1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->processingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object p1

    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->messager:Ljavax/annotation/processing/Messager;

    .line 152
    invoke-static {p2}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension;->access$000(Ljavax/lang/model/util/Elements;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->lazyInitAnnotation:Ljava/util/Optional;

    return-void
.end method

.method static synthetic access$302(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->hasErrors:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;)Ljavax/annotation/processing/Messager;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->messager:Ljavax/annotation/processing/Messager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;)Lcom/google/auto/value/extension/AutoValueExtension$Context;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;)Ljavax/lang/model/util/Elements;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->elements:Ljavax/lang/model/util/Elements;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;)Ljava/util/Optional;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->lazyInitAnnotation:Ljava/util/Optional;

    return-object p0
.end method

.method private annotatedTypeVariableNames()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    .line 196
    invoke-interface {v0}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->autoValueClass()Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda14;-><init>()V

    .line 197
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 204
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->toImmutableList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-object v0
.end method

.method private annotationVisibleFrom(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/Element;)Z
    .locals 4

    .line 279
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    .line 280
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$Visibility;->effectiveVisibilityOfElement(Ljavax/lang/model/element/Element;)Lautovalue/shaded/com/google$/auto/common/$Visibility;

    move-result-object v0

    .line 281
    sget-object v1, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$1;->$SwitchMap$com$google$auto$common$Visibility:[I

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

    .line 299
    :cond_0
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object p1

    invoke-static {p2}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 296
    :cond_1
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v0

    invoke-static {p2}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->types:Ljavax/lang/model/util/Types;

    .line 297
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

.method private annotationsToCopy(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
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

    .line 309
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object v0

    .line 310
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

    .line 311
    invoke-static {v1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->getAnnotationFqName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-direct {p0, v2}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->isInAutoValuePackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 315
    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 316
    invoke-direct {p0, v1, p1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->annotationVisibleFrom(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/Element;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    goto :goto_0

    .line 321
    :cond_1
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method private constructor()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;
    .locals 3

    .line 208
    invoke-static {}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->constructorBuilder()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    .line 210
    invoke-interface {v1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->propertyTypes()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda1;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)V

    .line 211
    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    .line 213
    invoke-interface {v1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->properties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "super($L)"

    .line 214
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    .line 215
    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    move-result-object v0

    return-object v0
.end method

.method private copiedClassAnnotations(Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;",
            ">;"
        }
    .end annotation

    const-string v0, "com.google.auto.value.AutoValue.CopyAnnotations"

    .line 385
    invoke-static {p1, v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->hasAnnotationMirror(Ljavax/lang/model/element/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-direct {p0, p1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->getExcludedAnnotationClassNames(Ljavax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->getAnnotationsMarkedWithInherited(Ljavax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Sets;->union(Ljava/util/Set;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$Sets$SetView;

    move-result-object v0

    .line 389
    invoke-direct {p0, p1, p1, v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->copyAnnotations(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1

    .line 391
    :cond_0
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
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
            "Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;",
            ">;"
        }
    .end annotation

    .line 329
    invoke-direct {p0, p1, p2, p3}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->annotationsToCopy(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    .line 330
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->toImmutableList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-object p1
.end method

.method private equalsWithHashCodeCheck()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;
    .locals 5

    const-string v0, "equals"

    .line 239
    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->methodBuilder(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/lang/model/element/Modifier;

    sget-object v2, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 240
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    sget-object v1, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOOLEAN:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 241
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->returns(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    const-class v1, Ljava/lang/Override;

    .line 242
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addAnnotation(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    sget-object v1, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->OBJECT:Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    const-string v2, "that"

    new-array v4, v3, [Ljavax/lang/model/element/Modifier;

    .line 243
    invoke-virtual {v0, v1, v2, v4}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addParameter(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    const-string v1, "if (this == that)"

    new-array v2, v3, [Ljava/lang/Object;

    .line 244
    invoke-virtual {v0, v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    const-string v1, "return true"

    new-array v2, v3, [Ljava/lang/Object;

    .line 245
    invoke-virtual {v0, v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->endControlFlow()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->className:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "return that instanceof $N && this.hashCode() == that.hashCode() && super.equals(that)"

    .line 247
    invoke-virtual {v0, v2, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    move-result-object v0

    return-object v0
.end method

.method private static getAnnotationFqName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;
    .locals 0

    .line 272
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/element/QualifiedNameable;

    .line 273
    invoke-interface {p0}, Ljavax/lang/model/element/QualifiedNameable;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p0

    .line 274
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

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

    .line 377
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda8;-><init>()V

    .line 378
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda9;-><init>()V

    .line 379
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 380
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

    .line 369
    invoke-direct {p0, p1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->getExcludedAnnotationTypes(Ljavax/lang/model/element/Element;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda0;-><init>()V

    .line 370
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda7;-><init>()V

    .line 371
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 372
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method private getExcludedAnnotationTypes(Ljavax/lang/model/element/Element;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation

    const-string v0, "com.google.auto.value.AutoValue.CopyAnnotations"

    .line 345
    invoke-static {p1, v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizedValidator;->getAnnotationMirror(Ljavax/lang/model/element/Element;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    .line 346
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    return-object p1

    .line 352
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

    .line 353
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda12;-><init>()V

    .line 354
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 358
    invoke-interface {p1}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda13;-><init>()V

    .line 359
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 360
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->toImmutableSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    return-object p1
.end method

.method private static hasAnnotationMirror(Ljavax/lang/model/element/Element;Ljava/lang/String;)Z
    .locals 0

    .line 335
    invoke-static {p0, p1}, Lcom/google/auto/value/extension/memoized/processor/MemoizedValidator;->getAnnotationMirror(Ljavax/lang/model/element/Element;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method private isEqualsFinal()Z
    .locals 4

    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->elements:Ljavax/lang/model/util/Elements;

    .line 224
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    .line 226
    invoke-interface {v1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->autoValueClass()Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    iget-object v2, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->types:Ljavax/lang/model/util/Types;

    iget-object v3, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->elements:Ljavax/lang/model/util/Elements;

    invoke-static {v1, v2, v3}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->getLocalAndInheritedMethods(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda4;-><init>()V

    .line 228
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda5;-><init>()V

    .line 229
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda6;-><init>(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;Ljavax/lang/model/type/TypeMirror;)V

    .line 230
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 233
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    .line 235
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isHashCodeMemoized()Z
    .locals 2

    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    .line 219
    invoke-static {v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension;->access$100(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda11;-><init>()V

    .line 220
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method private isInAutoValuePackage(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.google.auto.value."

    .line 263
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

.method static synthetic lambda$annotatedTypeVariableNames$0(Ljavax/lang/model/element/TypeParameterElement;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;
    .locals 2

    .line 199
    invoke-static {p0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->get(Ljavax/lang/model/element/TypeParameterElement;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    move-result-object v0

    .line 201
    invoke-interface {p0}, Ljavax/lang/model/element/TypeParameterElement;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$$ExternalSyntheticLambda0;-><init>()V

    .line 202
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 203
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->toImmutableList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 200
    invoke-virtual {v0, p0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->annotated(Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$constructor$1(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;)V
    .locals 1

    .line 211
    invoke-static {p2}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension;->access$200(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "$"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/lang/model/element/Modifier;

    invoke-virtual {p0, p2, p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addParameter(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    return-void
.end method

.method static synthetic lambda$constructor$2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "$"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getAnnotationsMarkedWithInherited$9(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1

    .line 378
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    const-class v0, Ljava/lang/annotation/Inherited;

    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->isAnnotationPresent(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getExcludedAnnotationClassNames$8(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;
    .locals 0

    .line 371
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getExcludedAnnotationTypes$7(Ljavax/lang/model/element/AnnotationValue;)Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper;
    .locals 1

    .line 356
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->equivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v0

    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {v0, p0}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->wrap(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$isEqualsFinal$4(Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 1

    .line 228
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p0

    const-string v0, "equals"

    invoke-interface {p0, v0}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$isEqualsFinal$5(Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 1

    .line 229
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

.method static synthetic lambda$isHashCodeMemoized$3(Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 1

    .line 220
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p0

    const-string v0, "hashCode"

    invoke-interface {p0, v0}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private superType()Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 4

    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    .line 181
    invoke-interface {v0}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->packageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->classToExtend:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v0

    .line 182
    invoke-direct {p0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->typeVariableNames()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-array v2, v2, [Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 186
    invoke-virtual {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    invoke-static {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$ParameterizedTypeName;->get(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;[Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$ParameterizedTypeName;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private typeVariableNames()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    .line 190
    invoke-interface {v0}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->autoValueClass()Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda3;-><init>()V

    .line 191
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 192
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->toImmutableList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-object v0
.end method


# virtual methods
.method generate()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->className:Ljava/lang/String;

    .line 157
    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;->classBuilder(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    .line 158
    invoke-direct {p0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->superType()Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->superclass(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    .line 159
    invoke-interface {v1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->autoValueClass()Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->copiedClassAnnotations(Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addAnnotations(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    .line 160
    invoke-direct {p0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->annotatedTypeVariableNames()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addTypeVariables(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/lang/model/element/Modifier;

    iget-boolean v2, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->isFinal:Z

    if-eqz v2, :cond_0

    sget-object v2, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    goto :goto_0

    :cond_0
    sget-object v2, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 161
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    .line 162
    invoke-direct {p0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->constructor()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addMethod(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->elements:Ljavax/lang/model/util/Elements;

    iget-object v2, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->sourceVersion:Ljavax/lang/model/SourceVersion;

    .line 163
    const-class v3, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension;

    invoke-static {v1, v2, v3}, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotationSpecs;->generatedAnnotationSpec(Ljavax/lang/model/util/Elements;Ljavax/lang/model/SourceVersion;Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda10;

    invoke-direct {v2, v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda10;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;)V

    .line 164
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    .line 165
    invoke-static {v1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension;->access$100(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    .line 166
    new-instance v3, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;

    invoke-direct {v3, p0, v2}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;-><init>(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;Ljavax/lang/model/element/ExecutableElement;)V

    .line 167
    invoke-virtual {v3}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->fields()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addFields(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    .line 168
    invoke-virtual {v3}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->method()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    move-result-object v2

    invoke-virtual {v0, v2}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addMethod(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    goto :goto_1

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->isHashCodeMemoized()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->isEqualsFinal()Z

    move-result v1

    if-nez v1, :cond_2

    .line 171
    invoke-direct {p0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->equalsWithHashCodeCheck()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addMethod(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    :cond_2
    iget-boolean v1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->hasErrors:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    return-object v0

    :cond_3
    iget-object v1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    .line 176
    invoke-interface {v1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->packageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;

    move-result-object v0

    invoke-static {v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile;->builder(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;)Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$JavaFile;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$isEqualsFinal$6$com-google-auto-value-extension-memoized-processor-MemoizeExtension$Generator(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->types:Ljavax/lang/model/util/Types;

    .line 232
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/lang/model/element/VariableElement;

    invoke-interface {p2}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    return p1
.end method
