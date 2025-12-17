.class public Lorg/mockito/internal/stubbing/answers/AnswersWithDelay;
.super Ljava/lang/Object;
.source "AnswersWithDelay.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;
.implements Lorg/mockito/stubbing/ValidableAnswer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/stubbing/Answer<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/mockito/stubbing/ValidableAnswer;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1e39a287926d3356L


# instance fields
.field private final answer:Lorg/mockito/stubbing/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final sleepyTime:J


# direct methods
.method public constructor <init>(JLorg/mockito/stubbing/Answer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/mockito/internal/stubbing/answers/AnswersWithDelay;->sleepyTime:J

    iput-object p3, p0, Lorg/mockito/internal/stubbing/answers/AnswersWithDelay;->answer:Lorg/mockito/stubbing/Answer;

    return-void
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lorg/mockito/internal/stubbing/answers/AnswersWithDelay;->sleepyTime:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/AnswersWithDelay;->answer:Lorg/mockito/stubbing/Answer;

    .line 37
    invoke-interface {v0, p1}, Lorg/mockito/stubbing/Answer;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public validateFor(Lorg/mockito/invocation/InvocationOnMock;)V
    .locals 2

    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/AnswersWithDelay;->answer:Lorg/mockito/stubbing/Answer;

    .line 42
    instance-of v1, v0, Lorg/mockito/stubbing/ValidableAnswer;

    if-eqz v1, :cond_0

    .line 43
    check-cast v0, Lorg/mockito/stubbing/ValidableAnswer;

    invoke-interface {v0, p1}, Lorg/mockito/stubbing/ValidableAnswer;->validateFor(Lorg/mockito/invocation/InvocationOnMock;)V

    :cond_0
    return-void
.end method
