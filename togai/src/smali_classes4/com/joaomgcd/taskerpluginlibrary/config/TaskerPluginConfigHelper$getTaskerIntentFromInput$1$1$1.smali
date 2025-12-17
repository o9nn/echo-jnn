.class final Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$getTaskerIntentFromInput$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TaskerPluginConfigHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->getTaskerIntentFromInput(Ljava/lang/String;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputsForConfig;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\u0008\u0008\u0001\u0010\u0004*\u00020\u0003\"\u0014\u0008\u0002\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "TInput",
        "",
        "TOutput",
        "TActionRunner",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;",
        "it",
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;",
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


# static fields
.field public static final INSTANCE:Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$getTaskerIntentFromInput$1$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$getTaskerIntentFromInput$1$1$1;

    invoke-direct {v0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$getTaskerIntentFromInput$1$1$1;-><init>()V

    sput-object v0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$getTaskerIntentFromInput$1$1$1;->INSTANCE:Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$getTaskerIntentFromInput$1$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->getKey()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;

    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$getTaskerIntentFromInput$1$1$1;->invoke(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
