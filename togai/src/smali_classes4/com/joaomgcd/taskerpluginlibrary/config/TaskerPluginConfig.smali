.class public interface abstract Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;
.super Ljava/lang/Object;
.source "TaskerPluginConfig.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TInput:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008f\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002J\u0016\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H&J\u0008\u0010\u000e\u001a\u00020\u000cH&J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0010H&J\u0018\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0010H&R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;",
        "TInput",
        "",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "inputForTasker",
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;",
        "getInputForTasker",
        "()Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;",
        "assignFromInput",
        "",
        "input",
        "finish",
        "getIntent",
        "Landroid/content/Intent;",
        "setResult",
        "resultCode",
        "",
        "data",
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


# virtual methods
.method public abstract assignFromInput(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "TTInput;>;)V"
        }
    .end annotation
.end method

.method public abstract finish()V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getInputForTasker()Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "TTInput;>;"
        }
    .end annotation
.end method

.method public abstract getIntent()Landroid/content/Intent;
.end method

.method public abstract setResult(ILandroid/content/Intent;)V
.end method
