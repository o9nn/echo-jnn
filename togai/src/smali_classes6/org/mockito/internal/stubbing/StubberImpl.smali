.class public Lorg/mockito/internal/stubbing/StubberImpl;
.super Ljava/lang/Object;
.source "StubberImpl.java"

# interfaces
.implements Lorg/mockito/stubbing/Stubber;


# instance fields
.field private final answers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mockito/stubbing/Answer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final strictness:Lorg/mockito/quality/Strictness;


# direct methods
.method public constructor <init>(Lorg/mockito/quality/Strictness;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    iput-object p1, p0, Lorg/mockito/internal/stubbing/StubberImpl;->strictness:Lorg/mockito/quality/Strictness;

    return-void
.end method

.method private varargs doReturnValues([Ljava/lang/Object;)Lorg/mockito/internal/stubbing/StubberImpl;
    .locals 5

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    .line 63
    new-instance v0, Lorg/mockito/internal/stubbing/answers/Returns;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mockito/internal/stubbing/answers/Returns;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 66
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    .line 67
    new-instance v4, Lorg/mockito/internal/stubbing/answers/Returns;

    invoke-direct {v4, v2}, Lorg/mockito/internal/stubbing/answers/Returns;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    .line 128
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public doCallRealMethod()Lorg/mockito/stubbing/Stubber;
    .locals 2

    iget-object v0, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    .line 134
    new-instance v1, Lorg/mockito/internal/stubbing/answers/CallsRealMethods;

    invoke-direct {v1}, Lorg/mockito/internal/stubbing/answers/CallsRealMethods;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public doNothing()Lorg/mockito/stubbing/Stubber;
    .locals 2

    iget-object v0, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    .line 122
    invoke-static {}, Lorg/mockito/internal/stubbing/answers/DoesNothing;->doesNothing()Lorg/mockito/internal/stubbing/answers/DoesNothing;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public doReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;
    .locals 0

    .line 53
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mockito/internal/stubbing/StubberImpl;->doReturnValues([Ljava/lang/Object;)Lorg/mockito/internal/stubbing/StubberImpl;

    move-result-object p1

    return-object p1
.end method

.method public varargs doReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;
    .locals 0

    .line 58
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mockito/internal/stubbing/StubberImpl;->doReturnValues([Ljava/lang/Object;)Lorg/mockito/internal/stubbing/StubberImpl;

    move-result-object p1

    invoke-direct {p1, p2}, Lorg/mockito/internal/stubbing/StubberImpl;->doReturnValues([Ljava/lang/Object;)Lorg/mockito/internal/stubbing/StubberImpl;

    move-result-object p1

    return-object p1
.end method

.method public doThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/mockito/stubbing/Stubber;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 92
    :try_start_0
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getInstantiatorProvider()Lorg/mockito/plugins/InstantiatorProvider2;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/mockito/plugins/InstantiatorProvider2;->getInstantiator(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/creation/instance/Instantiator;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/creation/instance/Instantiator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 98
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->reset()V

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Throwable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 101
    invoke-virtual {p0, v0}, Lorg/mockito/internal/stubbing/StubberImpl;->doThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/Stubber;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 98
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->reset()V

    throw p1

    .line 87
    :cond_1
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p1

    invoke-interface {p1}, Lorg/mockito/internal/progress/MockingProgress;->reset()V

    .line 88
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->notAnException()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method

.method public varargs doThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/mockito/stubbing/Stubber;"
        }
    .end annotation

    .line 106
    invoke-virtual {p0, p1}, Lorg/mockito/internal/stubbing/StubberImpl;->doThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 113
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 114
    invoke-interface {p1, v2}, Lorg/mockito/stubbing/Stubber;->doThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    .line 109
    :cond_1
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p1

    invoke-interface {p1}, Lorg/mockito/internal/progress/MockingProgress;->reset()V

    .line 110
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->notAnException()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method

.method public varargs doThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/Stubber;
    .locals 5

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    .line 75
    new-instance v0, Lorg/mockito/internal/stubbing/answers/ThrowsException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mockito/internal/stubbing/answers/ThrowsException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 78
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    .line 79
    new-instance v4, Lorg/mockito/internal/stubbing/answers/ThrowsException;

    invoke-direct {v4, v2}, Lorg/mockito/internal/stubbing/answers/ThrowsException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public when(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 42
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->isMock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->getInvocationContainer(Ljava/lang/Object;)Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    iget-object v2, p0, Lorg/mockito/internal/stubbing/StubberImpl;->strictness:Lorg/mockito/quality/Strictness;

    invoke-virtual {v0, v1, v2}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->setAnswersForStubbing(Ljava/util/List;Lorg/mockito/quality/Strictness;)V

    return-object p1

    .line 43
    :cond_0
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->notAMockPassedToWhenMethod()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    .line 39
    :cond_1
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->nullPassedToWhenMethod()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method
