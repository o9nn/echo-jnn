.class public final Lapp/rive/runtime/kotlin/core/RefCount$DefaultImpls;
.super Ljava/lang/Object;
.source "RefCount.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/rive/runtime/kotlin/core/RefCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static acquire(Lapp/rive/runtime/kotlin/core/RefCount;)I
    .locals 0

    .line 14
    invoke-interface {p0}, Lapp/rive/runtime/kotlin/core/RefCount;->getRefs()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    return p0
.end method

.method public static getRefCount(Lapp/rive/runtime/kotlin/core/RefCount;)I
    .locals 0

    .line 10
    invoke-interface {p0}, Lapp/rive/runtime/kotlin/core/RefCount;->getRefs()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public static release(Lapp/rive/runtime/kotlin/core/RefCount;)I
    .locals 0

    .line 19
    invoke-interface {p0}, Lapp/rive/runtime/kotlin/core/RefCount;->getRefs()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    return p0
.end method
