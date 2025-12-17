.class public Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Simple$WithExternalAttachment;
.super Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Simple;
.source "ByteBuddyAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Simple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WithExternalAttachment"
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


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 786
    invoke-direct {p0, p1}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Simple;-><init>(Ljava/lang/Class;)V

    iput-object p2, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Simple$WithExternalAttachment;->classPath:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getExternalAttachment()Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;
    .locals 3

    .line 794
    new-instance v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;

    iget-object v1, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Simple$WithExternalAttachment;->virtualMachineType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Simple$WithExternalAttachment;->classPath:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
