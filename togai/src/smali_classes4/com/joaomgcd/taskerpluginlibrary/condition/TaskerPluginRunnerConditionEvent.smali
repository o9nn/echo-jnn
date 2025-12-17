.class public abstract Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerConditionEvent;
.super Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;
.source "TaskerPluginRunnerCondition.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TInput:",
        "Ljava/lang/Object;",
        "TOutput:",
        "Ljava/lang/Object;",
        "TUpdate:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition<",
        "TTInput;TTOutput;TTUpdate;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u0002*\u0008\u0008\u0002\u0010\u0004*\u00020\u00022\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00040\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0008X\u0094D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerConditionEvent;",
        "TInput",
        "",
        "TOutput",
        "TUpdate",
        "Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;",
        "()V",
        "isEvent",
        "",
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
.field private final isEvent:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerConditionEvent;->isEvent:Z

    return-void
.end method


# virtual methods
.method protected isEvent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerConditionEvent;->isEvent:Z

    return v0
.end method
