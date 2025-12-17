.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Reiterating;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reiterating"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Reiterating$ReiteratingIterator;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Reiterating$ReiteratingIterable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Reiterating;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Reiterating;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Reiterating;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 5710
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Reiterating;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Reiterating;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Reiterating;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Reiterating;

    filled-new-array {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Reiterating;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Reiterating;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Reiterating;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5705
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Reiterating;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Reiterating;

    .line 5705
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Reiterating;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Reiterating;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Reiterating;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Reiterating;

    .line 5705
    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Reiterating;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Reiterating;

    return-object v0
.end method


# virtual methods
.method public resolve(Ljava/lang/instrument/Instrumentation;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 5716
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Reiterating$ReiteratingIterable;

    invoke-direct {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Reiterating$ReiteratingIterable;-><init>(Ljava/lang/instrument/Instrumentation;)V

    return-object v0
.end method
