.class public Lorg/mockito/internal/creation/instance/ConstructorInstantiator;
.super Ljava/lang/Object;
.source "ConstructorInstantiator.java"

# interfaces
.implements Lorg/mockito/creation/instance/Instantiator;


# instance fields
.field private final constructorArgs:[Ljava/lang/Object;

.field private final hasOuterClassInstance:Z


# direct methods
.method public varargs constructor <init>(Z[Ljava/lang/Object;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->hasOuterClassInstance:Z

    iput-object p2, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgs:[Ljava/lang/Object;

    return-void
.end method

.method private constructorArgTypes()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->hasOuterClassInstance:Z

    iget-object v1, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgs:[Ljava/lang/Object;

    .line 81
    array-length v1, v1

    sub-int/2addr v1, v0

    new-array v1, v1, [Ljava/lang/String;

    move v2, v0

    :goto_0
    iget-object v3, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgs:[Ljava/lang/Object;

    .line 82
    array-length v4, v3

    if-ge v2, v4, :cond_1

    sub-int v4, v2, v0

    .line 83
    aget-object v3, v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private constructorArgsString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgs:[Ljava/lang/Object;

    .line 101
    array-length v1, v0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->hasOuterClassInstance:Z

    if-eqz v1, :cond_0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "a constructor that matches these argument types: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgTypes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "a 0-arg constructor"

    :goto_1
    return-object v0
.end method

.method private evaluateConstructor(Ljava/util/List;Ljava/lang/reflect/Constructor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;)V"
        }
    .end annotation

    .line 163
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 164
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 165
    aget-object v4, v0, v1

    .line 166
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_2

    .line 167
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Constructor;

    .line 168
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    aget-object v6, v6, v1

    if-eq v4, v6, :cond_0

    .line 170
    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    move v2, v7

    goto :goto_1

    :cond_1
    move v3, v7

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    .line 180
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_4
    if-nez v3, :cond_5

    if-nez v2, :cond_6

    .line 183
    :cond_5
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method private static varargs invokeConstructor(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 64
    new-instance v0, Lorg/mockito/internal/util/reflection/AccessibilityChanger;

    invoke-direct {v0}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;-><init>()V

    .line 65
    invoke-virtual {v0, p0}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;->enableAccess(Ljava/lang/reflect/AccessibleObject;)V

    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private multipleMatchingConstructors(Ljava/lang/Class;Ljava/util/List;)Lorg/mockito/creation/instance/InstantiationException;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;)",
            "Lorg/mockito/creation/instance/InstantiationException;"
        }
    .end annotation

    .line 110
    new-instance v0, Lorg/mockito/creation/instance/InstantiationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to create instance of \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Multiple constructors could be matched to arguments of types "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgTypes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string p1, ""

    const-string v3, " - "

    .line 112
    invoke-static {p1, v3, p2}, Lorg/mockito/internal/util/StringUtil;->join(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "If you believe that Mockito could do a better job deciding on which constructor to use, please let us know."

    const-string v5, "Ticket 685 contains the discussion and a workaround for ambiguous constructors using inner class."

    const-string v6, "See https://github.com/mockito/mockito/issues/685"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    .line 110
    invoke-static {p1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lorg/mockito/creation/instance/InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private noMatchingConstructor(Ljava/lang/Class;)Lorg/mockito/creation/instance/InstantiationException;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/creation/instance/InstantiationException;"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgsString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->hasOuterClassInstance:Z

    if-eqz v1, :cond_0

    const-string v1, " and provided outer instance is correct"

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 94
    :goto_0
    new-instance v2, Lorg/mockito/creation/instance/InstantiationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to create instance of \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "\'."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Please ensure that the target class has "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {v2, p1, v0}, Lorg/mockito/creation/instance/InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private paramsException(Ljava/lang/Class;Ljava/lang/Exception;)Lorg/mockito/creation/instance/InstantiationException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Exception;",
            ")",
            "Lorg/mockito/creation/instance/InstantiationException;"
        }
    .end annotation

    .line 70
    new-instance v0, Lorg/mockito/creation/instance/InstantiationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to create instance of \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Please ensure the target class has "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and executes cleanly."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 70
    invoke-static {p1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/mockito/creation/instance/InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static paramsMatch([Ljava/lang/Class;[Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 120
    array-length v0, p1

    array-length v1, p0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 123
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 124
    aget-object v1, p1, v0

    if-nez v1, :cond_1

    .line 125
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    .line 128
    :cond_1
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, p0, v0

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    aget-object v1, p0, v0

    .line 129
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_4

    aget-object v1, p0, v0

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lorg/mockito/internal/util/Primitives;->primitiveTypeOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private varargs withParams(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 42
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 43
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 44
    invoke-static {v6, p2}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->paramsMatch([Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 45
    invoke-direct {p0, v0, v5}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->evaluateConstructor(Ljava/util/List;Ljava/lang/reflect/Constructor;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 50
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-static {v0, p2}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->invokeConstructor(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 55
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_3

    .line 56
    invoke-direct {p0, p1}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->noMatchingConstructor(Ljava/lang/Class;)Lorg/mockito/creation/instance/InstantiationException;

    move-result-object p1

    throw p1

    .line 58
    :cond_3
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->multipleMatchingConstructors(Ljava/lang/Class;Ljava/util/List;)Lorg/mockito/creation/instance/InstantiationException;

    move-result-object p1

    throw p1

    :catch_0
    move-exception p2

    .line 53
    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->paramsException(Ljava/lang/Class;Ljava/lang/Exception;)Lorg/mockito/creation/instance/InstantiationException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgs:[Ljava/lang/Object;

    .line 36
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->withParams(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
