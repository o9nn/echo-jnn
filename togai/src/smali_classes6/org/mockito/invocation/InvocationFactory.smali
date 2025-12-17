.class public interface abstract Lorg/mockito/invocation/InvocationFactory;
.super Ljava/lang/Object;
.source "InvocationFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/invocation/InvocationFactory$RealMethodBehavior;
    }
.end annotation

.annotation runtime Lorg/mockito/Incubating;
.end annotation


# virtual methods
.method public varargs abstract createInvocation(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;Ljava/lang/reflect/Method;Ljava/util/concurrent/Callable;[Ljava/lang/Object;)Lorg/mockito/invocation/Invocation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public varargs abstract createInvocation(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;Ljava/lang/reflect/Method;Lorg/mockito/invocation/InvocationFactory$RealMethodBehavior;[Ljava/lang/Object;)Lorg/mockito/invocation/Invocation;
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end method
