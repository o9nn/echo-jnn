.class public Lorg/mockito/internal/verification/VerificationDataImpl;
.super Ljava/lang/Object;
.source "VerificationDataImpl.java"

# interfaces
.implements Lorg/mockito/internal/verification/api/VerificationData;


# instance fields
.field private final invocations:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

.field private final wanted:Lorg/mockito/internal/invocation/InvocationMatcher;


# direct methods
.method public constructor <init>(Lorg/mockito/internal/stubbing/InvocationContainerImpl;Lorg/mockito/internal/invocation/InvocationMatcher;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/verification/VerificationDataImpl;->invocations:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    iput-object p2, p0, Lorg/mockito/internal/verification/VerificationDataImpl;->wanted:Lorg/mockito/internal/invocation/InvocationMatcher;

    .line 26
    invoke-direct {p0}, Lorg/mockito/internal/verification/VerificationDataImpl;->assertWantedIsVerifiable()V

    return-void
.end method

.method private assertWantedIsVerifiable()V
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/verification/VerificationDataImpl;->wanted:Lorg/mockito/internal/invocation/InvocationMatcher;

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {v0}, Lorg/mockito/internal/invocation/InvocationMatcher;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/ObjectMethodsGuru;->isToStringMethod(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 49
    :cond_1
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->cannotVerifyToString()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public getAllInvocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/verification/VerificationDataImpl;->invocations:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    .line 31
    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->getInvocations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Lorg/mockito/invocation/MatchableInvocation;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/verification/VerificationDataImpl;->wanted:Lorg/mockito/internal/invocation/InvocationMatcher;

    return-object v0
.end method

.method public getWanted()Lorg/mockito/internal/invocation/InvocationMatcher;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/verification/VerificationDataImpl;->wanted:Lorg/mockito/internal/invocation/InvocationMatcher;

    return-object v0
.end method
