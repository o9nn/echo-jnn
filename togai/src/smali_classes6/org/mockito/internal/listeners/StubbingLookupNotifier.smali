.class public Lorg/mockito/internal/listeners/StubbingLookupNotifier;
.super Ljava/lang/Object;
.source "StubbingLookupNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/listeners/StubbingLookupNotifier$Event;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyStubbedAnswerLookup(Lorg/mockito/invocation/Invocation;Lorg/mockito/stubbing/Stubbing;Ljava/util/Collection;Lorg/mockito/internal/creation/settings/CreationSettings;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/Invocation;",
            "Lorg/mockito/stubbing/Stubbing;",
            "Ljava/util/Collection<",
            "Lorg/mockito/stubbing/Stubbing;",
            ">;",
            "Lorg/mockito/internal/creation/settings/CreationSettings;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-virtual {p3}, Lorg/mockito/internal/creation/settings/CreationSettings;->getStubbingLookupListeners()Ljava/util/List;

    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 25
    :cond_0
    new-instance v1, Lorg/mockito/internal/listeners/StubbingLookupNotifier$Event;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/mockito/internal/listeners/StubbingLookupNotifier$Event;-><init>(Lorg/mockito/invocation/Invocation;Lorg/mockito/stubbing/Stubbing;Ljava/util/Collection;Lorg/mockito/mock/MockCreationSettings;)V

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mockito/listeners/StubbingLookupListener;

    .line 27
    invoke-interface {p1, v1}, Lorg/mockito/listeners/StubbingLookupListener;->onStubbingLookup(Lorg/mockito/listeners/StubbingLookupEvent;)V

    goto :goto_0

    :cond_1
    return-void
.end method
