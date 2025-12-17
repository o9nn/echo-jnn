.class public final Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilities;
.super Ljava/lang/Object;
.source "HostCapabilities.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0015\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilities;",
        "",
        "bundleExtras",
        "Landroid/os/Bundle;",
        "(Landroid/os/Bundle;)V",
        "action",
        "Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesAction;",
        "getAction",
        "()Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesAction;",
        "condition",
        "Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesCondition;",
        "getCondition",
        "()Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesCondition;",
        "event",
        "Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesEvent;",
        "getEvent",
        "()Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesEvent;",
        "sendsRelevanVariables",
        "",
        "getSendsRelevanVariables",
        "()Z",
        "supportsJsonKeys",
        "getSupportsJsonKeys",
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
.field private final action:Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesAction;

.field private final condition:Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesCondition;

.field private final event:Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesEvent;

.field private final sendsRelevanVariables:Z

.field private final supportsJsonKeys:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;->JSON:Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;

    invoke-static {p1, v0}, Lnet/dinglisch/android/tasker/TaskerPlugin;->hostSupportsKeyEncoding(Landroid/os/Bundle;Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilities;->supportsJsonKeys:Z

    .line 10
    invoke-static {p1}, Lnet/dinglisch/android/tasker/TaskerPlugin;->hostSupportsRelevantVariables(Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilities;->sendsRelevanVariables:Z

    .line 11
    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesAction;

    invoke-direct {v0, p1}, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesAction;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilities;->action:Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesAction;

    .line 12
    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesCondition;

    invoke-direct {v0, p1}, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesCondition;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilities;->condition:Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesCondition;

    .line 13
    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesEvent;

    invoke-direct {v0, p1}, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesEvent;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilities;->event:Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesEvent;

    return-void
.end method


# virtual methods
.method public final getAction()Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesAction;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilities;->action:Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesAction;

    return-object v0
.end method

.method public final getCondition()Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesCondition;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilities;->condition:Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesCondition;

    return-object v0
.end method

.method public final getEvent()Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesEvent;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilities;->event:Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesEvent;

    return-object v0
.end method

.method public final getSendsRelevanVariables()Z
    .locals 1

    iget-boolean v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilities;->sendsRelevanVariables:Z

    return v0
.end method

.method public final getSupportsJsonKeys()Z
    .locals 1

    iget-boolean v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilities;->supportsJsonKeys:Z

    return v0
.end method
