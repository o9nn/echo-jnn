.class public Lorg/mockito/internal/listeners/VerificationStartedNotifier;
.super Ljava/lang/Object;
.source "VerificationStartedNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/listeners/VerificationStartedNotifier$Event;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static assertCompatibleTypes(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 6

    .line 60
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ".\n "

    const-string v3, "\n  Received parameter: "

    const-string v4, "VerificationStartedEvent.setMock"

    if-eqz v1, :cond_2

    .line 68
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getExtraInterfaces()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v5, "parameter which does not implement all extra interfaces of the original mock.\n  Required type: "

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n  Required extra interface: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 74
    invoke-static {p0}, Lorg/mockito/internal/matchers/text/ValuePrinter;->print(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 70
    invoke-static {v4, p0}, Lorg/mockito/internal/exceptions/Reporter;->methodDoesNotAcceptParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p0

    throw p0

    :cond_1
    return-void

    .line 62
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "parameter which is not the same type as the original mock.\n  Required type: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 65
    invoke-static {p0}, Lorg/mockito/internal/matchers/text/ValuePrinter;->print(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 62
    invoke-static {v4, p0}, Lorg/mockito/internal/exceptions/Reporter;->methodDoesNotAcceptParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p0

    throw p0
.end method

.method public static notifyVerificationStarted(Ljava/util/List;Lorg/mockito/MockingDetails;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/listeners/VerificationStartedListener;",
            ">;",
            "Lorg/mockito/MockingDetails;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 21
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {p1}, Lorg/mockito/MockingDetails;->getMock()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 24
    :cond_0
    new-instance v0, Lorg/mockito/internal/listeners/VerificationStartedNotifier$Event;

    invoke-direct {v0, p1}, Lorg/mockito/internal/listeners/VerificationStartedNotifier$Event;-><init>(Lorg/mockito/MockingDetails;)V

    .line 25
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mockito/listeners/VerificationStartedListener;

    .line 26
    invoke-interface {p1, v0}, Lorg/mockito/listeners/VerificationStartedListener;->onVerificationStarted(Lorg/mockito/listeners/VerificationStartedEvent;)V

    goto :goto_0

    .line 28
    :cond_1
    invoke-interface {v0}, Lorg/mockito/listeners/VerificationStartedEvent;->getMock()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
