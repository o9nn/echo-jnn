.class public Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultErrorWithOutput;
.super Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResult;
.source "TaskerPluginResult.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TOutput:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResult<",
        "TTOutput;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0015\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultErrorWithOutput;",
        "TOutput",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResult;",
        "t",
        "",
        "(Ljava/lang/Throwable;)V",
        "code",
        "",
        "message",
        "",
        "(ILjava/lang/String;)V",
        "getMessage",
        "()Ljava/lang/String;",
        "signalFinish",
        "",
        "args",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;",
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
.field private final code:I

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, v0, v1}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResult;-><init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultErrorWithOutput;->code:I

    iput-object p2, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultErrorWithOutput;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultErrorWithOutput;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultErrorWithOutput;->message:Ljava/lang/String;

    return-object v0
.end method

.method public signalFinish(Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;)Z
    .locals 4

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;->getTaskerIntent()Landroid/content/Intent;

    move-result-object p1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v2, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultErrorWithOutput;->code:I

    .line 27
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%err"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "%errmsg"

    iget-object v3, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultErrorWithOutput;->message:Ljava/lang/String;

    .line 28
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x2

    .line 26
    invoke-static {v0, p1, v2, v1}, Lnet/dinglisch/android/tasker/TaskerPlugin$Setting;->signalFinish(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
