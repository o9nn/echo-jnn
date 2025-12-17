.class public final enum Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;
.super Ljava/lang/Enum;
.source "ByteBuddyAgent.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InstallationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;

.field private static final JDK_ALLOW_SELF_ATTACH:Ljava/lang/String; = "jdk.attach.allowAttachSelf"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1334
    new-instance v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;

    filled-new-array {v0}, [Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;->$VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1329
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;

    .line 1329
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;->$VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;

    .line 1329
    invoke-virtual {v0}, [Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 1329
    invoke-virtual {p0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;->run()Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator;
    .locals 6

    const-string v0, "java.lang.ProcessHandle"

    :try_start_0
    const-string v1, "jdk.attach.allowAttachSelf"

    .line 1347
    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1348
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$Disabled;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$Disabled;

    return-object v0

    .line 1350
    :cond_0
    new-instance v1, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$ForJava9CapableVm;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "current"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1351
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "pid"

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$ForJava9CapableVm;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1354
    :catch_0
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$Disabled;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$Disabled;

    return-object v0
.end method
