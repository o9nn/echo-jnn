.class Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;
.super Ljava/lang/Object;
.source "SubclassBytecodeGenerator.java"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;


# static fields
.field private static final CODEGEN_PACKAGE:Ljava/lang/String; = "org.mockito.codegen."


# instance fields
.field private final byteBuddy:Lnet/bytebuddy/ByteBuddy;

.field private final dispatcher:Lnet/bytebuddy/implementation/Implementation;

.field private final equals:Lnet/bytebuddy/implementation/Implementation;

.field private final handler:Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;

.field private final hashCode:Lnet/bytebuddy/implementation/Implementation;

.field private final loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

.field private final matcher:Lnet/bytebuddy/matcher/ElementMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Ljava/util/Random;

.field private final readReplace:Lnet/bytebuddy/implementation/Implementation;

.field private final writeReplace:Lnet/bytebuddy/implementation/Implementation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;

    invoke-direct {v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;-><init>()V

    invoke-direct {p0, v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;-><init>(Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/implementation/Implementation;Lnet/bytebuddy/matcher/ElementMatcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/Implementation;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)V"
        }
    .end annotation

    .line 68
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;

    invoke-direct {v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;-><init>(Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;Lnet/bytebuddy/implementation/Implementation;Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-void
.end method

.method public constructor <init>(Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;)V
    .locals 2

    const/4 v0, 0x0

    .line 64
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->any()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;-><init>(Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;Lnet/bytebuddy/implementation/Implementation;Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-void
.end method

.method protected constructor <init>(Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;Lnet/bytebuddy/implementation/Implementation;Lnet/bytebuddy/matcher/ElementMatcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;",
            "Lnet/bytebuddy/implementation/Implementation;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-class v0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$DispatcherDefaultingToRealMethod;

    invoke-static {v0}, Lnet/bytebuddy/implementation/MethodDelegation;->to(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->dispatcher:Lnet/bytebuddy/implementation/Implementation;

    .line 55
    const-class v0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$ForHashCode;

    invoke-static {v0}, Lnet/bytebuddy/implementation/MethodDelegation;->to(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->hashCode:Lnet/bytebuddy/implementation/Implementation;

    .line 56
    const-class v0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$ForEquals;

    invoke-static {v0}, Lnet/bytebuddy/implementation/MethodDelegation;->to(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->equals:Lnet/bytebuddy/implementation/Implementation;

    .line 57
    const-class v0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$ForWriteReplace;

    invoke-static {v0}, Lnet/bytebuddy/implementation/MethodDelegation;->to(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->writeReplace:Lnet/bytebuddy/implementation/Implementation;

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->readReplace:Lnet/bytebuddy/implementation/Implementation;

    iput-object p3, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    .line 75
    new-instance p2, Lnet/bytebuddy/ByteBuddy;

    invoke-direct {p2}, Lnet/bytebuddy/ByteBuddy;-><init>()V

    sget-object p3, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->DISABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    invoke-virtual {p2, p3}, Lnet/bytebuddy/ByteBuddy;->with(Lnet/bytebuddy/dynamic/scaffold/TypeValidation;)Lnet/bytebuddy/ByteBuddy;

    move-result-object p2

    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    .line 76
    new-instance p3, Ljava/util/Random;

    invoke-direct {p3}, Ljava/util/Random;-><init>()V

    iput-object p3, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->random:Ljava/util/Random;

    .line 77
    invoke-static {p2, p1, p3}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;->make(Lnet/bytebuddy/ByteBuddy;Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;Ljava/util/Random;)Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->handler:Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;

    return-void
.end method

.method private static assertVisibility(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 203
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create mock for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, "The type is not public and its mock class is loaded by a different class loader."

    const-string v4, "This can have multiple reasons:"

    const-string v5, " - You are mocking a class with additional interfaces of another class loader"

    const-string v6, " - Mockito is loaded by a different class loader than the mocked type (e.g. with OSGi)"

    const-string v7, " - The thread\'s context class loader is different than the mock\'s class loader"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAllTypes(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 179
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz p1, :cond_0

    .line 182
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private isComingFromJDK(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 196
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Java Runtime Environment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 197
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 198
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "javax."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static isGroovyMethod()Lnet/bytebuddy/matcher/ElementMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation

    const-string v0, "groovy.lang.GroovyObjectSupport"

    .line 189
    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->isDeclaredBy(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public mockClass(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/internal/creation/bytebuddy/MockFeatures<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation

    .line 82
    new-instance v0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    invoke-direct {v0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;-><init>()V

    iget-object v1, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    .line 83
    invoke-direct {p0, v1}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->getAllTypes(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->appendMostSpecific(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object v0

    iget-object v1, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->interfaces:Ljava/util/Set;

    .line 84
    invoke-virtual {v0, v1}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->appendMostSpecific(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/ClassLoader;

    .line 85
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->appendMostSpecific([Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    aput-object v3, v2, v4

    .line 86
    invoke-virtual {v0, v2}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->appendMostSpecific([Ljava/lang/Class;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->build()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 93
    iget-object v2, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-ne v0, v2, :cond_1

    iget-object v2, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->serializableMode:Lorg/mockito/mock/SerializableMode;

    sget-object v3, Lorg/mockito/mock/SerializableMode;->ACROSS_CLASSLOADERS:Lorg/mockito/mock/SerializableMode;

    if-eq v2, v3, :cond_1

    iget-object v2, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    .line 95
    invoke-direct {p0, v2}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->isComingFromJDK(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

    .line 96
    invoke-interface {v2}, Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;->isDisrespectingOpenness()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->handler:Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;

    iget-object v3, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    const-class v5, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    invoke-virtual {v2, v3, v5}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;->isOpened(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-nez v2, :cond_3

    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

    .line 98
    instance-of v3, v3, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-direct {p0, v3}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->isComingFromJDK(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 101
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lorg/mockito/codegen/InjectionBase;

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 99
    :cond_3
    :goto_1
    iget-object v3, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v5, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->random:Ljava/util/Random;

    .line 103
    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "MockitoMock"

    filled-new-array {v3, v6, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%s$%s$%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_4

    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->handler:Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;

    .line 106
    iget-object v6, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    const-class v7, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    invoke-virtual {v3, v6, v7, v4, v1}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;->adjustModuleGraph(Ljava/lang/Class;Ljava/lang/Class;ZZ)V

    .line 107
    iget-object v3, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->interfaces:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    iget-object v7, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->handler:Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;

    .line 108
    iget-object v8, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {v7, v6, v8, v1, v4}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;->adjustModuleGraph(Ljava/lang/Class;Ljava/lang/Class;ZZ)V

    iget-object v7, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->handler:Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;

    .line 109
    iget-object v8, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {v7, v8, v6, v4, v1}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;->adjustModuleGraph(Ljava/lang/Class;Ljava/lang/Class;ZZ)V

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->handler:Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;

    .line 112
    iget-object v7, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;->isExported(Ljava/lang/Class;)Z

    move-result v6

    .line 113
    iget-object v7, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->interfaces:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    if-eqz v6, :cond_5

    .line 114
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v6, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->handler:Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;

    .line 115
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    invoke-virtual {v6, v8}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;->isExported(Ljava/lang/Class;)Z

    move-result v6

    goto :goto_4

    :cond_5
    if-eqz v6, :cond_6

    .line 121
    iget-object v3, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-static {v3}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->assertVisibility(Ljava/lang/Class;)V

    .line 122
    iget-object v3, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->interfaces:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 123
    invoke-static {v6}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->assertVisibility(Ljava/lang/Class;)V

    goto :goto_5

    :cond_6
    iget-object v6, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->handler:Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;

    .line 126
    invoke-virtual {v6, v0, v3}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;->injectionBase(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 127
    iget-object v6, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-static {v6}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->assertVisibility(Ljava/lang/Class;)V

    iget-object v6, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->handler:Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;

    .line 128
    iget-object v7, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {v6, v7, v3, v1, v4}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;->adjustModuleGraph(Ljava/lang/Class;Ljava/lang/Class;ZZ)V

    .line 129
    iget-object v6, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->interfaces:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 130
    invoke-static {v7}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->assertVisibility(Ljava/lang/Class;)V

    iget-object v8, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->handler:Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;

    .line 131
    invoke-virtual {v8, v7, v3, v1, v4}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;->adjustModuleGraph(Ljava/lang/Class;Ljava/lang/Class;ZZ)V

    goto :goto_6

    :cond_7
    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    .line 136
    iget-object v6, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {v3, v6}, Lnet/bytebuddy/ByteBuddy;->subclass(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v3

    .line 137
    invoke-interface {v3, v5}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v3

    .line 138
    invoke-static {}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->isGroovyMethod()Lnet/bytebuddy/matcher/ElementMatcher;

    move-result-object v6

    invoke-interface {v3, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->ignoreAlso(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v3

    .line 139
    iget-boolean v6, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->stripAnnotations:Z

    if-eqz v6, :cond_8

    new-array v6, v4, [Ljava/lang/annotation/Annotation;

    goto :goto_7

    .line 141
    :cond_8
    iget-object v6, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    .line 139
    :goto_7
    invoke-interface {v3, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->annotateType([Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v3

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->interfaces:Ljava/util/Set;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 142
    invoke-interface {v3, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->implement(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;

    move-result-object v3

    iget-object v6, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    .line 143
    invoke-interface {v3, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object v3

    iget-object v6, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->dispatcher:Lnet/bytebuddy/implementation/Implementation;

    .line 144
    invoke-interface {v3, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v3

    new-array v6, v1, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v7, Lnet/bytebuddy/description/modifier/SynchronizationState;->PLAIN:Lnet/bytebuddy/description/modifier/SynchronizationState;

    aput-object v7, v6, v4

    .line 145
    invoke-static {v6}, Lnet/bytebuddy/dynamic/Transformer$ForMethod;->withModifiers([Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/Transformer;

    move-result-object v6

    invoke-interface {v3, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->transform(Lnet/bytebuddy/dynamic/Transformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;

    move-result-object v3

    .line 146
    iget-boolean v6, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->stripAnnotations:Z

    if-eqz v6, :cond_9

    .line 147
    sget-object v6, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;

    goto :goto_8

    .line 148
    :cond_9
    sget-object v6, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForInstrumentedMethod;->INCLUDING_RECEIVER:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForInstrumentedMethod;

    :goto_8
    check-cast v6, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    .line 146
    invoke-interface {v3, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;->attribute(Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;

    move-result-object v3

    .line 149
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isHashCode()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-interface {v3, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object v3

    iget-object v6, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->hashCode:Lnet/bytebuddy/implementation/Implementation;

    .line 150
    invoke-interface {v3, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v3

    .line 151
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isEquals()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-interface {v3, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object v3

    iget-object v6, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->equals:Lnet/bytebuddy/implementation/Implementation;

    .line 152
    invoke-interface {v3, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v3

    const-wide/16 v6, 0x2a

    .line 153
    invoke-interface {v3, v6, v7}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->serialVersionUid(J)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;

    move-result-object v3

    const-class v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    new-array v7, v1, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;

    sget-object v8, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v8, v7, v4

    const-string v8, "mockitoInterceptor"

    .line 154
    invoke-interface {v3, v8, v6, v7}, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;->defineField(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable;

    move-result-object v3

    new-array v6, v1, [Ljava/lang/reflect/Type;

    const-class v7, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    aput-object v7, v6, v4

    .line 155
    invoke-interface {v3, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable;->implement([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;

    move-result-object v3

    .line 156
    invoke-static {}, Lnet/bytebuddy/implementation/FieldAccessor;->ofBeanProperty()Lnet/bytebuddy/implementation/FieldAccessor$OwnerTypeLocatable;

    move-result-object v6

    invoke-interface {v3, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v3

    .line 157
    iget-object v6, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->serializableMode:Lorg/mockito/mock/SerializableMode;

    sget-object v7, Lorg/mockito/mock/SerializableMode;->ACROSS_CLASSLOADERS:Lorg/mockito/mock/SerializableMode;

    if-ne v6, v7, :cond_a

    new-array v6, v1, [Ljava/lang/reflect/Type;

    .line 158
    const-class v7, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$CrossClassLoaderSerializableMock;

    aput-object v7, v6, v4

    invoke-interface {v3, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->implement([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;

    move-result-object v3

    iget-object v6, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->writeReplace:Lnet/bytebuddy/implementation/Implementation;

    .line 159
    invoke-interface {v3, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v3

    :cond_a
    iget-object v6, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->readReplace:Lnet/bytebuddy/implementation/Implementation;

    if-eqz v6, :cond_b

    .line 162
    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v7, v1, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v8, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v8, v7, v4

    const-string v8, "readObject"

    invoke-interface {v3, v8, v6, v7}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineMethod(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v3

    new-array v6, v1, [Ljava/lang/reflect/Type;

    const-class v7, Ljava/io/ObjectInputStream;

    aput-object v7, v6, v4

    .line 163
    invoke-interface {v3, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/reflect/Type;

    const-class v7, Ljava/lang/ClassNotFoundException;

    aput-object v7, v6, v4

    const-class v4, Ljava/io/IOException;

    aput-object v4, v6, v1

    .line 164
    invoke-interface {v3, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->throwing([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v1

    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->readReplace:Lnet/bytebuddy/implementation/Implementation;

    .line 165
    invoke-interface {v1, v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v3

    :cond_b
    const-string v1, "org.mockito.codegen."

    .line 167
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    instance-of v1, v0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;

    if-eqz v1, :cond_d

    .line 168
    :cond_c
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isPackagePrivate()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    .line 169
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isPackagePrivate()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-static {v4}, Lnet/bytebuddy/matcher/ElementMatchers;->returns(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-interface {v1, v4}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    .line 170
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isPackagePrivate()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-static {v4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-static {v4}, Lnet/bytebuddy/matcher/ElementMatchers;->whereAny(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-static {v4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasParameters(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-interface {v1, v4}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    .line 168
    invoke-interface {v3, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->ignoreAlso(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v3

    .line 172
    :cond_d
    invoke-interface {v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v1

    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

    iget-object p1, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    .line 173
    invoke-interface {v3, p1, v0, v2}, Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;->resolveStrategy(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Unloaded;->load(Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;

    move-result-object p1

    .line 174
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/DynamicType$Loaded;->getLoaded()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
