.class final Lcom/swmansion/rnscreens/ScreenStack$onUpdate$3$4;
.super Lkotlin/jvm/internal/Lambda;
.source "ScreenStack.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/rnscreens/ScreenStack;->onUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/swmansion/rnscreens/ScreenFragmentWrapper;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/swmansion/rnscreens/ScreenFragmentWrapper;",
        "invoke",
        "(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)Ljava/lang/Boolean;"
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
.field final synthetic $newTop:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/swmansion/rnscreens/ScreenFragmentWrapper;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/swmansion/rnscreens/ScreenStack;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/swmansion/rnscreens/ScreenStack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/swmansion/rnscreens/ScreenFragmentWrapper;",
            ">;",
            "Lcom/swmansion/rnscreens/ScreenStack;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack$onUpdate$3$4;->$newTop:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/swmansion/rnscreens/ScreenStack$onUpdate$3$4;->this$0:Lcom/swmansion/rnscreens/ScreenStack;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack$onUpdate$3$4;->$newTop:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 235
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack$onUpdate$3$4;->this$0:Lcom/swmansion/rnscreens/ScreenStack;

    invoke-static {v0}, Lcom/swmansion/rnscreens/ScreenStack;->access$getDismissedWrappers$p(Lcom/swmansion/rnscreens/ScreenStack;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p1}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getActivityState()Lcom/swmansion/rnscreens/Screen$ActivityState;

    move-result-object p1

    sget-object v0, Lcom/swmansion/rnscreens/Screen$ActivityState;->INACTIVE:Lcom/swmansion/rnscreens/Screen$ActivityState;

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 235
    check-cast p1, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenStack$onUpdate$3$4;->invoke(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
