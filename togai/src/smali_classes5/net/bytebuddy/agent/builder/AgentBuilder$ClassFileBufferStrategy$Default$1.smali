.class final enum Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default$1;
.super Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 4424
    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/agent/builder/AgentBuilder$1;)V

    return-void
.end method


# virtual methods
.method public resolve(Ljava/lang/String;[BLjava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 0

    .line 4431
    invoke-static {p1, p2}, Lnet/bytebuddy/dynamic/ClassFileLocator$Simple;->of(Ljava/lang/String;[B)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object p1

    return-object p1
.end method
