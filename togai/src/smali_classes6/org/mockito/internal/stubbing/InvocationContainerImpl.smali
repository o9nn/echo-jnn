.class public Lorg/mockito/internal/stubbing/InvocationContainerImpl;
.super Ljava/lang/Object;
.source "InvocationContainerImpl.java"

# interfaces
.implements Lorg/mockito/invocation/InvocationContainer;
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = -0x4a073f5f6e5aeb99L


# instance fields
.field private final doAnswerStyleStubbing:Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;

.field private invocationForStubbing:Lorg/mockito/invocation/MatchableInvocation;

.field private final mockStrictness:Lorg/mockito/quality/Strictness;

.field private final registeredInvocations:Lorg/mockito/internal/verification/RegisteredInvocations;

.field private final stubbed:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/mockito/mock/MockCreationSettings;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    .line 40
    invoke-direct {p0, p1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->createRegisteredInvocations(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/internal/verification/RegisteredInvocations;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->registeredInvocations:Lorg/mockito/internal/verification/RegisteredInvocations;

    .line 41
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->isLenient()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/mockito/quality/Strictness;->LENIENT:Lorg/mockito/quality/Strictness;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->mockStrictness:Lorg/mockito/quality/Strictness;

    .line 42
    new-instance p1, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;

    invoke-direct {p1}, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->doAnswerStyleStubbing:Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;

    return-void
.end method

.method private createRegisteredInvocations(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/internal/verification/RegisteredInvocations;
    .locals 0

    .line 165
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->isStubOnly()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 166
    new-instance p1, Lorg/mockito/internal/verification/SingleRegisteredInvocation;

    invoke-direct {p1}, Lorg/mockito/internal/verification/SingleRegisteredInvocation;-><init>()V

    goto :goto_0

    .line 167
    :cond_0
    new-instance p1, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;

    invoke-direct {p1}, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;-><init>()V

    :goto_0
    check-cast p1, Lorg/mockito/internal/verification/RegisteredInvocations;

    return-object p1
.end method


# virtual methods
.method public addAnswer(Lorg/mockito/stubbing/Answer;ZLorg/mockito/quality/Strictness;)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;
    .locals 3

    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invocationForStubbing:Lorg/mockito/invocation/MatchableInvocation;

    .line 67
    invoke-interface {v0}, Lorg/mockito/invocation/MatchableInvocation;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v0

    .line 68
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v1

    invoke-interface {v1}, Lorg/mockito/internal/progress/MockingProgress;->stubbingCompleted()V

    .line 69
    instance-of v1, p1, Lorg/mockito/stubbing/ValidableAnswer;

    if-eqz v1, :cond_0

    .line 70
    move-object v1, p1

    check-cast v1, Lorg/mockito/stubbing/ValidableAnswer;

    invoke-interface {v1, v0}, Lorg/mockito/stubbing/ValidableAnswer;->validateFor(Lorg/mockito/invocation/InvocationOnMock;)V

    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    .line 73
    monitor-enter v0

    if-eqz p2, :cond_1

    :try_start_0
    iget-object p2, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    .line 75
    invoke-virtual {p2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    invoke-virtual {p2, p1}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->addAnswer(Lorg/mockito/stubbing/Answer;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->mockStrictness:Lorg/mockito/quality/Strictness;

    :goto_0
    iget-object p2, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    .line 78
    new-instance v1, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    iget-object v2, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invocationForStubbing:Lorg/mockito/invocation/MatchableInvocation;

    invoke-direct {v1, p1, v2, p3}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;-><init>(Lorg/mockito/stubbing/Answer;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/quality/Strictness;)V

    invoke-virtual {p2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :goto_1
    iget-object p1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    .line 80
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    monitor-exit v0

    return-object p1

    .line 81
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addAnswer(Lorg/mockito/stubbing/Answer;Lorg/mockito/quality/Strictness;)V
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->registeredInvocations:Lorg/mockito/internal/verification/RegisteredInvocations;

    .line 55
    invoke-interface {v0}, Lorg/mockito/internal/verification/RegisteredInvocations;->removeLast()V

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, p1, v0, p2}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->addAnswer(Lorg/mockito/stubbing/Answer;ZLorg/mockito/quality/Strictness;)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    return-void
.end method

.method public addConsecutiveAnswer(Lorg/mockito/stubbing/Answer;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, p1, v0, v1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->addAnswer(Lorg/mockito/stubbing/Answer;ZLorg/mockito/quality/Strictness;)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    return-void
.end method

.method answerTo(Lorg/mockito/invocation/Invocation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->findAnswerFor(Lorg/mockito/invocation/Invocation;)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public clearInvocations()V
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->registeredInvocations:Lorg/mockito/internal/verification/RegisteredInvocations;

    .line 137
    invoke-interface {v0}, Lorg/mockito/internal/verification/RegisteredInvocations;->clear()V

    return-void
.end method

.method public findAnswerFor(Lorg/mockito/invocation/Invocation;)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;
    .locals 4

    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    .line 89
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    .line 90
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    .line 91
    invoke-virtual {v2, p1}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->matches(Lorg/mockito/invocation/Invocation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    invoke-virtual {v2, p1}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->markStubUsed(Lorg/mockito/invocation/DescribedInvocation;)V

    .line 94
    new-instance v1, Lorg/mockito/internal/invocation/StubInfoImpl;

    invoke-direct {v1, v2}, Lorg/mockito/internal/invocation/StubInfoImpl;-><init>(Lorg/mockito/invocation/DescribedInvocation;)V

    invoke-interface {p1, v1}, Lorg/mockito/invocation/Invocation;->markStubbed(Lorg/mockito/invocation/StubInfo;)V

    .line 95
    monitor-exit v0

    return-object v2

    .line 98
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getInvocationForStubbing()Lorg/mockito/invocation/MatchableInvocation;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invocationForStubbing:Lorg/mockito/invocation/MatchableInvocation;

    return-object v0
.end method

.method public getInvocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->registeredInvocations:Lorg/mockito/internal/verification/RegisteredInvocations;

    .line 133
    invoke-interface {v0}, Lorg/mockito/internal/verification/RegisteredInvocations;->getAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStubbingsAscending()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/mockito/stubbing/Stubbing;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 152
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v0
.end method

.method public getStubbingsDescending()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/stubbing/Stubbing;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    return-object v0
.end method

.method public hasAnswersForStubbing()Z
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->doAnswerStyleStubbing:Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;

    .line 111
    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->isSet()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasInvocationForPotentialStubbing()Z
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->registeredInvocations:Lorg/mockito/internal/verification/RegisteredInvocations;

    .line 115
    invoke-interface {v0}, Lorg/mockito/internal/verification/RegisteredInvocations;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public invokedMock()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invocationForStubbing:Lorg/mockito/invocation/MatchableInvocation;

    .line 157
    invoke-interface {v0}, Lorg/mockito/invocation/MatchableInvocation;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public resetInvocationForPotentialStubbing(Lorg/mockito/invocation/MatchableInvocation;)V
    .locals 0

    iput-object p1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invocationForStubbing:Lorg/mockito/invocation/MatchableInvocation;

    return-void
.end method

.method public setAnswersForStubbing(Ljava/util/List;Lorg/mockito/quality/Strictness;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/stubbing/Answer<",
            "*>;>;",
            "Lorg/mockito/quality/Strictness;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->doAnswerStyleStubbing:Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;

    .line 107
    invoke-virtual {v0, p1, p2}, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->setAnswers(Ljava/util/List;Lorg/mockito/quality/Strictness;)V

    return-void
.end method

.method public setInvocationForPotentialStubbing(Lorg/mockito/invocation/MatchableInvocation;)V
    .locals 2

    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->registeredInvocations:Lorg/mockito/internal/verification/RegisteredInvocations;

    .line 46
    invoke-interface {p1}, Lorg/mockito/invocation/MatchableInvocation;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mockito/internal/verification/RegisteredInvocations;->add(Lorg/mockito/invocation/Invocation;)V

    iput-object p1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invocationForStubbing:Lorg/mockito/invocation/MatchableInvocation;

    return-void
.end method

.method public setMethodForStubbing(Lorg/mockito/invocation/MatchableInvocation;)V
    .locals 4

    iput-object p1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invocationForStubbing:Lorg/mockito/invocation/MatchableInvocation;

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->doAnswerStyleStubbing:Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;

    .line 121
    invoke-virtual {v1}, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->getAnswers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->doAnswerStyleStubbing:Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;

    .line 122
    invoke-virtual {v1}, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->getAnswers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/stubbing/Answer;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, p1

    :goto_1
    iget-object v3, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->doAnswerStyleStubbing:Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;

    invoke-virtual {v3}, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->getStubbingStrictness()Lorg/mockito/quality/Strictness;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->addAnswer(Lorg/mockito/stubbing/Answer;ZLorg/mockito/quality/Strictness;)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->doAnswerStyleStubbing:Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;

    .line 124
    invoke-virtual {p1}, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->clear()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invocationForStubbing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invocationForStubbing:Lorg/mockito/invocation/MatchableInvocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
