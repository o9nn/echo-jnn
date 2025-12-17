.class public Lorg/mockito/internal/stubbing/answers/InvocationInfo;
.super Ljava/lang/Object;
.source "InvocationInfo.java"

# interfaces
.implements Lorg/mockito/internal/invocation/AbstractAwareMethod;


# instance fields
.field private final invocation:Lorg/mockito/invocation/InvocationOnMock;

.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lorg/mockito/invocation/InvocationOnMock;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->method:Ljava/lang/reflect/Method;

    iput-object p1, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->invocation:Lorg/mockito/invocation/InvocationOnMock;

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->method:Ljava/lang/reflect/Method;

    .line 64
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAbstract()Z
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->method:Ljava/lang/reflect/Method;

    .line 81
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDeclaredOnInterface()Z
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->method:Ljava/lang/reflect/Method;

    .line 76
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method

.method public isValidException(Ljava/lang/Throwable;)Z
    .locals 5

    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->method:Ljava/lang/reflect/Method;

    .line 27
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 29
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 30
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isValidReturnType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->method:Ljava/lang/reflect/Method;

    .line 39
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->method:Ljava/lang/reflect/Method;

    .line 42
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1

    .line 40
    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/mockito/internal/util/Primitives;->primitiveTypeOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/Primitives;->primitiveTypeOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public isVoid()Z
    .locals 2

    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->invocation:Lorg/mockito/invocation/InvocationOnMock;

    .line 51
    invoke-interface {v0}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Lorg/mockito/invocation/MockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->inferFrom(Ljava/lang/reflect/Type;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->method:Ljava/lang/reflect/Method;

    .line 54
    invoke-virtual {v0, v1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->resolveGenericReturnType(Ljava/lang/reflect/Method;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->rawType()Ljava/lang/Class;

    move-result-object v0

    .line 56
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_1

    const-class v1, Ljava/lang/Void;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public printMethodReturnType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->method:Ljava/lang/reflect/Method;

    .line 60
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public returnsPrimitive()Z
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->method:Ljava/lang/reflect/Method;

    .line 68
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method
