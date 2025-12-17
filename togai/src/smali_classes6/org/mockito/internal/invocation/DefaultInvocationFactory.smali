.class public Lorg/mockito/internal/invocation/DefaultInvocationFactory;
.super Ljava/lang/Object;
.source "DefaultInvocationFactory.java"

# interfaces
.implements Lorg/mockito/invocation/InvocationFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createInvocation(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/invocation/RealMethod;Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/internal/invocation/InterceptedInvocation;
    .locals 6

    .line 48
    new-instance v5, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v5}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/mockito/internal/invocation/DefaultInvocationFactory;->createInvocation(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/invocation/RealMethod;Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/Location;)Lorg/mockito/internal/invocation/InterceptedInvocation;

    move-result-object p0

    return-object p0
.end method

.method public static createInvocation(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/invocation/RealMethod;Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/Location;)Lorg/mockito/internal/invocation/InterceptedInvocation;
    .locals 8

    .line 36
    new-instance v7, Lorg/mockito/internal/invocation/InterceptedInvocation;

    new-instance v1, Lorg/mockito/internal/invocation/mockref/MockWeakReference;

    invoke-direct {v1, p0}, Lorg/mockito/internal/invocation/mockref/MockWeakReference;-><init>(Ljava/lang/Object;)V

    .line 38
    invoke-static {p1, p4}, Lorg/mockito/internal/invocation/DefaultInvocationFactory;->createMockitoMethod(Ljava/lang/reflect/Method;Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/internal/invocation/MockitoMethod;

    move-result-object v2

    .line 42
    invoke-static {}, Lorg/mockito/internal/progress/SequenceNumber;->next()I

    move-result v6

    move-object v0, v7

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/mockito/internal/invocation/InterceptedInvocation;-><init>(Lorg/mockito/internal/invocation/mockref/MockReference;Lorg/mockito/internal/invocation/MockitoMethod;[Ljava/lang/Object;Lorg/mockito/internal/invocation/RealMethod;Lorg/mockito/invocation/Location;I)V

    return-object v7
.end method

.method private createInvocation(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;Ljava/lang/reflect/Method;Lorg/mockito/internal/invocation/RealMethod;[Ljava/lang/Object;)Lorg/mockito/invocation/Invocation;
    .locals 0

    .line 32
    invoke-static {p1, p3, p5, p4, p2}, Lorg/mockito/internal/invocation/DefaultInvocationFactory;->createInvocation(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/invocation/RealMethod;Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/internal/invocation/InterceptedInvocation;

    move-result-object p1

    return-object p1
.end method

.method private static createMockitoMethod(Ljava/lang/reflect/Method;Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/internal/invocation/MockitoMethod;
    .locals 0

    .line 52
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->isSerializable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    new-instance p1, Lorg/mockito/internal/invocation/SerializableMethod;

    invoke-direct {p1, p0}, Lorg/mockito/internal/invocation/SerializableMethod;-><init>(Ljava/lang/reflect/Method;)V

    return-object p1

    .line 55
    :cond_0
    new-instance p1, Lorg/mockito/internal/creation/DelegatingMethod;

    invoke-direct {p1, p0}, Lorg/mockito/internal/creation/DelegatingMethod;-><init>(Ljava/lang/reflect/Method;)V

    return-object p1
.end method


# virtual methods
.method public varargs createInvocation(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;Ljava/lang/reflect/Method;Ljava/util/concurrent/Callable;[Ljava/lang/Object;)Lorg/mockito/invocation/Invocation;
    .locals 6

    .line 22
    new-instance v4, Lorg/mockito/internal/invocation/RealMethod$FromCallable;

    invoke-direct {v4, p4}, Lorg/mockito/internal/invocation/RealMethod$FromCallable;-><init>(Ljava/util/concurrent/Callable;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 23
    invoke-direct/range {v0 .. v5}, Lorg/mockito/internal/invocation/DefaultInvocationFactory;->createInvocation(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;Ljava/lang/reflect/Method;Lorg/mockito/internal/invocation/RealMethod;[Ljava/lang/Object;)Lorg/mockito/invocation/Invocation;

    move-result-object p1

    return-object p1
.end method

.method public varargs createInvocation(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;Ljava/lang/reflect/Method;Lorg/mockito/invocation/InvocationFactory$RealMethodBehavior;[Ljava/lang/Object;)Lorg/mockito/invocation/Invocation;
    .locals 6

    .line 27
    new-instance v4, Lorg/mockito/internal/invocation/RealMethod$FromBehavior;

    invoke-direct {v4, p4}, Lorg/mockito/internal/invocation/RealMethod$FromBehavior;-><init>(Lorg/mockito/invocation/InvocationFactory$RealMethodBehavior;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 28
    invoke-direct/range {v0 .. v5}, Lorg/mockito/internal/invocation/DefaultInvocationFactory;->createInvocation(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;Ljava/lang/reflect/Method;Lorg/mockito/internal/invocation/RealMethod;[Ljava/lang/Object;)Lorg/mockito/invocation/Invocation;

    move-result-object p1

    return-object p1
.end method
