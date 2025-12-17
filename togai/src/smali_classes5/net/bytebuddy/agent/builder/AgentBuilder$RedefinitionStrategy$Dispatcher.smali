.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher;
.super Ljava/lang/Object;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$ForJava6CapableVm;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$ForLegacyVm;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$CreationAction;
    }
.end annotation


# virtual methods
.method public abstract isModifiableClass(Ljava/lang/instrument/Instrumentation;Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract isRetransformClassesSupported(Ljava/lang/instrument/Instrumentation;)Z
.end method

.method public abstract retransformClasses(Ljava/lang/instrument/Instrumentation;[Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/instrument/UnmodifiableClassException;
        }
    .end annotation
.end method
