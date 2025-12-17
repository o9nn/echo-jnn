.class public final Lcom/joaomgcd/taskerpluginlibrary/input/TaskerPluginInputKt;
.super Ljava/lang/Object;
.source "TaskerPluginInput.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aI\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u0001H\u0002H\u0000\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "getInputFromTaskerIntent",
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;",
        "TInput",
        "",
        "context",
        "Landroid/content/Context;",
        "taskerIntent",
        "Landroid/content/Intent;",
        "inputClass",
        "Ljava/lang/Class;",
        "defaultInput",
        "(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;Ljava/lang/Object;)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;",
        "taskerpluginlibrary_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getInputFromTaskerIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;Ljava/lang/Object;)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TInput:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/Class<",
            "TTInput;>;TTInput;)",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "TTInput;>;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 154
    new-instance p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;

    invoke-static {p1, p3, p2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerPluginInputKt;->getInputFromTaskerIntent$getInput(Landroid/content/Intent;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p2, p3}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;-><init>(Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    .line 155
    :cond_0
    invoke-static {p1}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->getTaskerPluginExtraBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 156
    invoke-static {p1, p3, p2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerPluginInputKt;->getInputFromTaskerIntent$getInput(Landroid/content/Intent;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 157
    sget-object p2, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->Companion:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos$Companion;

    invoke-virtual {p2, p0, p1, v0}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos$Companion;->fromBundle(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Bundle;)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;

    move-result-object p0

    .line 158
    new-instance p2, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;

    invoke-direct {p2, p1, p0}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;-><init>(Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;)V

    return-object p2
.end method

.method public static synthetic getInputFromTaskerIntent$default(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;Ljava/lang/Object;ILjava/lang/Object;)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;
    .locals 0

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 129
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerPluginInputKt;->getInputFromTaskerIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;Ljava/lang/Object;)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;

    move-result-object p0

    return-object p0
.end method

.method private static final getInputFromTaskerIntent$getInput(Landroid/content/Intent;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TInput:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Intent;",
            "TTInput;",
            "Ljava/lang/Class<",
            "TTInput;>;)TTInput;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 143
    invoke-static {p0}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->getTaskerPluginExtraBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->getWasConfiguredBefore(Landroid/os/Bundle;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {p2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerPluginInputKt;->getInputFromTaskerIntent$getNewInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 146
    invoke-static {p2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerPluginInputKt;->getInputFromTaskerIntent$getNewInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method private static final getInputFromTaskerIntent$getNewInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TInput:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTInput;>;)TTInput;"
        }
    .end annotation

    .line 132
    :try_start_0
    const-class v0, Lkotlin/Unit;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const-string v1, "null cannot be cast to non-null type TInput of com.joaomgcd.taskerpluginlibrary.input.TaskerPluginInputKt.getInputFromTaskerIntent$getNewInstance"

    .line 132
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 139
    :catchall_0
    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/NoEmptyConstructorException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "getName(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/joaomgcd/taskerpluginlibrary/NoEmptyConstructorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
