.class public Lorg/mockito/internal/invocation/ArgumentsProcessor;
.super Ljava/lang/Object;
.source "ArgumentsProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static argumentsToMatchers([Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    .line 57
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    new-instance v4, Lorg/mockito/internal/matchers/ArrayEquals;

    invoke-direct {v4, v3}, Lorg/mockito/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 60
    :cond_0
    new-instance v4, Lorg/mockito/internal/matchers/Equals;

    invoke-direct {v4, v3}, Lorg/mockito/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static expandArgs(Lorg/mockito/internal/invocation/MockitoMethod;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .line 22
    invoke-interface {p0}, Lorg/mockito/internal/invocation/MockitoMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-eqz p1, :cond_0

    .line 23
    array-length v1, p1

    if-le v1, v0, :cond_0

    .line 24
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 25
    :cond_0
    invoke-interface {p0}, Lorg/mockito/internal/invocation/MockitoMethod;->isVarArgs()Z

    move-result p0

    invoke-static {p0, p1}, Lorg/mockito/internal/invocation/ArgumentsProcessor;->expandVarArgs(Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static expandVarArgs(Z[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 31
    invoke-static {p1}, Lorg/mockito/internal/invocation/ArgumentsProcessor;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    aget-object p0, p1, p0

    if-eqz p0, :cond_0

    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 35
    :cond_0
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    .line 37
    aget-object v1, p1, p0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 39
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 41
    :cond_1
    invoke-static {v1}, Lorg/mockito/internal/matchers/ArrayEquals;->createObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 43
    :goto_0
    array-length v2, v1

    add-int v3, p0, v2

    .line 44
    new-array v3, v3, [Ljava/lang/Object;

    .line 45
    invoke-static {p1, v0, v3, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    invoke-static {v1, v0, v3, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    new-array p1, v0, [Ljava/lang/Object;

    :cond_3
    return-object p1
.end method

.method private static isNullOrEmpty([Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 51
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
