.class abstract Lcom/google/auto/value/processor/BuilderMethodClassifier;
.super Ljava/lang/Object;
.source "BuilderMethodClassifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Ljavax/lang/model/element/Element;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TYPE_EQUIVALENCE:Lautovalue/shaded/com/google$/common/base/$Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/base/$Equivalence<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final buildMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation
.end field

.field private final builderGetters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/processor/BuilderSpec$PropertyGetter;",
            ">;"
        }
    .end annotation
.end field

.field private final builderType:Ljavax/lang/model/element/TypeElement;

.field private final builtType:Ljavax/lang/model/type/TypeMirror;

.field private final eclipseHack:Lcom/google/auto/value/processor/EclipseHack;

.field private final elementUtils:Ljavax/lang/model/util/Elements;

.field private final errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

.field private final propertyNameToPrefixedSetters:Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;",
            ">;"
        }
    .end annotation
.end field

.field private final propertyNameToPropertyBuilder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final propertyNameToUnprefixedSetters:Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;",
            ">;"
        }
    .end annotation
.end field

.field private final rewrittenPropertyTypes:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation
.end field

.field private settersPrefixed:Z

.field private final typeUtils:Ljavax/lang/model/util/Types;


# direct methods
.method public static synthetic $r8$lambda$hVi9ipcyWGZVvEqoBnOeQgVSmqs(Lcom/google/auto/value/processor/BuilderMethodClassifier;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyIsNullable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 65
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->equivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v0

    sput-object v0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->TYPE_EQUIVALENCE:Lautovalue/shaded/com/google$/common/base/$Equivalence;

    return-void
.end method

.method constructor <init>(Lcom/google/auto/value/processor/ErrorReporter;Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/TypeElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/auto/value/processor/ErrorReporter;",
            "Ljavax/annotation/processing/ProcessingEnvironment;",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljavax/lang/model/element/TypeElement;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->buildMethods:Ljava/util/Set;

    .line 89
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->builderGetters:Ljava/util/Map;

    .line 90
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyNameToPropertyBuilder:Ljava/util/Map;

    .line 92
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;->create()Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyNameToPrefixedSetters:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 94
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;->create()Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyNameToUnprefixedSetters:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    iput-object p1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    .line 106
    invoke-interface {p2}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->typeUtils:Ljavax/lang/model/util/Types;

    .line 107
    invoke-interface {p2}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->elementUtils:Ljavax/lang/model/util/Elements;

    iput-object p3, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->builtType:Ljavax/lang/model/type/TypeMirror;

    iput-object p4, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->builderType:Ljavax/lang/model/element/TypeElement;

    iput-object p5, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->rewrittenPropertyTypes:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 111
    new-instance p1, Lcom/google/auto/value/processor/EclipseHack;

    invoke-direct {p1, p2}, Lcom/google/auto/value/processor/EclipseHack;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;)V

    iput-object p1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->eclipseHack:Lcom/google/auto/value/processor/EclipseHack;

    return-void
.end method

.method private classifyGetter(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->rewrittenPropertyTypes:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 284
    invoke-virtual {v0, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    .line 285
    invoke-virtual {p0, p1}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->builderMethodReturnType(Ljavax/lang/model/element/ExecutableElement;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 286
    invoke-static {v1}, Lcom/google/auto/value/processor/TypeEncoder;->encodeWithAnnotations(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/auto/value/processor/BuilderMethodClassifier;->TYPE_EQUIVALENCE:Lautovalue/shaded/com/google$/common/base/$Equivalence;

    .line 287
    invoke-virtual {v3, v1, v0}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->builderGetters:Ljava/util/Map;

    .line 288
    new-instance v1, Lcom/google/auto/value/processor/BuilderSpec$PropertyGetter;

    invoke-direct {v1, p1, v2, v5}, Lcom/google/auto/value/processor/BuilderSpec$PropertyGetter;-><init>(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;Lcom/google/auto/value/processor/Optionalish;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 293
    :cond_0
    invoke-static {v1}, Lcom/google/auto/value/processor/Optionalish;->createIfOptional(Ljavax/lang/model/type/TypeMirror;)Lcom/google/auto/value/processor/Optionalish;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v6, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->typeUtils:Ljavax/lang/model/util/Types;

    .line 295
    invoke-virtual {v4, v6}, Lcom/google/auto/value/processor/Optionalish;->getContainedType(Ljavax/lang/model/util/Types;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    .line 300
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v5, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->typeUtils:Ljavax/lang/model/util/Types;

    .line 301
    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asPrimitiveType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v7

    invoke-interface {v5, v7}, Ljavax/lang/model/util/Types;->boxedClass(Ljavax/lang/model/type/PrimitiveType;)Ljavax/lang/model/element/TypeElement;

    move-result-object v5

    invoke-interface {v5}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    .line 303
    :cond_1
    invoke-virtual {v3, v6, v0}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 304
    invoke-virtual {v3, v6, v5}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->builderGetters:Ljava/util/Map;

    .line 305
    new-instance v1, Lcom/google/auto/value/processor/BuilderSpec$PropertyGetter;

    invoke-direct {v1, p1, v2, v4}, Lcom/google/auto/value/processor/BuilderSpec$PropertyGetter;-><init>(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;Lcom/google/auto/value/processor/Optionalish;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    iget-object p2, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    iget-object v2, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->builtType:Ljavax/lang/model/type/TypeMirror;

    .line 311
    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[AutoValueBuilderReturnType] Method matches a property of %1$s but has return type %2$s instead of %3$s or an Optional wrapping of %3$s"

    invoke-virtual {p2, p1, v1, v0}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private classifyMethod(Ljavax/lang/model/element/ExecutableElement;)V
    .locals 3

    .line 215
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    .line 224
    invoke-virtual {p0}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->autoWhat()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[%sBuilderArgs] Builder methods must have 0 or 1 parameters"

    .line 223
    invoke-virtual {v0, p1, v2, v1}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->classifyMethodOneArg(Ljavax/lang/model/element/ExecutableElement;)V

    goto :goto_0

    .line 217
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->classifyMethodNoArgs(Ljavax/lang/model/element/ExecutableElement;)V

    :goto_0
    return-void
.end method

.method private classifyMethodNoArgs(Ljavax/lang/model/element/ExecutableElement;)V
    .locals 11

    .line 237
    invoke-virtual {p0, p1}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyForBuilderGetter(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Optional;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->classifyGetter(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;)V

    return-void

    .line 243
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {p0, p1}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->builderMethodReturnType(Ljavax/lang/model/element/ExecutableElement;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    const-string v2, "Builder"

    .line 246
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 247
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->rewrittenPropertyTypes:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 248
    invoke-virtual {v2, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    new-instance v1, Lcom/google/auto/value/processor/PropertyBuilderClassifier;

    iget-object v4, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    iget-object v5, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->typeUtils:Ljavax/lang/model/util/Types;

    iget-object v6, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->elementUtils:Ljavax/lang/model/util/Elements;

    new-instance v8, Lcom/google/auto/value/processor/BuilderMethodClassifier$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lcom/google/auto/value/processor/BuilderMethodClassifier$$ExternalSyntheticLambda0;-><init>(Lcom/google/auto/value/processor/BuilderMethodClassifier;)V

    iget-object v9, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->rewrittenPropertyTypes:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    iget-object v10, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->eclipseHack:Lcom/google/auto/value/processor/EclipseHack;

    move-object v3, v1

    move-object v7, p0

    invoke-direct/range {v3 .. v10}, Lcom/google/auto/value/processor/PropertyBuilderClassifier;-><init>(Lcom/google/auto/value/processor/ErrorReporter;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;Lcom/google/auto/value/processor/BuilderMethodClassifier;Ljava/util/function/Predicate;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Lcom/google/auto/value/processor/EclipseHack;)V

    .line 259
    invoke-virtual {v1, p1, v0}, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->makePropertyBuilder(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    .line 260
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyNameToPropertyBuilder:Ljava/util/Map;

    .line 261
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->TYPE_EQUIVALENCE:Lautovalue/shaded/com/google$/common/base/$Equivalence;

    iget-object v2, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->builtType:Ljavax/lang/model/type/TypeMirror;

    .line 267
    invoke-virtual {v0, v1, v2}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->buildMethods:Ljava/util/Set;

    .line 268
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    .line 276
    invoke-virtual {p0}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->autoWhat()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->builtType:Ljavax/lang/model/type/TypeMirror;

    .line 278
    invoke-virtual {p0}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->getterMustMatch()Ljava/lang/String;

    move-result-object v3

    .line 279
    invoke-virtual {p0}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->fooBuilderMustMatch()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[%1$sBuilderNoArg] Method without arguments should be a build method returning %2$s, or a getter method with the same name and type as %3$s, or fooBuilder() where %4$s is %3$s"

    .line 270
    invoke-virtual {v0, p1, v2, v1}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private classifyMethodOneArg(Ljavax/lang/model/element/ExecutableElement;)V
    .locals 8

    .line 333
    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->classifyPropertyBuilderOneArg(Ljavax/lang/model/element/ExecutableElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 336
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-virtual {p0}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyElements()Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object v1

    .line 339
    invoke-virtual {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/Element;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyNameToUnprefixedSetters:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    goto/16 :goto_1

    :cond_1
    const-string v3, "set"

    .line 344
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_3

    iget-object v2, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyNameToPrefixedSetters:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 346
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/auto/value/processor/PropertyNames;->decapitalizeLikeJavaBeans(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 347
    invoke-virtual {v1, v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/Element;

    if-nez v5, :cond_2

    .line 355
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/auto/value/processor/PropertyNames;->decapitalizeNormally(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-virtual {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_1

    :cond_2
    move-object v1, v2

    move-object v0, v3

    move-object v2, v5

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyNameToUnprefixedSetters:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 364
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 365
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/auto/value/processor/PropertyNames;->decapitalizeNormally(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 366
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 367
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljavax/lang/model/element/Element;

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    move-object v1, v3

    :goto_1
    if-eqz v2, :cond_9

    if-nez v1, :cond_6

    goto :goto_3

    .line 383
    :cond_6
    invoke-direct {p0, v2, p1}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->getSetterFunction(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Optional;

    move-result-object v2

    .line 384
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->builderType:Ljavax/lang/model/element/TypeElement;

    .line 385
    invoke-interface {v3}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-static {v3}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v3

    iget-object v4, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->typeUtils:Ljavax/lang/model/util/Types;

    .line 387
    invoke-interface {v4, v3, p1}, Ljavax/lang/model/util/Types;->asMemberOf(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-static {v3}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asExecutable(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ExecutableType;

    move-result-object v3

    sget-object v4, Lcom/google/auto/value/processor/BuilderMethodClassifier;->TYPE_EQUIVALENCE:Lautovalue/shaded/com/google$/common/base/$Equivalence;

    .line 388
    invoke-interface {v3}, Ljavax/lang/model/type/ExecutableType;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    iget-object v6, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->builderType:Ljavax/lang/model/element/TypeElement;

    invoke-interface {v6}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 389
    invoke-interface {v3}, Ljavax/lang/model/type/ExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/type/TypeMirror;

    .line 390
    new-instance v4, Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;

    .line 391
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/auto/value/processor/BuilderSpec$Copier;

    invoke-direct {v4, p1, v3, v2}, Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;-><init>(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/TypeMirror;Lcom/google/auto/value/processor/BuilderSpec$Copier;)V

    .line 390
    invoke-interface {v1, v0, v4}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    .line 396
    invoke-virtual {p0}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->autoWhat()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->builderType:Ljavax/lang/model/element/TypeElement;

    .line 397
    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[%sBuilderRet] Setter methods must return %s"

    .line 393
    invoke-virtual {v0, p1, v2, v1}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_2
    return-void

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    .line 378
    invoke-virtual {p0}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->autoWhat()Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-virtual {p0}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->getterMustMatch()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[%sBuilderWhatProp] Method does not correspond to %s"

    .line 375
    invoke-virtual {v0, p1, v2, v1}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    invoke-virtual {p0, p1}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->checkForFailedJavaBean(Ljavax/lang/model/element/ExecutableElement;)V

    return-void
.end method

.method private classifyPropertyBuilderOneArg(Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 11

    .line 410
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Builder"

    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 414
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->rewrittenPropertyTypes:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 415
    invoke-virtual {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 418
    :cond_1
    new-instance v1, Lcom/google/auto/value/processor/PropertyBuilderClassifier;

    iget-object v4, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    iget-object v5, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->typeUtils:Ljavax/lang/model/util/Types;

    iget-object v6, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->elementUtils:Ljavax/lang/model/util/Elements;

    new-instance v8, Lcom/google/auto/value/processor/BuilderMethodClassifier$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lcom/google/auto/value/processor/BuilderMethodClassifier$$ExternalSyntheticLambda0;-><init>(Lcom/google/auto/value/processor/BuilderMethodClassifier;)V

    iget-object v9, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->rewrittenPropertyTypes:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    iget-object v10, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->eclipseHack:Lcom/google/auto/value/processor/EclipseHack;

    move-object v3, v1

    move-object v7, p0

    invoke-direct/range {v3 .. v10}, Lcom/google/auto/value/processor/PropertyBuilderClassifier;-><init>(Lcom/google/auto/value/processor/ErrorReporter;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;Lcom/google/auto/value/processor/BuilderMethodClassifier;Ljava/util/function/Predicate;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Lcom/google/auto/value/processor/EclipseHack;)V

    .line 428
    invoke-virtual {v1, p1, v0}, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->makePropertyBuilder(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    .line 429
    new-instance v1, Lcom/google/auto/value/processor/BuilderMethodClassifier$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lcom/google/auto/value/processor/BuilderMethodClassifier$$ExternalSyntheticLambda5;-><init>(Lcom/google/auto/value/processor/BuilderMethodClassifier;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 431
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    return p1
.end method

.method private copyOfMethods(Ljavax/lang/model/type/TypeMirror;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Z)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 583
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1

    .line 587
    :cond_0
    invoke-static {p1}, Lcom/google/auto/value/processor/Optionalish;->createIfOptional(Ljavax/lang/model/type/TypeMirror;)Lcom/google/auto/value/processor/Optionalish;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p2, "copyOfSorted"

    const-string v0, "copyOf"

    .line 589
    invoke-static {p2, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p2

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 591
    invoke-virtual {v0}, Lcom/google/auto/value/processor/Optionalish;->ofNullable()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string p2, "of"

    :goto_0
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p2

    :goto_1
    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->typeUtils:Ljavax/lang/model/util/Types;

    .line 593
    invoke-interface {v0, p1}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    .line 594
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object v0

    .line 595
    invoke-virtual {p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 597
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/ExecutableElement;

    .line 598
    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-interface {v4, v1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 599
    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 600
    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 601
    invoke-virtual {v0, v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    goto :goto_2

    .line 605
    :cond_5
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method private getConvertingSetterFunction(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljavax/lang/model/element/Element;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/TypeMirror;)Ljava/util/Optional;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;TE;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/google/auto/value/processor/BuilderSpec$Copier;",
            ">;"
        }
    .end annotation

    .line 498
    invoke-virtual {p0}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyElements()Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->inverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->rewrittenPropertyTypes:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 499
    invoke-virtual {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v7

    .line 500
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/ExecutableElement;

    .line 502
    invoke-direct {p0, v1, v7, p4}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->getConvertingSetterFunction(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/type/TypeMirror;)Ljava/util/Optional;

    move-result-object v1

    .line 503
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 507
    :cond_1
    invoke-interface {v7}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    .line 512
    invoke-virtual {p0}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->autoWhat()Ljava/lang/String;

    move-result-object v1

    .line 515
    invoke-virtual {p0, p2}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v4

    const/4 p2, 0x0

    .line 517
    invoke-virtual {p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v6

    move-object v2, p4

    move-object v3, v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[%sGetVsSetOrConvert] Parameter type %s of setter method should be %s to match %s, or it should be a type that can be passed to %s.%s to produce %s"

    .line 508
    invoke-virtual {v0, p3, p2, p1}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method private getConvertingSetterFunction(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/type/TypeMirror;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljavax/lang/model/type/DeclaredType;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/google/auto/value/processor/BuilderSpec$Copier;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->typeUtils:Ljavax/lang/model/util/Types;

    .line 558
    invoke-static {p1, p3, p2, v0}, Lcom/google/auto/value/processor/TypeVariables;->canAssignStaticMethodResult(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 560
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/google/auto/value/processor/TypeEncoder;->encodeRaw(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 561
    new-instance p2, Lcom/google/auto/value/processor/BuilderMethodClassifier$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/google/auto/value/processor/BuilderMethodClassifier$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    const-string p3, "Nullable"

    .line 566
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 567
    invoke-static {p2}, Lcom/google/auto/value/processor/BuilderSpec$Copier;->acceptingNull(Ljava/util/function/Function;)Lcom/google/auto/value/processor/BuilderSpec$Copier;

    move-result-object p1

    goto :goto_0

    .line 568
    :cond_0
    invoke-static {p2}, Lcom/google/auto/value/processor/BuilderSpec$Copier;->notAcceptingNull(Ljava/util/function/Function;)Lcom/google/auto/value/processor/BuilderSpec$Copier;

    move-result-object p1

    .line 569
    :goto_0
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 571
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method private getSetterFunction(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljavax/lang/model/element/ExecutableElement;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/google/auto/value/processor/BuilderSpec$Copier;",
            ">;"
        }
    .end annotation

    .line 443
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/VariableElement;

    .line 445
    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->nullableAnnotationFor(Ljavax/lang/model/element/Element;Ljavax/lang/model/type/TypeMirror;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    .line 446
    invoke-virtual {p0}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyElements()Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object v1

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->inverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->rewrittenPropertyTypes:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 447
    invoke-virtual {v2, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/TypeMirror;

    iget-object v2, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->typeUtils:Ljavax/lang/model/util/Types;

    iget-object v3, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->builderType:Ljavax/lang/model/element/TypeElement;

    .line 450
    invoke-interface {v3}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-static {v3}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljavax/lang/model/util/Types;->asMemberOf(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 449
    invoke-static {v2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asExecutable(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ExecutableType;

    move-result-object v2

    .line 451
    invoke-interface {v2}, Ljavax/lang/model/type/ExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/TypeMirror;

    iget-object v3, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->typeUtils:Ljavax/lang/model/util/Types;

    .line 455
    invoke-interface {v3, v2, v1}, Ljavax/lang/model/util/Types;->isAssignable(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->typeUtils:Ljavax/lang/model/util/Types;

    .line 456
    invoke-interface {v3, v1, v2}, Ljavax/lang/model/util/Types;->isAssignable(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {p0, p1}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->originalPropertyType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->nullableAnnotationFor(Ljavax/lang/model/element/Element;Ljavax/lang/model/type/TypeMirror;)Ljava/util/Optional;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    .line 465
    invoke-virtual {p0}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->autoWhat()Ljava/lang/String;

    move-result-object v1

    .line 466
    invoke-virtual {p0, p1}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "[%sNullNotNull] Parameter of setter method is @Nullable but %s is not"

    .line 462
    invoke-virtual {v0, p2, v1, p1}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 470
    :cond_0
    sget-object p1, Lcom/google/auto/value/processor/BuilderSpec$Copier;->IDENTITY:Lcom/google/auto/value/processor/BuilderSpec$Copier;

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 474
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->copyOfMethods(Ljavax/lang/model/type/TypeMirror;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 476
    invoke-direct {p0, v0, p1, p2, v2}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->getConvertingSetterFunction(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljavax/lang/model/element/Element;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/TypeMirror;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    .line 481
    invoke-virtual {p0}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->autoWhat()Ljava/lang/String;

    move-result-object v3

    .line 484
    invoke-virtual {p0, p1}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v3, v2, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "[%sGetVsSet] Parameter type %s of setter method should be %s to match %s"

    .line 478
    invoke-virtual {v0, p2, v1, p1}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$getConvertingSetterFunction$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$propertyIsNullable$2(Ljavax/lang/model/AnnotatedConstruct;)Ljava/util/stream/Stream;
    .locals 0

    .line 657
    invoke-interface {p0}, Ljavax/lang/model/AnnotatedConstruct;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$propertyIsNullable$3(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/Name;
    .locals 0

    .line 658
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$propertyIsNullable$4(Ljavax/lang/model/element/Name;)Z
    .locals 1

    const-string v0, "Nullable"

    .line 659
    invoke-interface {p0, v0}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static prefixWithSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private propertyIsNullable(Ljava/lang/String;)Z
    .locals 2

    .line 655
    invoke-virtual {p0}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyElements()Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/element/Element;

    const/4 v0, 0x2

    new-array v0, v0, [Ljavax/lang/model/AnnotatedConstruct;

    const/4 v1, 0x0

    .line 656
    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->originalPropertyType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/processor/BuilderMethodClassifier$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/auto/value/processor/BuilderMethodClassifier$$ExternalSyntheticLambda2;-><init>()V

    .line 657
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/processor/BuilderMethodClassifier$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/auto/value/processor/BuilderMethodClassifier$$ExternalSyntheticLambda3;-><init>()V

    .line 658
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/processor/BuilderMethodClassifier$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/google/auto/value/processor/BuilderMethodClassifier$$ExternalSyntheticLambda4;-><init>()V

    .line 659
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method abstract autoWhat()Ljava/lang/String;
.end method

.method buildMethods()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->buildMethods:Ljava/util/Set;

    .line 146
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->copyOf(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method builderGetters()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/processor/BuilderSpec$PropertyGetter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->builderGetters:Ljava/util/Map;

    .line 137
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->copyOf(Ljava/util/Map;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method builderMethodReturnType(Ljavax/lang/model/element/ExecutableElement;)Ljavax/lang/model/type/TypeMirror;
    .locals 2

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->builderType:Ljavax/lang/model/element/TypeElement;

    .line 633
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->typeUtils:Ljavax/lang/model/util/Types;

    .line 636
    invoke-interface {v1, v0, p1}, Ljavax/lang/model/util/Types;->asMemberOf(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asExecutable(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ExecutableType;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/type/ExecutableType;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    return-object p1

    .line 639
    :catch_0
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    return-object p1
.end method

.method abstract checkForFailedJavaBean(Ljavax/lang/model/element/ExecutableElement;)V
.end method

.method classifyMethods(Ljava/lang/Iterable;Z)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    .line 151
    invoke-virtual {v0}, Lcom/google/auto/value/processor/ErrorReporter;->errorCount()I

    move-result v0

    .line 152
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/ExecutableElement;

    .line 153
    invoke-direct {p0, v1}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->classifyMethod(Ljavax/lang/model/element/ExecutableElement;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    .line 155
    invoke-virtual {p1}, Lcom/google/auto/value/processor/ErrorReporter;->errorCount()I

    move-result p1

    const/4 v1, 0x0

    if-le p1, v0, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyNameToPrefixedSetters:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 159
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->isEmpty()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyNameToUnprefixedSetters:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    iput-boolean v1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->settersPrefixed:Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyNameToUnprefixedSetters:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 162
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyNameToPrefixedSetters:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    iput-boolean v2, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->settersPrefixed:Z

    :goto_1
    iget-object v3, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->rewrittenPropertyTypes:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 172
    invoke-virtual {v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v3

    invoke-virtual {v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->rewrittenPropertyTypes:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 173
    invoke-virtual {v5, v4}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/type/TypeMirror;

    .line 174
    invoke-interface {p1, v4}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyNameToPropertyBuilder:Ljava/util/Map;

    .line 175
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;

    if-eqz v7, :cond_7

    .line 184
    invoke-virtual {v7}, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;->getBuiltToBuilder()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-virtual {v7}, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;->getCopyAll()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move v4, v1

    goto :goto_4

    :cond_5
    :goto_3
    move v4, v2

    :goto_4
    if-nez p2, :cond_6

    if-eqz v6, :cond_3

    :cond_6
    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    .line 188
    invoke-virtual {v7}, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;->getPropertyBuilderMethod()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v6

    .line 193
    invoke-virtual {v7}, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;->getBuilderTypeMirror()Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    filled-new-array {v7, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "[AutoValueCantMakeBuilder] Property builder method returns %1$s but there is no way to make that type from %2$s: %2$s does not have a non-static toBuilder() method that returns %1$s, and %1$s does not have a method addAll or putAll that accepts an argument of type %2$s"

    .line 187
    invoke-virtual {v4, v6, v7, v5}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->settersPrefixed:Z

    if-eqz v6, :cond_8

    .line 198
    invoke-static {v4}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->prefixWithSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_8
    move-object v6, v4

    :goto_5
    iget-object v7, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    iget-object v8, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->builderType:Ljavax/lang/model/element/TypeElement;

    .line 203
    invoke-virtual {p0}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->autoWhat()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->builderType:Ljavax/lang/model/element/TypeElement;

    .line 204
    invoke-interface {v10}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v10

    filled-new-array {v9, v10, v6, v5, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "[%sBuilderMissingMethod] Expected a method with this signature: %s %s(%s), or a %sBuilder() method"

    .line 199
    invoke-virtual {v7, v8, v5, v4}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    .line 210
    invoke-virtual {p1}, Lcom/google/auto/value/processor/ErrorReporter;->errorCount()I

    move-result p1

    if-ne p1, v0, :cond_a

    move v1, v2

    :cond_a
    return v1

    :cond_b
    iget-object p1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->errorReporter:Lcom/google/auto/value/processor/ErrorReporter;

    iget-object p2, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyNameToUnprefixedSetters:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 167
    invoke-interface {p2}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;

    invoke-virtual {p2}, Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;->getSetter()Ljavax/lang/model/element/ExecutableElement;

    move-result-object p2

    .line 169
    invoke-virtual {p0}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->autoWhat()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "[%sSetNotSet] If any setter methods use the setFoo convention then all must"

    .line 166
    invoke-virtual {p1, p2, v2, v0}, Lcom/google/auto/value/processor/ErrorReporter;->reportError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method abstract fooBuilderMustMatch()Ljava/lang/String;
.end method

.method abstract getterMustMatch()Ljava/lang/String;
.end method

.method synthetic lambda$classifyPropertyBuilderOneArg$0$com-google-auto-value-processor-BuilderMethodClassifier(Ljava/lang/String;Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyNameToPropertyBuilder:Ljava/util/Map;

    .line 430
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;

    return-void
.end method

.method abstract originalPropertyType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljavax/lang/model/type/TypeMirror;"
        }
    .end annotation
.end method

.method abstract propertyElements()Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "Ljava/lang/String;",
            "TE;>;"
        }
    .end annotation
.end method

.method abstract propertyForBuilderGetter(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Optional;
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

.method propertyNameToPropertyBuilder()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyNameToPropertyBuilder:Ljava/util/Map;

    return-object v0
.end method

.method propertyNameToSetters()Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap<",
            "Ljava/lang/String;",
            "Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->settersPrefixed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyNameToPrefixedSetters:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifier;->propertyNameToUnprefixedSetters:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 122
    :goto_0
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->copyOf(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    move-result-object v0

    return-object v0
.end method

.method abstract propertyString(Ljavax/lang/model/element/Element;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
