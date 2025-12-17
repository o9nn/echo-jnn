.class public final Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;
.super Ljava/lang/Object;
.source "TaskerCompleteEventInput.kt"


# annotations
.annotation runtime Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputRoot;
.end annotation

.annotation runtime Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputObject;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0008\u0007\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;",
        "",
        "taskid",
        "",
        "output",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getOutput",
        "()Ljava/lang/String;",
        "getTaskid",
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
.field private final output:Ljava/lang/String;
    .annotation runtime Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputField;
        key = "output"
    .end annotation
.end field

.field private final taskid:Ljava/lang/String;
    .annotation runtime Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputField;
        key = "taskid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;->taskid:Ljava/lang/String;

    iput-object p2, p0, Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;->output:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 19
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getOutput()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;
        htmlLabelResIdName = "Task Output"
        labelResIdName = "Task Output"
        name = "output"
    .end annotation

    iget-object v0, p0, Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;->output:Ljava/lang/String;

    return-object v0
.end method

.method public final getTaskid()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;
        htmlLabelResIdName = "Task Id"
        labelResIdName = "Task Id"
        name = "taskid"
    .end annotation

    iget-object v0, p0, Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;->taskid:Ljava/lang/String;

    return-object v0
.end method
