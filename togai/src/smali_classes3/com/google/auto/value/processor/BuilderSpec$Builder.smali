.class Lcom/google/auto/value/processor/BuilderSpec$Builder;
.super Ljava/lang/Object;
.source "BuilderSpec.java"

# interfaces
.implements Lcom/google/auto/value/extension/AutoValueExtension$BuilderContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/processor/BuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Builder"
.end annotation


# instance fields
.field private buildMethod:Ljavax/lang/model/element/ExecutableElement;

.field private final builderTypeElement:Ljavax/lang/model/element/TypeElement;

.field private classifier:Lcom/google/auto/value/processor/BuilderMethodClassifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/auto/value/processor/BuilderMethodClassifier<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/auto/value/processor/BuilderSpec;

.field private toBuilderMethods:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/auto/value/processor/BuilderSpec;Ljavax/lang/model/element/TypeElement;)V
    .locals 0

    iput-object p1, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->this$0:Lcom/google/auto/value/processor/BuilderSpec;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->builderTypeElement:Ljavax/lang/model/element/TypeElement;

    return-void
.end method

.method private erasedTypeIs(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/TypeElement;)Z
    .locals 2

    .line 187
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$buildMethod$1(Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 2

    .line 154
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    const-string v1, "build"

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$defineVarsForAutoValue$7(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/TypeMirror;)V
    .locals 0

    .line 274
    invoke-virtual {p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    return-void
.end method

.method static synthetic lambda$setters$3(Ljava/util/Collection;)Ljava/util/Set;
    .locals 1

    .line 177
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method static synthetic lambda$toBuilderMethods$4(Ljavax/lang/model/element/TypeParameterElement;)Ljava/lang/String;
    .locals 0

    .line 220
    invoke-interface {p0}, Ljavax/lang/model/element/TypeParameterElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$toBuilderMethods$5(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 1

    .line 237
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object p0

    sget-object v0, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {p0, v0}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$toBuilderMethods$6(Ljavax/lang/model/util/Types;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;
    .locals 0

    .line 238
    invoke-interface {p0, p1}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public autoBuildMethod()Ljavax/lang/model/element/ExecutableElement;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->buildMethod:Ljavax/lang/model/element/ExecutableElement;

    return-object v0
.end method

.method public buildMethod()Ljava/util/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->this$0:Lcom/google/auto/value/processor/BuilderSpec;

    .line 147
    invoke-static {v0}, Lcom/google/auto/value/processor/BuilderSpec;->access$100(Lcom/google/auto/value/processor/BuilderSpec;)Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->builderTypeElement:Ljavax/lang/model/element/TypeElement;

    .line 148
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-static {v1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    iget-object v2, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->builderTypeElement:Ljavax/lang/model/element/TypeElement;

    iget-object v3, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->this$0:Lcom/google/auto/value/processor/BuilderSpec;

    .line 150
    invoke-static {v3}, Lcom/google/auto/value/processor/BuilderSpec;->access$100(Lcom/google/auto/value/processor/BuilderSpec;)Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v3

    invoke-interface {v3}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v3

    .line 149
    invoke-static {v2, v0, v3}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->getLocalAndInheritedMethods(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda4;-><init>()V

    .line 152
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda5;-><init>(Lcom/google/auto/value/processor/BuilderSpec$Builder;Ljavax/lang/model/util/Types;Ljavax/lang/model/type/DeclaredType;)V

    .line 158
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 164
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public builderMethods()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->this$0:Lcom/google/auto/value/processor/BuilderSpec;

    .line 135
    invoke-static {v0}, Lcom/google/auto/value/processor/BuilderSpec;->access$000(Lcom/google/auto/value/processor/BuilderSpec;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda3;-><init>(Lcom/google/auto/value/processor/BuilderSpec$Builder;)V

    .line 136
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 142
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public builderType()Ljavax/lang/model/element/TypeElement;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->builderTypeElement:Ljavax/lang/model/element/TypeElement;

    return-object v0
.end method

.method defineVars(Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;Lcom/google/auto/value/processor/BuilderMethodClassifier;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;",
            "Lcom/google/auto/value/processor/BuilderMethodClassifier<",
            "*>;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->classifier:Lcom/google/auto/value/processor/BuilderMethodClassifier;

    .line 306
    invoke-virtual {p2}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->buildMethods()Ljava/util/Set;

    move-result-object v0

    .line 307
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 309
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->builderTypeElement:Ljavax/lang/model/element/TypeElement;

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    .line 310
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/lang/model/element/Element;

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->this$0:Lcom/google/auto/value/processor/BuilderSpec;

    .line 311
    invoke-static {v0}, Lcom/google/auto/value/processor/BuilderSpec;->access$200(Lcom/google/auto/value/processor/BuilderSpec;)Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->this$0:Lcom/google/auto/value/processor/BuilderSpec;

    .line 315
    invoke-static {v1}, Lcom/google/auto/value/processor/BuilderSpec;->access$000(Lcom/google/auto/value/processor/BuilderSpec;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    iget-object v2, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->this$0:Lcom/google/auto/value/processor/BuilderSpec;

    .line 316
    invoke-static {v2}, Lcom/google/auto/value/processor/BuilderSpec;->access$300(Lcom/google/auto/value/processor/BuilderSpec;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[AutoValueBuilderBuild] Builder must have a single no-argument method, typically called build(), that returns %s%s"

    .line 311
    invoke-virtual {v0, p2, v2, v1}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void

    .line 320
    :cond_2
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    iput-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->buildMethod:Ljavax/lang/model/element/ExecutableElement;

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->builderTypeElement:Ljavax/lang/model/element/TypeElement;

    .line 321
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->INTERFACE:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;->builderIsInterface:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->builderTypeElement:Ljavax/lang/model/element/TypeElement;

    .line 322
    invoke-static {v0}, Lcom/google/auto/value/processor/TypeSimplifier;->classNameOf(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;->builderTypeName:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->builderTypeElement:Ljavax/lang/model/element/TypeElement;

    .line 324
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/auto/value/processor/TypeEncoder;->typeParametersString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;->builderFormalTypes:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->builderTypeElement:Ljavax/lang/model/element/TypeElement;

    .line 325
    invoke-static {v0}, Lcom/google/auto/value/processor/TypeSimplifier;->actualTypeParametersString(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;->builderActualTypes:Ljava/lang/String;

    .line 326
    new-instance v0, Lcom/google/auto/value/processor/SimpleMethod;

    iget-object v1, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->buildMethod:Ljavax/lang/model/element/ExecutableElement;

    invoke-direct {v0, v1}, Lcom/google/auto/value/processor/SimpleMethod;-><init>(Ljavax/lang/model/element/ExecutableElement;)V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p1, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;->buildMethod:Ljava/util/Optional;

    .line 327
    invoke-virtual {p2}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->builderGetters()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    iput-object v0, p1, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;->builderGetters:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 328
    invoke-virtual {p2}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyNameToSetters()Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    move-result-object v0

    iput-object v0, p1, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;->builderSetters:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    .line 331
    invoke-virtual {p2}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyNameToPropertyBuilder()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->copyOf(Ljava/util/Map;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p2

    iput-object p2, p1, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;->builderPropertyBuilders:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 333
    new-instance p2, Ljava/util/LinkedHashSet;

    iget-object v0, p1, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;->props:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    invoke-direct {p2, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 334
    iget-object v0, p1, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;->props:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;

    .line 335
    invoke-virtual {v1}, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;->isNullable()Z

    move-result v2

    if-nez v2, :cond_5

    .line 336
    invoke-virtual {v1}, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;->getOptional()Lcom/google/auto/value/processor/Optionalish;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;->builderPropertyBuilders:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 337
    invoke-virtual {v1}, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 338
    :cond_5
    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 341
    :cond_6
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->copyOf(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p2

    iput-object p2, p1, Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;->builderRequiredProperties:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    return-void
.end method

.method defineVarsForAutoValue(Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->builderTypeElement:Ljavax/lang/model/element/TypeElement;

    iget-object v1, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->this$0:Lcom/google/auto/value/processor/BuilderSpec;

    .line 263
    invoke-static {v1}, Lcom/google/auto/value/processor/BuilderSpec;->access$100(Lcom/google/auto/value/processor/BuilderSpec;)Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/auto/value/processor/BuilderSpec;->abstractMethods(Ljavax/lang/model/element/TypeElement;Ljavax/annotation/processing/ProcessingEnvironment;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v2

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->toBuilderMethods:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v9, v0

    goto :goto_0

    :cond_0
    move v9, v1

    :goto_0
    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->this$0:Lcom/google/auto/value/processor/BuilderSpec;

    .line 267
    invoke-static {v0}, Lcom/google/auto/value/processor/BuilderSpec;->access$100(Lcom/google/auto/value/processor/BuilderSpec;)Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    iget-object v3, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->this$0:Lcom/google/auto/value/processor/BuilderSpec;

    .line 268
    invoke-static {v3}, Lcom/google/auto/value/processor/BuilderSpec;->access$100(Lcom/google/auto/value/processor/BuilderSpec;)Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v3

    invoke-interface {v3}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v3

    .line 269
    invoke-virtual {p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v4

    iget-object v5, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->this$0:Lcom/google/auto/value/processor/BuilderSpec;

    .line 270
    invoke-static {v5}, Lcom/google/auto/value/processor/BuilderSpec;->access$000(Lcom/google/auto/value/processor/BuilderSpec;)Ljavax/lang/model/element/TypeElement;

    move-result-object v5

    iget-object v6, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->builderTypeElement:Ljavax/lang/model/element/TypeElement;

    .line 266
    invoke-static {v0, v3, v4, v5, v6}, Lcom/google/auto/value/processor/TypeVariables;->rewriteReturnTypes(Ljavax/lang/model/util/Elements;Ljavax/lang/model/util/Types;Ljava/util/Collection;Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    .line 272
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    move-result-object v3

    .line 273
    new-instance v4, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda8;

    invoke-direct {v4, v3, p2}, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda8;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;)V

    invoke-virtual {v0, v4}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->this$0:Lcom/google/auto/value/processor/BuilderSpec;

    .line 278
    invoke-static {v0}, Lcom/google/auto/value/processor/BuilderSpec;->access$200(Lcom/google/auto/value/processor/BuilderSpec;)Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object v0

    iget-object v4, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->this$0:Lcom/google/auto/value/processor/BuilderSpec;

    .line 279
    invoke-static {v4}, Lcom/google/auto/value/processor/BuilderSpec;->access$100(Lcom/google/auto/value/processor/BuilderSpec;)Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v4

    iget-object v5, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->this$0:Lcom/google/auto/value/processor/BuilderSpec;

    .line 280
    invoke-static {v5}, Lcom/google/auto/value/processor/BuilderSpec;->access$000(Lcom/google/auto/value/processor/BuilderSpec;)Ljavax/lang/model/element/TypeElement;

    move-result-object v5

    iget-object v6, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->builderTypeElement:Ljavax/lang/model/element/TypeElement;

    .line 283
    invoke-virtual {v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v8

    move-object v3, v0

    move-object v7, p2

    .line 276
    invoke-static/range {v2 .. v9}, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoValue;->classify(Ljava/lang/Iterable;Lcom/google/auto/value/processor/ErrorReporter;Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/TypeElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Z)Ljava/util/Optional;

    move-result-object p2

    .line 285
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->builderTypeElement:Ljavax/lang/model/element/TypeElement;

    .line 288
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    .line 289
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    const-string v4, "builder"

    invoke-interface {v3, v4}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 290
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 291
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, p1, Lcom/google/auto/value/processor/AutoBuilderTemplateVars;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->this$0:Lcom/google/auto/value/processor/BuilderSpec;

    .line 295
    invoke-static {v3}, Lcom/google/auto/value/processor/BuilderSpec;->access$200(Lcom/google/auto/value/processor/BuilderSpec;)Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object v3

    const-string v4, "[AutoValueBuilderInBuilder] Static builder() method should be in the containing class"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4, v5}, Lcom/google/auto/value/processor/ErrorReporter;->reportWarning(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 301
    :cond_3
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/auto/value/processor/BuilderMethodClassifier;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/BuilderSpec$Builder;->defineVars(Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;Lcom/google/auto/value/processor/BuilderMethodClassifier;)V

    return-void
.end method

.method synthetic lambda$buildMethod$2$com-google-auto-value-processor-BuilderSpec$Builder(Ljavax/lang/model/util/Types;Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 0

    .line 161
    invoke-interface {p1, p2, p3}, Ljavax/lang/model/util/Types;->asMemberOf(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asExecutable(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ExecutableType;

    move-result-object p1

    .line 162
    invoke-interface {p1}, Ljavax/lang/model/type/ExecutableType;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    iget-object p2, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->this$0:Lcom/google/auto/value/processor/BuilderSpec;

    invoke-static {p2}, Lcom/google/auto/value/processor/BuilderSpec;->access$000(Lcom/google/auto/value/processor/BuilderSpec;)Ljavax/lang/model/element/TypeElement;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/auto/value/processor/BuilderSpec$Builder;->erasedTypeIs(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/TypeElement;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$builderMethods$0$com-google-auto-value-processor-BuilderSpec$Builder(Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 2

    .line 138
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->builderTypeElement:Ljavax/lang/model/element/TypeElement;

    invoke-direct {p0, p1, v0}, Lcom/google/auto/value/processor/BuilderSpec$Builder;->erasedTypeIs(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/TypeElement;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public propertyBuilders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->classifier:Lcom/google/auto/value/processor/BuilderMethodClassifier;

    .line 183
    invoke-virtual {v0}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyNameToPropertyBuilder()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda9;-><init>()V

    .line 182
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->transformValues(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public setters()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->classifier:Lcom/google/auto/value/processor/BuilderMethodClassifier;

    .line 175
    invoke-virtual {v0}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyNameToSetters()Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->asMap()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda7;-><init>()V

    .line 174
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->transformValues(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method toBuilderMethods(Ljavax/lang/model/util/Types;Ljavax/lang/model/element/TypeElement;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Types;",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->builderTypeElement:Ljavax/lang/model/element/TypeElement;

    .line 219
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda0;-><init>()V

    .line 220
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 221
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 223
    invoke-interface {p2}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p2

    invoke-static {p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p2

    .line 224
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object v1

    .line 225
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    .line 226
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 230
    :cond_1
    invoke-interface {p1, p2, v2}, Ljavax/lang/model/util/Types;->asMemberOf(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-static {v3}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asExecutable(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ExecutableType;

    move-result-object v3

    .line 231
    invoke-interface {v3}, Ljavax/lang/model/type/ExecutableType;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    iget-object v4, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->builderTypeElement:Ljavax/lang/model/element/TypeElement;

    .line 232
    invoke-interface {p1, v3}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    invoke-virtual {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    .line 234
    invoke-static {v3}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v3

    .line 236
    invoke-interface {v3}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda1;-><init>()V

    .line 237
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v4, p1}, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda2;-><init>(Ljavax/lang/model/util/Types;)V

    .line 238
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 239
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 240
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->this$0:Lcom/google/auto/value/processor/BuilderSpec;

    .line 241
    invoke-static {v3}, Lcom/google/auto/value/processor/BuilderSpec;->access$200(Lcom/google/auto/value/processor/BuilderSpec;)Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object v3

    iget-object v4, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->builderTypeElement:Ljavax/lang/model/element/TypeElement;

    .line 245
    invoke-static {v4}, Lcom/google/auto/value/processor/TypeSimplifier;->actualTypeParametersString(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "[AutoValueBuilderConverterReturn] Builder converter method should return %s%s"

    .line 241
    invoke-virtual {v3, v2, v5, v4}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    .line 250
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->size()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_3

    iget-object p2, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->this$0:Lcom/google/auto/value/processor/BuilderSpec;

    .line 251
    invoke-static {p2}, Lcom/google/auto/value/processor/BuilderSpec;->access$200(Lcom/google/auto/value/processor/BuilderSpec;)Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object p2

    .line 252
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object p3

    invoke-virtual {p3}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljavax/lang/model/element/Element;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[AutoValueTwoBuilderConverters] There can be at most one builder converter method"

    .line 251
    invoke-virtual {p2, p3, v1, v0}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iput-object p1, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->toBuilderMethods:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    return-object p1
.end method

.method public toBuilderMethods()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder;->toBuilderMethods:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    return-object v0
.end method
