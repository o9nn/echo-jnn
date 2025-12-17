.class public Lorg/mockito/internal/framework/DefaultMockitoSession;
.super Ljava/lang/Object;
.source "DefaultMockitoSession.java"

# interfaces
.implements Lorg/mockito/MockitoSession;


# instance fields
.field private final listener:Lorg/mockito/internal/junit/UniversalTestListener;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lorg/mockito/quality/Strictness;Lorg/mockito/plugins/MockitoLogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/mockito/quality/Strictness;",
            "Lorg/mockito/plugins/MockitoLogger;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mockito/internal/framework/DefaultMockitoSession;->name:Ljava/lang/String;

    .line 26
    new-instance p2, Lorg/mockito/internal/junit/UniversalTestListener;

    invoke-direct {p2, p3, p4}, Lorg/mockito/internal/junit/UniversalTestListener;-><init>(Lorg/mockito/quality/Strictness;Lorg/mockito/plugins/MockitoLogger;)V

    iput-object p2, p0, Lorg/mockito/internal/framework/DefaultMockitoSession;->listener:Lorg/mockito/internal/junit/UniversalTestListener;

    .line 29
    :try_start_0
    invoke-static {}, Lorg/mockito/Mockito;->framework()Lorg/mockito/MockitoFramework;

    move-result-object p3

    invoke-interface {p3, p2}, Lorg/mockito/MockitoFramework;->addListener(Lorg/mockito/listeners/MockitoListener;)Lorg/mockito/MockitoFramework;
    :try_end_0
    .catch Lorg/mockito/exceptions/misusing/RedundantListenerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 31
    :catch_0
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->unfinishedMockingSession()V

    .line 34
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 35
    invoke-static {p2}, Lorg/mockito/MockitoAnnotations;->initMocks(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_0
    return-void

    :catch_1
    move-exception p1

    iget-object p2, p0, Lorg/mockito/internal/framework/DefaultMockitoSession;->listener:Lorg/mockito/internal/junit/UniversalTestListener;

    .line 39
    invoke-virtual {p2}, Lorg/mockito/internal/junit/UniversalTestListener;->setListenerDirty()V

    .line 40
    throw p1
.end method

.method static synthetic access$000(Lorg/mockito/internal/framework/DefaultMockitoSession;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lorg/mockito/internal/framework/DefaultMockitoSession;->name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public finishMocking()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Lorg/mockito/internal/framework/DefaultMockitoSession;->finishMocking(Ljava/lang/Throwable;)V

    return-void
.end method

.method public finishMocking(Ljava/lang/Throwable;)V
    .locals 2

    .line 59
    invoke-static {}, Lorg/mockito/Mockito;->framework()Lorg/mockito/MockitoFramework;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/framework/DefaultMockitoSession;->listener:Lorg/mockito/internal/junit/UniversalTestListener;

    invoke-interface {v0, v1}, Lorg/mockito/MockitoFramework;->removeListener(Lorg/mockito/listeners/MockitoListener;)Lorg/mockito/MockitoFramework;

    iget-object v0, p0, Lorg/mockito/internal/framework/DefaultMockitoSession;->listener:Lorg/mockito/internal/junit/UniversalTestListener;

    .line 62
    new-instance v1, Lorg/mockito/internal/framework/DefaultMockitoSession$1;

    invoke-direct {v1, p0, p1}, Lorg/mockito/internal/framework/DefaultMockitoSession$1;-><init>(Lorg/mockito/internal/framework/DefaultMockitoSession;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/mockito/internal/junit/UniversalTestListener;->testFinished(Lorg/mockito/internal/junit/TestFinishedEvent;)V

    if-nez p1, :cond_0

    .line 76
    invoke-static {}, Lorg/mockito/Mockito;->validateMockitoUsage()V

    :cond_0
    return-void
.end method

.method public setStrictness(Lorg/mockito/quality/Strictness;)V
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/framework/DefaultMockitoSession;->listener:Lorg/mockito/internal/junit/UniversalTestListener;

    .line 46
    invoke-virtual {v0, p1}, Lorg/mockito/internal/junit/UniversalTestListener;->setStrictness(Lorg/mockito/quality/Strictness;)V

    return-void
.end method
