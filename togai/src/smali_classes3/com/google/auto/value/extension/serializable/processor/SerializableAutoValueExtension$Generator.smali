.class final Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;
.super Ljava/lang/Object;
.source "SerializableAutoValueExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Generator"
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private final classToExtend:Ljava/lang/String;

.field private final context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

.field private final isFinal:Z

.field private final propertyMirrors:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;",
            ">;"
        }
    .end annotation
.end field

.field private final proxyGenerator:Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;

.field private final typeVariableNames:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/auto/value/extension/AutoValueExtension$Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    iput-object p2, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->className:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->classToExtend:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->isFinal:Z

    .line 99
    invoke-interface {p1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->propertyTypes()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance p4, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator$$ExternalSyntheticLambda2;

    invoke-direct {p4, p1}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator$$ExternalSyntheticLambda2;-><init>(Lcom/google/auto/value/extension/AutoValueExtension$Context;)V

    .line 100
    invoke-interface {p3, p4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    .line 110
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->toImmutableList()Ljava/util/stream/Collector;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    iput-object p3, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->propertyMirrors:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 112
    invoke-interface {p1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->autoValueClass()Ljavax/lang/model/element/TypeElement;

    move-result-object p4

    invoke-interface {p4}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p4

    new-instance v0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda3;-><init>()V

    .line 113
    invoke-interface {p4, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p4

    .line 114
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->toImmutableList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    iput-object p4, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->typeVariableNames:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 117
    invoke-interface {p1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->packageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->getClassTypeName(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object p1

    .line 118
    new-instance p2, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;

    .line 120
    invoke-direct {p0}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->buildSerializersMap()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    invoke-direct {p2, p1, p4, p3, v0}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)V

    iput-object p2, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->proxyGenerator:Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;

    return-void
.end method

.method static synthetic access$000(Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;)Ljava/lang/String;
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->generate()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildSerializersMap()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;",
            "Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    .line 185
    invoke-interface {v0}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->processingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    invoke-static {v0}, Lcom/google/auto/value/extension/serializable/serializer/SerializerFactoryLoader;->getFactory(Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/google/auto/value/extension/serializable/serializer/interfaces/SerializerFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->propertyMirrors:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 186
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator$$ExternalSyntheticLambda3;-><init>()V

    .line 187
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 188
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->equivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator$$ExternalSyntheticLambda4;-><init>(Lautovalue/shaded/com/google$/common/base/$Equivalence;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 189
    invoke-interface {v1}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v1

    .line 192
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v2

    new-instance v3, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator$$ExternalSyntheticLambda5;-><init>(Lcom/google/auto/value/extension/serializable/serializer/interfaces/SerializerFactory;)V

    .line 191
    invoke-static {v2, v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->toImmutableMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    .line 190
    invoke-interface {v1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    return-object v0
.end method

.method private constructor()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;
    .locals 5

    .line 147
    invoke-static {}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->constructorBuilder()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->propertyMirrors:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 150
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "super($L)"

    .line 148
    invoke-virtual {v0, v2, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->propertyMirrors:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 152
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;

    .line 153
    invoke-virtual {v2}, Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-static {v3}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljavax/lang/model/element/Modifier;

    invoke-virtual {v0, v3, v2, v4}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addParameter(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    move-result-object v0

    return-object v0
.end method

.method private generate()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    .line 124
    invoke-interface {v0}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->packageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->classToExtend:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    .line 127
    invoke-interface {v1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->processingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v1

    iget-object v3, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    .line 128
    invoke-interface {v3}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->processingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v3

    invoke-interface {v3}, Ljavax/annotation/processing/ProcessingEnvironment;->getSourceVersion()Ljavax/lang/model/SourceVersion;

    move-result-object v3

    const-class v4, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension;

    .line 126
    invoke-static {v1, v3, v4}, Lautovalue/shaded/com/google$/auto/common/$GeneratedAnnotationSpecs;->generatedAnnotationSpec(Ljavax/lang/model/util/Elements;Ljavax/lang/model/SourceVersion;Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v1

    iget-object v3, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->className:Ljava/lang/String;

    .line 132
    invoke-static {v3}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;->classBuilder(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->typeVariableNames:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 133
    invoke-static {v0, v4}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->getClassTypeName(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object v0

    invoke-virtual {v3, v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->superclass(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->typeVariableNames:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 134
    invoke-virtual {v0, v3}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addTypeVariables(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/lang/model/element/Modifier;

    iget-boolean v4, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->isFinal:Z

    if-eqz v4, :cond_0

    sget-object v4, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    goto :goto_0

    :cond_0
    sget-object v4, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    :goto_0
    aput-object v4, v3, v2

    .line 135
    invoke-virtual {v0, v3}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    .line 136
    invoke-direct {p0}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->constructor()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    move-result-object v2

    invoke-virtual {v0, v2}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addMethod(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    .line 137
    invoke-direct {p0}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->writeReplace()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    move-result-object v2

    invoke-virtual {v0, v2}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addMethod(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->proxyGenerator:Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;

    .line 138
    invoke-static {v2}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;->access$100(Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;

    move-result-object v2

    invoke-virtual {v0, v2}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addType(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda10;

    invoke-direct {v2, v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda10;-><init>(Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    .line 141
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

.method private static getClassTypeName(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/squareup/javapoet$/$ClassName;",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeName;"
        }
    .end annotation

    .line 198
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 200
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    invoke-static {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$ParameterizedTypeName;->get(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;[Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$ParameterizedTypeName;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static synthetic lambda$buildSerializersMap$2(Lcom/google/auto/value/extension/serializable/serializer/interfaces/SerializerFactory;Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper;)Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;
    .locals 0

    .line 192
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    invoke-interface {p0, p1}, Lcom/google/auto/value/extension/serializable/serializer/interfaces/SerializerFactory;->getSerializer(Ljavax/lang/model/type/TypeMirror;)Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$0(Lcom/google/auto/value/extension/AutoValueExtension$Context;Ljava/util/Map$Entry;)Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;
    .locals 3

    .line 102
    new-instance v0, Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;

    .line 103
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/TypeMirror;

    .line 104
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 106
    invoke-interface {p0}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->properties()Ljava/util/Map;

    move-result-object p0

    .line 107
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/element/ExecutableElement;

    .line 108
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;-><init>(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$writeReplace$1(Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;->getMethod()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "$L()"

    invoke-static {v0, p0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p0

    return-object p0
.end method

.method private writeReplace()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;
    .locals 5

    iget-object v0, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->propertyMirrors:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 165
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator$$ExternalSyntheticLambda1;-><init>()V

    .line 166
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 167
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->toImmutableList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    const-string v1, "writeReplace"

    .line 169
    invoke-static {v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->methodBuilder(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    .line 170
    invoke-virtual {v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->returns(Ljava/lang/reflect/Type;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->context:Lcom/google/auto/value/extension/AutoValueExtension$Context;

    .line 175
    invoke-interface {v2}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->packageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->className:Ljava/lang/String;

    const-string v4, "Proxy$"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-static {v2, v3, v4}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v2

    iget-object v3, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->typeVariableNames:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 173
    invoke-static {v2, v3}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->getClassTypeName(Lautovalue/shaded/com/squareup/javapoet$/$ClassName;Ljava/util/List;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object v2

    const-string v3, ", "

    .line 179
    invoke-static {v0, v3}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->join(Ljava/lang/Iterable;Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "return new $T($L)"

    .line 171
    invoke-virtual {v1, v2, v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    move-result-object v0

    return-object v0
.end method
