.class public final Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionUnknown;
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
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionUnknown;",
        "TOutput",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;",
        "()V",
        "conditionResultCode",
        "",
        "getConditionResultCode",
        "()I",
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


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, v0, v1}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultCondition;-><init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v0, 0x12

    iput v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionUnknown;->conditionResultCode:I

    return-void
.end method


# virtual methods
.method public getConditionResultCode()I
    .locals 1

    iget v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginResultConditionUnknown;->conditionResultCode:I

    return v0
.end method
