.class public interface abstract Lorg/mockito/internal/invocation/RealMethod;
.super Ljava/lang/Object;
.source "RealMethod.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/invocation/RealMethod$FromBehavior;,
        Lorg/mockito/internal/invocation/RealMethod$FromCallable;,
        Lorg/mockito/internal/invocation/RealMethod$IsIllegal;
    }
.end annotation


# virtual methods
.method public abstract invoke()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract isInvokable()Z
.end method
