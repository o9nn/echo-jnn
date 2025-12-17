.class Lorg/mockito/internal/junit/DefaultStubbingLookupListener;
.super Ljava/lang/Object;
.source "DefaultStubbingLookupListener.java"

# interfaces
.implements Lorg/mockito/listeners/StubbingLookupListener;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5e3a37b4d7e3ec6dL


# instance fields
.field private currentStrictness:Lorg/mockito/quality/Strictness;

.field private mismatchesReported:Z


# direct methods
.method constructor <init>(Lorg/mockito/quality/Strictness;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;->currentStrictness:Lorg/mockito/quality/Strictness;

    return-void
.end method

.method private static potentialArgMismatches(Lorg/mockito/invocation/Invocation;Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/Invocation;",
            "Ljava/util/Collection<",
            "Lorg/mockito/stubbing/Stubbing;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 61
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/stubbing/Stubbing;

    .line 62
    invoke-static {v1}, Lorg/mockito/internal/stubbing/UnusedStubbingReporting;->shouldBeReported(Lorg/mockito/stubbing/Stubbing;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-interface {v1}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v2

    invoke-interface {v2}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-interface {v1}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v2

    invoke-interface {v2}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v2

    invoke-interface {v2}, Lorg/mockito/invocation/Location;->getSourceFile()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v3

    invoke-interface {v3}, Lorg/mockito/invocation/Location;->getSourceFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    invoke-interface {v1}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method isMismatchesReported()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;->mismatchesReported:Z

    return v0
.end method

.method public onStubbingLookup(Lorg/mockito/listeners/StubbingLookupEvent;)V
    .locals 3

    .line 38
    invoke-interface {p1}, Lorg/mockito/listeners/StubbingLookupEvent;->getStubbingFound()Lorg/mockito/stubbing/Stubbing;

    move-result-object v0

    invoke-interface {p1}, Lorg/mockito/listeners/StubbingLookupEvent;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;->currentStrictness:Lorg/mockito/quality/Strictness;

    invoke-static {v0, v1, v2}, Lorg/mockito/internal/stubbing/StrictnessSelector;->determineStrictness(Lorg/mockito/stubbing/Stubbing;Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/quality/Strictness;)Lorg/mockito/quality/Strictness;

    move-result-object v0

    .line 40
    sget-object v1, Lorg/mockito/quality/Strictness;->STRICT_STUBS:Lorg/mockito/quality/Strictness;

    if-eq v0, v1, :cond_0

    return-void

    .line 44
    :cond_0
    invoke-interface {p1}, Lorg/mockito/listeners/StubbingLookupEvent;->getStubbingFound()Lorg/mockito/stubbing/Stubbing;

    move-result-object v0

    if-nez v0, :cond_1

    .line 47
    invoke-interface {p1}, Lorg/mockito/listeners/StubbingLookupEvent;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v0

    invoke-interface {p1}, Lorg/mockito/listeners/StubbingLookupEvent;->getAllStubbings()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;->potentialArgMismatches(Lorg/mockito/invocation/Invocation;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;->mismatchesReported:Z

    .line 50
    invoke-interface {p1}, Lorg/mockito/listeners/StubbingLookupEvent;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/mockito/internal/exceptions/Reporter;->potentialStubbingProblem(Lorg/mockito/invocation/Invocation;Ljava/util/Collection;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-interface {p1}, Lorg/mockito/listeners/StubbingLookupEvent;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object p1

    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->markVerified()V

    :cond_2
    :goto_0
    return-void
.end method

.method setCurrentStrictness(Lorg/mockito/quality/Strictness;)V
    .locals 0

    iput-object p1, p0, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;->currentStrictness:Lorg/mockito/quality/Strictness;

    return-void
.end method
