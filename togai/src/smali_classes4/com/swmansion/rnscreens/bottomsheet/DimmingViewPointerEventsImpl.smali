.class public final Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsImpl;
.super Ljava/lang/Object;
.source "DimmingViewPointerEvents.kt"

# interfaces
.implements Lcom/facebook/react/uimanager/ReactPointerEventsView;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsImpl;",
        "Lcom/facebook/react/uimanager/ReactPointerEventsView;",
        "dimmingView",
        "Lcom/swmansion/rnscreens/bottomsheet/DimmingView;",
        "(Lcom/swmansion/rnscreens/bottomsheet/DimmingView;)V",
        "getDimmingView",
        "()Lcom/swmansion/rnscreens/bottomsheet/DimmingView;",
        "getPointerEvents",
        "Lcom/facebook/react/uimanager/PointerEvents;",
        "react-native-screens_release"
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
.field private final dimmingView:Lcom/swmansion/rnscreens/bottomsheet/DimmingView;


# direct methods
.method public constructor <init>(Lcom/swmansion/rnscreens/bottomsheet/DimmingView;)V
    .locals 1

    const-string v0, "dimmingView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsImpl;->dimmingView:Lcom/swmansion/rnscreens/bottomsheet/DimmingView;

    return-void
.end method


# virtual methods
.method public final getDimmingView()Lcom/swmansion/rnscreens/bottomsheet/DimmingView;
    .locals 1

    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsImpl;->dimmingView:Lcom/swmansion/rnscreens/bottomsheet/DimmingView;

    return-object v0
.end method

.method public getPointerEvents()Lcom/facebook/react/uimanager/PointerEvents;
    .locals 1

    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsImpl;->dimmingView:Lcom/swmansion/rnscreens/bottomsheet/DimmingView;

    .line 9
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->getBlockGestures$react_native_screens_release()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/react/uimanager/PointerEvents;->AUTO:Lcom/facebook/react/uimanager/PointerEvents;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/facebook/react/uimanager/PointerEvents;->NONE:Lcom/facebook/react/uimanager/PointerEvents;

    :goto_0
    return-object v0
.end method
