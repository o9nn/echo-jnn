.class final Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$9;
.super Lkotlin/jvm/internal/Lambda;
.source "TaskerPluginInput.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic;->isEmpty(Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\u0008\u0012\u0004\u0012\u00020\u0004`\u0005H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "invoke",
        "(Ljava/util/ArrayList;)Ljava/lang/Boolean;"
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
.field public static final INSTANCE:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$9;

    invoke-direct {v0}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$9;-><init>()V

    sput-object v0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$9;->INSTANCE:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$9;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 31
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$9;->invoke(Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
