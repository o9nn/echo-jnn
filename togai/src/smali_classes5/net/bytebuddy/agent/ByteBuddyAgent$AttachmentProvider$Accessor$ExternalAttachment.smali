.class public Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;
.super Ljava/lang/Object;
.source "ByteBuddyAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalAttachment"
.end annotation


# instance fields
.field private final classPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final virtualMachineType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;->virtualMachineType:Ljava/lang/String;

    iput-object p2, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;->classPath:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getClassPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;->classPath:Ljava/util/List;

    return-object v0
.end method

.method public getVirtualMachineType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;->virtualMachineType:Ljava/lang/String;

    return-object v0
.end method
