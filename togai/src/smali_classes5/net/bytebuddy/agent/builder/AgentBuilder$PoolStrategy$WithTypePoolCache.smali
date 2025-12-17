.class public abstract Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithTypePoolCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache$Simple;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field protected final readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;)V
    .locals 0

    .line 2807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-virtual {v0}, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method protected abstract locate(Ljava/lang/ClassLoader;)Lnet/bytebuddy/pool/TypePool$CacheProvider;
.end method

.method public typePool(Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/lang/ClassLoader;)Lnet/bytebuddy/pool/TypePool;
    .locals 2

    .line 2815
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;

    invoke-virtual {p0, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache;->locate(Ljava/lang/ClassLoader;)Lnet/bytebuddy/pool/TypePool$CacheProvider;

    move-result-object p2

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-direct {v0, p2, p1, v1}, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;-><init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;)V

    return-object v0
.end method
