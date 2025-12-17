.class public final Lapp/rive/runtime/kotlin/controllers/ControllerState;
.super Ljava/lang/Object;
.source "RiveFileController.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001Bk\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0016\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u00080\nj\u0008\u0012\u0004\u0012\u00020\u0008`\u000b\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0007\u0012\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\r0\nj\u0008\u0012\u0004\u0012\u00020\r`\u000b\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011J\u0006\u0010\u001d\u001a\u00020\u001eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0018R!\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u00080\nj\u0008\u0012\u0004\u0012\u00020\u0008`\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR!\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\r0\nj\u0008\u0012\u0004\u0012\u00020\r`\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001aR\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0015\u00a8\u0006\u001f"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/controllers/ControllerState;",
        "",
        "file",
        "Lapp/rive/runtime/kotlin/core/File;",
        "activeArtboard",
        "Lapp/rive/runtime/kotlin/core/Artboard;",
        "animations",
        "",
        "Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;",
        "playingAnimations",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "stateMachines",
        "Lapp/rive/runtime/kotlin/core/StateMachineInstance;",
        "playingStateMachines",
        "isActive",
        "",
        "(Lapp/rive/runtime/kotlin/core/File;Lapp/rive/runtime/kotlin/core/Artboard;Ljava/util/List;Ljava/util/HashSet;Ljava/util/List;Ljava/util/HashSet;Z)V",
        "getActiveArtboard",
        "()Lapp/rive/runtime/kotlin/core/Artboard;",
        "getAnimations",
        "()Ljava/util/List;",
        "getFile",
        "()Lapp/rive/runtime/kotlin/core/File;",
        "()Z",
        "getPlayingAnimations",
        "()Ljava/util/HashSet;",
        "getPlayingStateMachines",
        "getStateMachines",
        "dispose",
        "",
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


# instance fields
.field private final activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

.field private final animations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;",
            ">;"
        }
    .end annotation
.end field

.field private final file:Lapp/rive/runtime/kotlin/core/File;

.field private final isActive:Z

.field private final playingAnimations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;",
            ">;"
        }
    .end annotation
.end field

.field private final playingStateMachines:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lapp/rive/runtime/kotlin/core/StateMachineInstance;",
            ">;"
        }
    .end annotation
.end field

.field private final stateMachines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/core/StateMachineInstance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lapp/rive/runtime/kotlin/core/File;Lapp/rive/runtime/kotlin/core/Artboard;Ljava/util/List;Ljava/util/HashSet;Ljava/util/List;Ljava/util/HashSet;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapp/rive/runtime/kotlin/core/File;",
            "Lapp/rive/runtime/kotlin/core/Artboard;",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;",
            ">;",
            "Ljava/util/HashSet<",
            "Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;",
            ">;",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/core/StateMachineInstance;",
            ">;",
            "Ljava/util/HashSet<",
            "Lapp/rive/runtime/kotlin/core/StateMachineInstance;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeArtboard"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animations"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playingAnimations"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateMachines"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playingStateMachines"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/ControllerState;->file:Lapp/rive/runtime/kotlin/core/File;

    iput-object p2, p0, Lapp/rive/runtime/kotlin/controllers/ControllerState;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    iput-object p3, p0, Lapp/rive/runtime/kotlin/controllers/ControllerState;->animations:Ljava/util/List;

    iput-object p4, p0, Lapp/rive/runtime/kotlin/controllers/ControllerState;->playingAnimations:Ljava/util/HashSet;

    iput-object p5, p0, Lapp/rive/runtime/kotlin/controllers/ControllerState;->stateMachines:Ljava/util/List;

    iput-object p6, p0, Lapp/rive/runtime/kotlin/controllers/ControllerState;->playingStateMachines:Ljava/util/HashSet;

    iput-boolean p7, p0, Lapp/rive/runtime/kotlin/controllers/ControllerState;->isActive:Z

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/ControllerState;->file:Lapp/rive/runtime/kotlin/core/File;

    .line 52
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/File;->release()I

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/ControllerState;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    .line 53
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/Artboard;->release()I

    return-void
.end method

.method public final getActiveArtboard()Lapp/rive/runtime/kotlin/core/Artboard;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/ControllerState;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    return-object v0
.end method

.method public final getAnimations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/ControllerState;->animations:Ljava/util/List;

    return-object v0
.end method

.method public final getFile()Lapp/rive/runtime/kotlin/core/File;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/ControllerState;->file:Lapp/rive/runtime/kotlin/core/File;

    return-object v0
.end method

.method public final getPlayingAnimations()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/ControllerState;->playingAnimations:Ljava/util/HashSet;

    return-object v0
.end method

.method public final getPlayingStateMachines()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lapp/rive/runtime/kotlin/core/StateMachineInstance;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/ControllerState;->playingStateMachines:Ljava/util/HashSet;

    return-object v0
.end method

.method public final getStateMachines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/core/StateMachineInstance;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/ControllerState;->stateMachines:Ljava/util/List;

    return-object v0
.end method

.method public final isActive()Z
    .locals 1

    iget-boolean v0, p0, Lapp/rive/runtime/kotlin/controllers/ControllerState;->isActive:Z

    return v0
.end method
