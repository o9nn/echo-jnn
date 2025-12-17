.class public final Lcom/layla/tasker/taskcompleteevent/ActivityConfigTaskCompleteEvent;
.super Lcom/layla/tasker/ActivityConfigTasker;
.source "TaskerCompleteEventHelper.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layla/tasker/ActivityConfigTasker<",
        "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventInput;",
        "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;",
        "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventRunner;",
        "Lcom/layla/tasker/taskcompleteevent/TaskCompleteEventHelper;",
        "Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002 \u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0001B\u0005\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010\u000f\u001a\u00020\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tH\u0016J\u0016\u0010\u0012\u001a\u00020\u00052\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0017H\u0014R\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\rX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/layla/tasker/taskcompleteevent/ActivityConfigTaskCompleteEvent;",
        "Lcom/layla/tasker/ActivityConfigTasker;",
        "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventInput;",
        "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;",
        "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventRunner;",
        "Lcom/layla/tasker/taskcompleteevent/TaskCompleteEventHelper;",
        "Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;",
        "()V",
        "inputForTasker",
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;",
        "getInputForTasker",
        "()Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;",
        "isConfigurable",
        "",
        "()Z",
        "assignFromInput",
        "",
        "input",
        "getNewHelper",
        "config",
        "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;",
        "inflateBinding",
        "layoutInflater",
        "Landroid/view/LayoutInflater;",
        "app_release"
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
.field private final inputForTasker:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventInput;",
            ">;"
        }
    .end annotation
.end field

.field private final isConfigurable:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 26
    invoke-direct {p0}, Lcom/layla/tasker/ActivityConfigTasker;-><init>()V

    .line 33
    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;

    new-instance v1, Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventInput;

    invoke-direct {v1}, Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventInput;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;-><init>(Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/layla/tasker/taskcompleteevent/ActivityConfigTaskCompleteEvent;->inputForTasker:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;

    return-void
.end method


# virtual methods
.method public assignFromInput(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventInput;",
            ">;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getInputForTasker()Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventInput;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layla/tasker/taskcompleteevent/ActivityConfigTaskCompleteEvent;->inputForTasker:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;

    return-object v0
.end method

.method public bridge synthetic getNewHelper(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;)Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/layla/tasker/taskcompleteevent/ActivityConfigTaskCompleteEvent;->getNewHelper(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;)Lcom/layla/tasker/taskcompleteevent/TaskCompleteEventHelper;

    move-result-object p1

    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;

    return-object p1
.end method

.method public getNewHelper(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;)Lcom/layla/tasker/taskcompleteevent/TaskCompleteEventHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig<",
            "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventInput;",
            ">;)",
            "Lcom/layla/tasker/taskcompleteevent/TaskCompleteEventHelper;"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/layla/tasker/taskcompleteevent/TaskCompleteEventHelper;

    invoke-direct {v0, p1}, Lcom/layla/tasker/taskcompleteevent/TaskCompleteEventHelper;-><init>(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;)V

    return-object v0
.end method

.method public bridge synthetic inflateBinding(Landroid/view/LayoutInflater;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/layla/tasker/taskcompleteevent/ActivityConfigTaskCompleteEvent;->inflateBinding(Landroid/view/LayoutInflater;)Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    return-object p1
.end method

.method protected inflateBinding(Landroid/view/LayoutInflater;)Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;
    .locals 1

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {p1}, Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isConfigurable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layla/tasker/taskcompleteevent/ActivityConfigTaskCompleteEvent;->isConfigurable:Z

    return v0
.end method
