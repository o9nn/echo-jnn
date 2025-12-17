.class public final enum Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$Disabled;
.super Ljava/lang/Enum;
.source "ByteBuddyAgent.java"

# interfaces
.implements Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Disabled"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$Disabled;",
        ">;",
        "Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$Disabled;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$Disabled;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1367
    new-instance v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$Disabled;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$Disabled;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$Disabled;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$Disabled;

    filled-new-array {v0}, [Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$Disabled;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$Disabled;->$VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$Disabled;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1362
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$Disabled;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$Disabled;

    .line 1362
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$Disabled;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$Disabled;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$Disabled;->$VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$Disabled;

    .line 1362
    invoke-virtual {v0}, [Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$Disabled;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$Disabled;

    return-object v0
.end method


# virtual methods
.method public requiresExternalAttachment(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
