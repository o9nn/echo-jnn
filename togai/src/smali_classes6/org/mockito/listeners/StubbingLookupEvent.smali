.class public interface abstract Lorg/mockito/listeners/StubbingLookupEvent;
.super Ljava/lang/Object;
.source "StubbingLookupEvent.java"


# virtual methods
.method public abstract getAllStubbings()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/mockito/stubbing/Stubbing;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInvocation()Lorg/mockito/invocation/Invocation;
.end method

.method public abstract getMockSettings()Lorg/mockito/mock/MockCreationSettings;
.end method

.method public abstract getStubbingFound()Lorg/mockito/stubbing/Stubbing;
.end method
