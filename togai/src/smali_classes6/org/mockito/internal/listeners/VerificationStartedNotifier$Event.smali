.class Lorg/mockito/internal/listeners/VerificationStartedNotifier$Event;
.super Ljava/lang/Object;
.source "VerificationStartedNotifier.java"

# interfaces
.implements Lorg/mockito/listeners/VerificationStartedEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/listeners/VerificationStartedNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Event"
.end annotation


# instance fields
.field private mock:Ljava/lang/Object;

.field private final originalMockingDetails:Lorg/mockito/MockingDetails;


# direct methods
.method public constructor <init>(Lorg/mockito/MockingDetails;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/listeners/VerificationStartedNotifier$Event;->originalMockingDetails:Lorg/mockito/MockingDetails;

    .line 37
    invoke-interface {p1}, Lorg/mockito/MockingDetails;->getMock()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/listeners/VerificationStartedNotifier$Event;->mock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getMock()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/listeners/VerificationStartedNotifier$Event;->mock:Ljava/lang/Object;

    return-object v0
.end method

.method public setMock(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "VerificationStartedEvent.setMock"

    if-eqz p1, :cond_1

    .line 44
    invoke-static {p1}, Lorg/mockito/Mockito;->mockingDetails(Ljava/lang/Object;)Lorg/mockito/MockingDetails;

    move-result-object v1

    .line 45
    invoke-interface {v1}, Lorg/mockito/MockingDetails;->isMock()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/mockito/internal/listeners/VerificationStartedNotifier$Event;->originalMockingDetails:Lorg/mockito/MockingDetails;

    .line 49
    invoke-interface {v0}, Lorg/mockito/MockingDetails;->getMockCreationSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v0

    .line 50
    invoke-static {p1, v0}, Lorg/mockito/internal/listeners/VerificationStartedNotifier;->assertCompatibleTypes(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;)V

    iput-object p1, p0, Lorg/mockito/internal/listeners/VerificationStartedNotifier$Event;->mock:Ljava/lang/Object;

    return-void

    .line 46
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parameter which is not a Mockito mock.\n  Received parameter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-static {p1}, Lorg/mockito/internal/matchers/text/ValuePrinter;->print(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".\n "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {v0, p1}, Lorg/mockito/internal/exceptions/Reporter;->methodDoesNotAcceptParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    :cond_1
    const-string p1, "null parameter."

    .line 42
    invoke-static {v0, p1}, Lorg/mockito/internal/exceptions/Reporter;->methodDoesNotAcceptParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method
