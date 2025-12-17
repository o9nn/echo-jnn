.class public Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelperEventNoOutputOrInputOrUpdate;
.super Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelperNoOutputOrInput;
.source "TaskerPluginConfigHelperVariants.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelperNoOutputOrInput<",
        "Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerConditionNoOutputOrInputOrUpdateEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0010\u0006R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelperEventNoOutputOrInputOrUpdate;",
        "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelperNoOutputOrInput;",
        "Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerConditionNoOutputOrInputOrUpdateEvent;",
        "config",
        "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;",
        "",
        "(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;)V",
        "inputClass",
        "Ljava/lang/Class;",
        "getInputClass",
        "()Ljava/lang/Class;",
        "outputClass",
        "getOutputClass",
        "runnerClass",
        "getRunnerClass",
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
.field private final inputClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final outputClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lkotlin/Unit;",
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
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelperNoOutputOrInput;-><init>(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;)V

    .line 40
    const-class p1, Lkotlin/Unit;

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelperEventNoOutputOrInputOrUpdate;->inputClass:Ljava/lang/Class;

    .line 41
    const-class p1, Lkotlin/Unit;

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelperEventNoOutputOrInputOrUpdate;->outputClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getInputClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelperEventNoOutputOrInputOrUpdate;->inputClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getOutputClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelperEventNoOutputOrInputOrUpdate;->outputClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getRunnerClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerConditionNoOutputOrInputOrUpdateEvent;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerConditionNoOutputOrInputOrUpdateEvent;

    return-object v0
.end method
