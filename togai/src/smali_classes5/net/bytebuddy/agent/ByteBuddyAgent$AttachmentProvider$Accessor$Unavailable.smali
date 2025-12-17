.class public final enum Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;
.super Ljava/lang/Enum;
.source "ByteBuddyAgent.java"

# interfaces
.implements Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unavailable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;",
        ">;",
        "Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 625
    new-instance v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;

    filled-new-array {v0}, [Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;->$VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 620
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;

    .line 620
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;->$VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;

    .line 620
    invoke-virtual {v0}, [Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;

    return-object v0
.end method


# virtual methods
.method public getExternalAttachment()Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;
    .locals 2

    .line 645
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read the virtual machine type for an unavailable accessor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVirtualMachineType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 638
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read the virtual machine type for an unavailable accessor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
