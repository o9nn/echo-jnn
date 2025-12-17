.class Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;
.super Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
.source "GenericMetadataSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeVariableReturnType"
.end annotation


# instance fields
.field private extraInterfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field private rawType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final typeParameters:[Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation
.end field

.field private final typeVariable:Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;[Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/TypeVariable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/util/reflection/GenericMetadataSupport;",
            "[",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    .line 423
    invoke-direct {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;-><init>()V

    iput-object p2, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->typeParameters:[Ljava/lang/reflect/TypeVariable;

    iput-object p3, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    .line 426
    iget-object p1, p1, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->contextualActualTypeParameters:Ljava/util/Map;

    iput-object p1, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->contextualActualTypeParameters:Ljava/util/Map;

    .line 428
    invoke-direct {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->readTypeParameters()V

    .line 429
    invoke-direct {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->readTypeVariables()V

    return-void
.end method

.method private extractActualBoundedTypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 2

    .line 488
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->contextualActualTypeParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-direct {p0, p1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->extractActualBoundedTypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1

    .line 495
    :cond_0
    instance-of v0, p1, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;

    if-eqz v0, :cond_2

    .line 496
    move-object v0, p1

    check-cast v0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;

    invoke-interface {v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;->firstBound()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->extractActualBoundedTypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 497
    instance-of v1, v0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;

    if-nez v1, :cond_1

    return-object p1

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method private readTypeParameters()V
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->typeParameters:[Ljava/lang/reflect/TypeVariable;

    .line 433
    invoke-virtual {p0, v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->registerTypeParametersOn([Ljava/lang/reflect/TypeVariable;)V

    return-void
.end method

.method private readTypeVariables()V
    .locals 5

    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    .line 437
    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 438
    invoke-virtual {p0, v4}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->registerTypeVariablesOn(Ljava/lang/reflect/Type;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/TypeVariable;

    iget-object v1, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    aput-object v1, v0, v2

    .line 440
    invoke-virtual {p0, v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->registerTypeParametersOn([Ljava/lang/reflect/TypeVariable;)V

    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    .line 441
    invoke-virtual {p0, v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->getActualTypeArgumentFor(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->registerTypeVariablesOn(Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public extraInterfaces()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->extraInterfaces:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    .line 457
    invoke-direct {p0, v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->extractActualBoundedTypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 458
    instance-of v1, v0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;

    if-eqz v1, :cond_1

    .line 459
    check-cast v0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;

    invoke-interface {v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$BoundedType;->interfaceBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->extraInterfaces:Ljava/util/List;

    return-object v0

    .line 461
    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    .line 462
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->extraInterfaces:Ljava/util/List;

    return-object v0

    .line 464
    :cond_2
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_3

    .line 465
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->extraInterfaces:Ljava/util/List;

    return-object v0

    .line 467
    :cond_3
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot extract extra-interfaces from \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' : \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public rawExtraInterfaces()[Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 475
    invoke-virtual {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->extraInterfaces()Ljava/util/List;

    move-result-object v0

    .line 476
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 477
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    .line 478
    invoke-virtual {p0, v2}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->extractRawTypeOf(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 480
    invoke-virtual {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->rawType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 481
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    return-object v0
.end method

.method public rawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->rawType:Ljava/lang/Class;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    .line 447
    invoke-virtual {p0, v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->extractRawTypeOf(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->rawType:Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$TypeVariableReturnType;->rawType:Ljava/lang/Class;

    return-object v0
.end method
