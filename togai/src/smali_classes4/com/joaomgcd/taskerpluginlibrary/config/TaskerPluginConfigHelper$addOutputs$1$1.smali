.class final Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$addOutputs$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TaskerPluginConfigHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->addOutputs(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputsForConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\u0008\u0008\u0001\u0010\u0004*\u00020\u0003\"\u0014\u0008\u0002\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\n\u00a2\u0006\u0004\u0008\t\u0010\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "TInput",
        "",
        "TOutput",
        "TActionRunner",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;",
        "it",
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;",
        "invoke",
        "(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;)Ljava/lang/Boolean;"
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
.field final synthetic $input:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "TTInput;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper<",
            "TTInput;TTOutput;TTActionRunner;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper<",
            "TTInput;TTOutput;TTActionRunner;>;",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "TTInput;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$addOutputs$1$1;->this$0:Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;

    iput-object p2, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$addOutputs$1$1;->$input:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;)Ljava/lang/Boolean;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$addOutputs$1$1;->this$0:Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;

    .line 94
    invoke-static {v0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->access$getRunner(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$addOutputs$1$1;->this$0:Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;

    invoke-virtual {v1}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->getConfig()Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$addOutputs$1$1;->$input:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;

    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;

    invoke-virtual {v0, v1, v2, p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;->shouldAddOutput(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;

    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$addOutputs$1$1;->invoke(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
