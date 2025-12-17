.class public interface abstract Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher;
.super Ljava/lang/Object;
.source "ClassReloadingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForJava6CapableVm;,
        Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForLegacyVm;,
        Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$CreationAction;
    }
.end annotation


# virtual methods
.method public abstract addTransformer(Ljava/lang/instrument/Instrumentation;Ljava/lang/instrument/ClassFileTransformer;Z)V
.end method

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
