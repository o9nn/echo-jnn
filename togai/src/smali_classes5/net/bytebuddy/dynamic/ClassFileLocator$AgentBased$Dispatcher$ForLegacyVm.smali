.class public final enum Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher$ForLegacyVm;
.super Ljava/lang/Enum;
.source "ClassFileLocator.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForLegacyVm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher$ForLegacyVm;",
        ">;",
        "Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher$ForLegacyVm;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher$ForLegacyVm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1345
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher$ForLegacyVm;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher$ForLegacyVm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher$ForLegacyVm;

    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher$ForLegacyVm;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher$ForLegacyVm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1340
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher$ForLegacyVm;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher$ForLegacyVm;

    .line 1340
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher$ForLegacyVm;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher$ForLegacyVm;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher$ForLegacyVm;

    .line 1340
    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher$ForLegacyVm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher$ForLegacyVm;

    return-object v0
.end method


# virtual methods
.method public addTransformer(Ljava/lang/instrument/Instrumentation;Ljava/lang/instrument/ClassFileTransformer;Z)V
    .locals 0

    .line 1358
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The current VM does not support class retransformation"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isRetransformClassesSupported(Ljava/lang/instrument/Instrumentation;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public retransformClasses(Ljava/lang/instrument/Instrumentation;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1365
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The current VM does not support class retransformation"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
