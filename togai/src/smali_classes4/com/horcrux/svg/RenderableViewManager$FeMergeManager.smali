.class Lcom/horcrux/svg/RenderableViewManager$FeMergeManager;
.super Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager;
.source "RenderableViewManager.java"

# interfaces
.implements Lcom/facebook/react/viewmanagers/RNSVGFeMergeManagerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/horcrux/svg/RenderableViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeMergeManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager<",
        "Lcom/horcrux/svg/FeMergeView;",
        ">;",
        "Lcom/facebook/react/viewmanagers/RNSVGFeMergeManagerInterface<",
        "Lcom/horcrux/svg/FeMergeView;",
        ">;"
    }
.end annotation


# static fields
.field public static final REACT_CLASS:Ljava/lang/String; = "RNSVGFeMerge"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1750
    sget-object v0, Lcom/horcrux/svg/VirtualViewManager$SVGClass;->RNSVGFeMerge:Lcom/horcrux/svg/VirtualViewManager$SVGClass;

    invoke-direct {p0, v0}, Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager;-><init>(Lcom/horcrux/svg/VirtualViewManager$SVGClass;)V

    .line 1751
    new-instance v0, Lcom/facebook/react/viewmanagers/RNSVGFeMergeManagerDelegate;

    invoke-direct {v0, p0}, Lcom/facebook/react/viewmanagers/RNSVGFeMergeManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManager;)V

    iput-object v0, p0, Lcom/horcrux/svg/RenderableViewManager$FeMergeManager;->mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

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

    .line 1747
    check-cast p1, Lcom/horcrux/svg/FilterPrimitiveView;

    invoke-super {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager;->setHeight(Lcom/horcrux/svg/FilterPrimitiveView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public bridge synthetic setNodes(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "nodes"
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

    .line 1747
    check-cast p1, Lcom/horcrux/svg/FeMergeView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FeMergeManager;->setNodes(Lcom/horcrux/svg/FeMergeView;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setNodes(Lcom/horcrux/svg/FeMergeView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "nodes"
    .end annotation

    .line 1758
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/FeMergeView;->setNodes(Lcom/facebook/react/bridge/ReadableArray;)V

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

    .line 1747
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

    .line 1747
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

    .line 1747
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

    .line 1747
    check-cast p1, Lcom/horcrux/svg/FilterPrimitiveView;

    invoke-super {p0, p1, p2}, Lcom/horcrux/svg/RenderableViewManager$FilterPrimitiveManager;->setY(Lcom/horcrux/svg/FilterPrimitiveView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method
