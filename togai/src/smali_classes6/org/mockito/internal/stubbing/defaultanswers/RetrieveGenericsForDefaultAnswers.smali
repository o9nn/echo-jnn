.class Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers;
.super Ljava/lang/Object;
.source "RetrieveGenericsForDefaultAnswers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers$AnswerCallback;
    }
.end annotation


# static fields
.field private static final MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lorg/mockito/internal/MockitoCore;

    invoke-direct {v0}, Lorg/mockito/internal/MockitoCore;-><init>()V

    sput-object v0, Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static delegateChains(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 59
    new-instance v0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;

    invoke-direct {v0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;-><init>()V

    .line 60
    invoke-virtual {v0, p0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;->returnValueFor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 65
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 66
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v1, v3, v5

    .line 67
    invoke-virtual {v0, v1}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;->returnValueFor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 72
    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 77
    new-instance v0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMoreEmptyValues;

    invoke-direct {v0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMoreEmptyValues;-><init>()V

    invoke-virtual {v0, p0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMoreEmptyValues;->returnValueFor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private static findTypeFromGeneric(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/InvocationOnMock;",
            "Ljava/lang/reflect/TypeVariable;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 92
    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/invocation/MockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->inferFrom(Ljava/lang/reflect/Type;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;

    move-result-object v0

    .line 95
    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->resolveGenericReturnType(Ljava/lang/reflect/Method;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->rawType()Ljava/lang/Class;

    move-result-object v0

    .line 99
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 100
    invoke-static {p0, p1}, Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers;->findTypeFromGenericInArguments(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private static findTypeFromGenericInArguments(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/InvocationOnMock;",
            "Ljava/lang/reflect/TypeVariable;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 113
    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    .line 114
    :goto_0
    array-length v2, v0

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    .line 115
    aget-object v2, v0, v1

    .line 116
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    invoke-interface {p0, v1}, Lorg/mockito/invocation/InvocationOnMock;->getArgument(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v3

    .line 123
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 125
    :cond_1
    instance-of v3, v2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_2

    .line 126
    check-cast v2, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 127
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    invoke-interface {p0, v1}, Lorg/mockito/invocation/InvocationOnMock;->getArgument(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method static returnTypeForMockWithCorrectGenerics(Lorg/mockito/invocation/InvocationOnMock;Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers$AnswerCallback;)Ljava/lang/Object;
    .locals 4

    .line 22
    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 24
    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 28
    instance-of v2, v1, Ljava/lang/reflect/TypeVariable;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 29
    check-cast v1, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, v1}, Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers;->findTypeFromGeneric(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {v0}, Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers;->delegateChains(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v3

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    if-eqz v0, :cond_3

    sget-object p0, Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    .line 40
    invoke-virtual {p0, v0}, Lorg/mockito/internal/MockitoCore;->isTypeMockable(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v3

    .line 44
    :cond_2
    invoke-interface {p1, v0}, Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers$AnswerCallback;->apply(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 47
    :cond_3
    invoke-interface {p1, v3}, Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers$AnswerCallback;->apply(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
