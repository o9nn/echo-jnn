.class final Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$getArgsSignalFinish$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TaskerPluginRunnerAction.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;->getArgsSignalFinish(Landroid/content/Context;Landroid/content/Intent;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\u0008\u0008\u0001\u0010\u0004*\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "TInput",
        "",
        "TOutput",
        "output",
        "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;",
        "invoke",
        "(Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $input:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "TTInput;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction<",
            "TTInput;TTOutput;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction<",
            "TTInput;TTOutput;>;",
            "Landroid/content/Context;",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "TTInput;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$getArgsSignalFinish$1;->this$0:Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;

    iput-object p2, p0, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$getArgsSignalFinish$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$getArgsSignalFinish$1;->$input:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;)Ljava/lang/Boolean;
    .locals 3

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$getArgsSignalFinish$1;->this$0:Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;

    iget-object v1, p0, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$getArgsSignalFinish$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$getArgsSignalFinish$1;->$input:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;

    .line 48
    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;

    invoke-virtual {v0, v1, v2, p1}, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction;->shouldAddOutput(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;

    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/action/TaskerPluginRunnerAction$getArgsSignalFinish$1;->invoke(Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
