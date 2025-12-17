.class public final Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesEvent;
.super Ljava/lang/Object;
.source "HostCapabilities.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesEvent;",
        "",
        "bundleExtras",
        "Landroid/os/Bundle;",
        "(Landroid/os/Bundle;)V",
        "supportsPassThroughData",
        "",
        "getSupportsPassThroughData",
        "()Z",
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
.field private final supportsPassThroughData:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lnet/dinglisch/android/tasker/TaskerPlugin$Event;->hostSupportsRequestQueryDataPassThrough(Landroid/os/Bundle;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesEvent;->supportsPassThroughData:Z

    return-void
.end method


# virtual methods
.method public final getSupportsPassThroughData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilitesEvent;->supportsPassThroughData:Z

    return v0
.end method
