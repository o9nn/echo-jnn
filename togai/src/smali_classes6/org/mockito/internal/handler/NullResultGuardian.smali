.class Lorg/mockito/internal/handler/NullResultGuardian;
.super Ljava/lang/Object;
.source "NullResultGuardian.java"

# interfaces
.implements Lorg/mockito/invocation/MockHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/invocation/MockHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lorg/mockito/invocation/MockHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/invocation/MockHandler<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/invocation/MockHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/MockHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/handler/NullResultGuardian;->delegate:Lorg/mockito/invocation/MockHandler;

    return-void
.end method


# virtual methods
.method public getInvocationContainer()Lorg/mockito/invocation/InvocationContainer;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/handler/NullResultGuardian;->delegate:Lorg/mockito/invocation/MockHandler;

    .line 45
    invoke-interface {v0}, Lorg/mockito/invocation/MockHandler;->getInvocationContainer()Lorg/mockito/invocation/InvocationContainer;

    move-result-object v0

    return-object v0
.end method

.method public getMockSettings()Lorg/mockito/mock/MockCreationSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/handler/NullResultGuardian;->delegate:Lorg/mockito/invocation/MockHandler;

    .line 40
    invoke-interface {v0}, Lorg/mockito/invocation/MockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v0

    return-object v0
.end method

.method public handle(Lorg/mockito/invocation/Invocation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/handler/NullResultGuardian;->delegate:Lorg/mockito/invocation/MockHandler;

    .line 29
    invoke-interface {v0, p1}, Lorg/mockito/invocation/MockHandler;->handle(Lorg/mockito/invocation/Invocation;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-static {p1}, Lorg/mockito/internal/util/Primitives;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method
