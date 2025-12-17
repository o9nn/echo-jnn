.class final Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion$getVariableBundle$1$5$value$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TaskerPluginOutputForRunner.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion;->getVariableBundle(Landroid/content/Context;Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;Lkotlin/jvm/functions/Function1;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "output",
        "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;",
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
.field final synthetic $first:Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;


# direct methods
.method constructor <init>(Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;)V
    .locals 0

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion$getVariableBundle$1$5$value$1;->$first:Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion$getVariableBundle$1$5$value$1;->$first:Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;

    .line 95
    invoke-virtual {v0}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;->getValueGetter()Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;->getParent()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 95
    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;

    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion$getVariableBundle$1$5$value$1;->invoke(Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
