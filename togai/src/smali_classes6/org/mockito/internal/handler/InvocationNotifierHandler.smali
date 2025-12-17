.class Lorg/mockito/internal/handler/InvocationNotifierHandler;
.super Ljava/lang/Object;
.source "InvocationNotifierHandler.java"

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
.field private final invocationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mockito/listeners/InvocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mockHandler:Lorg/mockito/invocation/MockHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/invocation/MockHandler<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/MockHandler<",
            "TT;>;",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/handler/InvocationNotifierHandler;->mockHandler:Lorg/mockito/invocation/MockHandler;

    .line 30
    invoke-interface {p2}, Lorg/mockito/mock/MockCreationSettings;->getInvocationListeners()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/handler/InvocationNotifierHandler;->invocationListeners:Ljava/util/List;

    return-void
.end method

.method private notifyMethodCall(Lorg/mockito/invocation/Invocation;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/mockito/internal/handler/InvocationNotifierHandler;->invocationListeners:Ljava/util/List;

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/listeners/InvocationListener;

    .line 48
    :try_start_0
    new-instance v2, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;

    invoke-direct {v2, p1, p2}, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;-><init>(Lorg/mockito/invocation/Invocation;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/mockito/listeners/InvocationListener;->reportInvocation(Lorg/mockito/listeners/MethodInvocationReport;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 50
    invoke-static {v1, p1}, Lorg/mockito/internal/exceptions/Reporter;->invocationListenerThrewException(Lorg/mockito/listeners/InvocationListener;Ljava/lang/Throwable;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    :cond_0
    return-void
.end method

.method private notifyMethodCallException(Lorg/mockito/invocation/Invocation;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lorg/mockito/internal/handler/InvocationNotifierHandler;->invocationListeners:Ljava/util/List;

    .line 56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/listeners/InvocationListener;

    .line 58
    :try_start_0
    new-instance v2, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;

    invoke-direct {v2, p1, p2}, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;-><init>(Lorg/mockito/invocation/Invocation;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lorg/mockito/listeners/InvocationListener;->reportInvocation(Lorg/mockito/listeners/MethodInvocationReport;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 60
    invoke-static {v1, p1}, Lorg/mockito/internal/exceptions/Reporter;->invocationListenerThrewException(Lorg/mockito/listeners/InvocationListener;Ljava/lang/Throwable;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    :cond_0
    return-void
.end method


# virtual methods
.method public getInvocationContainer()Lorg/mockito/invocation/InvocationContainer;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/handler/InvocationNotifierHandler;->mockHandler:Lorg/mockito/invocation/MockHandler;

    .line 70
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

    iget-object v0, p0, Lorg/mockito/internal/handler/InvocationNotifierHandler;->mockHandler:Lorg/mockito/invocation/MockHandler;

    .line 66
    invoke-interface {v0}, Lorg/mockito/invocation/MockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v0

    return-object v0
.end method

.method public handle(Lorg/mockito/invocation/Invocation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/handler/InvocationNotifierHandler;->mockHandler:Lorg/mockito/invocation/MockHandler;

    .line 35
    invoke-interface {v0, p1}, Lorg/mockito/invocation/MockHandler;->handle(Lorg/mockito/invocation/Invocation;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/handler/InvocationNotifierHandler;->notifyMethodCall(Lorg/mockito/invocation/Invocation;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 39
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/handler/InvocationNotifierHandler;->notifyMethodCallException(Lorg/mockito/invocation/Invocation;Ljava/lang/Throwable;)V

    .line 40
    throw v0
.end method
