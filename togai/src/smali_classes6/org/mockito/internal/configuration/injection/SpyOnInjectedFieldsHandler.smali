.class public Lorg/mockito/internal/configuration/injection/SpyOnInjectedFieldsHandler;
.super Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;
.source "SpyOnInjectedFieldsHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method protected processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 32
    new-instance p3, Lorg/mockito/internal/util/reflection/FieldReader;

    invoke-direct {p3, p2, p1}, Lorg/mockito/internal/util/reflection/FieldReader;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    .line 35
    invoke-virtual {p3}, Lorg/mockito/internal/util/reflection/FieldReader;->isNull()Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/mockito/Spy;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    :try_start_0
    invoke-virtual {p3}, Lorg/mockito/internal/util/reflection/FieldReader;->read()Ljava/lang/Object;

    move-result-object p3

    .line 38
    invoke-static {p3}, Lorg/mockito/internal/util/MockUtil;->isMock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lorg/mockito/Mockito;->reset([Ljava/lang/Object;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v1

    .line 44
    invoke-interface {v1, p3}, Lorg/mockito/MockSettings;->spiedInstance(Ljava/lang/Object;)Lorg/mockito/MockSettings;

    move-result-object p3

    sget-object v1, Lorg/mockito/Mockito;->CALLS_REAL_METHODS:Lorg/mockito/stubbing/Answer;

    .line 45
    invoke-interface {p3, v1}, Lorg/mockito/MockSettings;->defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;

    move-result-object p3

    .line 46
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lorg/mockito/MockSettings;->name(Ljava/lang/String;)Lorg/mockito/MockSettings;

    move-result-object p3

    .line 43
    invoke-static {v0, p3}, Lorg/mockito/Mockito;->mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;

    move-result-object p3

    .line 47
    invoke-static {p2, p1, p3}, Lorg/mockito/internal/util/reflection/FieldSetter;->setField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 50
    new-instance p3, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Problems initiating spied field "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
