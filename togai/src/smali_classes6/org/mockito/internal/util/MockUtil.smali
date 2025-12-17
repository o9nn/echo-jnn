.class public Lorg/mockito/internal/util/MockUtil;
.super Ljava/lang/Object;
.source "MockUtil.java"


# static fields
.field private static final mockMaker:Lorg/mockito/plugins/MockMaker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMockMaker()Lorg/mockito/plugins/MockMaker;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/MockUtil;->mockMaker:Lorg/mockito/plugins/MockMaker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMock(Lorg/mockito/mock/MockCreationSettings;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 33
    invoke-static {p0}, Lorg/mockito/internal/handler/MockHandlerFactory;->createMockHandler(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/invocation/MockHandler;

    move-result-object v0

    sget-object v1, Lorg/mockito/internal/util/MockUtil;->mockMaker:Lorg/mockito/plugins/MockMaker;

    .line 35
    invoke-interface {v1, p0, v0}, Lorg/mockito/plugins/MockMaker;->createMock(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    invoke-interface {p0}, Lorg/mockito/mock/MockCreationSettings;->getSpiedInstance()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 39
    new-instance v1, Lorg/mockito/internal/util/reflection/LenientCopyTool;

    invoke-direct {v1}, Lorg/mockito/internal/util/reflection/LenientCopyTool;-><init>()V

    invoke-virtual {v1, p0, v0}, Lorg/mockito/internal/util/reflection/LenientCopyTool;->copyToMock(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static getInvocationContainer(Ljava/lang/Object;)Lorg/mockito/internal/stubbing/InvocationContainerImpl;
    .locals 0

    .line 66
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/invocation/MockHandler;->getInvocationContainer()Lorg/mockito/invocation/InvocationContainer;

    move-result-object p0

    check-cast p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    return-object p0
.end method

.method public static getMockHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/mockito/invocation/MockHandler<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 58
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->isMock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/mockito/internal/util/MockUtil;->mockMaker:Lorg/mockito/plugins/MockMaker;

    .line 59
    invoke-interface {v0, p0}, Lorg/mockito/plugins/MockMaker;->getHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

    move-result-object p0

    return-object p0

    .line 61
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/misusing/NotAMockException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Argument should be a mock, but is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/misusing/NotAMockException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    new-instance p0, Lorg/mockito/exceptions/misusing/NotAMockException;

    const-string v0, "Argument should be a mock, but is null!"

    invoke-direct {p0, v0}, Lorg/mockito/exceptions/misusing/NotAMockException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;
    .locals 0

    .line 85
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/invocation/MockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/mock/MockCreationSettings;->getMockName()Lorg/mockito/mock/MockName;

    move-result-object p0

    return-object p0
.end method

.method public static getMockSettings(Ljava/lang/Object;)Lorg/mockito/mock/MockCreationSettings;
    .locals 0

    .line 98
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/invocation/MockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object p0

    return-object p0
.end method

.method public static isMock(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lorg/mockito/internal/util/MockUtil;->mockMaker:Lorg/mockito/plugins/MockMaker;

    .line 81
    invoke-interface {v0, p0}, Lorg/mockito/plugins/MockMaker;->getHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSpy(Ljava/lang/Object;)Z
    .locals 1

    .line 70
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->isMock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->getMockSettings(Ljava/lang/Object;)Lorg/mockito/mock/MockCreationSettings;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/mock/MockCreationSettings;->getDefaultAnswer()Lorg/mockito/stubbing/Answer;

    move-result-object p0

    sget-object v0, Lorg/mockito/Mockito;->CALLS_REAL_METHODS:Lorg/mockito/stubbing/Answer;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static maybeRedefineMockName(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 89
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v0

    .line 91
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/invocation/MockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object p0

    .line 92
    invoke-interface {v0}, Lorg/mockito/mock/MockName;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;

    if-eqz v0, :cond_0

    .line 93
    check-cast p0, Lorg/mockito/internal/creation/settings/CreationSettings;

    new-instance v0, Lorg/mockito/internal/util/MockNameImpl;

    invoke-direct {v0, p1}, Lorg/mockito/internal/util/MockNameImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/mockito/internal/creation/settings/CreationSettings;->setMockName(Lorg/mockito/mock/MockName;)Lorg/mockito/internal/creation/settings/CreationSettings;

    :cond_0
    return-void
.end method

.method public static resetMock(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Lorg/mockito/invocation/MockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lorg/mockito/internal/handler/MockHandlerFactory;->createMockHandler(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/invocation/MockHandler;

    move-result-object v1

    sget-object v2, Lorg/mockito/internal/util/MockUtil;->mockMaker:Lorg/mockito/plugins/MockMaker;

    .line 50
    invoke-interface {v2, p0, v1, v0}, Lorg/mockito/plugins/MockMaker;->resetMock(Ljava/lang/Object;Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V

    return-void
.end method

.method public static typeMockabilityOf(Ljava/lang/Class;)Lorg/mockito/plugins/MockMaker$TypeMockability;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/plugins/MockMaker$TypeMockability;"
        }
    .end annotation

    sget-object v0, Lorg/mockito/internal/util/MockUtil;->mockMaker:Lorg/mockito/plugins/MockMaker;

    .line 29
    invoke-interface {v0, p0}, Lorg/mockito/plugins/MockMaker;->isTypeMockable(Ljava/lang/Class;)Lorg/mockito/plugins/MockMaker$TypeMockability;

    move-result-object p0

    return-object p0
.end method
