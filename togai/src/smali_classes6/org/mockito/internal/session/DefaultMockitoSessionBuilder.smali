.class public Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;
.super Ljava/lang/Object;
.source "DefaultMockitoSessionBuilder.java"

# interfaces
.implements Lorg/mockito/session/MockitoSessionBuilder;


# instance fields
.field private logger:Lorg/mockito/session/MockitoSessionLogger;

.field private name:Ljava/lang/String;

.field private strictness:Lorg/mockito/quality/Strictness;

.field private testClassInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->testClassInstances:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public initMocks(Ljava/lang/Object;)Lorg/mockito/session/MockitoSessionBuilder;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->testClassInstances:Ljava/util/List;

    .line 30
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public varargs initMocks([Ljava/lang/Object;)Lorg/mockito/session/MockitoSessionBuilder;
    .locals 3

    if-eqz p1, :cond_0

    .line 38
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 39
    invoke-virtual {p0, v2}, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->initMocks(Ljava/lang/Object;)Lorg/mockito/session/MockitoSessionBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public logger(Lorg/mockito/session/MockitoSessionLogger;)Lorg/mockito/session/MockitoSessionBuilder;
    .locals 0

    iput-object p1, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->logger:Lorg/mockito/session/MockitoSessionLogger;

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lorg/mockito/session/MockitoSessionBuilder;
    .locals 0

    iput-object p1, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public startMocking()Lorg/mockito/MockitoSession;
    .locals 5

    iget-object v0, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->testClassInstances:Ljava/util/List;

    .line 68
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "<Unnamed Session>"

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->testClassInstances:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->testClassInstances:Ljava/util/List;

    .line 73
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->name:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->strictness:Lorg/mockito/quality/Strictness;

    if-nez v2, :cond_3

    .line 76
    sget-object v2, Lorg/mockito/quality/Strictness;->STRICT_STUBS:Lorg/mockito/quality/Strictness;

    :cond_3
    iget-object v3, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->logger:Lorg/mockito/session/MockitoSessionLogger;

    if-nez v3, :cond_4

    .line 77
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMockitoLogger()Lorg/mockito/plugins/MockitoLogger;

    move-result-object v3

    goto :goto_1

    :cond_4
    new-instance v3, Lorg/mockito/internal/session/MockitoLoggerAdapter;

    iget-object v4, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->logger:Lorg/mockito/session/MockitoSessionLogger;

    invoke-direct {v3, v4}, Lorg/mockito/internal/session/MockitoLoggerAdapter;-><init>(Lorg/mockito/session/MockitoSessionLogger;)V

    .line 78
    :goto_1
    new-instance v4, Lorg/mockito/internal/framework/DefaultMockitoSession;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/mockito/internal/framework/DefaultMockitoSession;-><init>(Ljava/util/List;Ljava/lang/String;Lorg/mockito/quality/Strictness;Lorg/mockito/plugins/MockitoLogger;)V

    return-object v4
.end method

.method public strictness(Lorg/mockito/quality/Strictness;)Lorg/mockito/session/MockitoSessionBuilder;
    .locals 0

    iput-object p1, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->strictness:Lorg/mockito/quality/Strictness;

    return-object p0
.end method
