.class public final enum Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;
.super Ljava/lang/Enum;
.source "ByteBuddyAgent.java"

# interfaces
.implements Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForUnixHotSpotVm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;",
        ">;",
        "Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 961
    new-instance v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;

    filled-new-array {v0}, [Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;->$VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 956
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;

    .line 956
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;->$VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;

    .line 956
    invoke-virtual {v0}, [Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;

    return-object v0
.end method


# virtual methods
.method public attempt()Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;
    .locals 2

    .line 968
    :try_start_0
    new-instance v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Simple$WithoutExternalAttachment;

    invoke-static {}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;->assertAvailability()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Simple$WithoutExternalAttachment;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 970
    :catchall_0
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;

    return-object v0
.end method
