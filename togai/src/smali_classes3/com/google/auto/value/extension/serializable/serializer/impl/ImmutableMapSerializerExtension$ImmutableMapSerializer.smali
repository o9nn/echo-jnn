.class Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;
.super Ljava/lang/Object;
.source "ImmutableMapSerializerExtension.java"

# interfaces
.implements Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImmutableMapSerializer"
.end annotation


# instance fields
.field private final keyProxyType:Ljavax/lang/model/type/TypeMirror;

.field private final keyType:Ljavax/lang/model/type/TypeMirror;

.field private final keyTypeSerializer:Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;

.field private final processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

.field private final valueProxyType:Ljavax/lang/model/type/TypeMirror;

.field private final valueType:Ljavax/lang/model/type/TypeMirror;

.field private final valueTypeSerializer:Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;


# direct methods
.method constructor <init>(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->keyType:Ljavax/lang/model/type/TypeMirror;

    iput-object p2, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->valueType:Ljavax/lang/model/type/TypeMirror;

    .line 84
    invoke-interface {p3}, Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;->proxyFieldType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->keyProxyType:Ljavax/lang/model/type/TypeMirror;

    .line 85
    invoke-interface {p4}, Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;->proxyFieldType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->valueProxyType:Ljavax/lang/model/type/TypeMirror;

    iput-object p3, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->keyTypeSerializer:Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;

    iput-object p4, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->valueTypeSerializer:Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;

    iput-object p5, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    return-void
.end method

.method private static generateKeyMapFunction(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/function/Function;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/function/Function<",
            "Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;",
            "Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "element$$"

    .line 124
    invoke-static {v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v0

    .line 125
    const-class v1, Lcom/google/auto/value/extension/serializable/serializer/runtime/FunctionWithExceptions;

    .line 131
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    filled-new-array {v1, p0, p1, v0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "value$$ -> $T.<$T, $T>wrapper($L -> $L).apply(value$$.getKey())"

    .line 125
    invoke-static {p1, p0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p0

    return-object p0
.end method

.method private static generateValueMapFunction(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/function/Function;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/function/Function<",
            "Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;",
            "Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "element$$"

    .line 138
    invoke-static {v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v0

    .line 139
    const-class v1, Lcom/google/auto/value/extension/serializable/serializer/runtime/FunctionWithExceptions;

    .line 145
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    filled-new-array {v1, p0, p1, v0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "value$$ -> $T.<$T, $T>wrapper($L -> $L).apply(value$$.getValue())"

    .line 139
    invoke-static {p1, p0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public fromProxy(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 6

    .line 112
    const-class v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    iget-object v1, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->keyProxyType:Ljavax/lang/model/type/TypeMirror;

    iget-object v2, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->keyType:Ljavax/lang/model/type/TypeMirror;

    iget-object v3, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->keyTypeSerializer:Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer$$ExternalSyntheticLambda0;-><init>(Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;)V

    .line 116
    invoke-static {v1, v2, v4}, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->generateKeyMapFunction(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/function/Function;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v1

    iget-object v2, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->valueProxyType:Ljavax/lang/model/type/TypeMirror;

    iget-object v3, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->valueType:Ljavax/lang/model/type/TypeMirror;

    iget-object v4, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->valueTypeSerializer:Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer$$ExternalSyntheticLambda0;-><init>(Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;)V

    .line 117
    invoke-static {v2, v3, v5}, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->generateValueMapFunction(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/function/Function;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v2

    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "$L.entrySet().stream().collect($T.toImmutableMap($L, $L))"

    .line 112
    invoke-static {v0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1
.end method

.method public proxyFieldType()Ljavax/lang/model/type/TypeMirror;
    .locals 5

    iget-object v0, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 94
    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    const-class v1, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 96
    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljavax/lang/model/type/TypeMirror;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->keyProxyType:Ljavax/lang/model/type/TypeMirror;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->valueProxyType:Ljavax/lang/model/type/TypeMirror;

    aput-object v4, v2, v3

    .line 97
    invoke-interface {v1, v0, v2}, Ljavax/lang/model/util/Types;->getDeclaredType(Ljavax/lang/model/element/TypeElement;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    return-object v0
.end method

.method public toProxy(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 6

    .line 102
    const-class v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    iget-object v1, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->keyType:Ljavax/lang/model/type/TypeMirror;

    iget-object v2, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->keyProxyType:Ljavax/lang/model/type/TypeMirror;

    iget-object v3, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->keyTypeSerializer:Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3}, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer$$ExternalSyntheticLambda1;-><init>(Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;)V

    .line 106
    invoke-static {v1, v2, v4}, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->generateKeyMapFunction(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/function/Function;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v1

    iget-object v2, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->valueType:Ljavax/lang/model/type/TypeMirror;

    iget-object v3, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->valueProxyType:Ljavax/lang/model/type/TypeMirror;

    iget-object v4, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->valueTypeSerializer:Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer$$ExternalSyntheticLambda1;-><init>(Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;)V

    .line 107
    invoke-static {v2, v3, v5}, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;->generateValueMapFunction(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/function/Function;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v2

    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "$L.entrySet().stream().collect($T.toImmutableMap($L, $L))"

    .line 102
    invoke-static {v0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1
.end method
