.class public Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "RNSVGFeGaussianBlurManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "U:",
        "Lcom/facebook/react/uimanager/BaseViewManager<",
        "TT;+",
        "Lcom/facebook/react/uimanager/LayoutShadowNode;",
        ">;:",
        "Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerInterface<",
        "TT;>;>",
        "Lcom/facebook/react/uimanager/BaseViewManagerDelegate<",
        "TT;TU;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/BaseViewManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "stdDeviationY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "stdDeviationX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, "edgeMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_3
    const-string v0, "width"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v0, "in1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "y"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_6
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_7
    const-string v0, "result"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_8
    const-string v0, "height"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 48
    :pswitch_0
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerInterface;

    if-nez p3, :cond_9

    goto :goto_1

    :cond_9
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    :goto_1
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerInterface;->setStdDeviationY(Landroid/view/View;F)V

    goto/16 :goto_5

    .line 45
    :pswitch_1
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerInterface;

    if-nez p3, :cond_a

    goto :goto_2

    :cond_a
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    :goto_2
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerInterface;->setStdDeviationX(Landroid/view/View;F)V

    goto :goto_5

    .line 51
    :pswitch_2
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerInterface;

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerInterface;->setEdgeMode(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_5

    .line 33
    :pswitch_3
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerInterface;->setWidth(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto :goto_5

    .line 42
    :pswitch_4
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerInterface;

    if-nez p3, :cond_b

    goto :goto_3

    :cond_b
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    :goto_3
    invoke-interface {p2, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerInterface;->setIn1(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_5

    .line 30
    :pswitch_5
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerInterface;->setY(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto :goto_5

    .line 27
    :pswitch_6
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerInterface;->setX(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto :goto_5

    .line 39
    :pswitch_7
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerInterface;

    if-nez p3, :cond_c

    goto :goto_4

    :cond_c
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    :goto_4
    invoke-interface {p2, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerInterface;->setResult(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_5

    .line 36
    :pswitch_8
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGFeGaussianBlurManagerInterface;->setHeight(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x48c76ed9 -> :sswitch_8
        -0x37b237e3 -> :sswitch_7
        0x78 -> :sswitch_6
        0x79 -> :sswitch_5
        0x197ac -> :sswitch_4
        0x6be2dc6 -> :sswitch_3
        0x5b3cf500 -> :sswitch_2
        0x6d85a67a -> :sswitch_1
        0x6d85a67b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
