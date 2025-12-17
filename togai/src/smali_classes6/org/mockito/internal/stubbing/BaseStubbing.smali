.class public abstract Lorg/mockito/internal/stubbing/BaseStubbing;
.super Ljava/lang/Object;
.source "BaseStubbing.java"

# interfaces
.implements Lorg/mockito/stubbing/OngoingStubbing;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/stubbing/OngoingStubbing<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final strongMockRef:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/stubbing/BaseStubbing;->strongMockRef:Ljava/lang/Object;

    return-void
.end method

.method private thenThrow(Ljava/lang/Throwable;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/mockito/internal/stubbing/answers/ThrowsException;

    invoke-direct {v0, p1}, Lorg/mockito/internal/stubbing/answers/ThrowsException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getMock()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">()TM;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/stubbing/BaseStubbing;->strongMockRef:Ljava/lang/Object;

    return-object v0
.end method

.method public then(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "*>;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    return-object p1
.end method

.method public thenCallRealMethod()Lorg/mockito/stubbing/OngoingStubbing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 96
    new-instance v0, Lorg/mockito/internal/stubbing/answers/CallsRealMethods;

    invoke-direct {v0}, Lorg/mockito/internal/stubbing/answers/CallsRealMethods;-><init>()V

    invoke-virtual {p0, v0}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v0

    return-object v0
.end method

.method public thenReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 35
    new-instance v0, Lorg/mockito/internal/stubbing/answers/Returns;

    invoke-direct {v0, p1}, Lorg/mockito/internal/stubbing/answers/Returns;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    return-object p1
.end method

.method public varargs thenReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 44
    invoke-interface {p1, p2}, Lorg/mockito/stubbing/OngoingStubbing;->thenReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    return-object p1

    .line 46
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 47
    invoke-interface {p1, v2}, Lorg/mockito/stubbing/OngoingStubbing;->thenReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public thenThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 78
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getInstantiatorProvider()Lorg/mockito/plugins/InstantiatorProvider2;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/mockito/plugins/InstantiatorProvider2;->getInstantiator(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/creation/instance/Instantiator;

    move-result-object v0

    .line 79
    invoke-interface {v0, p1}, Lorg/mockito/creation/instance/Instantiator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p0, p1}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenThrow(Ljava/lang/Throwable;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    return-object p1

    .line 75
    :cond_0
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p1

    invoke-interface {p1}, Lorg/mockito/internal/progress/MockingProgress;->reset()V

    .line 76
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->notAnException()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method

.method public varargs thenThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/stubbing/OngoingStubbing;
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
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 85
    move-object p2, p1

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    return-object p1

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    .line 88
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 89
    invoke-interface {p1, v2}, Lorg/mockito/stubbing/OngoingStubbing;->thenThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public varargs thenThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 59
    move-object p1, v0

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenThrow(Ljava/lang/Throwable;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    return-object p1

    .line 62
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    if-nez v0, :cond_1

    .line 64
    invoke-direct {p0, v4}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenThrow(Ljava/lang/Throwable;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object v4, v5, v2

    .line 66
    invoke-interface {v0, v5}, Lorg/mockito/stubbing/OngoingStubbing;->thenThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
