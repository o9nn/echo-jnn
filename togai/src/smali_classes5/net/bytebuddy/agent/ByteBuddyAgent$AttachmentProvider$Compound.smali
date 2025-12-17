.class public Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Compound;
.super Ljava/lang/Object;
.source "ByteBuddyAgent.java"

# interfaces
.implements Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation


# instance fields
.field private final attachmentProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;",
            ">;)V"
        }
    .end annotation

    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1002
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Compound;->attachmentProviders:Ljava/util/List;

    .line 1003
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    .line 1004
    instance-of v1, v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Compound;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Compound;->attachmentProviders:Ljava/util/List;

    .line 1005
    check-cast v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Compound;

    iget-object v0, v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Compound;->attachmentProviders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Compound;->attachmentProviders:Ljava/util/List;

    .line 1007
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V
    .locals 0

    .line 993
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Compound;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public attempt()Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Compound;->attachmentProviders:Ljava/util/List;

    .line 1016
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    .line 1017
    invoke-interface {v1}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;->attempt()Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;

    move-result-object v1

    .line 1018
    invoke-interface {v1}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 1022
    :cond_1
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;

    return-object v0
.end method
