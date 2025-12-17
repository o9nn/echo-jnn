.class public abstract Lcom/layla/tasker/ActivityConfigTaskerNoInput;
.super Lcom/layla/tasker/ActivityConfigTasker;
.source "ActivityConfigTasker.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TOutput:",
        "Ljava/lang/Object;",
        "TActionRunner:",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner<",
        "Lkotlin/Unit;",
        "TTOutput;>;THelper:",
        "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper<",
        "Lkotlin/Unit;",
        "TTOutput;TTActionRunner;>;>",
        "Lcom/layla/tasker/ActivityConfigTasker<",
        "Lkotlin/Unit;",
        "TTOutput;TTActionRunner;TTHelper;",
        "Landroidx/viewbinding/ViewBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0014\u0008\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\u00010\u0004*\u001a\u0008\u0002\u0010\u0006*\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u00072 \u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u00020\t0\u0008B\u0005\u00a2\u0006\u0002\u0010\nJ\u0016\u0010\u0012\u001a\u00020\u00052\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000cH\u0016J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0014R\u001a\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u0010X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0011\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/layla/tasker/ActivityConfigTaskerNoInput;",
        "TOutput",
        "",
        "TActionRunner",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;",
        "",
        "THelper",
        "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;",
        "Lcom/layla/tasker/ActivityConfigTasker;",
        "Landroidx/viewbinding/ViewBinding;",
        "()V",
        "inputForTasker",
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;",
        "getInputForTasker",
        "()Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;",
        "isConfigurable",
        "",
        "()Z",
        "assignFromInput",
        "input",
        "inflateBinding",
        "",
        "layoutInflater",
        "Landroid/view/LayoutInflater;",
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
.field private final inputForTasker:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final isConfigurable:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 63
    invoke-direct {p0}, Lcom/layla/tasker/ActivityConfigTasker;-><init>()V

    .line 65
    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;-><init>(Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/layla/tasker/ActivityConfigTaskerNoInput;->inputForTasker:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;

    return-void
.end method


# virtual methods
.method public assignFromInput(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getInputForTasker()Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layla/tasker/ActivityConfigTaskerNoInput;->inputForTasker:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;

    return-object v0
.end method

.method public bridge synthetic inflateBinding(Landroid/view/LayoutInflater;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/layla/tasker/ActivityConfigTaskerNoInput;->inflateBinding(Landroid/view/LayoutInflater;)Ljava/lang/Void;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    return-object p1
.end method

.method protected inflateBinding(Landroid/view/LayoutInflater;)Ljava/lang/Void;
    .locals 1

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public isConfigurable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layla/tasker/ActivityConfigTaskerNoInput;->isConfigurable:Z

    return v0
.end method
