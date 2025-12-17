.class public final Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;
.super Ljava/lang/Object;
.source "TaskerPluginInput.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TInput:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0003\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;",
        "TInput",
        "",
        "regular",
        "dynamic",
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;",
        "(Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;)V",
        "getDynamic",
        "()Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;",
        "getRegular",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
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
.field private final dynamic:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;

.field private final regular:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTInput;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTInput;",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;",
            ")V"
        }
    .end annotation

    const-string v0, "regular"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dynamic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;->regular:Ljava/lang/Object;

    iput-object p2, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;->dynamic:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 127
    new-instance p2, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;

    invoke-direct {p2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;-><init>()V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;-><init>(Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;)V

    return-void
.end method


# virtual methods
.method public final getDynamic()Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;->dynamic:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;

    return-object v0
.end method

.method public final getRegular()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTInput;"
        }
    .end annotation

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;->regular:Ljava/lang/Object;

    return-object v0
.end method
