.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Enabled"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final folder:Ljava/io/File;

.field private final instrumentation:Ljava/lang/instrument/Instrumentation;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/instrument/Instrumentation;)V
    .locals 0

    .line 9559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;->folder:Ljava/io/File;

    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;->instrumentation:Ljava/lang/instrument/Instrumentation;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;->folder:Ljava/io/File;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;->folder:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;->instrumentation:Ljava/lang/instrument/Instrumentation;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;->folder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public make(Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassInjector;
    .locals 2

    iget-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;->folder:Ljava/io/File;

    .line 9568
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;->BOOTSTRAP:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-static {p1, v0, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->of(Ljava/io/File;Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/dynamic/loading/ClassInjector;

    move-result-object p1

    return-object p1
.end method
