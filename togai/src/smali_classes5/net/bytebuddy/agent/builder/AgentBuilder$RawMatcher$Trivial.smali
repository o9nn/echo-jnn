.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Trivial"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;

.field public static final enum MATCHING:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;

.field public static final enum NON_MATCHING:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;


# instance fields
.field private final matches:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 994
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;

    const-string v1, "MATCHING"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;->MATCHING:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;

    .line 999
    new-instance v1, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;

    const-string v4, "NON_MATCHING"

    invoke-direct {v1, v4, v3, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;->NON_MATCHING:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;

    filled-new-array {v0, v1}, [Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1011
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;->matches:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;

    .line 989
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;

    .line 989
    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;

    return-object v0
.end method


# virtual methods
.method public matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/utility/JavaModule;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            ")Z"
        }
    .end annotation

    iget-boolean p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Trivial;->matches:Z

    return p1
.end method
