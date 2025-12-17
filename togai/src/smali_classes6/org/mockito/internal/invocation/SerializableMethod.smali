.class public Lorg/mockito/internal/invocation/SerializableMethod;
.super Ljava/lang/Object;
.source "SerializableMethod.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/mockito/internal/invocation/MockitoMethod;


# static fields
.field private static final serialVersionUID:J = 0x5358375a84605cbdL


# instance fields
.field private final declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final exceptionTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final isAbstract:Z

.field private final isVarArgs:Z

.field private volatile transient method:Ljava/lang/reflect/Method;

.field private final methodName:Ljava/lang/String;

.field private final parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final returnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/invocation/SerializableMethod;->method:Ljava/lang/reflect/Method;

    .line 31
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->declaringClass:Ljava/lang/Class;

    .line 32
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->methodName:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/creation/SuspendMethod;->trimSuspendParameterTypes([Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->parameterTypes:[Ljava/lang/Class;

    .line 34
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->returnType:Ljava/lang/Class;

    .line 35
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->exceptionTypes:[Ljava/lang/Class;

    .line 36
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v0

    iput-boolean v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->isVarArgs:Z

    .line 37
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p1

    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/mockito/internal/invocation/SerializableMethod;->isAbstract:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 95
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 97
    :cond_2
    check-cast p1, Lorg/mockito/internal/invocation/SerializableMethod;

    iget-object v2, p0, Lorg/mockito/internal/invocation/SerializableMethod;->declaringClass:Ljava/lang/Class;

    if-nez v2, :cond_3

    .line 99
    iget-object v2, p1, Lorg/mockito/internal/invocation/SerializableMethod;->declaringClass:Ljava/lang/Class;

    if-eqz v2, :cond_4

    return v1

    .line 101
    :cond_3
    iget-object v3, p1, Lorg/mockito/internal/invocation/SerializableMethod;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lorg/mockito/internal/invocation/SerializableMethod;->methodName:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 104
    iget-object v2, p1, Lorg/mockito/internal/invocation/SerializableMethod;->methodName:Ljava/lang/String;

    if-eqz v2, :cond_6

    return v1

    .line 106
    :cond_5
    iget-object v3, p1, Lorg/mockito/internal/invocation/SerializableMethod;->methodName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lorg/mockito/internal/invocation/SerializableMethod;->parameterTypes:[Ljava/lang/Class;

    .line 108
    iget-object v3, p1, Lorg/mockito/internal/invocation/SerializableMethod;->parameterTypes:[Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lorg/mockito/internal/invocation/SerializableMethod;->returnType:Ljava/lang/Class;

    if-nez v2, :cond_8

    .line 111
    iget-object p1, p1, Lorg/mockito/internal/invocation/SerializableMethod;->returnType:Ljava/lang/Class;

    if-eqz p1, :cond_9

    return v1

    .line 113
    :cond_8
    iget-object p1, p1, Lorg/mockito/internal/invocation/SerializableMethod;->returnType:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public getExceptionTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->exceptionTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getJavaMethod()Ljava/lang/reflect/Method;
    .locals 3

    iget-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->method:Ljava/lang/reflect/Method;

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->declaringClass:Ljava/lang/Class;

    iget-object v1, p0, Lorg/mockito/internal/invocation/SerializableMethod;->methodName:Ljava/lang/String;

    iget-object v2, p0, Lorg/mockito/internal/invocation/SerializableMethod;->parameterTypes:[Ljava/lang/Class;

    .line 69
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->method:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->method:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/mockito/internal/invocation/SerializableMethod;->declaringClass:Ljava/lang/Class;

    iget-object v2, p0, Lorg/mockito/internal/invocation/SerializableMethod;->methodName:Ljava/lang/String;

    .line 77
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The method %1$s.%2$s does not exists and you should not get to this point.\nPlease report this as a defect with an example of how to reproduce it."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 80
    new-instance v2, Lorg/mockito/exceptions/base/MockitoException;

    invoke-direct {v2, v1, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    iget-object v1, p0, Lorg/mockito/internal/invocation/SerializableMethod;->declaringClass:Ljava/lang/Class;

    iget-object v2, p0, Lorg/mockito/internal/invocation/SerializableMethod;->methodName:Ljava/lang/String;

    .line 72
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The method %1$s.%2$s is probably private or protected and cannot be mocked.\nPlease report this as a defect with an example of how to reproduce it."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 75
    new-instance v2, Lorg/mockito/exceptions/base/MockitoException;

    invoke-direct {v2, v1, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->parameterTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->returnType:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAbstract()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->isAbstract:Z

    return v0
.end method

.method public isVarArgs()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->isVarArgs:Z

    return v0
.end method
