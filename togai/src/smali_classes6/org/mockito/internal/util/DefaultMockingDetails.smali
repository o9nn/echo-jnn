.class public Lorg/mockito/internal/util/DefaultMockingDetails;
.super Ljava/lang/Object;
.source "DefaultMockingDetails.java"

# interfaces
.implements Lorg/mockito/MockingDetails;


# instance fields
.field private final toInspect:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/util/DefaultMockingDetails;->toInspect:Ljava/lang/Object;

    return-void
.end method

.method private assertGoodMock()V
    .locals 3

    iget-object v0, p0, Lorg/mockito/internal/util/DefaultMockingDetails;->toInspect:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lorg/mockito/internal/util/DefaultMockingDetails;->isMock()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/misusing/NotAMockException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Argument passed to Mockito.mockingDetails() should be a mock, but is an instance of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mockito/internal/util/DefaultMockingDetails;->toInspect:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NotAMockException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    new-instance v0, Lorg/mockito/exceptions/misusing/NotAMockException;

    const-string v1, "Argument passed to Mockito.mockingDetails() should be a mock, but is null!"

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NotAMockException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getInvocationContainer()Lorg/mockito/internal/stubbing/InvocationContainerImpl;
    .locals 1

    .line 46
    invoke-direct {p0}, Lorg/mockito/internal/util/DefaultMockingDetails;->assertGoodMock()V

    iget-object v0, p0, Lorg/mockito/internal/util/DefaultMockingDetails;->toInspect:Ljava/lang/Object;

    .line 47
    invoke-static {v0}, Lorg/mockito/internal/util/MockUtil;->getInvocationContainer(Ljava/lang/Object;)Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    move-result-object v0

    return-object v0
.end method

.method private mockHandler()Lorg/mockito/invocation/MockHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/invocation/MockHandler<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lorg/mockito/internal/util/DefaultMockingDetails;->assertGoodMock()V

    iget-object v0, p0, Lorg/mockito/internal/util/DefaultMockingDetails;->toInspect:Ljava/lang/Object;

    .line 78
    invoke-static {v0}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInvocations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lorg/mockito/internal/util/DefaultMockingDetails;->getInvocationContainer()Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->getInvocations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMock()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/util/DefaultMockingDetails;->toInspect:Ljava/lang/Object;

    return-object v0
.end method

.method public getMockCreationSettings()Lorg/mockito/mock/MockCreationSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/mock/MockCreationSettings<",
            "*>;"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lorg/mockito/internal/util/DefaultMockingDetails;->mockHandler()Lorg/mockito/invocation/MockHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/invocation/MockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v0

    return-object v0
.end method

.method public getMockHandler()Lorg/mockito/invocation/MockHandler;
    .locals 1

    .line 68
    invoke-direct {p0}, Lorg/mockito/internal/util/DefaultMockingDetails;->mockHandler()Lorg/mockito/invocation/MockHandler;

    move-result-object v0

    return-object v0
.end method

.method public getStubbings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/mockito/stubbing/Stubbing;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lorg/mockito/internal/util/DefaultMockingDetails;->getInvocationContainer()Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->getStubbingsAscending()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isMock()Z
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/util/DefaultMockingDetails;->toInspect:Ljava/lang/Object;

    .line 32
    invoke-static {v0}, Lorg/mockito/internal/util/MockUtil;->isMock(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSpy()Z
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/util/DefaultMockingDetails;->toInspect:Ljava/lang/Object;

    .line 37
    invoke-static {v0}, Lorg/mockito/internal/util/MockUtil;->isSpy(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public printInvocations()Ljava/lang/String;
    .locals 2

    .line 62
    invoke-direct {p0}, Lorg/mockito/internal/util/DefaultMockingDetails;->assertGoodMock()V

    .line 63
    new-instance v0, Lorg/mockito/internal/debugging/InvocationsPrinter;

    invoke-direct {v0}, Lorg/mockito/internal/debugging/InvocationsPrinter;-><init>()V

    iget-object v1, p0, Lorg/mockito/internal/util/DefaultMockingDetails;->toInspect:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/mockito/internal/debugging/InvocationsPrinter;->printInvocations(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
