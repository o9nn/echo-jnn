.class Lcom/horcrux/svg/RenderableViewManager$FeOffsetManager;
.super Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager;
.source "RenderableViewManager.java"

# interfaces
.implements Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/horcrux/svg/RenderableViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeOffsetManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager<",
        "Lcom/horcrux/svg/FeOffsetView;",
        ">;",
        "Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerInterface<",
        "Lcom/horcrux/svg/FeOffsetView;",
        ">;"
    }
.end annotation


# static fields
.field public static final REACT_CLASS:Ljava/lang/String; = "RNSVGFeOffset"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1765
    sget-object v0, Lcom/horcrux/svg/VirtualViewManager$SVGClass;->RNSVGFeOffset:Lcom/horcrux/svg/VirtualViewManager$SVGClass;

    invoke-direct {p0, v0}, Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager;-><init>(Lcom/horcrux/svg/VirtualViewManager$SVGClass;)V

    .line 1766
    new-instance v0, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerDelegate;

    invoke-direct {v0, p0}, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManager;)V

    iput-object v0, p0, Lcom/horcrux/svg/RenderableViewManager$FeOffsetManager;->mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-void
.end method


# virtual methods
.method public bridge synthetic setDx(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "dx"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1762
    check-cast p1, Lcom/horcrux/svg/FeOffsetView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FeOffsetManager;->setDx(Lcom/horcrux/svg/FeOffsetView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setDx(Lcom/horcrux/svg/FeOffsetView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "dx"
    .end annotation

    .line 1778
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FeOffsetView;->setDx(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public bridge synthetic setDy(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "dy"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1762
    check-cast p1, Lcom/horcrux/svg/FeOffsetView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FeOffsetManager;->setDy(Lcom/horcrux/svg/FeOffsetView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setDy(Lcom/horcrux/svg/FeOffsetView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "dy"
    .end annotation

    .line 1783
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FeOffsetView;->setDy(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public bridge synthetic setHeight(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "height"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1762
    check-cast p1, Lcom/horcrux/svg/FilterPrimitiveView;

    invoke-super {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager;->setHeight(Lcom/horcrux/svg/FilterPrimitiveView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public bridge synthetic setIn1(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "in1"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1762
    check-cast p1, Lcom/horcrux/svg/FeOffsetView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FeOffsetManager;->setIn1(Lcom/horcrux/svg/FeOffsetView;Ljava/lang/String;)V

    return-void
.end method

.method public setIn1(Lcom/horcrux/svg/FeOffsetView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "in1"
    .end annotation

    .line 1773
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FeOffsetView;->setIn1(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setResult(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "result"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1762
    check-cast p1, Lcom/horcrux/svg/FilterPrimitiveView;

    invoke-super {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager;->setResult(Lcom/horcrux/svg/FilterPrimitiveView;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setWidth(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "width"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1762
    check-cast p1, Lcom/horcrux/svg/FilterPrimitiveView;

    invoke-super {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager;->setWidth(Lcom/horcrux/svg/FilterPrimitiveView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public bridge synthetic setX(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "x"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1762
    check-cast p1, Lcom/horcrux/svg/FilterPrimitiveView;

    invoke-super {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager;->setX(Lcom/horcrux/svg/FilterPrimitiveView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public bridge synthetic setY(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "y"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1762
    check-cast p1, Lcom/horcrux/svg/FilterPrimitiveView;

    invoke-super {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager;->setY(Lcom/horcrux/svg/FilterPrimitiveView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method
