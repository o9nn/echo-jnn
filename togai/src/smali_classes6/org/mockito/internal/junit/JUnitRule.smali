.class public Lorg/mockito/internal/junit/JUnitRule;
.super Ljava/lang/Object;
.source "JUnitRule.java"

# interfaces
.implements Lorg/mockito/junit/MockitoRule;


# instance fields
.field private final logger:Lorg/mockito/plugins/MockitoLogger;

.field private session:Lorg/mockito/MockitoSession;

.field private strictness:Lorg/mockito/quality/Strictness;


# direct methods
.method public constructor <init>(Lorg/mockito/plugins/MockitoLogger;Lorg/mockito/quality/Strictness;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/junit/JUnitRule;->logger:Lorg/mockito/plugins/MockitoLogger;

    iput-object p2, p0, Lorg/mockito/internal/junit/JUnitRule;->strictness:Lorg/mockito/quality/Strictness;

    return-void
.end method

.method static synthetic access$000(Lorg/mockito/internal/junit/JUnitRule;)Lorg/mockito/MockitoSession;
    .locals 0

    .line 20
    iget-object p0, p0, Lorg/mockito/internal/junit/JUnitRule;->session:Lorg/mockito/MockitoSession;

    return-object p0
.end method

.method static synthetic access$002(Lorg/mockito/internal/junit/JUnitRule;Lorg/mockito/MockitoSession;)Lorg/mockito/MockitoSession;
    .locals 0

    .line 20
    iput-object p1, p0, Lorg/mockito/internal/junit/JUnitRule;->session:Lorg/mockito/MockitoSession;

    return-object p1
.end method

.method static synthetic access$100(Lorg/mockito/internal/junit/JUnitRule;)Lorg/mockito/plugins/MockitoLogger;
    .locals 0

    .line 20
    iget-object p0, p0, Lorg/mockito/internal/junit/JUnitRule;->logger:Lorg/mockito/plugins/MockitoLogger;

    return-object p0
.end method

.method static synthetic access$200(Lorg/mockito/internal/junit/JUnitRule;)Lorg/mockito/quality/Strictness;
    .locals 0

    .line 20
    iget-object p0, p0, Lorg/mockito/internal/junit/JUnitRule;->strictness:Lorg/mockito/quality/Strictness;

    return-object p0
.end method


# virtual methods
.method public apply(Lorg/junit/runners/model/Statement;Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;
    .locals 1

    .line 36
    new-instance v0, Lorg/mockito/internal/junit/JUnitRule$1;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/mockito/internal/junit/JUnitRule$1;-><init>(Lorg/mockito/internal/junit/JUnitRule;Ljava/lang/Object;Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/runners/model/Statement;)V

    return-object v0
.end method

.method public silent()Lorg/mockito/junit/MockitoRule;
    .locals 1

    .line 67
    sget-object v0, Lorg/mockito/quality/Strictness;->LENIENT:Lorg/mockito/quality/Strictness;

    invoke-virtual {p0, v0}, Lorg/mockito/internal/junit/JUnitRule;->strictness(Lorg/mockito/quality/Strictness;)Lorg/mockito/junit/MockitoRule;

    move-result-object v0

    return-object v0
.end method

.method public strictness(Lorg/mockito/quality/Strictness;)Lorg/mockito/junit/MockitoRule;
    .locals 1

    iput-object p1, p0, Lorg/mockito/internal/junit/JUnitRule;->strictness:Lorg/mockito/quality/Strictness;

    iget-object v0, p0, Lorg/mockito/internal/junit/JUnitRule;->session:Lorg/mockito/MockitoSession;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p1}, Lorg/mockito/MockitoSession;->setStrictness(Lorg/mockito/quality/Strictness;)V

    :cond_0
    return-object p0
.end method
