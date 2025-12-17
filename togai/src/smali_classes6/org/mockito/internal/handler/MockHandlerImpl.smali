.class public Lorg/mockito/internal/handler/MockHandlerImpl;
.super Ljava/lang/Object;
.source "MockHandlerImpl.java"

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


# static fields
.field private static final serialVersionUID:J = -0x287e5c478e4e1055L


# instance fields
.field invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

.field matchersBinder:Lorg/mockito/internal/invocation/MatchersBinder;

.field private final mockSettings:Lorg/mockito/mock/MockCreationSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/mock/MockCreationSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/mockito/internal/invocation/MatchersBinder;

    invoke-direct {v0}, Lorg/mockito/internal/invocation/MatchersBinder;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->matchersBinder:Lorg/mockito/internal/invocation/MatchersBinder;

    iput-object p1, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->mockSettings:Lorg/mockito/mock/MockCreationSettings;

    .line 43
    new-instance v0, Lorg/mockito/internal/invocation/MatchersBinder;

    invoke-direct {v0}, Lorg/mockito/internal/invocation/MatchersBinder;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->matchersBinder:Lorg/mockito/internal/invocation/MatchersBinder;

    .line 44
    new-instance v0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-direct {v0, p1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;-><init>(Lorg/mockito/mock/MockCreationSettings;)V

    iput-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    return-void
.end method


# virtual methods
.method public getInvocationContainer()Lorg/mockito/invocation/InvocationContainer;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

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

    iget-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->mockSettings:Lorg/mockito/mock/MockCreationSettings;

    return-object v0
.end method

.method public handle(Lorg/mockito/invocation/Invocation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    .line 48
    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->hasAnswersForStubbing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->matchersBinder:Lorg/mockito/internal/invocation/MatchersBinder;

    .line 51
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v2

    invoke-interface {v2}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v2

    .line 50
    invoke-virtual {v0, v2, p1}, Lorg/mockito/internal/invocation/MatchersBinder;->bindMatchers(Lorg/mockito/internal/progress/ArgumentMatcherStorage;Lorg/mockito/invocation/Invocation;)Lorg/mockito/internal/invocation/InvocationMatcher;

    move-result-object p1

    iget-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    .line 54
    invoke-virtual {v0, p1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->setMethodForStubbing(Lorg/mockito/invocation/MatchableInvocation;)V

    return-object v1

    .line 57
    :cond_0
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->pullVerificationMode()Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    iget-object v2, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->matchersBinder:Lorg/mockito/internal/invocation/MatchersBinder;

    .line 60
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v3

    invoke-interface {v3}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v3

    .line 59
    invoke-virtual {v2, v3, p1}, Lorg/mockito/internal/invocation/MatchersBinder;->bindMatchers(Lorg/mockito/internal/progress/ArgumentMatcherStorage;Lorg/mockito/invocation/Invocation;)Lorg/mockito/internal/invocation/InvocationMatcher;

    move-result-object v2

    .line 64
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v3

    invoke-interface {v3}, Lorg/mockito/internal/progress/MockingProgress;->validateState()V

    if-eqz v0, :cond_2

    .line 70
    move-object v3, v0

    check-cast v3, Lorg/mockito/internal/verification/MockAwareVerificationMode;

    invoke-virtual {v3}, Lorg/mockito/internal/verification/MockAwareVerificationMode;->getMock()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 71
    new-instance p1, Lorg/mockito/internal/verification/VerificationDataImpl;

    iget-object v3, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-direct {p1, v3, v2}, Lorg/mockito/internal/verification/VerificationDataImpl;-><init>(Lorg/mockito/internal/stubbing/InvocationContainerImpl;Lorg/mockito/internal/invocation/InvocationMatcher;)V

    .line 72
    invoke-interface {v0, p1}, Lorg/mockito/verification/VerificationMode;->verify(Lorg/mockito/internal/verification/api/VerificationData;)V

    return-object v1

    .line 77
    :cond_1
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/mockito/internal/progress/MockingProgress;->verificationStarted(Lorg/mockito/verification/VerificationMode;)V

    :cond_2
    iget-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    .line 82
    invoke-virtual {v0, v2}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->setInvocationForPotentialStubbing(Lorg/mockito/invocation/MatchableInvocation;)V

    .line 83
    new-instance v0, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;

    iget-object v1, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-direct {v0, v1}, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;-><init>(Lorg/mockito/internal/stubbing/InvocationContainerImpl;)V

    .line 84
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/mockito/internal/progress/MockingProgress;->reportOngoingStubbing(Lorg/mockito/stubbing/OngoingStubbing;)V

    iget-object v1, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    .line 87
    invoke-virtual {v1, p1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->findAnswerFor(Lorg/mockito/invocation/Invocation;)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    move-result-object v1

    iget-object v3, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    .line 89
    invoke-virtual {v3}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->getStubbingsAscending()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->mockSettings:Lorg/mockito/mock/MockCreationSettings;

    check-cast v4, Lorg/mockito/internal/creation/settings/CreationSettings;

    invoke-static {p1, v1, v3, v4}, Lorg/mockito/internal/listeners/StubbingLookupNotifier;->notifyStubbedAnswerLookup(Lorg/mockito/invocation/Invocation;Lorg/mockito/stubbing/Stubbing;Ljava/util/Collection;Lorg/mockito/internal/creation/settings/CreationSettings;)V

    if-eqz v1, :cond_3

    .line 93
    invoke-virtual {v1, p1}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->captureArgumentsFrom(Lorg/mockito/invocation/Invocation;)V

    .line 96
    :try_start_0
    invoke-virtual {v1, p1}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/mockito/internal/progress/MockingProgress;->reportOngoingStubbing(Lorg/mockito/stubbing/OngoingStubbing;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/mockito/internal/progress/MockingProgress;->reportOngoingStubbing(Lorg/mockito/stubbing/OngoingStubbing;)V

    throw p1

    :cond_3
    iget-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->mockSettings:Lorg/mockito/mock/MockCreationSettings;

    .line 103
    invoke-interface {v0}, Lorg/mockito/mock/MockCreationSettings;->getDefaultAnswer()Lorg/mockito/stubbing/Answer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/stubbing/Answer;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    invoke-static {p1, v0}, Lorg/mockito/internal/stubbing/answers/DefaultAnswerValidator;->validateReturnValueFor(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    .line 111
    invoke-virtual {p1, v2}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->resetInvocationForPotentialStubbing(Lorg/mockito/invocation/MatchableInvocation;)V

    return-object v0
.end method
