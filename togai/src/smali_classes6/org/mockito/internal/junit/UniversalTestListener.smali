.class public Lorg/mockito/internal/junit/UniversalTestListener;
.super Ljava/lang/Object;
.source "UniversalTestListener.java"

# interfaces
.implements Lorg/mockito/internal/junit/MockitoTestListener;
.implements Lorg/mockito/internal/listeners/AutoCleanableListener;


# instance fields
.field private currentStrictness:Lorg/mockito/quality/Strictness;

.field private listenerDirty:Z

.field private final logger:Lorg/mockito/plugins/MockitoLogger;

.field private mocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/mockito/mock/MockCreationSettings;",
            ">;"
        }
    .end annotation
.end field

.field private stubbingLookupListener:Lorg/mockito/internal/junit/DefaultStubbingLookupListener;


# direct methods
.method public constructor <init>(Lorg/mockito/quality/Strictness;Lorg/mockito/plugins/MockitoLogger;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/junit/UniversalTestListener;->mocks:Ljava/util/Map;

    iput-object p1, p0, Lorg/mockito/internal/junit/UniversalTestListener;->currentStrictness:Lorg/mockito/quality/Strictness;

    iput-object p2, p0, Lorg/mockito/internal/junit/UniversalTestListener;->logger:Lorg/mockito/plugins/MockitoLogger;

    .line 37
    new-instance p1, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;

    iget-object p2, p0, Lorg/mockito/internal/junit/UniversalTestListener;->currentStrictness:Lorg/mockito/quality/Strictness;

    invoke-direct {p1, p2}, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;-><init>(Lorg/mockito/quality/Strictness;)V

    iput-object p1, p0, Lorg/mockito/internal/junit/UniversalTestListener;->stubbingLookupListener:Lorg/mockito/internal/junit/DefaultStubbingLookupListener;

    return-void
.end method

.method private static emitWarnings(Lorg/mockito/plugins/MockitoLogger;Lorg/mockito/internal/junit/TestFinishedEvent;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/plugins/MockitoLogger;",
            "Lorg/mockito/internal/junit/TestFinishedEvent;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-interface {p1}, Lorg/mockito/internal/junit/TestFinishedEvent;->getFailure()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lorg/mockito/internal/junit/ArgMismatchFinder;

    invoke-direct {v0}, Lorg/mockito/internal/junit/ArgMismatchFinder;-><init>()V

    invoke-virtual {v0, p2}, Lorg/mockito/internal/junit/ArgMismatchFinder;->getStubbingArgMismatches(Ljava/lang/Iterable;)Lorg/mockito/internal/junit/StubbingArgMismatches;

    move-result-object p2

    invoke-interface {p1}, Lorg/mockito/internal/junit/TestFinishedEvent;->getTestName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Lorg/mockito/internal/junit/StubbingArgMismatches;->format(Ljava/lang/String;Lorg/mockito/plugins/MockitoLogger;)V

    goto :goto_0

    .line 71
    :cond_0
    new-instance v0, Lorg/mockito/internal/junit/UnusedStubbingsFinder;

    invoke-direct {v0}, Lorg/mockito/internal/junit/UnusedStubbingsFinder;-><init>()V

    invoke-virtual {v0, p2}, Lorg/mockito/internal/junit/UnusedStubbingsFinder;->getUnusedStubbings(Ljava/lang/Iterable;)Lorg/mockito/internal/junit/UnusedStubbings;

    move-result-object p2

    invoke-interface {p1}, Lorg/mockito/internal/junit/TestFinishedEvent;->getTestName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Lorg/mockito/internal/junit/UnusedStubbings;->format(Ljava/lang/String;Lorg/mockito/plugins/MockitoLogger;)V

    :goto_0
    return-void
.end method

.method private reportUnusedStubs(Lorg/mockito/internal/junit/TestFinishedEvent;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/junit/TestFinishedEvent;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-interface {p1}, Lorg/mockito/internal/junit/TestFinishedEvent;->getFailure()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/mockito/internal/junit/UniversalTestListener;->stubbingLookupListener:Lorg/mockito/internal/junit/DefaultStubbingLookupListener;

    invoke-virtual {p1}, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;->isMismatchesReported()Z

    move-result p1

    if-nez p1, :cond_0

    .line 59
    new-instance p1, Lorg/mockito/internal/junit/UnusedStubbingsFinder;

    invoke-direct {p1}, Lorg/mockito/internal/junit/UnusedStubbingsFinder;-><init>()V

    invoke-virtual {p1, p2}, Lorg/mockito/internal/junit/UnusedStubbingsFinder;->getUnusedStubbings(Ljava/lang/Iterable;)Lorg/mockito/internal/junit/UnusedStubbings;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lorg/mockito/internal/junit/UnusedStubbings;->reportUnused()V

    :cond_0
    return-void
.end method


# virtual methods
.method public isListenerDirty()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mockito/internal/junit/UniversalTestListener;->listenerDirty:Z

    return v0
.end method

.method public onMockCreated(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/junit/UniversalTestListener;->mocks:Ljava/util/Map;

    .line 77
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    check-cast p2, Lorg/mockito/internal/creation/settings/CreationSettings;

    invoke-virtual {p2}, Lorg/mockito/internal/creation/settings/CreationSettings;->getStubbingLookupListeners()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lorg/mockito/internal/junit/UniversalTestListener;->stubbingLookupListener:Lorg/mockito/internal/junit/DefaultStubbingLookupListener;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setListenerDirty()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mockito/internal/junit/UniversalTestListener;->listenerDirty:Z

    return-void
.end method

.method public setStrictness(Lorg/mockito/quality/Strictness;)V
    .locals 1

    iput-object p1, p0, Lorg/mockito/internal/junit/UniversalTestListener;->currentStrictness:Lorg/mockito/quality/Strictness;

    iget-object v0, p0, Lorg/mockito/internal/junit/UniversalTestListener;->stubbingLookupListener:Lorg/mockito/internal/junit/DefaultStubbingLookupListener;

    .line 88
    invoke-virtual {v0, p1}, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;->setCurrentStrictness(Lorg/mockito/quality/Strictness;)V

    return-void
.end method

.method public testFinished(Lorg/mockito/internal/junit/TestFinishedEvent;)V
    .locals 3

    iget-object v0, p0, Lorg/mockito/internal/junit/UniversalTestListener;->mocks:Ljava/util/Map;

    .line 42
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, p0, Lorg/mockito/internal/junit/UniversalTestListener;->mocks:Ljava/util/Map;

    .line 48
    sget-object v1, Lorg/mockito/internal/junit/UniversalTestListener$1;->$SwitchMap$org$mockito$quality$Strictness:[I

    iget-object v2, p0, Lorg/mockito/internal/junit/UniversalTestListener;->currentStrictness:Lorg/mockito/quality/Strictness;

    invoke-virtual {v2}, Lorg/mockito/quality/Strictness;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 p1, 0x3

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown strictness: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mockito/internal/junit/UniversalTestListener;->currentStrictness:Lorg/mockito/quality/Strictness;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_1
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/junit/UniversalTestListener;->reportUnusedStubs(Lorg/mockito/internal/junit/TestFinishedEvent;Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/mockito/internal/junit/UniversalTestListener;->logger:Lorg/mockito/plugins/MockitoLogger;

    .line 49
    invoke-static {v1, p1, v0}, Lorg/mockito/internal/junit/UniversalTestListener;->emitWarnings(Lorg/mockito/plugins/MockitoLogger;Lorg/mockito/internal/junit/TestFinishedEvent;Ljava/util/Collection;)V

    :goto_0
    return-void
.end method
