.class public interface abstract Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator;
.super Ljava/lang/Object;
.source "ByteBuddyAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "AttachmentTypeEvaluator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$ForJava9CapableVm;,
        Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$Disabled;,
        Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;
    }
.end annotation


# virtual methods
.method public abstract requiresExternalAttachment(Ljava/lang/String;)Z
.end method
