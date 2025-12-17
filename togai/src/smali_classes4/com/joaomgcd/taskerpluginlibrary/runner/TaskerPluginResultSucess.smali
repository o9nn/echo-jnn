.class public final Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultSucess;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B)\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00018\u0000\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0015\u0010\u0003\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultSucess;",
        "TOutput",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResult;",
        "regular",
        "dynamic",
        "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;",
        "callbackUri",
        "Landroid/net/Uri;",
        "(Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;Landroid/net/Uri;)V",
        "getCallbackUri",
        "()Landroid/net/Uri;",
        "getDynamic",
        "()Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;",
        "getRegular",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
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
.field private final callbackUri:Landroid/net/Uri;

.field private final dynamic:Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;

.field private final regular:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTOutput;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultSucess;-><init>(Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;Landroid/net/Uri;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTOutput;",
            "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0, v0, v1}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResult;-><init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultSucess;->regular:Ljava/lang/Object;

    iput-object p2, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultSucess;->dynamic:Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;

    iput-object p3, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultSucess;->callbackUri:Landroid/net/Uri;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;Landroid/net/Uri;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 16
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultSucess;-><init>(Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public final getCallbackUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultSucess;->callbackUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getDynamic()Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultSucess;->dynamic:Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;

    return-object v0
.end method

.method public final getRegular()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTOutput;"
        }
    .end annotation

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultSucess;->regular:Ljava/lang/Object;

    return-object v0
.end method

.method public signalFinish(Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;)Z
    .locals 8

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;->getTaskerIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;->Companion:Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion;

    invoke-virtual {p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultSucess;->regular:Ljava/lang/Object;

    iget-object v5, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultSucess;->dynamic:Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;

    invoke-virtual {p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;->getRenames()Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;

    move-result-object v6

    invoke-virtual {p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;->getFilter()Lkotlin/jvm/functions/Function1;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion;->getVariableBundle(Landroid/content/Context;Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;Lkotlin/jvm/functions/Function1;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v2, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultSucess;->callbackUri:Landroid/net/Uri;

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, p1, v2}, Lnet/dinglisch/android/tasker/TaskerPlugin$Setting;->signalFinish(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
