.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Java9CapableVmDispatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "[B>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field private final binaryRepresentation:[B

.field private final classBeingRedefined:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final classLoader:Ljava/lang/ClassLoader;

.field private final internalTypeName:Ljava/lang/String;

.field private final protectionDomain:Ljava/security/ProtectionDomain;

.field private final rawModule:Ljava/lang/Object;

.field final synthetic this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            "[B)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;

    .line 10950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->rawModule:Ljava/lang/Object;

    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->classLoader:Ljava/lang/ClassLoader;

    iput-object p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->internalTypeName:Ljava/lang/String;

    iput-object p5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->classBeingRedefined:Ljava/lang/Class;

    iput-object p6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->protectionDomain:Ljava/security/ProtectionDomain;

    iput-object p7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->binaryRepresentation:[B

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
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->internalTypeName:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->internalTypeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->rawModule:Ljava/lang/Object;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->rawModule:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->classLoader:Ljava/lang/ClassLoader;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->classBeingRedefined:Ljava/lang/Class;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->classBeingRedefined:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->protectionDomain:Ljava/security/ProtectionDomain;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->protectionDomain:Ljava/security/ProtectionDomain;

    invoke-virtual {v2, v3}, Ljava/security/ProtectionDomain;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->binaryRepresentation:[B

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->binaryRepresentation:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->rawModule:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->internalTypeName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->classBeingRedefined:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->protectionDomain:Ljava/security/ProtectionDomain;

    invoke-virtual {v0}, Ljava/security/ProtectionDomain;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->binaryRepresentation:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;

    invoke-virtual {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 10901
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->run()[B

    move-result-object v0

    return-object v0
.end method

.method public run()[B
    .locals 7

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->rawModule:Ljava/lang/Object;

    .line 10963
    invoke-static {v1}, Lnet/bytebuddy/utility/JavaModule;->of(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaModule;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->classLoader:Ljava/lang/ClassLoader;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->internalTypeName:Ljava/lang/String;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->classBeingRedefined:Ljava/lang/Class;

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->protectionDomain:Ljava/security/ProtectionDomain;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;->binaryRepresentation:[B

    invoke-static/range {v0 .. v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->access$1500(Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B

    move-result-object v0

    return-object v0
.end method
