.class public final Lcom/layla/tasker/taskcompleteevent/TaskCompleteEventHelper;
.super Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;
.source "TaskerCompleteEventHelper.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper<",
        "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventInput;",
        "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;",
        "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventRunner;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0001B\u0013\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u001a\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/layla/tasker/taskcompleteevent/TaskCompleteEventHelper;",
        "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;",
        "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventInput;",
        "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;",
        "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventRunner;",
        "config",
        "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;",
        "(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;)V",
        "inputClass",
        "Ljava/lang/Class;",
        "getInputClass",
        "()Ljava/lang/Class;",
        "outputClass",
        "getOutputClass",
        "runnerClass",
        "getRunnerClass",
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
.field private final inputClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventInput;",
            ">;"
        }
    .end annotation
.end field

.field private final outputClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;",
            ">;"
        }
    .end annotation
.end field

.field private final runnerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventRunner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig<",
            "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventInput;",
            ">;)V"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;-><init>(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;)V

    .line 21
    const-class p1, Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventRunner;

    iput-object p1, p0, Lcom/layla/tasker/taskcompleteevent/TaskCompleteEventHelper;->runnerClass:Ljava/lang/Class;

    .line 22
    const-class p1, Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventInput;

    iput-object p1, p0, Lcom/layla/tasker/taskcompleteevent/TaskCompleteEventHelper;->inputClass:Ljava/lang/Class;

    .line 23
    const-class p1, Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;

    iput-object p1, p0, Lcom/layla/tasker/taskcompleteevent/TaskCompleteEventHelper;->outputClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getInputClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventInput;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layla/tasker/taskcompleteevent/TaskCompleteEventHelper;->inputClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getOutputClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventOutput;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layla/tasker/taskcompleteevent/TaskCompleteEventHelper;->outputClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getRunnerClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/layla/tasker/taskcompleteevent/TaskerCompleteEventRunner;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layla/tasker/taskcompleteevent/TaskCompleteEventHelper;->runnerClass:Ljava/lang/Class;

    return-object v0
.end method
