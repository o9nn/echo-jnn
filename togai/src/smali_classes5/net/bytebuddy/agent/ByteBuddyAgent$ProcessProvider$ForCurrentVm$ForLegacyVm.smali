.class public final enum Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForLegacyVm;
.super Ljava/lang/Enum;
.source "ByteBuddyAgent.java"

# interfaces
.implements Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ForLegacyVm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForLegacyVm;",
        ">;",
        "Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForLegacyVm;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForLegacyVm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1076
    new-instance v0, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForLegacyVm;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForLegacyVm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForLegacyVm;

    filled-new-array {v0}, [Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForLegacyVm;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForLegacyVm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1071
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForLegacyVm;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForLegacyVm;

    .line 1071
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForLegacyVm;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForLegacyVm;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForLegacyVm;

    .line 1071
    invoke-virtual {v0}, [Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForLegacyVm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm$ForLegacyVm;

    return-object v0
.end method


# virtual methods
.method public resolve()Ljava/lang/String;
    .locals 3

    .line 1082
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/management/RuntimeMXBean;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40

    .line 1083
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 1087
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1085
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot extract process id from runtime management bean"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
