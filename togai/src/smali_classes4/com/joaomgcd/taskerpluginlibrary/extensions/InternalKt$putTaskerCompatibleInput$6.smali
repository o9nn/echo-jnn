.class final Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt$putTaskerCompatibleInput$6;
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
        "Ljava/lang/Double;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke",
        "(D)Ljava/lang/Boolean;"
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

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt$putTaskerCompatibleInput$6;->$this_putTaskerCompatibleInput:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt$putTaskerCompatibleInput$6;->$key:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(D)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt$putTaskerCompatibleInput$6;->$this_putTaskerCompatibleInput:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt$putTaskerCompatibleInput$6;->$key:Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 82
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt$putTaskerCompatibleInput$6;->invoke(D)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
