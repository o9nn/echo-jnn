.class public final Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;
.super Ljava/lang/Object;
.source "TaskerPluginConditionResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;",
        "",
        "code",
        "",
        "bundle",
        "Landroid/os/Bundle;",
        "hasStartedForeground",
        "",
        "(ILandroid/os/Bundle;Z)V",
        "getBundle",
        "()Landroid/os/Bundle;",
        "getCode",
        "()I",
        "getHasStartedForeground",
        "()Z",
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
.field private final bundle:Landroid/os/Bundle;

.field private final code:I

.field private final hasStartedForeground:Z


# direct methods
.method public constructor <init>(ILandroid/os/Bundle;Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;->code:I

    iput-object p2, p0, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;->bundle:Landroid/os/Bundle;

    iput-boolean p3, p0, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;->hasStartedForeground:Z

    return-void
.end method


# virtual methods
.method public final getBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;->code:I

    return v0
.end method

.method public final getHasStartedForeground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;->hasStartedForeground:Z

    return v0
.end method
