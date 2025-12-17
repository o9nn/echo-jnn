.class public abstract Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelperStateNoOutputOrInputOrUpdate;
.super Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelperNoOutputOrInput;
.source "TaskerPluginConfigHelperVariants.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TRunner:",
        "Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerConditionNoOutputOrInputOrUpdateState;",
        ">",
        "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelperNoOutputOrInput<",
        "TTRunner;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0013\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007R\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelperStateNoOutputOrInputOrUpdate;",
        "TRunner",
        "Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerConditionNoOutputOrInputOrUpdateState;",
        "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelperNoOutputOrInput;",
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

    .line 43
    invoke-direct {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelperNoOutputOrInput;-><init>(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;)V

    .line 44
    const-class p1, Lkotlin/Unit;

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelperStateNoOutputOrInputOrUpdate;->inputClass:Ljava/lang/Class;

    .line 45
    const-class p1, Lkotlin/Unit;

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelperStateNoOutputOrInputOrUpdate;->outputClass:Ljava/lang/Class;

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

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelperStateNoOutputOrInputOrUpdate;->inputClass:Ljava/lang/Class;

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

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelperStateNoOutputOrInputOrUpdate;->outputClass:Ljava/lang/Class;

    return-object v0
.end method
