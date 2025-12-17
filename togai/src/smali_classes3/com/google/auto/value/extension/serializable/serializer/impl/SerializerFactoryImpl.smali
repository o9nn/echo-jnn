.class public final Lcom/google/auto/value/extension/serializable/serializer/impl/SerializerFactoryImpl;
.super Ljava/lang/Object;
.source "SerializerFactoryImpl.java"

# interfaces
.implements Lcom/google/auto/value/extension/serializable/serializer/interfaces/SerializerFactory;


# instance fields
.field private final env:Ljavax/annotation/processing/ProcessingEnvironment;

.field private final extensions:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lcom/google/auto/value/extension/serializable/serializer/interfaces/SerializerExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lcom/google/auto/value/extension/serializable/serializer/interfaces/SerializerExtension;",
            ">;",
            "Ljavax/annotation/processing/ProcessingEnvironment;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/SerializerFactoryImpl;->extensions:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    iput-object p2, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/SerializerFactoryImpl;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    return-void
.end method


# virtual methods
.method public getSerializer(Ljavax/lang/model/type/TypeMirror;)Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;
    .locals 3

    iget-object v0, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/SerializerFactoryImpl;->extensions:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 40
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/auto/value/extension/serializable/serializer/interfaces/SerializerExtension;

    iget-object v2, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/SerializerFactoryImpl;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 41
    invoke-interface {v1, p1, p0, v2}, Lcom/google/auto/value/extension/serializable/serializer/interfaces/SerializerExtension;->getSerializer(Ljavax/lang/model/type/TypeMirror;Lcom/google/auto/value/extension/serializable/serializer/interfaces/SerializerFactory;Ljavax/annotation/processing/ProcessingEnvironment;)Ljava/util/Optional;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;

    return-object p1

    .line 46
    :cond_1
    invoke-static {p1}, Lcom/google/auto/value/extension/serializable/serializer/impl/IdentitySerializerFactory;->getSerializer(Ljavax/lang/model/type/TypeMirror;)Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;

    move-result-object p1

    return-object p1
.end method
