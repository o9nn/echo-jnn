.class Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;
.super Ljava/lang/Object;
.source "SubclassInjectionLoader.java"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$WithLookup;,
        Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$WithReflection;
    }
.end annotation


# static fields
.field private static final ERROR_MESSAGE:Ljava/lang/String;


# instance fields
.field private final loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Currently, Mockito supports injection via neither by method handle lookups or using sun.misc.Unsafe"

    const-string v1, "Neither seems to be available on your current JVM."

    const-string v2, "The current JVM does not support any class injection mechanism."

    const-string v3, ""

    .line 20
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;->ERROR_MESSAGE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "org.mockito.internal.noUnsafeInjection"

    .line 28
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$WithReflection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$WithReflection;-><init>(Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$1;)V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;->loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-static {}, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;->tryLookup()Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;->loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

    :goto_0
    return-void

    .line 33
    :cond_1
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    sget-object v1, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;->ERROR_MESSAGE:Ljava/lang/String;

    const-string v2, ""

    invoke-static {}, Lorg/mockito/internal/util/Platform;->describe()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static tryLookup()Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;
    .locals 9

    :try_start_0
    const-string v0, "java.lang.invoke.MethodHandles"

    .line 39
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "lookup"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 40
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "privateLookupIn"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    .line 41
    const-class v7, Ljava/lang/Class;

    aput-object v7, v6, v2

    const-string v7, "java.lang.invoke.MethodHandles$Lookup"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    .line 42
    const-class v5, Lorg/mockito/codegen/InjectionBase;

    aput-object v5, v3, v2

    aput-object v1, v3, v8

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 43
    new-instance v3, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$WithLookup;

    invoke-direct {v3, v1, v2, v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader$WithLookup;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    .line 45
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    sget-object v2, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;->ERROR_MESSAGE:Ljava/lang/String;

    const-string v3, ""

    invoke-static {}, Lorg/mockito/internal/util/Platform;->describe()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public isDisrespectingOpenness()Z
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;->loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

    .line 115
    invoke-interface {v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;->isDisrespectingOpenness()Z

    move-result v0

    return v0
.end method

.method public resolveStrategy(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;
    .locals 1
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

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;->loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

    .line 120
    invoke-interface {v0, p1, p2, p3}, Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;->resolveStrategy(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;

    move-result-object p1

    return-object p1
.end method
