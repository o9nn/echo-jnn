.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher;
.super Ljava/lang/Object;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForJava6CapableVm;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForLegacyVm;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$CreationAction;
    }
.end annotation


# virtual methods
.method public abstract addTransformer(Ljava/lang/instrument/Instrumentation;Ljava/lang/instrument/ClassFileTransformer;Z)V
.end method

.method public abstract isNativeMethodPrefixSupported(Ljava/lang/instrument/Instrumentation;)Z
.end method

.method public abstract setNativeMethodPrefix(Ljava/lang/instrument/Instrumentation;Ljava/lang/instrument/ClassFileTransformer;Ljava/lang/String;)V
.end method
