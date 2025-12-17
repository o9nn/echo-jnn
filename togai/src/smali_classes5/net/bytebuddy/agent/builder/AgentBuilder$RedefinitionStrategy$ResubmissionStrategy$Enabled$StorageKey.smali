.class public Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;
.super Ljava/lang/ref/WeakReference;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "StorageKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# instance fields
.field private final hashCode:I


# direct methods
.method protected constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 6499
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6500
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;->hashCode:I

    return-void
.end method

.method static synthetic access$600(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;)I
    .locals 0

    .line 6486
    iget p0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;->hashCode:I

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 6522
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$LookupKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 6523
    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$LookupKey;

    iget v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;->hashCode:I

    .line 6524
    invoke-static {p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$LookupKey;->access$700(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$LookupKey;)I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$LookupKey;->access$800(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$LookupKey;)Ljava/lang/ClassLoader;

    move-result-object p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 6525
    :cond_2
    instance-of v1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;

    if-eqz v1, :cond_4

    .line 6526
    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;

    iget v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;->hashCode:I

    .line 6527
    iget v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;->hashCode:I

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne v1, p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0

    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;->hashCode:I

    return v0
.end method

.method protected isBootstrapLoader()Z
    .locals 1

    iget v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;->hashCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
