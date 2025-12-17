.class public Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$ForJava9CapableVm;
.super Ljava/lang/Object;
.source "ByteBuddyAgent.java"

# interfaces
.implements Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJava9CapableVm"
.end annotation


# instance fields
.field private final current:Ljava/lang/reflect/Method;

.field private final pid:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$ForJava9CapableVm;->current:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$ForJava9CapableVm;->pid:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public requiresExternalAttachment(Ljava/lang/String;)Z
    .locals 5

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$ForJava9CapableVm;->pid:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$ForJava9CapableVm;->current:Ljava/lang/reflect/Method;

    .line 1408
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->access$100()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1412
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error when accessing Java 9 process API"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1410
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access Java 9 process API"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
