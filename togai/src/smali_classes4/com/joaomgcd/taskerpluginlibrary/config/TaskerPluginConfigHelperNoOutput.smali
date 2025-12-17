.class public abstract Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelperNoOutput;
.super Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;
.source "TaskerPluginConfigHelperVariants.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TInput:",
        "Ljava/lang/Object;",
        "TActionRunner:",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner<",
        "TTInput;",
        "Lkotlin/Unit;",
        ">;>",
        "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper<",
        "TTInput;",
        "Lkotlin/Unit;",
        "TTActionRunner;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0014\u0008\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00050\u00042\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\u00030\u0006B\u0013\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0002\u0010\tR\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelperNoOutput;",
        "TInput",
        "",
        "TActionRunner",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;",
        "",
        "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;",
        "config",
        "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;",
        "(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;)V",
        "outputClass",
        "Ljava/lang/Class;",
        "getOutputClass",
        "()Ljava/lang/Class;",
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
.field private final outputClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig<",
            "TTInput;>;)V"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;-><init>(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;)V

    .line 8
    const-class p1, Lkotlin/Unit;

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelperNoOutput;->outputClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getOutputClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelperNoOutput;->outputClass:Ljava/lang/Class;

    return-object v0
.end method
