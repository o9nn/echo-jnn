.class public final Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension;
.super Ljava/lang/Object;
.source "ImmutableMapSerializerExtension.java"

# interfaces
.implements Lcom/google/auto/value/extension/serializable/serializer/interfaces/SerializerExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getKeyType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;
    .locals 1

    .line 160
    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/TypeMirror;

    return-object p0
.end method

.method private static getValueType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;
    .locals 1

    .line 164
    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/TypeMirror;

    return-object p0
.end method

.method private static isImmutableMap(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 2

    .line 150
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 154
    :cond_0
    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    .line 155
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p0

    const-string v0, "autovalue.shaded.com.google$.common.collect.$ImmutableMap"

    .line 156
    invoke-interface {p0, v0}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getSerializer(Ljavax/lang/model/type/TypeMirror;Lcom/google/auto/value/extension/serializable/serializer/interfaces/SerializerFactory;Ljavax/annotation/processing/ProcessingEnvironment;)Ljava/util/Optional;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Lcom/google/auto/value/extension/serializable/serializer/interfaces/SerializerFactory;",
            "Ljavax/annotation/processing/ProcessingEnvironment;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-static {p1}, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension;->isImmutableMap(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension;->getKeyType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 52
    invoke-static {p1}, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension;->getValueType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 53
    invoke-interface {p2, v1}, Lcom/google/auto/value/extension/serializable/serializer/interfaces/SerializerFactory;->getSerializer(Ljavax/lang/model/type/TypeMirror;)Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;

    move-result-object v3

    .line 54
    invoke-interface {p2, v2}, Lcom/google/auto/value/extension/serializable/serializer/interfaces/SerializerFactory;->getSerializer(Ljavax/lang/model/type/TypeMirror;)Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;

    move-result-object v4

    .line 57
    invoke-interface {v3}, Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;->isIdentity()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v4}, Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;->isIdentity()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 58
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 61
    :cond_1
    new-instance p1, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;

    move-object v0, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer;-><init>(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;Ljavax/annotation/processing/ProcessingEnvironment;)V

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
