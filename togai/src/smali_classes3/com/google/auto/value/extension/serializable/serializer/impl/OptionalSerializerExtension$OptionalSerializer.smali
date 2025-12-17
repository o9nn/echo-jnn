.class Lcom/google/auto/value/extension/serializable/serializer/impl/OptionalSerializerExtension$OptionalSerializer;
.super Ljava/lang/Object;
.source "OptionalSerializerExtension.java"

# interfaces
.implements Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/extension/serializable/serializer/impl/OptionalSerializerExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OptionalSerializer"
.end annotation


# instance fields
.field private final containedTypeSerializer:Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;


# direct methods
.method constructor <init>(Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/OptionalSerializerExtension$OptionalSerializer;->containedTypeSerializer:Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;

    return-void
.end method


# virtual methods
.method public fromProxy(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 2

    .line 81
    const-class v0, Ljava/util/Optional;

    iget-object v1, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/OptionalSerializerExtension$OptionalSerializer;->containedTypeSerializer:Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;

    .line 85
    invoke-interface {v1, p1}, Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;->fromProxy(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v1

    filled-new-array {v0, p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "$T.ofNullable($L == null ? null : $L)"

    .line 81
    invoke-static {v0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1
.end method

.method public proxyFieldType()Ljavax/lang/model/type/TypeMirror;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/OptionalSerializerExtension$OptionalSerializer;->containedTypeSerializer:Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;

    .line 68
    invoke-interface {v0}, Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;->proxyFieldType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public toProxy(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 3

    iget-object v0, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/OptionalSerializerExtension$OptionalSerializer;->containedTypeSerializer:Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;

    const-string v1, "$L.get()"

    .line 73
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 76
    invoke-static {v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;->toProxy(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "$L.isPresent() ? $L : null"

    .line 73
    invoke-static {v0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1
.end method
