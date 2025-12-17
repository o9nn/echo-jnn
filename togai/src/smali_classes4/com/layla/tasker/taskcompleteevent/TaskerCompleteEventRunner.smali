.class public final Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventRunner;
.super Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerConditionEvent;
.source "TaskerCompleteEventHelper.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerConditionEvent<",
        "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventInput;",
        "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;",
        "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J.\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventRunner;",
        "Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerConditionEvent;",
        "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventInput;",
        "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;",
        "()V",
        "getSatisfiedCondition",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;",
        "context",
        "Landroid/content/Context;",
        "input",
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;",
        "update",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerConditionEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public getSatisfiedCondition(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventInput;",
            ">;",
            "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;",
            ")",
            "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition<",
            "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance p2, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionSatisfied;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionSatisfied;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;

    return-object p2
.end method

.method public bridge synthetic getSatisfiedCondition(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;Ljava/lang/Object;)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;
    .locals 0

    .line 14
    check-cast p3, Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;

    invoke-virtual {p0, p1, p2, p3}, Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventRunner;->getSatisfiedCondition(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;

    move-result-object p1

    return-object p1
.end method
