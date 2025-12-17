.class public Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "RNSVGFeOffsetManagerDelegate.java"


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
        "Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerInterface<",
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
    .locals 2
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
    const-string v0, "width"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "in1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "dy"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "dx"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "y"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "result"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "height"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 33
    :pswitch_0
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerInterface;->setWidth(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto :goto_3

    .line 42
    :pswitch_1
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerInterface;

    if-nez p3, :cond_8

    goto :goto_1

    :cond_8
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    :goto_1
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerInterface;->setIn1(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_3

    .line 48
    :pswitch_2
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerInterface;->setDy(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto :goto_3

    .line 45
    :pswitch_3
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerInterface;->setDx(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto :goto_3

    .line 30
    :pswitch_4
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerInterface;->setY(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto :goto_3

    .line 27
    :pswitch_5
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerInterface;->setX(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto :goto_3

    .line 39
    :pswitch_6
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerInterface;

    if-nez p3, :cond_9

    goto :goto_2

    :cond_9
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    :goto_2
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerInterface;->setResult(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_3

    .line 36
    :pswitch_7
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGFeOffsetManagerInterface;->setHeight(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x48c76ed9 -> :sswitch_7
        -0x37b237e3 -> :sswitch_6
        0x78 -> :sswitch_5
        0x79 -> :sswitch_4
        0xc94 -> :sswitch_3
        0xc95 -> :sswitch_2
        0x197ac -> :sswitch_1
        0x6be2dc6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
