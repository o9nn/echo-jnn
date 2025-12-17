.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;

.field public static final enum EXTENDED:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;

.field public static final enum FAST:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;


# instance fields
.field private final readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 2652
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;

    const/4 v1, 0x0

    sget-object v2, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->EXTENDED:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    const-string v3, "EXTENDED"

    invoke-direct {v0, v3, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/pool/TypePool$Default$ReaderMode;)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;->EXTENDED:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;

    .line 2660
    new-instance v1, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;

    const/4 v2, 0x1

    sget-object v3, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->FAST:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    const-string v4, "FAST"

    invoke-direct {v1, v4, v2, v3}, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/pool/TypePool$Default$ReaderMode;)V

    sput-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;->FAST:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;

    filled-new-array {v0, v1}, [Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILnet/bytebuddy/pool/TypePool$Default$ReaderMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;",
            ")V"
        }
    .end annotation

    .line 2672
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;

    .line 2644
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;

    .line 2644
    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;

    return-object v0
.end method


# virtual methods
.method public typePool(Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/lang/ClassLoader;)Lnet/bytebuddy/pool/TypePool;
    .locals 2

    .line 2680
    new-instance p2, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;

    invoke-static {}, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;->withObjectType()Lnet/bytebuddy/pool/TypePool$CacheProvider;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-direct {p2, v0, p1, v1}, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;-><init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;)V

    return-object p2
.end method
