.class public Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Installation;
.super Ljava/lang/Object;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Installation"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final installationListener:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

.field private final listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;)V
    .locals 0

    .line 6557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Installation;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Installation;->installationListener:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

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
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Installation;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Installation;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Installation;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Installation;->installationListener:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Installation;->installationListener:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method protected getInstallationListener()Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Installation;->installationListener:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

    return-object v0
.end method

.method protected getListener()Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Installation;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Installation;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Installation;->installationListener:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
