.class final Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$context$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TaskerPluginConfigHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;-><init>(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\u0008\u0008\u0001\u0010\u0004*\u00020\u0003\"\u0014\u0008\u0002\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "Landroid/content/Context;",
        "TInput",
        "",
        "TOutput",
        "TActionRunner",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper<",
            "TTInput;TTOutput;TTActionRunner;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper<",
            "TTInput;TTOutput;TTActionRunner;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$context$2;->this$0:Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$context$2;->this$0:Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;

    .line 23
    invoke-virtual {v0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->getConfig()Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$context$2;->invoke()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
