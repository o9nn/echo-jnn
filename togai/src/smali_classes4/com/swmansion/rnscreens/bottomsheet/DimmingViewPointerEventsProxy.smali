.class public final Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsProxy;
.super Ljava/lang/Object;
.source "DimmingViewPointerEvents.kt"

# interfaces
.implements Lcom/facebook/react/uimanager/ReactPointerEventsView;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0008\u001a\u00020\tH\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsProxy;",
        "Lcom/facebook/react/uimanager/ReactPointerEventsView;",
        "pointerEventsImpl",
        "Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsImpl;",
        "(Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsImpl;)V",
        "getPointerEventsImpl",
        "()Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsImpl;",
        "setPointerEventsImpl",
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
.field private pointerEventsImpl:Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsImpl;


# direct methods
.method public constructor <init>(Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsImpl;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsProxy;->pointerEventsImpl:Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsImpl;

    return-void
.end method


# virtual methods
.method public getPointerEvents()Lcom/facebook/react/uimanager/PointerEvents;
    .locals 1

    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsProxy;->pointerEventsImpl:Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsImpl;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsImpl;->getPointerEvents()Lcom/facebook/react/uimanager/PointerEvents;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/facebook/react/uimanager/PointerEvents;->NONE:Lcom/facebook/react/uimanager/PointerEvents;

    :cond_1
    return-object v0
.end method

.method public final getPointerEventsImpl()Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsImpl;
    .locals 1

    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsProxy;->pointerEventsImpl:Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsImpl;

    return-object v0
.end method

.method public final setPointerEventsImpl(Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsProxy;->pointerEventsImpl:Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsImpl;

    return-void
.end method
