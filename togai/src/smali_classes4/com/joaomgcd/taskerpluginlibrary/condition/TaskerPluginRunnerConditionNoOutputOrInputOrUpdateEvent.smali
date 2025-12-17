.class public final Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerConditionNoOutputOrInputOrUpdateEvent;
.super Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerConditionNoOutputOrInput;
.source "TaskerPluginRunnerConditionVariants.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerConditionNoOutputOrInput<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J3\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0002\u0010\u000eR\u0014\u0010\u0004\u001a\u00020\u00058TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerConditionNoOutputOrInputOrUpdateEvent;",
        "Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerConditionNoOutputOrInput;",
        "",
        "()V",
        "isEvent",
        "",
        "()Z",
        "getSatisfiedCondition",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;",
        "context",
        "Landroid/content/Context;",
        "input",
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;",
        "update",
        "(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;Lkotlin/Unit;)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerConditionNoOutputOrInput;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getSatisfiedCondition(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;Ljava/lang/Object;)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;
    .locals 0

    .line 14
    check-cast p3, Lkotlin/Unit;

    invoke-virtual {p0, p1, p2, p3}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerConditionNoOutputOrInputOrUpdateEvent;->getSatisfiedCondition(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;Lkotlin/Unit;)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;

    move-result-object p1

    return-object p1
.end method

.method public getSatisfiedCondition(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;Lkotlin/Unit;)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ")",
            "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "input"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance p2, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionSatisfied;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionSatisfied;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;

    return-object p2
.end method

.method protected isEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
