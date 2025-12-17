.class public final Lcom/layla/tasker/infer/InferInBackgroundOutput;
.super Ljava/lang/Object;
.source "BackgroundInfer.kt"


# annotations
.annotation runtime Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputObject;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/layla/tasker/infer/InferInBackgroundOutput;",
        "",
        "timeTaken",
        "",
        "result",
        "",
        "(Ljava/lang/Long;Ljava/lang/String;)V",
        "getResult",
        "()Ljava/lang/String;",
        "setResult",
        "(Ljava/lang/String;)V",
        "getTimeTaken",
        "()Ljava/lang/Long;",
        "setTimeTaken",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
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
.field private result:Ljava/lang/String;

.field private timeTaken:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layla/tasker/infer/InferInBackgroundOutput;->timeTaken:Ljava/lang/Long;

    iput-object p2, p0, Lcom/layla/tasker/infer/InferInBackgroundOutput;->result:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getResult()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;
        htmlLabelResIdName = "result_description"
        labelResIdName = "result"
        name = "result"
    .end annotation

    iget-object v0, p0, Lcom/layla/tasker/infer/InferInBackgroundOutput;->result:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimeTaken()Ljava/lang/Long;
    .locals 1
    .annotation runtime Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;
        htmlLabelResIdName = "time_taken_description"
        labelResIdName = "time_taken"
        name = "time_taken"
    .end annotation

    iget-object v0, p0, Lcom/layla/tasker/infer/InferInBackgroundOutput;->timeTaken:Ljava/lang/Long;

    return-object v0
.end method

.method public final setResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/layla/tasker/infer/InferInBackgroundOutput;->result:Ljava/lang/String;

    return-void
.end method

.method public final setTimeTaken(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/layla/tasker/infer/InferInBackgroundOutput;->timeTaken:Ljava/lang/Long;

    return-void
.end method
