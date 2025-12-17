.class public final Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesAction;
.super Ljava/lang/Object;
.source "HostCapabilities.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u0011\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesAction;",
        "",
        "bundleExtras",
        "Landroid/os/Bundle;",
        "(Landroid/os/Bundle;)V",
        "canReplaceVariables",
        "",
        "getCanReplaceVariables",
        "()Z",
        "canReturnVariables",
        "getCanReturnVariables",
        "canRunSynchronously",
        "getCanRunSynchronously",
        "taskerpluginlibrary_release"
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
.field private final canReplaceVariables:Z

.field private final canReturnVariables:Z

.field private final canRunSynchronously:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Lnet/dinglisch/android/tasker/TaskerPlugin$Setting;->hostSupportsVariableReturn(Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesAction;->canReturnVariables:Z

    .line 18
    invoke-static {p1}, Lnet/dinglisch/android/tasker/TaskerPlugin$Setting;->hostSupportsOnFireVariableReplacement(Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesAction;->canReplaceVariables:Z

    .line 19
    invoke-static {p1}, Lnet/dinglisch/android/tasker/TaskerPlugin$Setting;->hostSupportsSynchronousExecution(Landroid/os/Bundle;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesAction;->canRunSynchronously:Z

    return-void
.end method


# virtual methods
.method public final getCanReplaceVariables()Z
    .locals 1

    iget-boolean v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesAction;->canReplaceVariables:Z

    return v0
.end method

.method public final getCanReturnVariables()Z
    .locals 1

    iget-boolean v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesAction;->canReturnVariables:Z

    return v0
.end method

.method public final getCanRunSynchronously()Z
    .locals 1

    iget-boolean v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesAction;->canRunSynchronously:Z

    return v0
.end method
