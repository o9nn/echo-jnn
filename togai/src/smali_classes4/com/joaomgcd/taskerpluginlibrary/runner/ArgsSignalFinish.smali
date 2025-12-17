.class public final Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;
.super Ljava/lang/Object;
.source "TaskerPluginResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t\u00a2\u0006\u0002\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001f\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;",
        "",
        "context",
        "Landroid/content/Context;",
        "taskerIntent",
        "Landroid/content/Intent;",
        "renames",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;",
        "filter",
        "Lkotlin/Function1;",
        "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;",
        "",
        "(Landroid/content/Context;Landroid/content/Intent;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;Lkotlin/jvm/functions/Function1;)V",
        "getContext",
        "()Landroid/content/Context;",
        "getFilter",
        "()Lkotlin/jvm/functions/Function1;",
        "getRenames",
        "()Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;",
        "getTaskerIntent",
        "()Landroid/content/Intent;",
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
.field private final context:Landroid/content/Context;

.field private final filter:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final renames:Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;

.field private final taskerIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskerIntent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;->taskerIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;->renames:Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;

    iput-object p4, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;->filter:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 11
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getFilter()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;->filter:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getRenames()Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;->renames:Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;

    return-object v0
.end method

.method public final getTaskerIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/ArgsSignalFinish;->taskerIntent:Landroid/content/Intent;

    return-object v0
.end method
