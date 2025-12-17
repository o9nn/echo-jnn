.class public Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;
.super Ljava/lang/Object;
.source "ReturnsArgumentAt.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;
.implements Lorg/mockito/stubbing/ValidableAnswer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/stubbing/Answer<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/mockito/stubbing/ValidableAnswer;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final LAST_ARGUMENT:I = -0x1

.field private static final serialVersionUID:J = -0x82daaf2981db83dL


# instance fields
.field private final wantedArgumentPosition:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->invalidArgumentRangeAtIdentityAnswerCreationTime()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->wantedArgumentPosition:I

    return-void
.end method

.method private inferArgumentType(Lorg/mockito/invocation/Invocation;I)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/Invocation;",
            "I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 121
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 124
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 125
    aget-object v0, v0, p2

    .line 126
    invoke-interface {p1, p2}, Lorg/mockito/invocation/Invocation;->getArgument(I)Ljava/lang/Object;

    move-result-object p1

    .line 128
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p2

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v0

    .line 136
    :cond_2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_3

    .line 140
    aget-object p1, v0, p2

    return-object p1

    .line 143
    :cond_3
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->wantedArgIndexIsVarargAndSameTypeAsReturnType(Ljava/lang/reflect/Method;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 146
    aget-object p1, v0, p2

    return-object p1

    .line 149
    :cond_4
    aget-object p1, v0, v1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method private inferWantedArgumentPosition(Lorg/mockito/invocation/InvocationOnMock;)I
    .locals 2

    iget v0, p0, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->wantedArgumentPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 76
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getArguments()[Ljava/lang/Object;

    move-result-object p1

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    return v0
.end method

.method private validateArgumentTypeCompatibility(Lorg/mockito/invocation/Invocation;I)V
    .locals 2

    .line 90
    new-instance v0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;

    invoke-direct {v0, p1}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;-><init>(Lorg/mockito/invocation/InvocationOnMock;)V

    .line 92
    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->inferArgumentType(Lorg/mockito/invocation/Invocation;I)Ljava/lang/Class;

    move-result-object p2

    .line 94
    invoke-virtual {v0, p2}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->isValidReturnType(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->printMethodReturnType()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->wantedArgumentPosition:I

    .line 95
    invoke-static {p1, v0, p2, v1}, Lorg/mockito/internal/exceptions/Reporter;->wrongTypeOfArgumentToReturn(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/String;Ljava/lang/Class;I)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method

.method private validateIndexWithinInvocationRange(Lorg/mockito/invocation/InvocationOnMock;I)V
    .locals 1

    .line 82
    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->wantedArgumentPositionIsValidForInvocation(Lorg/mockito/invocation/InvocationOnMock;I)Z

    move-result p2

    if-nez p2, :cond_1

    iget p2, p0, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->wantedArgumentPosition:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 83
    :goto_0
    invoke-static {p1, v0, p2}, Lorg/mockito/internal/exceptions/Reporter;->invalidArgumentPositionRangeAtInvocationTime(Lorg/mockito/invocation/InvocationOnMock;ZI)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    :cond_1
    return-void
.end method

.method private wantedArgIndexIsVarargAndSameTypeAsReturnType(Ljava/lang/reflect/Method;I)Z
    .locals 3

    .line 103
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 104
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v1

    if-eqz v1, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p2, v1, :cond_0

    .line 106
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private wantedArgumentPositionIsValidForInvocation(Lorg/mockito/invocation/InvocationOnMock;I)Z
    .locals 3

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return v0

    .line 113
    :cond_0
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 114
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getArguments()[Ljava/lang/Object;

    move-result-object p1

    array-length p1, p1

    if-le p1, p2, :cond_1

    move v0, v2

    :cond_1
    return v0

    :cond_2
    return v2
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->inferWantedArgumentPosition(Lorg/mockito/invocation/InvocationOnMock;)I

    move-result v0

    .line 55
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->validateIndexWithinInvocationRange(Lorg/mockito/invocation/InvocationOnMock;I)V

    .line 57
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->wantedArgIndexIsVarargAndSameTypeAsReturnType(Ljava/lang/reflect/Method;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    check-cast p1, Lorg/mockito/invocation/Invocation;

    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getRawArguments()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v0

    return-object p1

    .line 63
    :cond_0
    invoke-interface {p1, v0}, Lorg/mockito/invocation/InvocationOnMock;->getArgument(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public validateFor(Lorg/mockito/invocation/InvocationOnMock;)V
    .locals 1

    .line 69
    invoke-direct {p0, p1}, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->inferWantedArgumentPosition(Lorg/mockito/invocation/InvocationOnMock;)I

    move-result v0

    .line 70
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->validateIndexWithinInvocationRange(Lorg/mockito/invocation/InvocationOnMock;I)V

    .line 71
    check-cast p1, Lorg/mockito/invocation/Invocation;

    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;->validateArgumentTypeCompatibility(Lorg/mockito/invocation/Invocation;I)V

    return-void
.end method
