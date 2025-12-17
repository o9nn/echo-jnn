.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$CreationAction;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$CreationAction;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$CreationAction;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$CreationAction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9362
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$CreationAction;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$CreationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$CreationAction;

    filled-new-array {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$CreationAction;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$CreationAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9357
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$CreationAction;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$CreationAction;

    .line 9357
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$CreationAction;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$CreationAction;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$CreationAction;

    .line 9357
    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$CreationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$CreationAction;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 9357
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$CreationAction;->run()Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher;
    .locals 9

    .line 9369
    :try_start_0
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForJava6CapableVm;

    const-class v1, Ljava/lang/instrument/Instrumentation;

    const-string v2, "isNativeMethodPrefixSupported"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-class v2, Ljava/lang/instrument/Instrumentation;

    const-string v4, "setNativeMethodPrefix"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/instrument/ClassFileTransformer;

    aput-object v7, v6, v3

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 9370
    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-class v4, Ljava/lang/instrument/Instrumentation;

    const-string v6, "addTransformer"

    new-array v5, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/instrument/ClassFileTransformer;

    aput-object v7, v5, v3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v5, v8

    .line 9371
    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForJava6CapableVm;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 9373
    :catch_0
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForLegacyVm;

    return-object v0
.end method
