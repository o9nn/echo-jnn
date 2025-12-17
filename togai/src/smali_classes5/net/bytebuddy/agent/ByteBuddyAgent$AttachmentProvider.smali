.class public interface abstract Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;
.super Ljava/lang/Object;
.source "ByteBuddyAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AttachmentProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Compound;,
        Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;,
        Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUserDefinedToolsJar;,
        Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForStandardToolsJarVm;,
        Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;,
        Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForModularizedVm;,
        Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 566
    new-instance v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Compound;

    const/4 v1, 0x7

    new-array v1, v1, [Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    const/4 v2, 0x0

    sget-object v3, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForModularizedVm;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForModularizedVm;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForJ9Vm;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForStandardToolsJarVm;->JVM_ROOT:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForStandardToolsJarVm;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForStandardToolsJarVm;->JDK_ROOT:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForStandardToolsJarVm;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForStandardToolsJarVm;->MACINTOSH:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForStandardToolsJarVm;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUserDefinedToolsJar;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUserDefinedToolsJar;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$ForUnixHotSpotVm;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Compound;-><init>([Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;->DEFAULT:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    return-void
.end method


# virtual methods
.method public abstract attempt()Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;
.end method
