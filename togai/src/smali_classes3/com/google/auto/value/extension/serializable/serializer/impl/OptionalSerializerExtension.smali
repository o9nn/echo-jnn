.class public final Lcom/google/auto/value/extension/serializable/serializer/impl/OptionalSerializerExtension;
.super Ljava/lang/Object;
.source "OptionalSerializerExtension.java"

# interfaces
.implements Lcom/google/auto/value/extension/serializable/serializer/interfaces/SerializerExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/value/extension/serializable/serializer/impl/OptionalSerializerExtension$OptionalSerializer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getContainedType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;
    .locals 1

    .line 104
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

.method private static isOptional(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 2

    .line 91
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 95
    :cond_0
    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p0

    const-string v0, "java.util.Optional"

    invoke-interface {p0, v0}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getSerializer(Ljavax/lang/model/type/TypeMirror;Lcom/google/auto/value/extension/serializable/serializer/interfaces/SerializerFactory;Ljavax/annotation/processing/ProcessingEnvironment;)Ljava/util/Optional;
    .locals 0
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

    .line 44
    invoke-static {p1}, Lcom/google/auto/value/extension/serializable/serializer/impl/OptionalSerializerExtension;->isOptional(Ljavax/lang/model/type/TypeMirror;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 45
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 49
    :cond_0
    invoke-static {p1}, Lcom/google/auto/value/extension/serializable/serializer/impl/OptionalSerializerExtension;->getContainedType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    .line 50
    invoke-interface {p2, p1}, Lcom/google/auto/value/extension/serializable/serializer/interfaces/SerializerFactory;->getSerializer(Ljavax/lang/model/type/TypeMirror;)Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;

    move-result-object p1

    .line 52
    new-instance p2, Lcom/google/auto/value/extension/serializable/serializer/impl/OptionalSerializerExtension$OptionalSerializer;

    invoke-direct {p2, p1}, Lcom/google/auto/value/extension/serializable/serializer/impl/OptionalSerializerExtension$OptionalSerializer;-><init>(Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;)V

    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
