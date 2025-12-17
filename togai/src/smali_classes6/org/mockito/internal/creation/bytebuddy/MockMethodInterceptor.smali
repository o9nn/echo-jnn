.class public Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;
.super Ljava/lang/Object;
.source "MockMethodInterceptor.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$DispatcherDefaultingToRealMethod;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$ForWriteReplace;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$ForEquals;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$ForHashCode;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x63445fa12f3038a3L


# instance fields
.field final handler:Lorg/mockito/invocation/MockHandler;

.field private final mockCreationSettings:Lorg/mockito/mock/MockCreationSettings;

.field private final serializationSupport:Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;


# direct methods
.method public constructor <init>(Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->handler:Lorg/mockito/invocation/MockHandler;

    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->mockCreationSettings:Lorg/mockito/mock/MockCreationSettings;

    .line 42
    new-instance p1, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;

    invoke-direct {p1}, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->serializationSupport:Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;

    return-void
.end method


# virtual methods
.method doIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/invocation/RealMethod;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 49
    new-instance v5, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v5}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->doIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/invocation/RealMethod;Lorg/mockito/invocation/Location;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method doIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/invocation/RealMethod;Lorg/mockito/invocation/Location;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->handler:Lorg/mockito/invocation/MockHandler;

    iget-object v5, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->mockCreationSettings:Lorg/mockito/mock/MockCreationSettings;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 61
    invoke-static/range {v1 .. v6}, Lorg/mockito/internal/invocation/DefaultInvocationFactory;->createInvocation(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/invocation/RealMethod;Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/Location;)Lorg/mockito/internal/invocation/InterceptedInvocation;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/mockito/invocation/MockHandler;->handle(Lorg/mockito/invocation/Invocation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMockHandler()Lorg/mockito/invocation/MockHandler;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->handler:Lorg/mockito/invocation/MockHandler;

    return-object v0
.end method

.method public getSerializationSupport()Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->serializationSupport:Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;

    return-object v0
.end method
