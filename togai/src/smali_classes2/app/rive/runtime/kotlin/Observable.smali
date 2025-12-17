.class public interface abstract Lapp/rive/runtime/kotlin/Observable;
.super Ljava/lang/Object;
.source "Observable.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListenerType:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/Observable;",
        "ListenerType",
        "",
        "registerListener",
        "",
        "listener",
        "(Ljava/lang/Object;)V",
        "unregisterListener",
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
.method public abstract registerListener(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListenerType;",
            ")V"
        }
    .end annotation
.end method

.method public abstract unregisterListener(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListenerType;",
            ")V"
        }
    .end annotation
.end method
