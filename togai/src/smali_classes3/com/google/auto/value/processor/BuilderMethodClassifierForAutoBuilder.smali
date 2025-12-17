.class Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder;
.super Lcom/google/auto/value/processor/BuilderMethodClassifier;
.source "BuilderMethodClassifierForAutoBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/auto/value/processor/BuilderMethodClassifier<",
        "Ljavax/lang/model/element/VariableElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final executable:Ljavax/lang/model/element/ExecutableElement;

.field private final paramToPropertyName:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "Ljavax/lang/model/element/VariableElement;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/auto/value/processor/ErrorReporter;Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/TypeElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/auto/value/processor/ErrorReporter;",
            "Ljavax/annotation/processing/ProcessingEnvironment;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljavax/lang/model/element/TypeElement;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "Ljavax/lang/model/element/VariableElement;",
            "Ljava/lang/String;",
            ">;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/google/auto/value/processor/BuilderMethodClassifier;-><init>(Lcom/google/auto/value/processor/ErrorReporter;Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/TypeElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)V

    iput-object p3, p0, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder;->executable:Ljavax/lang/model/element/ExecutableElement;

    iput-object p6, p0, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder;->paramToPropertyName:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    return-void
.end method

.method static classify(Ljava/lang/Iterable;Lcom/google/auto/value/processor/ErrorReporter;Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/TypeElement;)Ljava/util/Optional;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;",
            "Lcom/google/auto/value/processor/ErrorReporter;",
            "Ljavax/annotation/processing/ProcessingEnvironment;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/google/auto/value/processor/BuilderMethodClassifier<",
            "Ljavax/lang/model/element/VariableElement;",
            ">;>;"
        }
    .end annotation

    .line 80
    invoke-interface {p3}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$$ExternalSyntheticLambda1;-><init>()V

    .line 81
    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->toImmutableBiMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    .line 83
    invoke-interface {p2}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    invoke-static {p3, p5, p1, v0}, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder;->rewriteParameterTypes(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;Lcom/google/auto/value/processor/ErrorReporter;Ljavax/lang/model/util/Types;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v8

    .line 84
    new-instance v0, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder;-><init>(Lcom/google/auto/value/processor/ErrorReporter;Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/TypeElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)V

    const/4 p1, 0x0

    .line 93
    invoke-virtual {v0, p0, p1}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->classifyMethods(Ljava/lang/Iterable;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 94
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 96
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static executableTypeParams(Ljavax/lang/model/element/ExecutableElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljavax/lang/model/element/TypeParameterElement;",
            ">;"
        }
    .end annotation

    .line 174
    sget-object v0, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 185
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getTypeParameters()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->copyOf(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p0

    return-object p0

    .line 187
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$VerifyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected executable kind "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/base/$VerifyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 180
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object v1

    .line 181
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object v0

    .line 182
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getTypeParameters()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object p0

    .line 183
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$classify$0(Ljavax/lang/model/element/VariableElement;)Ljavax/lang/model/element/VariableElement;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$classify$1(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;
    .locals 0

    .line 81
    invoke-interface {p0}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$rewriteParameterTypes$2(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;
    .locals 0

    .line 155
    invoke-interface {p0}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$rewriteParameterTypes$3(Ljava/util/Map;Ljavax/lang/model/type/TypeVariable;)Ljavax/lang/model/type/TypeMirror;
    .locals 1

    .line 164
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->equivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v0

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->wrap(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/TypeMirror;

    return-object p0
.end method

.method static synthetic lambda$rewriteParameterTypes$4(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;
    .locals 0

    .line 168
    invoke-interface {p0}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$rewriteParameterTypes$5(Ljava/util/function/Function;Ljavax/lang/model/util/Types;Ljavax/lang/model/element/VariableElement;)Ljavax/lang/model/type/TypeMirror;
    .locals 0

    .line 169
    invoke-interface {p2}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p2

    invoke-static {p2, p0, p1}, Lcom/google/auto/value/processor/TypeVariables;->substituteTypeVariables(Ljavax/lang/model/type/TypeMirror;Ljava/util/function/Function;Ljavax/lang/model/util/Types;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    return-object p0
.end method

.method private static rewriteParameterTypes(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;Lcom/google/auto/value/processor/ErrorReporter;Ljavax/lang/model/util/Types;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljavax/lang/model/element/TypeElement;",
            "Lcom/google/auto/value/processor/ErrorReporter;",
            "Ljavax/lang/model/util/Types;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation

    .line 141
    invoke-static {p0}, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder;->executableTypeParams(Ljavax/lang/model/element/ExecutableElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    .line 142
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    .line 143
    invoke-static {v0, v1}, Lcom/google/auto/value/processor/BuilderSpec;->sameTypeParameters(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    invoke-static {v1}, Lcom/google/auto/value/processor/TypeEncoder;->typeParametersString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-static {v0}, Lcom/google/auto/value/processor/TypeEncoder;->typeParametersString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-static {p0}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->executableString(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "[AutoBuilderTypeParams] Builder type parameters %s must match type parameters %s of %s"

    .line 144
    invoke-virtual {p2, p1, v3, v2}, Lcom/google/auto/value/processor/ErrorReporter;->abortWithError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/auto/value/processor/AbortProcessingException;

    .line 151
    :cond_0
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 154
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$$ExternalSyntheticLambda2;-><init>()V

    new-instance p2, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$$ExternalSyntheticLambda3;-><init>()V

    .line 155
    invoke-static {p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->toImmutableMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    return-object p0

    .line 157
    :cond_1
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 p2, 0x0

    .line 158
    :goto_0
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result v2

    if-ge p2, v2, :cond_2

    .line 159
    invoke-virtual {v0, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeParameterElement;

    invoke-interface {v2}, Ljavax/lang/model/element/TypeParameterElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-static {v2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asTypeVariable(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeVariable;

    move-result-object v2

    .line 160
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/TypeParameterElement;

    invoke-interface {v3}, Ljavax/lang/model/element/TypeParameterElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-static {v3}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asTypeVariable(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeVariable;

    move-result-object v3

    .line 161
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->equivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v4

    invoke-virtual {v4, v2}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->wrap(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper;

    move-result-object v2

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 163
    :cond_2
    new-instance p2, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$$ExternalSyntheticLambda4;

    invoke-direct {p2, p1}, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$$ExternalSyntheticLambda4;-><init>(Ljava/util/Map;)V

    .line 165
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$$ExternalSyntheticLambda5;-><init>()V

    new-instance v0, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$$ExternalSyntheticLambda6;

    invoke-direct {v0, p2, p3}, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Function;Ljavax/lang/model/util/Types;)V

    .line 167
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->toImmutableMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p1

    .line 166
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    return-object p0
.end method


# virtual methods
.method autoWhat()Ljava/lang/String;
    .locals 1

    const-string v0, "AutoBuilder"

    return-object v0
.end method

.method checkForFailedJavaBean(Ljavax/lang/model/element/ExecutableElement;)V
    .locals 0

    return-void
.end method

.method fooBuilderMustMatch()Ljava/lang/String;
    .locals 1

    const-string v0, "foo"

    return-object v0
.end method

.method getterMustMatch()Ljava/lang/String;
    .locals 2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "a parameter of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder;->executable:Ljavax/lang/model/element/ExecutableElement;

    invoke-static {v1}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->executableString(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic originalPropertyType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;
    .locals 0

    .line 43
    check-cast p1, Ljavax/lang/model/element/VariableElement;

    invoke-virtual {p0, p1}, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder;->originalPropertyType(Ljavax/lang/model/element/VariableElement;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    return-object p1
.end method

.method originalPropertyType(Ljavax/lang/model/element/VariableElement;)Ljavax/lang/model/type/TypeMirror;
    .locals 0

    .line 222
    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    return-object p1
.end method

.method propertyElements()Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/VariableElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder;->paramToPropertyName:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    .line 217
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->inverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method propertyForBuilderGetter(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Optional;
    .locals 2
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

    .line 193
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder;->paramToPropertyName:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    .line 194
    invoke-virtual {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 197
    :cond_0
    invoke-static {p1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->isPrefixedGetter(Ljavax/lang/model/element/ExecutableElement;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "get"

    .line 198
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 199
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-static {p1}, Lcom/google/auto/value/processor/PropertyNames;->decapitalizeLikeJavaBeans(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder;->paramToPropertyName:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    .line 201
    invoke-virtual {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 204
    :cond_2
    invoke-static {p1}, Lcom/google/auto/value/processor/PropertyNames;->decapitalizeNormally(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder;->paramToPropertyName:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    .line 205
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 209
    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic propertyString(Ljavax/lang/model/element/Element;)Ljava/lang/String;
    .locals 0

    .line 43
    check-cast p1, Ljavax/lang/model/element/VariableElement;

    invoke-virtual {p0, p1}, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder;->propertyString(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method propertyString(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parameter \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\" of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder;->executable:Ljavax/lang/model/element/ExecutableElement;

    .line 230
    invoke-static {v0}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->executableString(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
