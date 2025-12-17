.class public interface abstract Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher;
.super Ljava/lang/Object;
.source "ClassFileLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher$ForJava6CapableVm;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher$ForLegacyVm;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher$CreationAction;
    }
.end annotation


# virtual methods
.method public abstract addTransformer(Ljava/lang/instrument/Instrumentation;Ljava/lang/instrument/ClassFileTransformer;Z)V
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
