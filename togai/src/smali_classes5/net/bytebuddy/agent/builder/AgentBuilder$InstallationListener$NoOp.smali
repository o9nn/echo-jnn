.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$NoOp;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$NoOp;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 4141
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$NoOp;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$NoOp;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$NoOp;

    filled-new-array {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$NoOp;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$NoOp;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$NoOp;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$NoOp;

    .line 4136
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$NoOp;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$NoOp;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$NoOp;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$NoOp;

    .line 4136
    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$NoOp;

    return-object v0
.end method


# virtual methods
.method public onBeforeInstall(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    return-object p3
.end method

.method public onInstall(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
    .locals 0

    return-void
.end method

.method public onReset(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
    .locals 0

    return-void
.end method
