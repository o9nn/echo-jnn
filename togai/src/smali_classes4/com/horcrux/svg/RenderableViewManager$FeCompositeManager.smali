.class Lcom/horcrux/svg/RenderableViewManager$FeCompositeManager;
.super Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager;
.source "RenderableViewManager.java"

# interfaces
.implements Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/horcrux/svg/RenderableViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeCompositeManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager<",
        "Lcom/horcrux/svg/FeCompositeView;",
        ">;",
        "Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface<",
        "Lcom/horcrux/svg/FeCompositeView;",
        ">;"
    }
.end annotation


# static fields
.field public static final REACT_CLASS:Ljava/lang/String; = "RNSVGFeComposite"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1651
    sget-object v0, Lcom/horcrux/svg/VirtualViewManager$SVGClass;->RNSVGFeComposite:Lcom/horcrux/svg/VirtualViewManager$SVGClass;

    invoke-direct {p0, v0}, Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager;-><init>(Lcom/horcrux/svg/VirtualViewManager$SVGClass;)V

    .line 1652
    new-instance v0, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerDelegate;

    invoke-direct {v0, p0}, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManager;)V

    iput-object v0, p0, Lcom/horcrux/svg/RenderableViewManager$FeCompositeManager;->mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-void
.end method


# virtual methods
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

    .line 1648
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

    .line 1648
    check-cast p1, Lcom/horcrux/svg/FeCompositeView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FeCompositeManager;->setIn1(Lcom/horcrux/svg/FeCompositeView;Ljava/lang/String;)V

    return-void
.end method

.method public setIn1(Lcom/horcrux/svg/FeCompositeView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "in1"
    .end annotation

    .line 1659
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FeCompositeView;->setIn1(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setIn2(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "in2"
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

    .line 1648
    check-cast p1, Lcom/horcrux/svg/FeCompositeView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FeCompositeManager;->setIn2(Lcom/horcrux/svg/FeCompositeView;Ljava/lang/String;)V

    return-void
.end method

.method public setIn2(Lcom/horcrux/svg/FeCompositeView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "in2"
    .end annotation

    .line 1664
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FeCompositeView;->setIn2(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setK1(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "k1"
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

    .line 1648
    check-cast p1, Lcom/horcrux/svg/FeCompositeView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FeCompositeManager;->setK1(Lcom/horcrux/svg/FeCompositeView;F)V

    return-void
.end method

.method public setK1(Lcom/horcrux/svg/FeCompositeView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "k1"
    .end annotation

    .line 1674
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FeCompositeView;->setK1(Ljava/lang/Float;)V

    return-void
.end method

.method public bridge synthetic setK2(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "k2"
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

    .line 1648
    check-cast p1, Lcom/horcrux/svg/FeCompositeView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FeCompositeManager;->setK2(Lcom/horcrux/svg/FeCompositeView;F)V

    return-void
.end method

.method public setK2(Lcom/horcrux/svg/FeCompositeView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "k2"
    .end annotation

    .line 1679
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FeCompositeView;->setK2(Ljava/lang/Float;)V

    return-void
.end method

.method public bridge synthetic setK3(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "k3"
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

    .line 1648
    check-cast p1, Lcom/horcrux/svg/FeCompositeView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FeCompositeManager;->setK3(Lcom/horcrux/svg/FeCompositeView;F)V

    return-void
.end method

.method public setK3(Lcom/horcrux/svg/FeCompositeView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "k3"
    .end annotation

    .line 1684
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FeCompositeView;->setK3(Ljava/lang/Float;)V

    return-void
.end method

.method public bridge synthetic setK4(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "k4"
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

    .line 1648
    check-cast p1, Lcom/horcrux/svg/FeCompositeView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FeCompositeManager;->setK4(Lcom/horcrux/svg/FeCompositeView;F)V

    return-void
.end method

.method public setK4(Lcom/horcrux/svg/FeCompositeView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "k4"
    .end annotation

    .line 1689
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FeCompositeView;->setK4(Ljava/lang/Float;)V

    return-void
.end method

.method public bridge synthetic setOperator1(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "operator1"
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

    .line 1648
    check-cast p1, Lcom/horcrux/svg/FeCompositeView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FeCompositeManager;->setOperator1(Lcom/horcrux/svg/FeCompositeView;Ljava/lang/String;)V

    return-void
.end method

.method public setOperator1(Lcom/horcrux/svg/FeCompositeView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "operator1"
    .end annotation

    .line 1669
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FeCompositeView;->setOperator(Ljava/lang/String;)V

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

    .line 1648
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

    .line 1648
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

    .line 1648
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

    .line 1648
    check-cast p1, Lcom/horcrux/svg/FilterPrimitiveView;

    invoke-super {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager;->setY(Lcom/horcrux/svg/FilterPrimitiveView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method
