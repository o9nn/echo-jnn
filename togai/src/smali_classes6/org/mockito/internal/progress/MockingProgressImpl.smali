.class public Lorg/mockito/internal/progress/MockingProgressImpl;
.super Ljava/lang/Object;
.source "MockingProgressImpl.java"

# interfaces
.implements Lorg/mockito/internal/progress/MockingProgress;


# instance fields
.field private final argumentMatcherStorage:Lorg/mockito/internal/progress/ArgumentMatcherStorage;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/mockito/listeners/MockitoListener;",
            ">;"
        }
    .end annotation
.end field

.field private ongoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "*>;"
        }
    .end annotation
.end field

.field private stubbingInProgress:Lorg/mockito/invocation/Location;

.field private verificationMode:Lorg/mockito/internal/debugging/Localized;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/debugging/Localized<",
            "Lorg/mockito/verification/VerificationMode;",
            ">;"
        }
    .end annotation
.end field

.field private verificationStrategy:Lorg/mockito/verification/VerificationStrategy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;

    invoke-direct {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->argumentMatcherStorage:Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->stubbingInProgress:Lorg/mockito/invocation/Location;

    .line 39
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->listeners:Ljava/util/Set;

    .line 42
    invoke-static {}, Lorg/mockito/internal/progress/MockingProgressImpl;->getDefaultVerificationStrategy()Lorg/mockito/verification/VerificationStrategy;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationStrategy:Lorg/mockito/verification/VerificationStrategy;

    return-void
.end method

.method static addListener(Lorg/mockito/listeners/MockitoListener;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/listeners/MockitoListener;",
            "Ljava/util/Set<",
            "Lorg/mockito/listeners/MockitoListener;",
            ">;)V"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 165
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/listeners/MockitoListener;

    .line 166
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    instance-of v3, v2, Lorg/mockito/internal/listeners/AutoCleanableListener;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lorg/mockito/internal/listeners/AutoCleanableListener;

    invoke-interface {v3}, Lorg/mockito/internal/listeners/AutoCleanableListener;->isListenerDirty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mockito/internal/exceptions/Reporter;->redundantMockitoListener(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/listeners/MockitoListener;

    .line 179
    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 181
    :cond_3
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getDefaultVerificationStrategy()Lorg/mockito/verification/VerificationStrategy;
    .locals 1

    .line 46
    new-instance v0, Lorg/mockito/internal/progress/MockingProgressImpl$1;

    invoke-direct {v0}, Lorg/mockito/internal/progress/MockingProgressImpl$1;-><init>()V

    return-object v0
.end method

.method private validateMostStuff()V
    .locals 2

    .line 119
    invoke-static {}, Lorg/mockito/internal/configuration/GlobalConfiguration;->validate()V

    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationMode:Lorg/mockito/internal/debugging/Localized;

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lorg/mockito/internal/progress/MockingProgressImpl;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->validateState()V

    return-void

    .line 122
    :cond_0
    invoke-virtual {v0}, Lorg/mockito/internal/debugging/Localized;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationMode:Lorg/mockito/internal/debugging/Localized;

    .line 124
    invoke-static {v0}, Lorg/mockito/internal/exceptions/Reporter;->unfinishedVerificationException(Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public addListener(Lorg/mockito/listeners/MockitoListener;)V
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->listeners:Ljava/util/Set;

    .line 160
    invoke-static {p1, v0}, Lorg/mockito/internal/progress/MockingProgressImpl;->addListener(Lorg/mockito/listeners/MockitoListener;Ljava/util/Set;)V

    return-void
.end method

.method public clearListeners()V
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->listeners:Ljava/util/Set;

    .line 197
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->argumentMatcherStorage:Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    return-object v0
.end method

.method public maybeVerifyLazily(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationStrategy:Lorg/mockito/verification/VerificationStrategy;

    .line 193
    invoke-interface {v0, p1}, Lorg/mockito/verification/VerificationStrategy;->maybeVerifyLazily(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;

    move-result-object p1

    return-object p1
.end method

.method public mockingStarted(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 3

    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->listeners:Ljava/util/Set;

    .line 151
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/listeners/MockitoListener;

    .line 152
    instance-of v2, v1, Lorg/mockito/listeners/MockCreationListener;

    if-eqz v2, :cond_0

    .line 153
    check-cast v1, Lorg/mockito/listeners/MockCreationListener;

    invoke-interface {v1, p1, p2}, Lorg/mockito/listeners/MockCreationListener;->onMockCreated(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-direct {p0}, Lorg/mockito/internal/progress/MockingProgressImpl;->validateMostStuff()V

    return-void
.end method

.method public pullOngoingStubbing()Lorg/mockito/stubbing/OngoingStubbing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->ongoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->ongoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    return-object v0
.end method

.method public pullVerificationMode()Lorg/mockito/verification/VerificationMode;
    .locals 2

    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationMode:Lorg/mockito/internal/debugging/Localized;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 95
    :cond_0
    invoke-virtual {v0}, Lorg/mockito/internal/debugging/Localized;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/verification/VerificationMode;

    iput-object v1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationMode:Lorg/mockito/internal/debugging/Localized;

    return-object v0
.end method

.method public removeListener(Lorg/mockito/listeners/MockitoListener;)V
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->listeners:Ljava/util/Set;

    .line 185
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportOngoingStubbing(Lorg/mockito/stubbing/OngoingStubbing;)V
    .locals 0

    iput-object p1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->ongoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->stubbingInProgress:Lorg/mockito/invocation/Location;

    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationMode:Lorg/mockito/internal/debugging/Localized;

    .line 143
    invoke-virtual {p0}, Lorg/mockito/internal/progress/MockingProgressImpl;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reset()V

    return-void
.end method

.method public resetOngoingStubbing()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->ongoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    return-void
.end method

.method public setVerificationStrategy(Lorg/mockito/verification/VerificationStrategy;)V
    .locals 0

    iput-object p1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationStrategy:Lorg/mockito/verification/VerificationStrategy;

    return-void
.end method

.method public stubbingCompleted()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->stubbingInProgress:Lorg/mockito/invocation/Location;

    return-void
.end method

.method public stubbingStarted()V
    .locals 1

    .line 101
    invoke-virtual {p0}, Lorg/mockito/internal/progress/MockingProgressImpl;->validateState()V

    .line 102
    new-instance v0, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v0}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->stubbingInProgress:Lorg/mockito/invocation/Location;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ongoingStubbing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->ongoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", verificationMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationMode:Lorg/mockito/internal/debugging/Localized;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stubbingInProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->stubbingInProgress:Lorg/mockito/invocation/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateState()V
    .locals 2

    .line 106
    invoke-direct {p0}, Lorg/mockito/internal/progress/MockingProgressImpl;->validateMostStuff()V

    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->stubbingInProgress:Lorg/mockito/invocation/Location;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->stubbingInProgress:Lorg/mockito/invocation/Location;

    .line 112
    invoke-static {v0}, Lorg/mockito/internal/exceptions/Reporter;->unfinishedStubbing(Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method

.method public verificationListeners()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/mockito/listeners/VerificationListener;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->listeners:Ljava/util/Set;

    .line 67
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/listeners/MockitoListener;

    .line 68
    instance-of v3, v2, Lorg/mockito/listeners/VerificationListener;

    if-eqz v3, :cond_0

    .line 69
    check-cast v2, Lorg/mockito/listeners/VerificationListener;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public verificationStarted(Lorg/mockito/verification/VerificationMode;)V
    .locals 1

    .line 78
    invoke-virtual {p0}, Lorg/mockito/internal/progress/MockingProgressImpl;->validateState()V

    .line 79
    invoke-virtual {p0}, Lorg/mockito/internal/progress/MockingProgressImpl;->resetOngoingStubbing()V

    .line 80
    new-instance v0, Lorg/mockito/internal/debugging/Localized;

    invoke-direct {v0, p1}, Lorg/mockito/internal/debugging/Localized;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationMode:Lorg/mockito/internal/debugging/Localized;

    return-void
.end method
