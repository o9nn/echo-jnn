.class public final Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionSatisfied;
.super Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;
.source "TaskerPluginResultCondition.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TOutput:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition<",
        "TTOutput;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00018\u0000\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J&\u0010\u0014\u001a\u00020\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u0019R\u0014\u0010\t\u001a\u00020\nX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0015\u0010\u0005\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionSatisfied;",
        "TOutput",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;",
        "context",
        "Landroid/content/Context;",
        "regular",
        "dynamic",
        "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;",
        "(Landroid/content/Context;Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;)V",
        "conditionResultCode",
        "",
        "getConditionResultCode",
        "()I",
        "getContext",
        "()Landroid/content/Context;",
        "getDynamic",
        "()Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;",
        "getRegular",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "getOutputBundle",
        "Landroid/os/Bundle;",
        "renames",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;",
        "filter",
        "Lkotlin/Function1;",
        "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;",
        "",
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
.field private final conditionResultCode:I

.field private final context:Landroid/content/Context;

.field private final dynamic:Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;

.field private final regular:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTOutput;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TTOutput;",
            "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;-><init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionSatisfied;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionSatisfied;->regular:Ljava/lang/Object;

    iput-object p3, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionSatisfied;->dynamic:Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;

    const/16 p1, 0x10

    iput p1, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionSatisfied;->conditionResultCode:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionSatisfied;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;)V

    return-void
.end method

.method public static synthetic getOutputBundle$default(Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionSatisfied;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/os/Bundle;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionSatisfied;->getOutputBundle(Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;Lkotlin/jvm/functions/Function1;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getConditionResultCode()I
    .locals 1

    iget v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionSatisfied;->conditionResultCode:I

    return v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionSatisfied;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getDynamic()Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionSatisfied;->dynamic:Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;

    return-object v0
.end method

.method public final getOutputBundle(Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;Lkotlin/jvm/functions/Function1;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    const-string v0, "filter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v1, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;->Companion:Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion;

    iget-object v2, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionSatisfied;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionSatisfied;->regular:Ljava/lang/Object;

    iget-object v4, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionSatisfied;->dynamic:Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion;->getVariableBundle(Landroid/content/Context;Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;Lkotlin/jvm/functions/Function1;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final getRegular()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTOutput;"
        }
    .end annotation

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionSatisfied;->regular:Ljava/lang/Object;

    return-object v0
.end method
