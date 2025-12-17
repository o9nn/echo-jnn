.class public Lorg/mockito/internal/stubbing/ConsecutiveStubbing;
.super Lorg/mockito/internal/stubbing/BaseStubbing;
.source "ConsecutiveStubbing.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mockito/internal/stubbing/BaseStubbing<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;


# direct methods
.method constructor <init>(Lorg/mockito/internal/stubbing/InvocationContainerImpl;)V
    .locals 1

    .line 15
    invoke-virtual {p1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invokedMock()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mockito/internal/stubbing/BaseStubbing;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mockito/internal/stubbing/ConsecutiveStubbing;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    return-void
.end method


# virtual methods
.method public thenAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "*>;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/stubbing/ConsecutiveStubbing;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    .line 20
    invoke-virtual {v0, p1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->addConsecutiveAnswer(Lorg/mockito/stubbing/Answer;)V

    return-object p0
.end method
