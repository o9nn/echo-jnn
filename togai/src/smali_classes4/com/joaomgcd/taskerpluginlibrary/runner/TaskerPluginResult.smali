.class public abstract Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResult;
.super Ljava/lang/Object;
.source "TaskerPluginResult.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TOutput:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u000f\u0008\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH&R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u0082\u0001\u0003\u000b\u000c\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResult;",
        "TOutput",
        "",
        "success",
        "",
        "(Z)V",
        "getSuccess",
        "()Z",
        "signalFinish",
        "args",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultErrorWithOutput;",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultSucess;",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultUnknown;",
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
.field private final success:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResult;->success:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResult;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final getSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResult;->success:Z

    return v0
.end method

.method public abstract signalFinish(Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;)Z
.end method
