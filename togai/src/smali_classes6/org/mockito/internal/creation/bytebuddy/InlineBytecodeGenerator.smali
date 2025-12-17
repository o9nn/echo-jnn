.class public Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;
.super Ljava/lang/Object;
.source "InlineBytecodeGenerator.java"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;
.implements Ljava/lang/instrument/ClassFileTransformer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper;
    }
.end annotation


# static fields
.field static final EXCLUDES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final PRELOAD:Ljava/lang/String; = "org.mockito.inline.preload"


# instance fields
.field private final byteBuddy:Lnet/bytebuddy/ByteBuddy;

.field private final canRead:Ljava/lang/reflect/Method;

.field private final getModule:Ljava/lang/reflect/Method;

.field private final instrumentation:Ljava/lang/instrument/Instrumentation;

.field private volatile lastException:Ljava/lang/Throwable;

.field private final mockTransformer:Lnet/bytebuddy/asm/AsmVisitorWrapper;

.field private final mocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentSet<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final redefineModule:Ljava/lang/reflect/Method;

.field private final subclassEngine:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 50
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/Byte;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/lang/Short;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Ljava/lang/Character;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Ljava/lang/Long;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Ljava/lang/Float;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Ljava/lang/Double;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->EXCLUDES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/instrument/Instrumentation;Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<",
            "Ljava/lang/Object;",
            "Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->preload()V

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->instrumentation:Ljava/lang/instrument/Instrumentation;

    .line 74
    new-instance v0, Lnet/bytebuddy/ByteBuddy;

    invoke-direct {v0}, Lnet/bytebuddy/ByteBuddy;-><init>()V

    sget-object v1, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->DISABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    .line 75
    invoke-virtual {v0, v1}, Lnet/bytebuddy/ByteBuddy;->with(Lnet/bytebuddy/dynamic/scaffold/TypeValidation;)Lnet/bytebuddy/ByteBuddy;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;->INSTANCE:Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;

    .line 76
    invoke-virtual {v0, v1}, Lnet/bytebuddy/ByteBuddy;->with(Lnet/bytebuddy/implementation/Implementation$Context$Factory;)Lnet/bytebuddy/ByteBuddy;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;

    .line 77
    invoke-virtual {v0, v1}, Lnet/bytebuddy/ByteBuddy;->with(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/ByteBuddy;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    .line 78
    new-instance v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    sget-object v1, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;->INLINE:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;

    invoke-direct {v0, v1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;-><init>(Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;)V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->mocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    .line 79
    invoke-static {}, Lnet/bytebuddy/utility/RandomString;->make()Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;

    new-instance v2, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;

    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;

    const-class v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$Identifier;

    .line 81
    invoke-static {v6, v0}, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue$OfConstant;->of(Ljava/lang/Class;Ljava/lang/Object;)Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v5}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->withBinders([Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;)Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v3

    const-class v5, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForReadObject;

    .line 82
    invoke-virtual {v3, v5}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object v3

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isAbstract()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v5

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isNative()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-interface {v5, v6}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v5

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isToString()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-interface {v5, v6}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;-><init>(Lnet/bytebuddy/implementation/Implementation;Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-direct {v1, v2, v7}, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;-><init>(Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;Z)V

    iput-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->subclassEngine:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    .line 83
    new-instance v1, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    invoke-direct {v1}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;-><init>()V

    .line 84
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isVirtual()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    .line 85
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isBridge()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isHashCode()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v5

    invoke-interface {v3, v5}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isEquals()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v5

    invoke-interface {v3, v5}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isDefaultFinalizer()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v5

    invoke-interface {v3, v5}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    const-string v3, "java."

    .line 86
    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->nameStartsWith(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->isDeclaredBy(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isPackagePrivate()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v5

    invoke-interface {v3, v5}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    new-array v3, v4, [Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;

    .line 87
    invoke-static {}, Lnet/bytebuddy/asm/Advice;->withCustomMapping()Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object v5

    const-class v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$Identifier;

    .line 88
    invoke-virtual {v5, v6, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Ljava/lang/Class;Ljava/lang/Object;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object v5

    const-class v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;

    .line 89
    invoke-virtual {v5, v6}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->to(Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice;

    move-result-object v5

    aput-object v5, v3, v7

    .line 84
    invoke-virtual {v1, v2, v3}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->method(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object v1

    .line 90
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isHashCode()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    new-array v3, v4, [Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;

    .line 91
    invoke-static {}, Lnet/bytebuddy/asm/Advice;->withCustomMapping()Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object v5

    const-class v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$Identifier;

    .line 92
    invoke-virtual {v5, v6, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Ljava/lang/Class;Ljava/lang/Object;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object v5

    const-class v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForHashCode;

    .line 93
    invoke-virtual {v5, v6}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->to(Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice;

    move-result-object v5

    aput-object v5, v3, v7

    .line 90
    invoke-virtual {v1, v2, v3}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->method(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object v1

    .line 94
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isEquals()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    new-array v3, v4, [Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;

    .line 95
    invoke-static {}, Lnet/bytebuddy/asm/Advice;->withCustomMapping()Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object v5

    const-class v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$Identifier;

    .line 96
    invoke-virtual {v5, v6, v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Ljava/lang/Class;Ljava/lang/Object;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object v5

    const-class v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForEquals;

    .line 97
    invoke-virtual {v5, v6}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->to(Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice;

    move-result-object v5

    aput-object v5, v3, v7

    .line 94
    invoke-virtual {v1, v2, v3}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->method(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object v1

    iput-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->mockTransformer:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    .line 100
    :try_start_0
    const-class v1, Ljava/lang/Class;

    const-string v2, "getModule"

    new-array v3, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "canRead"

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 102
    const-class v3, Ljava/lang/instrument/Instrumentation;

    const-string v5, "redefineModule"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Class;

    .line 103
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    const-class v7, Ljava/util/Set;

    aput-object v7, v6, v4

    const-class v7, Ljava/util/Map;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const-class v7, Ljava/util/Map;

    const/4 v8, 0x3

    aput-object v7, v6, v8

    const-class v7, Ljava/util/Set;

    const/4 v8, 0x4

    aput-object v7, v6, v8

    const-class v7, Ljava/util/Map;

    const/4 v8, 0x5

    aput-object v7, v6, v8

    .line 102
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    iput-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->getModule:Ljava/lang/reflect/Method;

    iput-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->canRead:Ljava/lang/reflect/Method;

    iput-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->redefineModule:Ljava/lang/reflect/Method;

    .line 112
    new-instance v1, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;

    invoke-direct {v1, p2, v0}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;-><init>(Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;->set(Ljava/lang/String;Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;)V

    .line 113
    invoke-interface {p1, p0, v4}, Ljava/lang/instrument/Instrumentation;->addTransformer(Ljava/lang/instrument/ClassFileTransformer;Z)V

    return-void
.end method

.method private addInterfaces(Ljava/util/Set;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 229
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->mocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    .line 230
    invoke-virtual {v3, v2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->addInterfaces(Ljava/util/Set;[Ljava/lang/Class;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private assureCanReadMockito(Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->redefineModule:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->getModule:Ljava/lang/reflect/Method;

    const-string v2, "org.mockito.internal.creation.bytebuddy.inject.MockMethodDispatcher"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 199
    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 200
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->getModule:Ljava/lang/reflect/Method;

    new-array v5, v4, [Ljava/lang/Object;

    .line 201
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 202
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->canRead:Ljava/lang/reflect/Method;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 203
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->redefineModule:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->instrumentation:Ljava/lang/instrument/Instrumentation;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v4

    .line 207
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v6, v7

    .line 208
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const/4 v7, 0x2

    aput-object v2, v6, v7

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const/4 v7, 0x3

    aput-object v2, v6, v7

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v6, v7

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const/4 v7, 0x5

    aput-object v2, v6, v7

    .line 207
    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 211
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "At least one of those modules: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not reading the unnamed module of the bootstrap loader"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Without such a read edge, the classes that are redefined to become mocks cannot access the mock dispatcher."

    const-string v3, "To circumvent this, Mockito attempted to add a read edge to this module what failed for an unexpected reason"

    const-string v4, "Could not adjust module graph to make the mock instance dispatcher visible to some classes"

    const-string v5, ""

    filled-new-array {v4, v5, v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private checkSupportedCombination(ZLorg/mockito/internal/creation/bytebuddy/MockFeatures;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lorg/mockito/internal/creation/bytebuddy/MockFeatures<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 220
    iget-object p1, p2, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    .line 221
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p2, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    .line 222
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p2, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    .line 223
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    new-instance p1, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported settings with this type \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private static preload()V
    .locals 6

    const-string v0, "org.mockito.inline.preload"

    .line 131
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "java.lang.WeakPairMap,java.lang.WeakPairMap$Pair,java.lang.WeakPairMap$Pair$Weak"

    :cond_0
    const-string v1, ","

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    const/4 v5, 0x0

    .line 137
    :try_start_0
    invoke-static {v4, v2, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private triggerRetransformation(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/internal/creation/bytebuddy/MockFeatures<",
            "TT;>;)V"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 162
    iget-object p1, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    :cond_0
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->mocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    .line 164
    invoke-virtual {v1, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->addInterfaces(Ljava/util/Set;[Ljava/lang/Class;)V

    .line 168
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_0

    .line 170
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 172
    :try_start_0
    invoke-direct {p0, v0}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->assureCanReadMockito(Ljava/util/Set;)V

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->instrumentation:Ljava/lang/instrument/Instrumentation;

    .line 173
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Class;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Class;

    invoke-interface {v1, v2}, Ljava/lang/instrument/Instrumentation;->retransformClasses([Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->lastException:Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->lastException:Ljava/lang/Throwable;

    goto :goto_2

    .line 176
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Byte Buddy could not instrument all classes within the mock\'s type hierarchy"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, ""

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "This problem should never occur for javac-compiled classes. This problem has been observed for classes that are:"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, " - Compiled by older versions of scalac"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string v4, " - Classes that are part of the Android distribution"

    const/4 v5, 0x4

    aput-object v4, v3, v5

    invoke-static {v3}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 183
    :try_start_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    iget-object v4, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->mocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    .line 184
    invoke-virtual {v4, v3}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_3
    new-instance v2, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not modify all classes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->lastException:Ljava/lang/Throwable;

    .line 188
    throw v0

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public mockClass(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)Ljava/lang/Class;
    .locals 2
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

    .line 145
    iget-object v0, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->interfaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->serializableMode:Lorg/mockito/mock/SerializableMode;

    sget-object v1, Lorg/mockito/mock/SerializableMode;->NONE:Lorg/mockito/mock/SerializableMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    .line 147
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 149
    :goto_1
    invoke-direct {p0, v0, p1}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->checkSupportedCombination(ZLorg/mockito/internal/creation/bytebuddy/MockFeatures;)V

    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    invoke-direct {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->triggerRetransformation(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)V

    .line 153
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->subclassEngine:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    .line 156
    invoke-interface {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;->mockClass(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_2

    .line 157
    :cond_2
    iget-object p1, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    :goto_2
    return-object p1

    :catchall_0
    move-exception p1

    .line 153
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            "[B)[B"
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    iget-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->mocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    .line 244
    invoke-virtual {p2, p3}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->EXCLUDES:Ljava/util/Set;

    .line 245
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    .line 249
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p5}, Lnet/bytebuddy/dynamic/ClassFileLocator$Simple;->of(Ljava/lang/String;[B)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lnet/bytebuddy/ByteBuddy;->redefine(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p2

    new-instance p4, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper;

    invoke-direct {p4, p3, p1}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper;-><init>(Ljava/lang/Class;Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$1;)V

    .line 251
    invoke-interface {p2, p4}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->visit(Lnet/bytebuddy/asm/AsmVisitorWrapper;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p2

    iget-object p3, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->mockTransformer:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    .line 252
    invoke-interface {p2, p3}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->visit(Lnet/bytebuddy/asm/AsmVisitorWrapper;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p2

    .line 253
    invoke-interface {p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object p2

    .line 254
    invoke-interface {p2}, Lnet/bytebuddy/dynamic/DynamicType$Unloaded;->getBytes()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p2

    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->lastException:Ljava/lang/Throwable;

    :cond_1
    :goto_0
    return-object p1
.end method
