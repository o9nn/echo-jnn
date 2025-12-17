.class public interface abstract Lapp/rive/runtime/kotlin/core/RefCount;
.super Ljava/lang/Object;
.source "RefCount.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/rive/runtime/kotlin/core/RefCount$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u000c\u001a\u00020\u0003H\u0017J\u0008\u0010\r\u001a\u00020\u0003H\u0017R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0018\u0010\u0006\u001a\u00020\u0007X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/RefCount;",
        "",
        "refCount",
        "",
        "getRefCount",
        "()I",
        "refs",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "getRefs",
        "()Ljava/util/concurrent/atomic/AtomicInteger;",
        "setRefs",
        "(Ljava/util/concurrent/atomic/AtomicInteger;)V",
        "acquire",
        "release",
        "kotlin_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract acquire()I
.end method

.method public abstract getRefCount()I
.end method

.method public abstract getRefs()Ljava/util/concurrent/atomic/AtomicInteger;
.end method

.method public abstract release()I
.end method

.method public abstract setRefs(Ljava/util/concurrent/atomic/AtomicInteger;)V
.end method
