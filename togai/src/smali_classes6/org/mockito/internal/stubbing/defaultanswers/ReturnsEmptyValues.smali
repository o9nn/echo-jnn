.class public Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;
.super Ljava/lang/Object;
.source "ReturnsEmptyValues.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/stubbing/Answer<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1bbb005f3cd1fb2bL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 2

    .line 58
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/ObjectMethodsGuru;->isToStringMethod(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object p1

    .line 60
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Lorg/mockito/mock/MockName;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mock for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->getMockSettings(Ljava/lang/Object;)Lorg/mockito/mock/MockCreationSettings;

    move-result-object v1

    invoke-interface {v1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hashCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 64
    :cond_0
    invoke-interface {v0}, Lorg/mockito/mock/MockName;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 66
    :cond_1
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/ObjectMethodsGuru;->isCompareToMethod(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/mockito/invocation/InvocationOnMock;->getArgument(I)Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 73
    :cond_3
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;->returnValueFor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method returnValueFor(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 78
    invoke-static {p1}, Lorg/mockito/internal/util/Primitives;->isPrimitiveOrWrapper(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p1}, Lorg/mockito/internal/util/Primitives;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 82
    :cond_0
    const-class v0, Ljava/lang/Iterable;

    if-ne p1, v0, :cond_1

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 84
    :cond_1
    const-class v0, Ljava/util/Collection;

    if-ne p1, v0, :cond_2

    .line 85
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    return-object p1

    .line 86
    :cond_2
    const-class v0, Ljava/util/Set;

    if-ne p1, v0, :cond_3

    .line 87
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 88
    :cond_3
    const-class v0, Ljava/util/HashSet;

    if-ne p1, v0, :cond_4

    .line 89
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 90
    :cond_4
    const-class v0, Ljava/util/SortedSet;

    if-ne p1, v0, :cond_5

    .line 91
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    return-object p1

    .line 92
    :cond_5
    const-class v0, Ljava/util/TreeSet;

    if-ne p1, v0, :cond_6

    .line 93
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    return-object p1

    .line 94
    :cond_6
    const-class v0, Ljava/util/LinkedHashSet;

    if-ne p1, v0, :cond_7

    .line 95
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p1

    .line 96
    :cond_7
    const-class v0, Ljava/util/List;

    if-ne p1, v0, :cond_8

    .line 97
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    return-object p1

    .line 98
    :cond_8
    const-class v0, Ljava/util/LinkedList;

    if-ne p1, v0, :cond_9

    .line 99
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    return-object p1

    .line 100
    :cond_9
    const-class v0, Ljava/util/ArrayList;

    if-ne p1, v0, :cond_a

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 102
    :cond_a
    const-class v0, Ljava/util/Map;

    if-ne p1, v0, :cond_b

    .line 103
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    .line 104
    :cond_b
    const-class v0, Ljava/util/HashMap;

    if-ne p1, v0, :cond_c

    .line 105
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    .line 106
    :cond_c
    const-class v0, Ljava/util/SortedMap;

    if-ne p1, v0, :cond_d

    .line 107
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    return-object p1

    .line 108
    :cond_d
    const-class v0, Ljava/util/TreeMap;

    if-ne p1, v0, :cond_e

    .line 109
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    return-object p1

    .line 110
    :cond_e
    const-class v0, Ljava/util/LinkedHashMap;

    if-ne p1, v0, :cond_f

    .line 111
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p1

    :cond_f
    const-string v0, "java.util.Optional"

    .line 112
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 113
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptional()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_10
    const-string v0, "java.util.OptionalDouble"

    .line 114
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 115
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptionalDouble()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_11
    const-string v0, "java.util.OptionalInt"

    .line 116
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 117
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptionalInt()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_12
    const-string v0, "java.util.OptionalLong"

    .line 118
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 119
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptionalLong()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_13
    const-string v0, "java.util.stream.Stream"

    .line 120
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 121
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyStream()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_14
    const-string v0, "java.util.stream.DoubleStream"

    .line 122
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 123
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyDoubleStream()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_15
    const-string v0, "java.util.stream.IntStream"

    .line 124
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 125
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyIntStream()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_16
    const-string v0, "java.util.stream.LongStream"

    .line 126
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 127
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyLongStream()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method
