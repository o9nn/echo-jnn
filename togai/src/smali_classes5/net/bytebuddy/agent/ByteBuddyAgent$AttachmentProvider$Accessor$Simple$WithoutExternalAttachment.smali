.class public Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Simple$WithoutExternalAttachment;
.super Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Simple;
.source "ByteBuddyAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Simple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WithoutExternalAttachment"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 809
    invoke-direct {p0, p1}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Simple;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getExternalAttachment()Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;
    .locals 2

    .line 816
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read the virtual machine type for an unavailable accessor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
