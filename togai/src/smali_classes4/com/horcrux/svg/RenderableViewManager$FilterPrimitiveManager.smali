.class Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager;
.super Lcom/horcrux/svg/VirtualViewManager;
.source "RenderableViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/horcrux/svg/RenderableViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilterPrimitiveManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/horcrux/svg/FilterPrimitiveView;",
        ">",
        "Lcom/horcrux/svg/VirtualViewManager<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/horcrux/svg/VirtualViewManager$SVGClass;)V
    .locals 0

    .line 1569
    invoke-direct {p0, p1}, Lcom/horcrux/svg/VirtualViewManager;-><init>(Lcom/horcrux/svg/VirtualViewManager$SVGClass;)V

    return-void
.end method


# virtual methods
.method public setHeight(Lcom/horcrux/svg/FilterPrimitiveView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "height"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 1589
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FilterPrimitiveView;->setHeight(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setResult(Lcom/horcrux/svg/FilterPrimitiveView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "result"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1594
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FilterPrimitiveView;->setResult(Ljava/lang/String;)V

    return-void
.end method

.method public setWidth(Lcom/horcrux/svg/FilterPrimitiveView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "width"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 1584
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FilterPrimitiveView;->setWidth(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setX(Lcom/horcrux/svg/FilterPrimitiveView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "x"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 1574
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FilterPrimitiveView;->setX(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setY(Lcom/horcrux/svg/FilterPrimitiveView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "y"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 1579
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FilterPrimitiveView;->setY(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method
