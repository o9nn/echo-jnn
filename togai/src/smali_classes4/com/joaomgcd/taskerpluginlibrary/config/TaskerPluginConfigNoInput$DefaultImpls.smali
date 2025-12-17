.class public final Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigNoInput$DefaultImpls;
.super Ljava/lang/Object;
.source "TaskerPluginConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigNoInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static assignFromInput(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigNoInput;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigNoInput;",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static getInputForTasker(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigNoInput;)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigNoInput;",
            ")",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;-><init>(Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
