.class public abstract Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;
.super Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;
.source "TaskerPluginRunnerCondition.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TInput:",
        "Ljava/lang/Object;",
        "TOutput:",
        "Ljava/lang/Object;",
        "TUpdate:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner<",
        "TTInput;TTOutput;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskerPluginRunnerCondition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskerPluginRunnerCondition.kt\ncom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,145:1\n1#2:146\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u0000 \u001b*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u0002*\u0008\u0008\u0002\u0010\u0004*\u00020\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0005:\u0001\u001bB\u0005\u00a2\u0006\u0002\u0010\u0006J!\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0000\u00a2\u0006\u0002\u0008\u0010J3\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00122\u0006\u0010\u000c\u001a\u00020\r2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00018\u0002H&\u00a2\u0006\u0002\u0010\u0016J)\u0010\u0017\u001a\u0004\u0018\u0001H\u0004\"\u0008\u0008\u0003\u0010\u0004*\u00020\u00022\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002\u00a2\u0006\u0002\u0010\u0018J,\u0010\u0019\u001a\u00020\u000b*\u0008\u0012\u0004\u0012\u00028\u00010\u00122\u0006\u0010\u001a\u001a\u00020\u00082\u0010\u0008\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0014H\u0002R\u0012\u0010\u0007\u001a\u00020\u0008X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\t\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;",
        "TInput",
        "",
        "TOutput",
        "TUpdate",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;",
        "()V",
        "isEvent",
        "",
        "()Z",
        "getResultFromIntent",
        "Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;",
        "context",
        "Landroid/content/Context;",
        "taskerIntent",
        "Landroid/content/Intent;",
        "getResultFromIntent$taskerpluginlibrary_release",
        "getSatisfiedCondition",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;",
        "input",
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;",
        "update",
        "(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;Ljava/lang/Object;)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;",
        "getUpdate",
        "(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;",
        "getConditionResult",
        "hasStartedForeground",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;->Companion:Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;-><init>()V

    return-void
.end method

.method private final getConditionResult(Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;ZLcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition<",
            "TTOutput;>;Z",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "TTInput;>;)",
            "Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;"
        }
    .end annotation

    .line 32
    instance-of v0, p1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionSatisfied;

    if-eqz v0, :cond_0

    .line 33
    move-object v0, p1

    check-cast v0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionSatisfied;

    invoke-virtual {v0}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionSatisfied;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;->getRenames$taskerpluginlibrary_release(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;

    move-result-object v1

    new-instance v2, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition$getConditionResult$bundle$1;

    invoke-direct {v2, p0, p1, p3}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition$getConditionResult$bundle$1;-><init>(Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionSatisfied;->getOutputBundle(Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;Lkotlin/jvm/functions/Function1;)Landroid/os/Bundle;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 37
    :goto_0
    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;

    invoke-virtual {p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;->getConditionResultCode()I

    move-result p1

    invoke-direct {v0, p1, p3, p2}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;-><init>(ILandroid/os/Bundle;Z)V

    return-object v0
.end method

.method static synthetic getConditionResult$default(Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;ZLcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;ILjava/lang/Object;)Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 31
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;->getConditionResult(Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;ZLcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getConditionResult"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getUpdate(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TUpdate:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")TTUpdate;"
        }
    .end annotation

    .line 64
    invoke-static {p2}, Lnet/dinglisch/android/tasker/TaskerPlugin$Event;->retrievePassThroughData(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const-string v1, "net.dinglisch.android.tasker.extras.CONDITION_UPDATE_CLASS"

    .line 65
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 68
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 69
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    const-string v3, "null cannot be cast to non-null type TUpdate of com.joaomgcd.taskerpluginlibrary.condition.TaskerPluginRunnerCondition.getUpdate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-ne v2, v3, :cond_3

    return-object v0

    .line 71
    :cond_3
    sget-object v3, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->Companion:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos$Companion;

    invoke-virtual {v3, p1, v2, p2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos$Companion;->fromBundle(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Bundle;)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object v0

    .line 74
    :catch_0
    new-instance p1, Lcom/joaomgcd/taskerpluginlibrary/NoEmptyConstructorException;

    invoke-direct {p1, v1}, Lcom/joaomgcd/taskerpluginlibrary/NoEmptyConstructorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getResultFromIntent$taskerpluginlibrary_release(Landroid/content/Context;Landroid/content/Intent;)Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;->isEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    invoke-static {p2}, Lnet/dinglisch/android/tasker/TaskerPlugin$Event;->retrievePassThroughMessageID(Landroid/content/Intent;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    new-instance p1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionUnsatisfied;

    invoke-direct {p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionUnsatisfied;-><init>()V

    move-object v2, p1

    check-cast v2, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;->getConditionResult$default(Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;ZLcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;ILjava/lang/Object;)Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;

    move-result-object p1

    return-object p1

    .line 47
    :cond_1
    instance-of v1, p1, Landroid/app/IntentService;

    if-eqz v1, :cond_2

    .line 48
    move-object v1, p1

    check-cast v1, Landroid/app/IntentService;

    invoke-virtual {p0, v1}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;->startForegroundIfNeeded(Landroid/app/IntentService;)V

    const/4 v0, 0x1

    .line 51
    :cond_2
    invoke-virtual {p0, p2}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;->getInputClass(Landroid/content/Intent;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->getTaskerInput$default(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;ILjava/lang/Object;)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;

    move-result-object v1

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;->getUpdate(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object p2

    .line 53
    invoke-virtual {p0, p1, v1, p2}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;->getSatisfiedCondition(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;Ljava/lang/Object;)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;

    move-result-object p1

    .line 54
    invoke-direct {p0, p1, v0, v1}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;->getConditionResult(Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;ZLcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;

    move-result-object p1

    return-object p1

    .line 43
    :cond_3
    :goto_0
    new-instance p1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionUnsatisfied;

    invoke-direct {p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionUnsatisfied;-><init>()V

    move-object v2, p1

    check-cast v2, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;->getConditionResult$default(Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;ZLcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;ILjava/lang/Object;)Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    move v2, v0

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    new-instance p1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionUnsatisfied;

    invoke-direct {p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionUnsatisfied;-><init>()V

    move-object v1, p1

    check-cast v1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;->getConditionResult$default(Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;ZLcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;ILjava/lang/Object;)Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;

    move-result-object p1

    return-object p1
.end method

.method public abstract getSatisfiedCondition(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;Ljava/lang/Object;)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "TTInput;>;TTUpdate;)",
            "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition<",
            "TTOutput;>;"
        }
    .end annotation
.end method

.method protected abstract isEvent()Z
.end method
