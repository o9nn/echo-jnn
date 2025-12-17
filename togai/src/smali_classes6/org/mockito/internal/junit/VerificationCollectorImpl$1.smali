.class Lorg/mockito/internal/junit/VerificationCollectorImpl$1;
.super Lorg/junit/runners/model/Statement;
.source "VerificationCollectorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/junit/VerificationCollectorImpl;->apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/junit/VerificationCollectorImpl;

.field final synthetic val$base:Lorg/junit/runners/model/Statement;


# direct methods
.method constructor <init>(Lorg/mockito/internal/junit/VerificationCollectorImpl;Lorg/junit/runners/model/Statement;)V
    .locals 0

    iput-object p1, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl$1;->this$0:Lorg/mockito/internal/junit/VerificationCollectorImpl;

    iput-object p2, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl$1;->val$base:Lorg/junit/runners/model/Statement;

    .line 31
    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl$1;->this$0:Lorg/mockito/internal/junit/VerificationCollectorImpl;

    .line 35
    invoke-virtual {v0}, Lorg/mockito/internal/junit/VerificationCollectorImpl;->assertLazily()Lorg/mockito/junit/VerificationCollector;

    iget-object v0, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl$1;->val$base:Lorg/junit/runners/model/Statement;

    .line 36
    invoke-virtual {v0}, Lorg/junit/runners/model/Statement;->evaluate()V

    iget-object v0, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl$1;->this$0:Lorg/mockito/internal/junit/VerificationCollectorImpl;

    .line 37
    invoke-virtual {v0}, Lorg/mockito/internal/junit/VerificationCollectorImpl;->collectAndReport()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-static {}, Lorg/mockito/internal/progress/MockingProgressImpl;->getDefaultVerificationStrategy()Lorg/mockito/verification/VerificationStrategy;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mockito/internal/progress/MockingProgress;->setVerificationStrategy(Lorg/mockito/verification/VerificationStrategy;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v1

    invoke-static {}, Lorg/mockito/internal/progress/MockingProgressImpl;->getDefaultVerificationStrategy()Lorg/mockito/verification/VerificationStrategy;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/mockito/internal/progress/MockingProgress;->setVerificationStrategy(Lorg/mockito/verification/VerificationStrategy;)V

    throw v0
.end method
