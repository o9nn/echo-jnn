.class Lorg/mockito/internal/util/reflection/GenericMetadataSupport$ParameterizedReturnType;
.super Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
.source "GenericMetadataSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParameterizedReturnType"
.end annotation


# instance fields
.field private final parameterizedType:Ljava/lang/reflect/ParameterizedType;

.field private final typeParameters:[Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;[Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/ParameterizedType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/util/reflection/GenericMetadataSupport;",
            "[",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/ParameterizedType;",
            ")V"
        }
    .end annotation

    .line 390
    invoke-direct {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;-><init>()V

    iput-object p3, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$ParameterizedReturnType;->parameterizedType:Ljava/lang/reflect/ParameterizedType;

    iput-object p2, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$ParameterizedReturnType;->typeParameters:[Ljava/lang/reflect/TypeVariable;

    .line 393
    iget-object p1, p1, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->contextualActualTypeParameters:Ljava/util/Map;

    iput-object p1, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$ParameterizedReturnType;->contextualActualTypeParameters:Ljava/util/Map;

    .line 395
    invoke-direct {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$ParameterizedReturnType;->readTypeParameters()V

    .line 396
    invoke-direct {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$ParameterizedReturnType;->readTypeVariables()V

    return-void
.end method

.method private readTypeParameters()V
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$ParameterizedReturnType;->typeParameters:[Ljava/lang/reflect/TypeVariable;

    .line 400
    invoke-virtual {p0, v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$ParameterizedReturnType;->registerTypeParametersOn([Ljava/lang/reflect/TypeVariable;)V

    return-void
.end method

.method private readTypeVariables()V
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$ParameterizedReturnType;->parameterizedType:Ljava/lang/reflect/ParameterizedType;

    .line 404
    invoke-virtual {p0, v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$ParameterizedReturnType;->registerTypeVariablesOn(Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public rawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$ParameterizedReturnType;->parameterizedType:Ljava/lang/reflect/ParameterizedType;

    .line 409
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method
