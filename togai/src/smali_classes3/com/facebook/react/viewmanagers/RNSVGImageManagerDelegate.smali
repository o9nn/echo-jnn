.class public Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "RNSVGImageManagerDelegate.java"


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
        "Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface<",
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

    .line 24
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "strokeWidth"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x21

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "meetOrSlice"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x20

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "responsible"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x1f

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "strokeLinejoin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x1e

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "display"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x1d

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "strokeLinecap"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "clipRule"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "clipPath"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "strokeDasharray"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "markerStart"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "width"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "vectorEffect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "color"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "align"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "strokeMiterlimit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "mask"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "fill"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "src"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "y"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "strokeDashoffset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "fillOpacity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "pointerEvents"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "strokeOpacity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "fillRule"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "stroke"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_1b
    const-string v0, "markerMid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_1c
    const-string v0, "markerEnd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_1d
    const-string v0, "propList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1e
    const-string v0, "matrix"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1f
    const-string v0, "height"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_20
    const-string v0, "opacity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_0

    :cond_20
    move v3, v1

    goto :goto_0

    :sswitch_21
    const-string v0, "filter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_0

    :cond_21
    move v3, v2

    :goto_0
    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    .line 132
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 84
    :pswitch_0
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setStrokeWidth(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_17

    .line 129
    :pswitch_1
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    if-nez p3, :cond_22

    goto :goto_1

    :cond_22
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_1
    invoke-interface {p2, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setMeetOrSlice(Landroid/view/View;I)V

    goto/16 :goto_17

    .line 57
    :pswitch_2
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    if-nez p3, :cond_23

    goto :goto_2

    :cond_23
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_2
    invoke-interface {p2, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setResponsible(Landroid/view/View;Z)V

    goto/16 :goto_17

    .line 90
    :pswitch_3
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    if-nez p3, :cond_24

    goto :goto_3

    :cond_24
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_3
    invoke-interface {p2, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setStrokeLinejoin(Landroid/view/View;I)V

    goto/16 :goto_17

    .line 60
    :pswitch_4
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    if-nez p3, :cond_25

    goto :goto_4

    :cond_25
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_4
    invoke-interface {p2, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setDisplay(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 87
    :pswitch_5
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    if-nez p3, :cond_26

    goto :goto_5

    :cond_26
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_5
    invoke-interface {p2, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setStrokeLinecap(Landroid/view/View;I)V

    goto/16 :goto_17

    .line 54
    :pswitch_6
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    if-nez p3, :cond_27

    goto :goto_6

    :cond_27
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_6
    invoke-interface {p2, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setClipRule(Landroid/view/View;I)V

    goto/16 :goto_17

    .line 51
    :pswitch_7
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    if-nez p3, :cond_28

    goto :goto_7

    :cond_28
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_7
    invoke-interface {p2, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setClipPath(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 93
    :pswitch_8
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setStrokeDasharray(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_17

    .line 42
    :pswitch_9
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    if-nez p3, :cond_29

    goto :goto_8

    :cond_29
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_8
    invoke-interface {p2, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setMarkerStart(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 117
    :pswitch_a
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setWidth(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_17

    .line 102
    :pswitch_b
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    if-nez p3, :cond_2a

    goto :goto_9

    :cond_2a
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_9
    invoke-interface {p2, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setVectorEffect(Landroid/view/View;I)V

    goto/16 :goto_17

    .line 66
    :pswitch_c
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setColor(Landroid/view/View;Ljava/lang/Integer;)V

    goto/16 :goto_17

    .line 126
    :pswitch_d
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    if-nez p3, :cond_2b

    goto :goto_a

    :cond_2b
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_a
    invoke-interface {p2, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setAlign(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 99
    :pswitch_e
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    if-nez p3, :cond_2c

    goto :goto_b

    :cond_2c
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    :goto_b
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setStrokeMiterlimit(Landroid/view/View;F)V

    goto/16 :goto_17

    .line 30
    :pswitch_f
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    if-nez p3, :cond_2d

    goto :goto_c

    :cond_2d
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_c
    invoke-interface {p2, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setName(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 39
    :pswitch_10
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    if-nez p3, :cond_2e

    goto :goto_d

    :cond_2e
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_d
    invoke-interface {p2, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setMask(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 69
    :pswitch_11
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setFill(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_17

    .line 123
    :pswitch_12
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    check-cast p3, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setSrc(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_17

    .line 114
    :pswitch_13
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setY(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_17

    .line 111
    :pswitch_14
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setX(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_17

    .line 96
    :pswitch_15
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    if-nez p3, :cond_2f

    goto :goto_e

    :cond_2f
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    :goto_e
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setStrokeDashoffset(Landroid/view/View;F)V

    goto/16 :goto_17

    .line 72
    :pswitch_16
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    if-nez p3, :cond_30

    goto :goto_f

    :cond_30
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v4

    :goto_f
    invoke-interface {p2, p1, v4}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setFillOpacity(Landroid/view/View;F)V

    goto/16 :goto_17

    .line 63
    :pswitch_17
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    if-nez p3, :cond_31

    goto :goto_10

    :cond_31
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_10
    invoke-interface {p2, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setPointerEvents(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 81
    :pswitch_18
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    if-nez p3, :cond_32

    goto :goto_11

    :cond_32
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v4

    :goto_11
    invoke-interface {p2, p1, v4}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setStrokeOpacity(Landroid/view/View;F)V

    goto/16 :goto_17

    .line 75
    :pswitch_19
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    if-nez p3, :cond_33

    goto :goto_12

    :cond_33
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_12
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setFillRule(Landroid/view/View;I)V

    goto/16 :goto_17

    .line 78
    :pswitch_1a
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setStroke(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_17

    .line 45
    :pswitch_1b
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    if-nez p3, :cond_34

    goto :goto_13

    :cond_34
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_13
    invoke-interface {p2, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setMarkerMid(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_17

    .line 48
    :pswitch_1c
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    if-nez p3, :cond_35

    goto :goto_14

    :cond_35
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_14
    invoke-interface {p2, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setMarkerEnd(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_17

    .line 105
    :pswitch_1d
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setPropList(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_17

    .line 36
    :pswitch_1e
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setMatrix(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_17

    .line 120
    :pswitch_1f
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setHeight(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto :goto_17

    .line 33
    :pswitch_20
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    if-nez p3, :cond_36

    goto :goto_15

    :cond_36
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v4

    :goto_15
    invoke-virtual {p2, p1, v4}, Lcom/facebook/react/uimanager/BaseViewManager;->setOpacity(Landroid/view/View;F)V

    goto :goto_17

    .line 108
    :pswitch_21
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGImageManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;

    if-nez p3, :cond_37

    goto :goto_16

    :cond_37
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_16
    invoke-interface {p2, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGImageManagerInterface;->setFilter(Landroid/view/View;Ljava/lang/String;)V

    :goto_17
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bf73488 -> :sswitch_21
        -0x4b8807f5 -> :sswitch_20
        -0x48c76ed9 -> :sswitch_1f
        -0x4072683f -> :sswitch_1e
        -0x3b3da15f -> :sswitch_1d
        -0x37a9a5bf -> :sswitch_1c
        -0x37a98852 -> :sswitch_1b
        -0x352a89c8 -> :sswitch_1a
        -0x2b7578e1 -> :sswitch_19
        -0x18d3d54d -> :sswitch_18
        -0x117e564a -> :sswitch_17
        -0x3330ef8 -> :sswitch_16
        -0x2a83503 -> :sswitch_15
        0x78 -> :sswitch_14
        0x79 -> :sswitch_13
        0x1bde4 -> :sswitch_12
        0x2ff583 -> :sswitch_11
        0x3306ec -> :sswitch_10
        0x337a8b -> :sswitch_f
        0x4b3162e -> :sswitch_e
        0x5899705 -> :sswitch_d
        0x5a72f63 -> :sswitch_c
        0x63a48b4 -> :sswitch_b
        0x6be2dc6 -> :sswitch_a
        0xcf0d448 -> :sswitch_9
        0x17f096af -> :sswitch_8
        0x36b25395 -> :sswitch_7
        0x36b3866c -> :sswitch_6
        0x3d3f8e06 -> :sswitch_5
        0x63a518c2 -> :sswitch_4
        0x6ab59576 -> :sswitch_3
        0x6e2146f6 -> :sswitch_2
        0x71baeb28 -> :sswitch_1
        0x72aeea6e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
