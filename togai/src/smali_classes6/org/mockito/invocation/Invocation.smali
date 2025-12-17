.class public interface abstract Lorg/mockito/invocation/Invocation;
.super Ljava/lang/Object;
.source "Invocation.java"

# interfaces
.implements Lorg/mockito/invocation/InvocationOnMock;
.implements Lorg/mockito/invocation/DescribedInvocation;


# annotations
.annotation runtime Lorg/mockito/NotExtensible;
.end annotation


# virtual methods
.method public abstract getArgumentsAsMatchers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocation()Lorg/mockito/invocation/Location;
.end method

.method public abstract getRawArguments()[Ljava/lang/Object;
.end method

.method public abstract getRawReturnType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getSequenceNumber()I
.end method

.method public abstract ignoreForVerification()V
.end method

.method public abstract isIgnoredForVerification()Z
.end method

.method public abstract isVerified()Z
.end method

.method public abstract markStubbed(Lorg/mockito/invocation/StubInfo;)V
.end method

.method public abstract markVerified()V
.end method

.method public abstract stubInfo()Lorg/mockito/invocation/StubInfo;
.end method
