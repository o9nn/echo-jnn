.class public final Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "ToPrettyStringValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$ErrorReporter;
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedAnnotationTypes;
    value = {
        "com.google.auto.value.extension.toprettystring.ToPrettyString"
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$GMX4HiFPZkfx8KWQZMqhiH4Cz8w()Ljava/util/LinkedHashSet;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method public static synthetic $r8$lambda$p5L8G0ki1qE8V9xf0ZtApU1efKI(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator;Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator;->formatMethodInList(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    return-void
.end method

.method private formatMethodInList(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;
    .locals 1

    .line 120
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v0

    .line 121
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "\n  - %s.%s()"

    .line 118
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatMethodList(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 114
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$$ExternalSyntheticLambda0;-><init>(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->joining()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private validateMethod(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/util/Elements;)V
    .locals 3

    .line 75
    new-instance v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$ErrorReporter;

    iget-object v1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$ErrorReporter;-><init>(Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/Messager;)V

    .line 76
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "@ToPrettyString methods must be instance methods"

    .line 77
    invoke-virtual {v0, v1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$ErrorReporter;->reportError(Ljava/lang/String;)V

    :cond_0
    const-string v1, "java.lang.String"

    .line 80
    invoke-interface {p2, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object p2

    invoke-interface {p2}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p2

    .line 81
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->equivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v1

    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "@ToPrettyString methods must return String"

    .line 82
    invoke-virtual {v0, p2}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$ErrorReporter;->reportError(Ljava/lang/String;)V

    .line 85
    :cond_1
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "@ToPrettyString methods cannot have parameters"

    .line 86
    invoke-virtual {v0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$ErrorReporter;->reportError(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private validateSingleToPrettyStringMethod(Ljava/util/Set;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;",
            "Ljavax/lang/model/util/Types;",
            "Ljavax/lang/model/util/Elements;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$$ExternalSyntheticLambda1;-><init>()V

    .line 94
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$$ExternalSyntheticLambda2;-><init>()V

    .line 95
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator$$ExternalSyntheticLambda3;-><init>()V

    .line 96
    invoke-static {v0}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 97
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 99
    invoke-static {v0, p2, p3}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringMethods;->toPrettyStringMethods(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 101
    iget-object v2, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 102
    invoke-interface {v2}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v2

    sget-object v3, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    .line 107
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-direct {p0, v1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator;->formatMethodList(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "%s has multiple @ToPrettyString methods:%s"

    .line 105
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-interface {v2, v3, v1, v0}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;
    .locals 1

    .line 126
    invoke-static {}, Ljavax/lang/model/SourceVersion;->latestSupported()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 3
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

    .line 59
    iget-object p1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    const-string v1, "com.google.auto.value.extension.toprettystring.ToPrettyString"

    .line 61
    invoke-interface {v0, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    .line 64
    invoke-interface {p2, v1}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljavax/lang/model/element/TypeElement;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p2}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    .line 65
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    .line 66
    invoke-direct {p0, v2, v0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator;->validateMethod(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/util/Elements;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-direct {p0, p2, p1, v0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringValidator;->validateSingleToPrettyStringMethod(Ljava/util/Set;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)V

    const/4 p1, 0x0

    return p1
.end method
