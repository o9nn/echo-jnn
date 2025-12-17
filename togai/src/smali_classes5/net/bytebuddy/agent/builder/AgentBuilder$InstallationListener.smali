.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
.super Ljava/lang/Object;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InstallationListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Compound;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Adapter;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$ErrorSuppressing;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$NoOp;
    }
.end annotation


# static fields
.field public static final SUPPRESS_ERROR:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract onBeforeInstall(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
.end method

.method public abstract onError(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;Ljava/lang/Throwable;)Ljava/lang/Throwable;
.end method

.method public abstract onInstall(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
.end method

.method public abstract onReset(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
.end method
