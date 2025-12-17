.class Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$1;
.super Ljava/lang/Object;
.source "ReturnsSmartNulls.java"

# interfaces
.implements Lorg/mockito/internal/stubbing/defaultanswers/RetrieveGenericsForDefaultAnswers$AnswerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls;

.field final synthetic val$invocation:Lorg/mockito/invocation/InvocationOnMock;


# direct methods
.method constructor <init>(Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls;Lorg/mockito/invocation/InvocationOnMock;)V
    .locals 0

    iput-object p1, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$1;->this$0:Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls;

    iput-object p2, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$1;->val$invocation:Lorg/mockito/invocation/InvocationOnMock;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 57
    :cond_0
    new-instance v0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$ThrowsSmartNullPointer;

    iget-object v1, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$1;->val$invocation:Lorg/mockito/invocation/InvocationOnMock;

    new-instance v2, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v2}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$ThrowsSmartNullPointer;-><init>(Lorg/mockito/invocation/InvocationOnMock;Lorg/mockito/invocation/Location;)V

    invoke-static {p1, v0}, Lorg/mockito/Mockito;->mock(Ljava/lang/Class;Lorg/mockito/stubbing/Answer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
