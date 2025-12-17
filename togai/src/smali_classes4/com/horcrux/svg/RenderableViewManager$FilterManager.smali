.class Lcom/horcrux/svg/RenderableViewManager$FilterManager;
.super Lcom/horcrux/svg/VirtualViewManager;
.source "RenderableViewManager.java"

# interfaces
.implements Lcom/facebook/react/viewmanagers/RNSVGFilterManagerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/horcrux/svg/RenderableViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilterManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/horcrux/svg/VirtualViewManager<",
        "Lcom/horcrux/svg/FilterView;",
        ">;",
        "Lcom/facebook/react/viewmanagers/RNSVGFilterManagerInterface<",
        "Lcom/horcrux/svg/FilterView;",
        ">;"
    }
.end annotation


# static fields
.field public static final REACT_CLASS:Ljava/lang/String; = "RNSVGFilter"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1530
    sget-object v0, Lcom/horcrux/svg/VirtualViewManager$SVGClass;->RNSVGFilter:Lcom/horcrux/svg/VirtualViewManager$SVGClass;

    invoke-direct {p0, v0}, Lcom/horcrux/svg/VirtualViewManager;-><init>(Lcom/horcrux/svg/VirtualViewManager$SVGClass;)V

    .line 1531
    new-instance v0, Lcom/facebook/react/viewmanagers/RNSVGFilterManagerDelegate;

    invoke-direct {v0, p0}, Lcom/facebook/react/viewmanagers/RNSVGFilterManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManager;)V

    iput-object v0, p0, Lcom/horcrux/svg/RenderableViewManager$FilterManager;->mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-void
.end method


# virtual methods
.method public bridge synthetic setFilterUnits(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "filterUnits"
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

    .line 1527
    check-cast p1, Lcom/horcrux/svg/FilterView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FilterManager;->setFilterUnits(Lcom/horcrux/svg/FilterView;Ljava/lang/String;)V

    return-void
.end method

.method public setFilterUnits(Lcom/horcrux/svg/FilterView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "filterUnits"
    .end annotation

    .line 1558
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FilterView;->setFilterUnits(Ljava/lang/String;)V

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

    .line 1527
    check-cast p1, Lcom/horcrux/svg/FilterView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FilterManager;->setHeight(Lcom/horcrux/svg/FilterView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setHeight(Lcom/horcrux/svg/FilterView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "height"
    .end annotation

    .line 1553
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FilterView;->setHeight(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public bridge synthetic setName(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "name"
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

    .line 1527
    check-cast p1, Lcom/horcrux/svg/VirtualView;

    invoke-super {p0, p1, p2}, Lcom/horcrux/svg/VirtualViewManager;->setName(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPrimitiveUnits(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "primitiveUnits"
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

    .line 1527
    check-cast p1, Lcom/horcrux/svg/FilterView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FilterManager;->setPrimitiveUnits(Lcom/horcrux/svg/FilterView;Ljava/lang/String;)V

    return-void
.end method

.method public setPrimitiveUnits(Lcom/horcrux/svg/FilterView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "primitiveUnits"
    .end annotation

    .line 1563
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FilterView;->setPrimitiveUnits(Ljava/lang/String;)V

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

    .line 1527
    check-cast p1, Lcom/horcrux/svg/FilterView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FilterManager;->setWidth(Lcom/horcrux/svg/FilterView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setWidth(Lcom/horcrux/svg/FilterView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "width"
    .end annotation

    .line 1548
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FilterView;->setWidth(Lcom/facebook/react/bridge/Dynamic;)V

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

    .line 1527
    check-cast p1, Lcom/horcrux/svg/FilterView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FilterManager;->setX(Lcom/horcrux/svg/FilterView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setX(Lcom/horcrux/svg/FilterView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "x"
    .end annotation

    .line 1538
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FilterView;->setX(Lcom/facebook/react/bridge/Dynamic;)V

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

    .line 1527
    check-cast p1, Lcom/horcrux/svg/FilterView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FilterManager;->setY(Lcom/horcrux/svg/FilterView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setY(Lcom/horcrux/svg/FilterView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "y"
    .end annotation

    .line 1543
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FilterView;->setY(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method
