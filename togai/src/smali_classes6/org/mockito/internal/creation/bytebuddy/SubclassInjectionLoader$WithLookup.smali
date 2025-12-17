.class Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$WithLookup;
.super Ljava/lang/Object;
.source "SubclassInjectionLoader.java"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WithLookup"
.end annotation


# instance fields
.field private final codegenLookup:Ljava/lang/Object;

.field private final lookup:Ljava/lang/Object;

.field private final privateLookupIn:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$WithLookup;->lookup:Ljava/lang/Object;

    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$WithLookup;->codegenLookup:Ljava/lang/Object;

    iput-object p3, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$WithLookup;->privateLookupIn:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public isDisrespectingOpenness()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resolveStrategy(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_1

    :try_start_0
    iget-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$WithLookup;->privateLookupIn:Ljava/lang/reflect/Method;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$WithLookup;->lookup:Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object v0, p3, v1

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :try_start_1
    invoke-static {p2}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;->of(Ljava/lang/Object;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 89
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    instance-of p3, p3, Ljava/lang/IllegalAccessException;

    if-eqz p3, :cond_0

    .line 90
    sget-object p2, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->WRAPPER:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    invoke-virtual {p1}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object p3

    invoke-virtual {p2, p3}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->with(Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;

    move-result-object p1

    return-object p1

    .line 92
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :goto_0
    new-instance p3, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The Java module system prevents Mockito from defining a mock class in the same package as "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "To overcome this, you must open and export the mocked type to Mockito."

    const-string v1, "Remember that you can also do so programmatically if the mocked class is defined by the same module as your test code"

    const-string v2, ""

    filled-new-array {p1, v2, v0, v1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 105
    :cond_1
    const-class p3, Lorg/mockito/codegen/InjectionBase;

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    if-ne p2, p3, :cond_2

    iget-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$WithLookup;->codegenLookup:Ljava/lang/Object;

    .line 106
    invoke-static {p1}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;->of(Ljava/lang/Object;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;

    move-result-object p1

    return-object p1

    .line 108
    :cond_2
    sget-object p2, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->WRAPPER:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    invoke-virtual {p1}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->with(Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;

    move-result-object p1

    return-object p1
.end method
