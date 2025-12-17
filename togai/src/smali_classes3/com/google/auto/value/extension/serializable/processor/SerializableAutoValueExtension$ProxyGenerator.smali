.class final Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;
.super Ljava/lang/Object;
.source "SerializableAutoValueExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProxyGenerator"
.end annotation


# static fields
.field private static final PROXY_CLASS_NAME:Ljava/lang/String; = "Proxy$"


# instance fields
.field private final outerClassTypeName:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

.field private final propertyMirrors:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;",
            ">;"
        }
    .end annotation
.end field

.field private final serializersMap:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;",
            "Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;",
            ">;"
        }
    .end annotation
.end field

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
.method public static synthetic $r8$lambda$CT64_1t9VI687kDx-HOz9v_CkQw(Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;->resolve(Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeName;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/squareup/javapoet$/$TypeVariableName;",
            ">;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;",
            ">;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;",
            "Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;",
            ">;)V"
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;->outerClassTypeName:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    iput-object p2, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;->typeVariableNames:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    iput-object p3, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;->propertyMirrors:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    iput-object p4, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;->serializersMap:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    return-void
.end method

.method static synthetic access$100(Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;
    .locals 0

    .line 205
    invoke-direct {p0}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;->generate()Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;

    move-result-object p0

    return-object p0
.end method

.method private constructor()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;
    .locals 7

    .line 263
    invoke-static {}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->constructorBuilder()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;->propertyMirrors:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 265
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;

    iget-object v3, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;->serializersMap:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 267
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->equivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-virtual {v4, v5}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->wrap(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper;

    move-result-object v4

    invoke-virtual {v3, v4}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;

    .line 268
    invoke-virtual {v2}, Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;->getName()Ljava/lang/String;

    move-result-object v4

    .line 270
    invoke-virtual {v2}, Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-static {v2}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object v2

    const/4 v5, 0x0

    new-array v6, v5, [Ljavax/lang/model/element/Modifier;

    invoke-virtual {v0, v2, v4, v6}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addParameter(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    new-array v2, v5, [Ljava/lang/Object;

    .line 272
    invoke-static {v4, v2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;->toProxy(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v2

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "this.$L = $L"

    invoke-static {v3, v2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v2

    .line 271
    invoke-virtual {v0, v2}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addStatement(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    move-result-object v0

    return-object v0
.end method

.method private generate()Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;
    .locals 4

    const-string v0, "Proxy$"

    .line 226
    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;->classBuilder(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/lang/model/element/Modifier;

    const/4 v2, 0x0

    sget-object v3, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v3, v1, v2

    .line 227
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;->typeVariableNames:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 228
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addTypeVariables(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    const-class v1, Ljava/io/Serializable;

    .line 229
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addSuperinterface(Ljava/lang/reflect/Type;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    .line 230
    invoke-static {}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;->serialVersionUid()Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addField(Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    .line 231
    invoke-direct {p0}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;->properties()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addFields(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    .line 232
    invoke-direct {p0}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;->constructor()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addMethod(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    .line 233
    invoke-direct {p0}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;->readResolve()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addMethod(Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;

    move-result-object v0

    return-object v0
.end method

.method private properties()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;->propertyMirrors:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 247
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator$$ExternalSyntheticLambda1;-><init>(Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;)V

    .line 248
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 258
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->toImmutableList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private readResolve()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;
    .locals 4

    const-string v0, "readResolve"

    .line 283
    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->methodBuilder(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    .line 284
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->returns(Ljava/lang/reflect/Type;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    const-class v1, Ljava/lang/Exception;

    .line 285
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addException(Ljava/lang/reflect/Type;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;->outerClassTypeName:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    iget-object v2, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;->propertyMirrors:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 290
    invoke-virtual {v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator$$ExternalSyntheticLambda0;-><init>(Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->toImmutableList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    const-string v3, ", "

    .line 289
    invoke-static {v2, v3}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->join(Ljava/lang/Iterable;Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "return new $T($L)"

    .line 286
    invoke-virtual {v0, v2, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    move-result-object v0

    return-object v0
.end method

.method private resolve(Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 3

    iget-object v0, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;->serializersMap:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 297
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->equivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-virtual {v1, v2}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->wrap(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;

    .line 298
    invoke-virtual {p1}, Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;->fromProxy(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1
.end method

.method private static serialVersionUid()Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;
    .locals 5

    .line 239
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x3

    new-array v1, v1, [Ljavax/lang/model/element/Modifier;

    sget-object v2, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    sget-object v4, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v4, v1, v2

    const/4 v2, 0x2

    sget-object v4, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v4, v1, v2

    const-string v2, "serialVersionUID"

    invoke-static {v0, v2, v1}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->builder(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;

    move-result-object v0

    const-string v1, "0"

    new-array v2, v3, [Ljava/lang/Object;

    .line 241
    invoke-virtual {v0, v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->initializer(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method synthetic lambda$properties$0$com-google-auto-value-extension-serializable-processor-SerializableAutoValueExtension$ProxyGenerator(Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;->serializersMap:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 253
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->equivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-virtual {v1, v2}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->wrap(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;

    .line 254
    invoke-interface {v0}, Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;->proxyFieldType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 251
    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object v0

    .line 255
    invoke-virtual {p1}, Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/lang/model/element/Modifier;

    const/4 v2, 0x0

    sget-object v3, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v3, v1, v2

    .line 250
    invoke-static {v0, p1, v1}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->builder(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;

    move-result-object p1

    .line 257
    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;

    move-result-object p1

    return-object p1
.end method
