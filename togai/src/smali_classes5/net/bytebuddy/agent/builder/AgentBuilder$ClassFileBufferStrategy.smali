.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;
.super Ljava/lang/Object;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClassFileBufferStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;
    }
.end annotation


# virtual methods
.method public abstract resolve(Ljava/lang/String;[BLjava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/ClassFileLocator;
.end method
