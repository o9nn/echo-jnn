.class public Lorg/mockito/internal/util/ObjectMethodsGuru;
.super Ljava/lang/Object;
.source "ObjectMethodsGuru.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCompareToMethod(Ljava/lang/reflect/Method;)Z
    .locals 3

    .line 24
    const-class v0, Ljava/lang/Comparable;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "compareTo"

    .line 25
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 27
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    if-ne v0, p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static isToStringMethod(Ljava/lang/reflect/Method;)Z
    .locals 2

    .line 17
    new-instance v0, Lorg/mockito/internal/creation/DelegatingMethod;

    invoke-direct {v0, p0}, Lorg/mockito/internal/creation/DelegatingMethod;-><init>(Ljava/lang/reflect/Method;)V

    .line 18
    invoke-interface {v0}, Lorg/mockito/internal/invocation/MockitoMethod;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    const-class v1, Ljava/lang/String;

    if-ne p0, v1, :cond_0

    .line 19
    invoke-interface {v0}, Lorg/mockito/internal/invocation/MockitoMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    array-length p0, p0

    if-nez p0, :cond_0

    const-string p0, "toString"

    .line 20
    invoke-interface {v0}, Lorg/mockito/internal/invocation/MockitoMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
