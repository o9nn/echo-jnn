.class Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks$1;
.super Ljava/lang/Object;
.source "ReturnsMocks.java"

# interfaces
.implements Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers$AnswerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;

.field final synthetic val$invocation:Lorg/mockito/invocation/InvocationOnMock;


# direct methods
.method constructor <init>(Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;Lorg/mockito/invocation/InvocationOnMock;)V
    .locals 0

    iput-object p1, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks$1;->this$0:Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;

    iput-object p2, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks$1;->val$invocation:Lorg/mockito/invocation/InvocationOnMock;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks$1;->val$invocation:Lorg/mockito/invocation/InvocationOnMock;

    .line 31
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 34
    :cond_0
    new-instance v0, Lorg/mockito/internal/creation/MockSettingsImpl;

    invoke-direct {v0}, Lorg/mockito/internal/creation/MockSettingsImpl;-><init>()V

    iget-object v1, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks$1;->this$0:Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;

    .line 35
    invoke-virtual {v0, v1}, Lorg/mockito/internal/creation/MockSettingsImpl;->defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/mockito/Mockito;->mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
