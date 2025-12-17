.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForLegacyVm;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForLegacyVm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForLegacyVm;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForLegacyVm;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForLegacyVm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9386
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForLegacyVm;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForLegacyVm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForLegacyVm;

    filled-new-array {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForLegacyVm;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForLegacyVm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9381
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForLegacyVm;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForLegacyVm;

    .line 9381
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForLegacyVm;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForLegacyVm;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForLegacyVm;

    .line 9381
    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForLegacyVm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher$ForLegacyVm;

    return-object v0
.end method


# virtual methods
.method public addTransformer(Ljava/lang/instrument/Instrumentation;Ljava/lang/instrument/ClassFileTransformer;Z)V
    .locals 0

    if-nez p3, :cond_0

    .line 9409
    invoke-interface {p1, p2}, Ljava/lang/instrument/Instrumentation;->addTransformer(Ljava/lang/instrument/ClassFileTransformer;)V

    return-void

    .line 9407
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "The current VM does not support retransformation"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isNativeMethodPrefixSupported(Ljava/lang/instrument/Instrumentation;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setNativeMethodPrefix(Ljava/lang/instrument/Instrumentation;Ljava/lang/instrument/ClassFileTransformer;Ljava/lang/String;)V
    .locals 0

    .line 9399
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "The current VM does not support native method prefixes"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
