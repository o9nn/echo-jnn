.class public interface abstract Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;
.super Ljava/lang/Object;
.source "RiveFileController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/rive/runtime/kotlin/controllers/RiveFileController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&\u00a8\u0006\u0010"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;",
        "",
        "notifyAdvance",
        "",
        "elapsed",
        "",
        "notifyLoop",
        "animation",
        "Lapp/rive/runtime/kotlin/core/PlayableInstance;",
        "notifyPause",
        "notifyPlay",
        "notifyStateChanged",
        "stateMachineName",
        "",
        "stateName",
        "notifyStop",
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
.method public abstract notifyAdvance(F)V
.end method

.method public abstract notifyLoop(Lapp/rive/runtime/kotlin/core/PlayableInstance;)V
.end method

.method public abstract notifyPause(Lapp/rive/runtime/kotlin/core/PlayableInstance;)V
.end method

.method public abstract notifyPlay(Lapp/rive/runtime/kotlin/core/PlayableInstance;)V
.end method

.method public abstract notifyStateChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract notifyStop(Lapp/rive/runtime/kotlin/core/PlayableInstance;)V
.end method
