.class final Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt$putTaskerCompatibleInput$9;
.super Lkotlin/jvm/internal/Lambda;
.source "Internal.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->putTaskerCompatibleInput(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Z
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


# instance fields
.field final synthetic $key:Ljava/lang/String;

.field final synthetic $this_putTaskerCompatibleInput:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt$putTaskerCompatibleInput$9;->$this_putTaskerCompatibleInput:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt$putTaskerCompatibleInput$9;->$key:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 2
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

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt$putTaskerCompatibleInput$9;->$this_putTaskerCompatibleInput:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt$putTaskerCompatibleInput$9;->$key:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt$putTaskerCompatibleInput$9;->invoke(Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
