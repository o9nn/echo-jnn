.class Lorg/mockito/internal/junit/JUnitRule$1;
.super Lorg/junit/runners/model/Statement;
.source "JUnitRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/junit/JUnitRule;->apply(Lorg/junit/runners/model/Statement;Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/junit/JUnitRule;

.field final synthetic val$base:Lorg/junit/runners/model/Statement;

.field final synthetic val$method:Lorg/junit/runners/model/FrameworkMethod;

.field final synthetic val$target:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/mockito/internal/junit/JUnitRule;Ljava/lang/Object;Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/runners/model/Statement;)V
    .locals 0

    iput-object p1, p0, Lorg/mockito/internal/junit/JUnitRule$1;->this$0:Lorg/mockito/internal/junit/JUnitRule;

    iput-object p2, p0, Lorg/mockito/internal/junit/JUnitRule$1;->val$target:Ljava/lang/Object;

    iput-object p3, p0, Lorg/mockito/internal/junit/JUnitRule$1;->val$method:Lorg/junit/runners/model/FrameworkMethod;

    iput-object p4, p0, Lorg/mockito/internal/junit/JUnitRule$1;->val$base:Lorg/junit/runners/model/Statement;

    .line 36
    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    return-void
.end method

.method private evaluateSafely(Lorg/junit/runners/model/Statement;)Ljava/lang/Throwable;
    .locals 0

    .line 57
    :try_start_0
    invoke-virtual {p1}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    return-object p1
.end method


# virtual methods
.method public evaluate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/junit/JUnitRule$1;->this$0:Lorg/mockito/internal/junit/JUnitRule;

    .line 38
    invoke-static {v0}, Lorg/mockito/internal/junit/JUnitRule;->access$000(Lorg/mockito/internal/junit/JUnitRule;)Lorg/mockito/MockitoSession;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mockito/internal/junit/JUnitRule$1;->this$0:Lorg/mockito/internal/junit/JUnitRule;

    .line 39
    invoke-static {}, Lorg/mockito/Mockito;->mockitoSession()Lorg/mockito/session/MockitoSessionBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/mockito/internal/junit/JUnitRule$1;->val$target:Ljava/lang/Object;

    .line 40
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/mockito/internal/junit/JUnitRule$1;->val$method:Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {v3}, Lorg/junit/runners/model/FrameworkMethod;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/mockito/session/MockitoSessionBuilder;->name(Ljava/lang/String;)Lorg/mockito/session/MockitoSessionBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/junit/JUnitRule$1;->this$0:Lorg/mockito/internal/junit/JUnitRule;

    .line 41
    invoke-static {v2}, Lorg/mockito/internal/junit/JUnitRule;->access$200(Lorg/mockito/internal/junit/JUnitRule;)Lorg/mockito/quality/Strictness;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/mockito/session/MockitoSessionBuilder;->strictness(Lorg/mockito/quality/Strictness;)Lorg/mockito/session/MockitoSessionBuilder;

    move-result-object v1

    new-instance v2, Lorg/mockito/internal/session/MockitoSessionLoggerAdapter;

    iget-object v3, p0, Lorg/mockito/internal/junit/JUnitRule$1;->this$0:Lorg/mockito/internal/junit/JUnitRule;

    .line 42
    invoke-static {v3}, Lorg/mockito/internal/junit/JUnitRule;->access$100(Lorg/mockito/internal/junit/JUnitRule;)Lorg/mockito/plugins/MockitoLogger;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/mockito/internal/session/MockitoSessionLoggerAdapter;-><init>(Lorg/mockito/plugins/MockitoLogger;)V

    invoke-interface {v1, v2}, Lorg/mockito/session/MockitoSessionBuilder;->logger(Lorg/mockito/session/MockitoSessionLogger;)Lorg/mockito/session/MockitoSessionBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/junit/JUnitRule$1;->val$target:Ljava/lang/Object;

    .line 43
    invoke-interface {v1, v2}, Lorg/mockito/session/MockitoSessionBuilder;->initMocks(Ljava/lang/Object;)Lorg/mockito/session/MockitoSessionBuilder;

    move-result-object v1

    .line 44
    invoke-interface {v1}, Lorg/mockito/session/MockitoSessionBuilder;->startMocking()Lorg/mockito/MockitoSession;

    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Lorg/mockito/internal/junit/JUnitRule;->access$002(Lorg/mockito/internal/junit/JUnitRule;Lorg/mockito/MockitoSession;)Lorg/mockito/MockitoSession;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/junit/JUnitRule$1;->val$target:Ljava/lang/Object;

    .line 46
    invoke-static {v0}, Lorg/mockito/MockitoAnnotations;->initMocks(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lorg/mockito/internal/junit/JUnitRule$1;->val$base:Lorg/junit/runners/model/Statement;

    .line 48
    invoke-direct {p0, v0}, Lorg/mockito/internal/junit/JUnitRule$1;->evaluateSafely(Lorg/junit/runners/model/Statement;)Ljava/lang/Throwable;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/junit/JUnitRule$1;->this$0:Lorg/mockito/internal/junit/JUnitRule;

    .line 49
    invoke-static {v1}, Lorg/mockito/internal/junit/JUnitRule;->access$000(Lorg/mockito/internal/junit/JUnitRule;)Lorg/mockito/MockitoSession;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/mockito/MockitoSession;->finishMocking(Ljava/lang/Throwable;)V

    if-nez v0, :cond_1

    return-void

    .line 51
    :cond_1
    throw v0
.end method
