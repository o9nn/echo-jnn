.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$CreationAction;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$CreationAction;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$CreationAction;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$CreationAction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 6621
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$CreationAction;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$CreationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$CreationAction;

    filled-new-array {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$CreationAction;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$CreationAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6616
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$CreationAction;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$CreationAction;

    .line 6616
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$CreationAction;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$CreationAction;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$CreationAction;

    .line 6616
    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$CreationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$CreationAction;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 6616
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$CreationAction;->run()Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher;
    .locals 8

    .line 6628
    :try_start_0
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$ForJava6CapableVm;

    const-class v1, Ljava/lang/instrument/Instrumentation;

    const-string v2, "isModifiableClass"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-class v2, Ljava/lang/instrument/Instrumentation;

    const-string v4, "isRetransformClassesSupported"

    new-array v5, v6, [Ljava/lang/Class;

    .line 6629
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-class v4, Ljava/lang/instrument/Instrumentation;

    const-string v5, "retransformClasses"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v7, [Ljava/lang/Class;

    aput-object v7, v3, v6

    .line 6630
    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$ForJava6CapableVm;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6632
    :catch_0
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher$ForLegacyVm;

    return-object v0
.end method
