.class public Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;
.super Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;
.source "MockMethodAdvice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForReadObject;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForEquals;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForHashCode;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$Identifier;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ReturnValueWrapper;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$RealMethodCall;
    }
.end annotation


# instance fields
.field private final compiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

.field private final graphs:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ref/SoftReference<",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph;",
            ">;>;"
        }
    .end annotation
.end field

.field private final identifier:Ljava/lang/String;

.field private final interceptors:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<",
            "Ljava/lang/Object;",
            "Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final selfCallInfo:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;


# direct methods
.method public constructor <init>(Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<",
            "Ljava/lang/Object;",
            "Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;-><init>()V

    .line 40
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;-><init>(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;)V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->selfCallInfo:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    .line 41
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default;->forJavaHierarchy()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->compiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    .line 42
    new-instance v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;

    invoke-direct {v0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->graphs:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->interceptors:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->identifier:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    invoke-static {p0, p1, p2}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->tryInvoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;)Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->selfCallInfo:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    return-object p0
.end method

.method static synthetic access$600(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;)Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->interceptors:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    return-object p0
.end method

.method private static enter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation runtime Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$Identifier;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/asm/Advice$This;
        .end annotation
    .end param
    .param p2    # Ljava/lang/reflect/Method;
        .annotation runtime Lnet/bytebuddy/asm/Advice$Origin;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/asm/Advice$AllArguments;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/asm/Advice$OnMethodEnter;
        skipOn = Lnet/bytebuddy/asm/Advice$OnNonDefaultValue;
    .end annotation

    .line 56
    invoke-static {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;->get(Ljava/lang/String;Ljava/lang/Object;)Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 57
    invoke-virtual {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;->isMocked(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;->isOverridden(Ljava/lang/Object;Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;->handle(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static exit(Ljava/lang/Object;Ljava/util/concurrent/Callable;)V
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/asm/Advice$Return;
            readOnly = false
            typing = .enum Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->DYNAMIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation runtime Lnet/bytebuddy/asm/Advice$Enter;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Callable<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/asm/Advice$OnMethodExit;
    .end annotation

    if-eqz p1, :cond_0

    .line 69
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static hideRecursiveCall(Ljava/lang/Throwable;ILjava/lang/Class;)Ljava/lang/Throwable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "I",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 75
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 79
    :cond_0
    array-length v3, v0

    sub-int/2addr v3, p1

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v3, v2

    aget-object v3, v0, v3

    .line 80
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    array-length p2, v0

    sub-int/2addr p2, p1

    sub-int/2addr p2, v2

    .line 82
    array-length v3, v0

    sub-int/2addr v3, v2

    new-array v3, v3, [Ljava/lang/StackTraceElement;

    .line 83
    invoke-static {v0, v1, v3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p2

    .line 84
    invoke-static {v0, v2, v3, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method private static tryInvoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 212
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 214
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 215
    new-instance p2, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;

    invoke-direct {p2}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;-><init>()V

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->hideRecursiveCall(Ljava/lang/Throwable;ILjava/lang/Class;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;->filter(Ljava/lang/Throwable;)V

    .line 216
    throw p1
.end method


# virtual methods
.method public handle(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->interceptors:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    .line 95
    invoke-virtual {v0, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    const/4 v7, 0x0

    if-nez v6, :cond_0

    return-object v7

    .line 100
    :cond_0
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    .line 101
    new-instance v8, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->identifier:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableRealMethodCall;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;)V

    goto :goto_0

    .line 103
    :cond_1
    new-instance v8, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$RealMethodCall;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->selfCallInfo:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$RealMethodCall;-><init>(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;)V

    :goto_0
    move-object v4, v8

    .line 105
    new-instance v8, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ReturnValueWrapper;

    new-instance v5, Lorg/mockito/internal/debugging/LocationImpl;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const/4 v1, 0x1

    invoke-direct {v5, v0, v1}, Lorg/mockito/internal/debugging/LocationImpl;-><init>(Ljava/lang/Throwable;Z)V

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->doIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/invocation/RealMethod;Lorg/mockito/invocation/Location;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v8, v0, v7}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ReturnValueWrapper;-><init>(Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;)V

    return-object v8
.end method

.method public isMock(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->interceptors:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    .line 116
    iget-object v0, v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->target:Ljava/util/concurrent/ConcurrentMap;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->interceptors:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isMocked(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->selfCallInfo:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    .line 121
    invoke-virtual {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;->checkSuperCall(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->isMock(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isOverridden(Ljava/lang/Object;Ljava/lang/reflect/Method;)Z
    .locals 3

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->graphs:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->compiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    .line 129
    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->compile(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->graphs:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_1
    new-instance p1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {p1, p2}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {p1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object p1

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph;->locate(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;

    move-result-object p1

    .line 133
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;->getSort()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->isResolved()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;->getRepresentative()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method
