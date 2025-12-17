.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Unsafe;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unsafe"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Unsafe;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Unsafe;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9527
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Unsafe;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Unsafe;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Unsafe;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Unsafe;

    filled-new-array {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Unsafe;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Unsafe;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Unsafe;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9522
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Unsafe;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Unsafe;

    .line 9522
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Unsafe;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Unsafe;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Unsafe;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Unsafe;

    .line 9522
    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Unsafe;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Unsafe;

    return-object v0
.end method


# virtual methods
.method public make(Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassInjector;
    .locals 2

    .line 9533
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;

    sget-object v1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->BOOTSTRAP_LOADER:Ljava/lang/ClassLoader;

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;-><init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)V

    return-object v0
.end method
