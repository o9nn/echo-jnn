.class final Lcom/layla/tasker/ActivityConfigTasker$taskerHelper$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ActivityConfigTasker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layla/tasker/ActivityConfigTasker;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TTHelper;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\u0008\u0008\u0001\u0010\u0004*\u00020\u0003\"\u0014\u0008\u0002\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\u0006\"\u001a\u0008\u0003\u0010\u0001*\u0014\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0007\"\u0008\u0008\u0004\u0010\u0008*\u00020\tH\n\u00a2\u0006\u0004\u0008\n\u0010\u000b"
    }
    d2 = {
        "<anonymous>",
        "THelper",
        "TInput",
        "",
        "TOutput",
        "TActionRunner",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;",
        "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;",
        "TBinding",
        "Landroidx/viewbinding/ViewBinding;",
        "invoke",
        "()Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;"
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
.field final synthetic this$0:Lcom/layla/tasker/ActivityConfigTasker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/layla/tasker/ActivityConfigTasker<",
            "TTInput;TTOutput;TTActionRunner;TTHelper;TTBinding;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/layla/tasker/ActivityConfigTasker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layla/tasker/ActivityConfigTasker<",
            "TTInput;TTOutput;TTActionRunner;TTHelper;TTBinding;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/layla/tasker/ActivityConfigTasker$taskerHelper$2;->this$0:Lcom/layla/tasker/ActivityConfigTasker;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTHelper;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layla/tasker/ActivityConfigTasker$taskerHelper$2;->this$0:Lcom/layla/tasker/ActivityConfigTasker;

    .line 32
    move-object v1, v0

    check-cast v1, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;

    invoke-virtual {v0, v1}, Lcom/layla/tasker/ActivityConfigTasker;->getNewHelper(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;)Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/layla/tasker/ActivityConfigTasker$taskerHelper$2;->invoke()Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;

    move-result-object v0

    return-object v0
.end method
