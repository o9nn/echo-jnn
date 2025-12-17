.class public Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "RNSVGFeCompositeManagerDelegate.java"


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
        "Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface<",
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
    const-string v0, "operator1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "width"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "in2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "in1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "k4"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_5
    const-string v0, "k3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_6
    const-string v0, "k2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_7
    const-string v0, "k1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_8
    const-string v0, "y"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_9
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_a
    const-string v0, "result"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_b
    const-string v0, "height"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x0

    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 48
    :pswitch_0
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;->setOperator1(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 33
    :pswitch_1
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;->setWidth(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_8

    .line 45
    :pswitch_2
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;

    if-nez p3, :cond_c

    goto :goto_1

    :cond_c
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    :goto_1
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;->setIn2(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 42
    :pswitch_3
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;

    if-nez p3, :cond_d

    goto :goto_2

    :cond_d
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    :goto_2
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;->setIn1(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 60
    :pswitch_4
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;

    if-nez p3, :cond_e

    goto :goto_3

    :cond_e
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v2

    :goto_3
    invoke-interface {p2, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;->setK4(Landroid/view/View;F)V

    goto/16 :goto_8

    .line 57
    :pswitch_5
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;

    if-nez p3, :cond_f

    goto :goto_4

    :cond_f
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v2

    :goto_4
    invoke-interface {p2, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;->setK3(Landroid/view/View;F)V

    goto :goto_8

    .line 54
    :pswitch_6
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;

    if-nez p3, :cond_10

    goto :goto_5

    :cond_10
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v2

    :goto_5
    invoke-interface {p2, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;->setK2(Landroid/view/View;F)V

    goto :goto_8

    .line 51
    :pswitch_7
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;

    if-nez p3, :cond_11

    goto :goto_6

    :cond_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v2

    :goto_6
    invoke-interface {p2, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;->setK1(Landroid/view/View;F)V

    goto :goto_8

    .line 30
    :pswitch_8
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;->setY(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto :goto_8

    .line 27
    :pswitch_9
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;->setX(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto :goto_8

    .line 39
    :pswitch_a
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;

    if-nez p3, :cond_12

    goto :goto_7

    :cond_12
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    :goto_7
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;->setResult(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_8

    .line 36
    :pswitch_b
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGFeCompositeManagerInterface;->setHeight(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x48c76ed9 -> :sswitch_b
        -0x37b237e3 -> :sswitch_a
        0x78 -> :sswitch_9
        0x79 -> :sswitch_8
        0xd26 -> :sswitch_7
        0xd27 -> :sswitch_6
        0xd28 -> :sswitch_5
        0xd29 -> :sswitch_4
        0x197ac -> :sswitch_3
        0x197ad -> :sswitch_2
        0x6be2dc6 -> :sswitch_1
        0x631aec0d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
