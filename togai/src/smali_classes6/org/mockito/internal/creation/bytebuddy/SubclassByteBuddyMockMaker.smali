.class public Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;
.super Ljava/lang/Object;
.source "SubclassByteBuddyMockMaker.java"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/ClassCreatingMockMaker;


# instance fields
.field private final cachingMockBytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;

    invoke-direct {v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;-><init>()V

    invoke-direct {p0, v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;-><init>(Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;)V

    return-void
.end method

.method public constructor <init>(Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;

    new-instance v1, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;

    invoke-direct {v1, p1}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;-><init>(Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;-><init>(Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;Z)V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->cachingMockBytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    return-void
.end method

.method private static describeClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\', loaded by classloader : \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static describeClass(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->describeClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static ensureMockIsAssignableToMockedType(Lorg/mockito/mock/MockCreationSettings;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 86
    invoke-interface {p0}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object p0

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private prettifyFailure(Lorg/mockito/mock/MockCreationSettings;Ljava/lang/Exception;)Ljava/lang/RuntimeException;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;",
            "Ljava/lang/Exception;",
            ")",
            "Ljava/lang/RuntimeException;"
        }
    .end annotation

    .line 91
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const-string v1, "."

    const-string v2, ""

    if-nez v0, :cond_2

    .line 97
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    const-string v3, "Mockito cannot mock this class: "

    if-nez v0, :cond_1

    .line 104
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const/4 p1, 0x1

    aput-object v2, v4, p1

    const/4 p1, 0x2

    const-string v1, "Mockito can only mock non-private & non-final classes."

    aput-object v1, v4, p1

    const/4 p1, 0x3

    const-string v1, "If you\'re not sure why you\'re getting this error, please report to the mailing list."

    aput-object v1, v4, p1

    const/4 p1, 0x4

    aput-object v2, v4, p1

    .line 112
    invoke-static {}, Lorg/mockito/internal/util/Platform;->isJava8BelowUpdate45()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Java 8 early builds have bugs that were addressed in Java 1.8.0_45, please update your JDK!\n"

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    const-string v1, "IBM J9 VM"

    const-string v3, "Early IBM virtual machine are known to have issues with Mockito, please upgrade to an up-to-date version.\n"

    const-string v5, "Hotspot"

    .line 110
    invoke-static {v1, v3, v5, p1}, Lorg/mockito/internal/util/Platform;->warnForVM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x5

    aput-object p1, v4, v1

    const/4 p1, 0x6

    .line 114
    invoke-static {}, Lorg/mockito/internal/util/Platform;->describe()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, p1

    const/4 p1, 0x7

    aput-object v2, v4, p1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Underlying exception : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x8

    aput-object p1, v4, v1

    .line 104
    invoke-static {v4}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 98
    :cond_1
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Most likely it is due to mocking a private class that is not visible to Mockito"

    filled-new-array {p1, v1, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 98
    invoke-static {p1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 92
    :cond_2
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Mockito cannot mock arrays: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 92
    invoke-static {p1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public createMock(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;",
            "Lorg/mockito/invocation/MockHandler;",
            ")TT;"
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->createMockType(Lorg/mockito/mock/MockCreationSettings;)Ljava/lang/Class;

    move-result-object v0

    .line 44
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getInstantiatorProvider()Lorg/mockito/plugins/InstantiatorProvider2;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/mockito/plugins/InstantiatorProvider2;->getInstantiator(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/creation/instance/Instantiator;

    move-result-object v1

    .line 47
    :try_start_0
    invoke-interface {v1, v0}, Lorg/mockito/creation/instance/Instantiator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/mockito/creation/instance/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    :try_start_1
    move-object v3, v2

    check-cast v3, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    .line 49
    new-instance v4, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    invoke-direct {v4, p2, p1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;-><init>(Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V

    invoke-interface {v3, v4}, Lorg/mockito/internal/creation/bytebuddy/MockAccess;->setMockitoInterceptor(Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;)V

    .line 51
    invoke-static {p1, v2}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->ensureMockIsAssignableToMockedType(Lorg/mockito/mock/MockCreationSettings;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/mockito/creation/instance/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p1

    .line 64
    new-instance p2, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to create mock instance of type \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p2

    const/4 v2, 0x0

    .line 53
    :goto_0
    new-instance v3, Lorg/mockito/exceptions/base/MockitoException;

    const-string v4, "ClassCastException occurred while creating the mockito mock :"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  class to mock : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->describeClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v6, "  created class : "

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-static {v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->describeClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "  proxy instance class : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-static {v2}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->describeClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "  instance creation by : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const-string v10, "You might experience classloading issues, please ask the mockito mailing-list."

    const-string v11, ""

    filled-new-array/range {v4 .. v11}, [Ljava/lang/Object;

    move-result-object p1

    .line 53
    invoke-static {p1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public createMockType(Lorg/mockito/mock/MockCreationSettings;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->cachingMockBytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    .line 72
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v1

    .line 73
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getExtraInterfaces()Ljava/util/Set;

    move-result-object v2

    .line 74
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getSerializableMode()Lorg/mockito/mock/SerializableMode;

    move-result-object v3

    .line 75
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->isStripAnnotations()Z

    move-result v4

    .line 71
    invoke-static {v1, v2, v3, v4}, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->withMockFeatures(Ljava/lang/Class;Ljava/util/Set;Lorg/mockito/mock/SerializableMode;Z)Lorg/mockito/internal/creation/bytebuddy/MockFeatures;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;->mockClass(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 78
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->prettifyFailure(Lorg/mockito/mock/MockCreationSettings;Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;
    .locals 1

    .line 130
    instance-of v0, p1, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 133
    :cond_0
    check-cast p1, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    invoke-interface {p1}, Lorg/mockito/internal/creation/bytebuddy/MockAccess;->getMockitoInterceptor()Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->getMockHandler()Lorg/mockito/invocation/MockHandler;

    move-result-object p1

    return-object p1
.end method

.method public isTypeMockable(Ljava/lang/Class;)Lorg/mockito/plugins/MockMaker$TypeMockability;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/plugins/MockMaker$TypeMockability;"
        }
    .end annotation

    .line 145
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker$1;

    invoke-direct {v0, p0, p1}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker$1;-><init>(Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;Ljava/lang/Class;)V

    return-object v0
.end method

.method public resetMock(Ljava/lang/Object;Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 1

    .line 138
    check-cast p1, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    invoke-direct {v0, p2, p3}, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;-><init>(Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V

    invoke-interface {p1, v0}, Lorg/mockito/internal/creation/bytebuddy/MockAccess;->setMockitoInterceptor(Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;)V

    return-void
.end method
