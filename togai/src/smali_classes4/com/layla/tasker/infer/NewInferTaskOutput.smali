.class public final Lcom/layla/tasker/infer/NewInferTaskOutput;
.super Ljava/lang/Object;
.source "Output.kt"


# annotations
.annotation runtime Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputObject;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/layla/tasker/infer/NewInferTaskOutput;",
        "",
        "output",
        "",
        "(Ljava/lang/String;)V",
        "getOutput",
        "()Ljava/lang/String;",
        "setOutput",
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
.field private output:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layla/tasker/infer/NewInferTaskOutput;->output:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getOutput()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;
        htmlLabelResIdName = "Unique task ID for the newly created inference task"
        labelResIdName = "Unique task ID for the newly created inference task"
        name = "taskId"
    .end annotation

    iget-object v0, p0, Lcom/layla/tasker/infer/NewInferTaskOutput;->output:Ljava/lang/String;

    return-object v0
.end method

.method public final setOutput(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/layla/tasker/infer/NewInferTaskOutput;->output:Ljava/lang/String;

    return-void
.end method
