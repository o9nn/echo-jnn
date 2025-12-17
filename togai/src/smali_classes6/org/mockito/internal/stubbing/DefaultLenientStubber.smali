.class public Lorg/mockito/internal/stubbing/DefaultLenientStubber;
.super Ljava/lang/Object;
.source "DefaultLenientStubber.java"

# interfaces
.implements Lorg/mockito/stubbing/LenientStubber;


# static fields
.field private static final MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lorg/mockito/internal/MockitoCore;

    invoke-direct {v0}, Lorg/mockito/internal/MockitoCore;-><init>()V

    sput-object v0, Lorg/mockito/internal/stubbing/DefaultLenientStubber;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static stubber()Lorg/mockito/stubbing/Stubber;
    .locals 2

    sget-object v0, Lorg/mockito/internal/stubbing/DefaultLenientStubber;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    .line 66
    sget-object v1, Lorg/mockito/quality/Strictness;->LENIENT:Lorg/mockito/quality/Strictness;

    invoke-virtual {v0, v1}, Lorg/mockito/internal/MockitoCore;->stubber(Lorg/mockito/quality/Strictness;)Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;
    .locals 1

    .line 35
    invoke-static {}, Lorg/mockito/internal/stubbing/DefaultLenientStubber;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/stubbing/Stubber;->doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;

    move-result-object p1

    return-object p1
.end method

.method public doCallRealMethod()Lorg/mockito/stubbing/Stubber;
    .locals 1

    .line 55
    invoke-static {}, Lorg/mockito/internal/stubbing/DefaultLenientStubber;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/stubbing/Stubber;->doCallRealMethod()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    return-object v0
.end method

.method public doNothing()Lorg/mockito/stubbing/Stubber;
    .locals 1

    .line 40
    invoke-static {}, Lorg/mockito/internal/stubbing/DefaultLenientStubber;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/stubbing/Stubber;->doNothing()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    return-object v0
.end method

.method public doReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;
    .locals 1

    .line 45
    invoke-static {}, Lorg/mockito/internal/stubbing/DefaultLenientStubber;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/stubbing/Stubber;->doReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;

    move-result-object p1

    return-object p1
.end method

.method public varargs doReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;
    .locals 1

    .line 50
    invoke-static {}, Lorg/mockito/internal/stubbing/DefaultLenientStubber;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/mockito/stubbing/Stubber;->doReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;

    move-result-object p1

    return-object p1
.end method

.method public doThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;
    .locals 1
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

    .line 25
    invoke-static {}, Lorg/mockito/internal/stubbing/DefaultLenientStubber;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/stubbing/Stubber;->doThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;

    move-result-object p1

    return-object p1
.end method

.method public varargs doThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;
    .locals 1
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

    .line 30
    invoke-static {}, Lorg/mockito/internal/stubbing/DefaultLenientStubber;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/mockito/stubbing/Stubber;->doThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;

    move-result-object p1

    return-object p1
.end method

.method public varargs doThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/Stubber;
    .locals 1

    .line 20
    invoke-static {}, Lorg/mockito/internal/stubbing/DefaultLenientStubber;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/stubbing/Stubber;->doThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/Stubber;

    move-result-object p1

    return-object p1
.end method

.method public when(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lorg/mockito/internal/stubbing/DefaultLenientStubber;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    .line 60
    invoke-virtual {v0, p1}, Lorg/mockito/internal/MockitoCore;->when(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    check-cast p1, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;

    .line 61
    sget-object v0, Lorg/mockito/quality/Strictness;->LENIENT:Lorg/mockito/quality/Strictness;

    invoke-virtual {p1, v0}, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;->setStrictness(Lorg/mockito/quality/Strictness;)V

    return-object p1
.end method
