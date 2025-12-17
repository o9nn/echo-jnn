.class Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;
.super Ljava/lang/Object;
.source "DoAnswerStyleStubbing.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final answers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mockito/stubbing/Answer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private stubbingStrictness:Lorg/mockito/quality/Strictness;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->answers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->answers:Ljava/util/List;

    .line 32
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->stubbingStrictness:Lorg/mockito/quality/Strictness;

    return-void
.end method

.method getAnswers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/stubbing/Answer<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->answers:Ljava/util/List;

    return-object v0
.end method

.method getStubbingStrictness()Lorg/mockito/quality/Strictness;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->stubbingStrictness:Lorg/mockito/quality/Strictness;

    return-object v0
.end method

.method isSet()Z
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->answers:Ljava/util/List;

    .line 28
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method setAnswers(Ljava/util/List;Lorg/mockito/quality/Strictness;)V
    .locals 0
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

    iput-object p2, p0, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->stubbingStrictness:Lorg/mockito/quality/Strictness;

    iget-object p2, p0, Lorg/mockito/internal/stubbing/DoAnswerStyleStubbing;->answers:Ljava/util/List;

    .line 24
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
