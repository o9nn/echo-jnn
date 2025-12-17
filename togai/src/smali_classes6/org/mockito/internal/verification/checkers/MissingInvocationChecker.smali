.class public Lorg/mockito/internal/verification/checkers/MissingInvocationChecker;
.super Ljava/lang/Object;
.source "MissingInvocationChecker.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMissingInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Lorg/mockito/invocation/MatchableInvocation;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-static {p0, p1}, Lorg/mockito/internal/invocation/InvocationsFinder;->findInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)Ljava/util/List;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-static {p0, p1}, Lorg/mockito/internal/invocation/InvocationsFinder;->findSimilarInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)Lorg/mockito/invocation/Invocation;

    move-result-object v0

    if-nez v0, :cond_1

    .line 40
    invoke-static {p1, p0}, Lorg/mockito/internal/exceptions/Reporter;->wantedButNotInvoked(Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object p0

    throw p0

    .line 43
    :cond_1
    invoke-interface {p1}, Lorg/mockito/invocation/MatchableInvocation;->getMatchers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;->getSuspiciouslyNotMatchingArgsIndexes(Ljava/util/List;[Ljava/lang/Object;)[Ljava/lang/Integer;

    move-result-object v0

    .line 44
    new-instance v1, Lorg/mockito/internal/reporting/SmartPrinter;

    invoke-direct {v1, p1, p0, v0}, Lorg/mockito/internal/reporting/SmartPrinter;-><init>(Lorg/mockito/invocation/MatchableInvocation;Ljava/util/List;[Ljava/lang/Integer;)V

    .line 45
    new-instance p1, Lorg/mockito/internal/verification/checkers/MissingInvocationChecker$1;

    invoke-direct {p1}, Lorg/mockito/internal/verification/checkers/MissingInvocationChecker$1;-><init>()V

    invoke-static {p0, p1}, Lorg/mockito/internal/util/collections/ListUtil;->convert(Ljava/util/Collection;Lorg/mockito/internal/util/collections/ListUtil$Converter;)Ljava/util/LinkedList;

    move-result-object p0

    .line 52
    invoke-virtual {v1}, Lorg/mockito/internal/reporting/SmartPrinter;->getWanted()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/mockito/internal/reporting/SmartPrinter;->getActuals()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lorg/mockito/internal/exceptions/Reporter;->argumentsAreDifferent(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method

.method public static checkMissingInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Lorg/mockito/invocation/MatchableInvocation;",
            "Lorg/mockito/internal/verification/api/InOrderContext;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-static {p0, p1, p2}, Lorg/mockito/internal/invocation/InvocationsFinder;->findAllMatchingUnverifiedChunks(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)Ljava/util/List;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-static {p0, p2}, Lorg/mockito/internal/invocation/InvocationsFinder;->findPreviousVerifiedInOrder(Ljava/util/List;Lorg/mockito/internal/verification/api/InOrderContext;)Lorg/mockito/invocation/Invocation;

    move-result-object p2

    if-nez p2, :cond_1

    .line 68
    invoke-static {p0, p1}, Lorg/mockito/internal/verification/checkers/MissingInvocationChecker;->checkMissingInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)V

    return-void

    .line 65
    :cond_1
    invoke-static {p1, p2}, Lorg/mockito/internal/exceptions/Reporter;->wantedButNotInvokedInOrder(Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/DescribedInvocation;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object p0

    throw p0
.end method
