.class final Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;
.super Ljava/lang/Object;
.source "ExtensionClassTypeSpecBuilder.java"


# static fields
.field private static final AUTO_VALUE_NAME:Ljava/lang/String; = "com.google.auto.value.AutoValue"

.field private static final AUTO_VALUE_PACKAGE_NAME:Ljava/lang/String; = "com.google.auto.value."

.field private static final COPY_ANNOTATIONS_NAME:Ljava/lang/String; = "com.google.auto.value.AutoValue.CopyAnnotations"


# instance fields
.field private final className:Ljava/lang/String;

.field private final classToExtend:Ljava/lang/String;

.field private final context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

.field private final elements:Ljavax/lang/model/util/Elements;

.field private final isFinal:Z

.field private final sourceVersion:Ljavax/lang/model/SourceVersion;

.field private final types:Ljavax/lang/model/util/Types;


# direct methods
.method public static synthetic $r8$lambda$KmyN4r7IPjxVAW2ED_miXNo2NJU(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->getAnnotationFqName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Lcom/google/auto/value/extension/AutoValueExtension$Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    iput-object p2, p0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->className:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->classToExtend:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->isFinal:Z

    .line 89
    invoke-interface {p1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->processingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object p2

    invoke-interface {p2}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object p2

    iput-object p2, p0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->types:Ljavax/lang/model/util/Types;

    .line 90
    invoke-interface {p1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->processingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object p2

    invoke-interface {p2}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object p2

    iput-object p2, p0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->elements:Ljavax/lang/model/util/Elements;

    .line 91
    invoke-interface {p1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->processingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object p1

    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getSourceVersion()Ljavax/lang/model/SourceVersion;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->sourceVersion:Ljavax/lang/model/SourceVersion;

    return-void
.end method

.method private static annotatedType(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 2

    .line 293
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 295
    invoke-static {p0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object p0

    invoke-virtual {p0, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->annotated(Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object p0

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

    iget-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    .line 129
    invoke-interface {v0}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->autoValueClass()Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder$$ExternalSyntheticLambda5;-><init>()V

    .line 130
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 137
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->toImmutableList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-object v0
.end method

.method private annotationVisibleFrom(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/Element;)Z
    .locals 4

    .line 174
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    .line 175
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$Visibility;->effectiveVisibilityOfElement(Ljavax/lang/model/element/Element;)Lautovalue/shaded/com/google$/auto/common/$Visibility;

    move-result-object v0

    .line 176
    sget-object v1, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder$1;->$SwitchMap$com$google$auto$common$Visibility:[I

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

    .line 194
    :cond_0
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object p1

    invoke-static {p2}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 191
    :cond_1
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v0

    invoke-static {p2}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->types:Ljavax/lang/model/util/Types;

    .line 192
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

    .line 204
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object v0

    .line 205
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

    .line 206
    invoke-static {v1}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->getAnnotationFqName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-direct {p0, v2}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->isInAutoValuePackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 210
    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 211
    invoke-direct {p0, v1, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->annotationVisibleFrom(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/Element;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method private constructor()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;
    .locals 3

    .line 141
    invoke-static {}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->constructorBuilder()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    .line 143
    invoke-interface {v1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->propertyTypes()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder$$ExternalSyntheticLambda0;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;)V

    .line 144
    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    .line 146
    invoke-interface {v1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->properties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "super($L)"

    .line 147
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    .line 148
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

    .line 280
    invoke-static {p1, v0}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->hasAnnotationMirror(Ljavax/lang/model/element/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-direct {p0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->getExcludedAnnotationClassNames(Ljavax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->getAnnotationsMarkedWithInherited(Ljavax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Sets;->union(Ljava/util/Set;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$Sets$SetView;

    move-result-object v0

    .line 284
    invoke-direct {p0, p1, p1, v0}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->copyAnnotations(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1

    .line 286
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

    .line 224
    invoke-direct {p0, p1, p2, p3}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->annotationsToCopy(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    .line 225
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

.method static extensionClassTypeSpecBuilder(Lcom/google/auto/value/extension/AutoValueExtension$Context;Ljava/lang/String;Ljava/lang/String;Z)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 1

    .line 96
    new-instance v0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;-><init>(Lcom/google/auto/value/extension/AutoValueExtension$Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 97
    invoke-virtual {v0}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->extensionClassBuilder()Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static getAnnotationFqName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;
    .locals 0

    .line 167
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/element/QualifiedNameable;

    .line 168
    invoke-interface {p0}, Ljavax/lang/model/element/QualifiedNameable;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p0

    .line 169
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

    .line 272
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder$$ExternalSyntheticLambda1;-><init>()V

    .line 273
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder$$ExternalSyntheticLambda2;-><init>()V

    .line 274
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 275
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

    .line 264
    invoke-direct {p0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->getExcludedAnnotationTypes(Ljavax/lang/model/element/Element;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda0;-><init>()V

    .line 265
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder$$ExternalSyntheticLambda6;-><init>()V

    .line 266
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 267
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

    .line 240
    invoke-static {p1, v0}, Lcom/google/auto/value/extension/toprettystring/processor/Annotations;->getAnnotationMirror(Ljavax/lang/model/element/Element;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    .line 241
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    return-object p1

    .line 247
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

    .line 248
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder$$ExternalSyntheticLambda4;-><init>()V

    .line 249
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 253
    invoke-interface {p1}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda13;-><init>()V

    .line 254
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 255
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->toImmutableSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    return-object p1
.end method

.method private static hasAnnotationMirror(Ljavax/lang/model/element/Element;Ljava/lang/String;)Z
    .locals 0

    .line 230
    invoke-static {p0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/Annotations;->getAnnotationMirror(Ljavax/lang/model/element/Element;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method private isInAutoValuePackage(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.google.auto.value."

    .line 158
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

    .line 132
    invoke-static {p0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->get(Ljavax/lang/model/element/TypeParameterElement;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    move-result-object v0

    .line 134
    invoke-interface {p0}, Ljavax/lang/model/element/TypeParameterElement;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$$ExternalSyntheticLambda0;-><init>()V

    .line 135
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 136
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->toImmutableList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 133
    invoke-virtual {v0, p0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;->annotated(Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$constructor$1(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;)V
    .locals 1

    .line 144
    invoke-static {p2}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->annotatedType(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

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

    .line 146
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

.method static synthetic lambda$getAnnotationsMarkedWithInherited$5(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1

    .line 273
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    const-class v0, Ljava/lang/annotation/Inherited;

    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->isAnnotationPresent(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getExcludedAnnotationClassNames$4(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;
    .locals 0

    .line 266
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getExcludedAnnotationTypes$3(Ljavax/lang/model/element/AnnotationValue;)Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper;
    .locals 1

    .line 251
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->equivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v0

    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {v0, p0}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->wrap(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper;

    move-result-object p0

    return-object p0
.end method

.method private superType()Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 4

    iget-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    .line 114
    invoke-interface {v0}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->packageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->classToExtend:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v0

    .line 115
    invoke-direct {p0}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->typeVariableNames()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-array v2, v2, [Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 119
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

    iget-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    .line 123
    invoke-interface {v0}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->autoValueClass()Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda3;-><init>()V

    .line 124
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 125
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->toImmutableList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-object v0
.end method


# virtual methods
.method extensionClassBuilder()Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;
    .locals 4

    iget-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->className:Ljava/lang/String;

    .line 102
    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;->classBuilder(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    .line 103
    invoke-direct {p0}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->superType()Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->superclass(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    .line 104
    invoke-interface {v1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->autoValueClass()Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->copiedClassAnnotations(Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addAnnotations(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    .line 105
    invoke-direct {p0}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->annotatedTypeVariableNames()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addTypeVariables(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/lang/model/element/Modifier;

    iget-boolean v2, p0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->isFinal:Z

    if-eqz v2, :cond_0

    sget-object v2, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    goto :goto_0

    :cond_0
    sget-object v2, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 106
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    .line 107
    invoke-direct {p0}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->constructor()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addMethod(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->elements:Ljavax/lang/model/util/Elements;

    iget-object v2, p0, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->sourceVersion:Ljavax/lang/model/SourceVersion;

    .line 108
    const-class v3, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension;

    invoke-static {v1, v2, v3}, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotationSpecs;->generatedAnnotationSpec(Ljavax/lang/model/util/Elements;Ljavax/lang/model/SourceVersion;Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda10;

    invoke-direct {v2, v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda10;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;)V

    .line 109
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object v0
.end method
