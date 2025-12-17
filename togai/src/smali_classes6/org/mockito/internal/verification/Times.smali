.class public Lorg/mockito/internal/verification/Times;
.super Ljava/lang/Object;
.source "Times.java"

# interfaces
.implements Lorg/mockito/internal/verification/api/VerificationInOrderMode;
.implements Lorg/mockito/verification/VerificationMode;


# instance fields
.field final wantedCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    iput p1, p0, Lorg/mockito/internal/verification/Times;->wantedCount:I

    return-void

    .line 26
    :cond_0
    new-instance p1, Lorg/mockito/exceptions/base/MockitoException;

    const-string v0, "Negative value is not allowed here"

    invoke-direct {p1, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public description(Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lorg/mockito/internal/verification/VerificationModeFactory;->description(Lorg/mockito/verification/VerificationMode;Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wanted invocations count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/mockito/internal/verification/Times;->wantedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    .locals 3

    .line 33
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationData;->getAllInvocations()Ljava/util/List;

    move-result-object v0

    .line 34
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationData;->getTarget()Lorg/mockito/invocation/MatchableInvocation;

    move-result-object v1

    iget v2, p0, Lorg/mockito/internal/verification/Times;->wantedCount:I

    if-lez v2, :cond_0

    .line 37
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationData;->getAllInvocations()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationData;->getTarget()Lorg/mockito/invocation/MatchableInvocation;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/mockito/internal/verification/checkers/MissingInvocationChecker;->checkMissingInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)V

    :cond_0
    iget p1, p0, Lorg/mockito/internal/verification/Times;->wantedCount:I

    .line 39
    invoke-static {v0, v1, p1}, Lorg/mockito/internal/verification/checkers/NumberOfInvocationsChecker;->checkNumberOfInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;I)V

    return-void
.end method

.method public verifyInOrder(Lorg/mockito/internal/verification/api/VerificationDataInOrder;)V
    .locals 3

    .line 43
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationDataInOrder;->getAllInvocations()Ljava/util/List;

    move-result-object v0

    .line 44
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationDataInOrder;->getWanted()Lorg/mockito/invocation/MatchableInvocation;

    move-result-object v1

    iget v2, p0, Lorg/mockito/internal/verification/Times;->wantedCount:I

    if-lez v2, :cond_0

    .line 47
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationDataInOrder;->getOrderingContext()Lorg/mockito/internal/verification/api/InOrderContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mockito/internal/verification/checkers/MissingInvocationChecker;->checkMissingInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)V

    :cond_0
    iget v2, p0, Lorg/mockito/internal/verification/Times;->wantedCount:I

    .line 49
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationDataInOrder;->getOrderingContext()Lorg/mockito/internal/verification/api/InOrderContext;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lorg/mockito/internal/verification/checkers/NumberOfInvocationsChecker;->checkNumberOfInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;ILorg/mockito/internal/verification/api/InOrderContext;)V

    return-void
.end method
