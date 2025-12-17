.class public Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "RNSVGGroupManagerDelegate.java"


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
        "Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface<",
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

    .line 23
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

    .line 27
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
    const/16 v3, 0x1d

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "responsible"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "strokeLinejoin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "display"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "strokeLinecap"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "clipRule"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "clipPath"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "strokeDasharray"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "fontSize"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "markerStart"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "vectorEffect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "color"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "strokeMiterlimit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "mask"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "font"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "fill"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "strokeDashoffset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "fillOpacity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "pointerEvents"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "strokeOpacity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "fillRule"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "fontWeight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_17
    const-string v0, "stroke"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_18
    const-string v0, "markerMid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_19
    const-string v0, "markerEnd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1a
    const-string v0, "propList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1b
    const-string v0, "matrix"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1c
    const-string v0, "opacity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_0

    :cond_1c
    move v3, v1

    goto :goto_0

    :sswitch_1d
    const-string v0, "filter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_0

    :cond_1d
    move v3, v2

    :goto_0
    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    .line 119
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_15

    .line 83
    :pswitch_0
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setStrokeWidth(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_15

    .line 56
    :pswitch_1
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    if-nez p3, :cond_1e

    goto :goto_1

    :cond_1e
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_1
    invoke-interface {p2, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setResponsible(Landroid/view/View;Z)V

    goto/16 :goto_15

    .line 89
    :pswitch_2
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    if-nez p3, :cond_1f

    goto :goto_2

    :cond_1f
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_2
    invoke-interface {p2, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setStrokeLinejoin(Landroid/view/View;I)V

    goto/16 :goto_15

    .line 59
    :pswitch_3
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    if-nez p3, :cond_20

    goto :goto_3

    :cond_20
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_3
    invoke-interface {p2, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setDisplay(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 86
    :pswitch_4
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    if-nez p3, :cond_21

    goto :goto_4

    :cond_21
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_4
    invoke-interface {p2, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setStrokeLinecap(Landroid/view/View;I)V

    goto/16 :goto_15

    .line 53
    :pswitch_5
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    if-nez p3, :cond_22

    goto :goto_5

    :cond_22
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_5
    invoke-interface {p2, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setClipRule(Landroid/view/View;I)V

    goto/16 :goto_15

    .line 50
    :pswitch_6
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    if-nez p3, :cond_23

    goto :goto_6

    :cond_23
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_6
    invoke-interface {p2, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setClipPath(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 92
    :pswitch_7
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setStrokeDasharray(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_15

    .line 110
    :pswitch_8
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setFontSize(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_15

    .line 41
    :pswitch_9
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    if-nez p3, :cond_24

    goto :goto_7

    :cond_24
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_7
    invoke-interface {p2, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setMarkerStart(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 101
    :pswitch_a
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    if-nez p3, :cond_25

    goto :goto_8

    :cond_25
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v2

    :goto_8
    invoke-interface {p2, p1, v2}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setVectorEffect(Landroid/view/View;I)V

    goto/16 :goto_15

    .line 65
    :pswitch_b
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setColor(Landroid/view/View;Ljava/lang/Integer;)V

    goto/16 :goto_15

    .line 98
    :pswitch_c
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    if-nez p3, :cond_26

    goto :goto_9

    :cond_26
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    :goto_9
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setStrokeMiterlimit(Landroid/view/View;F)V

    goto/16 :goto_15

    .line 29
    :pswitch_d
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    if-nez p3, :cond_27

    goto :goto_a

    :cond_27
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_a
    invoke-interface {p2, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setName(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 38
    :pswitch_e
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    if-nez p3, :cond_28

    goto :goto_b

    :cond_28
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_b
    invoke-interface {p2, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setMask(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 116
    :pswitch_f
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setFont(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_15

    .line 68
    :pswitch_10
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setFill(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_15

    .line 95
    :pswitch_11
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    if-nez p3, :cond_29

    goto :goto_c

    :cond_29
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    :goto_c
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setStrokeDashoffset(Landroid/view/View;F)V

    goto/16 :goto_15

    .line 71
    :pswitch_12
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    if-nez p3, :cond_2a

    goto :goto_d

    :cond_2a
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v4

    :goto_d
    invoke-interface {p2, p1, v4}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setFillOpacity(Landroid/view/View;F)V

    goto/16 :goto_15

    .line 62
    :pswitch_13
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    if-nez p3, :cond_2b

    goto :goto_e

    :cond_2b
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_e
    invoke-interface {p2, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setPointerEvents(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 80
    :pswitch_14
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    if-nez p3, :cond_2c

    goto :goto_f

    :cond_2c
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v4

    :goto_f
    invoke-interface {p2, p1, v4}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setStrokeOpacity(Landroid/view/View;F)V

    goto/16 :goto_15

    .line 74
    :pswitch_15
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    if-nez p3, :cond_2d

    goto :goto_10

    :cond_2d
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_10
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setFillRule(Landroid/view/View;I)V

    goto/16 :goto_15

    .line 113
    :pswitch_16
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setFontWeight(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_15

    .line 77
    :pswitch_17
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setStroke(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V

    goto :goto_15

    .line 44
    :pswitch_18
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    if-nez p3, :cond_2e

    goto :goto_11

    :cond_2e
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_11
    invoke-interface {p2, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setMarkerMid(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_15

    .line 47
    :pswitch_19
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    if-nez p3, :cond_2f

    goto :goto_12

    :cond_2f
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_12
    invoke-interface {p2, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setMarkerEnd(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_15

    .line 104
    :pswitch_1a
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setPropList(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_15

    .line 35
    :pswitch_1b
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setMatrix(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_15

    .line 32
    :pswitch_1c
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    if-nez p3, :cond_30

    goto :goto_13

    :cond_30
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v4

    :goto_13
    invoke-virtual {p2, p1, v4}, Lcom/facebook/react/uimanager/BaseViewManager;->setOpacity(Landroid/view/View;F)V

    goto :goto_15

    .line 107
    :pswitch_1d
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;

    if-nez p3, :cond_31

    goto :goto_14

    :cond_31
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_14
    invoke-interface {p2, p1, v5}, Lcom/facebook/react/viewmanagers/RNSVGGroupManagerInterface;->setFilter(Landroid/view/View;Ljava/lang/String;)V

    :goto_15
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bf73488 -> :sswitch_1d
        -0x4b8807f5 -> :sswitch_1c
        -0x4072683f -> :sswitch_1b
        -0x3b3da15f -> :sswitch_1a
        -0x37a9a5bf -> :sswitch_19
        -0x37a98852 -> :sswitch_18
        -0x352a89c8 -> :sswitch_17
        -0x2bc67c59 -> :sswitch_16
        -0x2b7578e1 -> :sswitch_15
        -0x18d3d54d -> :sswitch_14
        -0x117e564a -> :sswitch_13
        -0x3330ef8 -> :sswitch_12
        -0x2a83503 -> :sswitch_11
        0x2ff583 -> :sswitch_10
        0x300c4f -> :sswitch_f
        0x3306ec -> :sswitch_e
        0x337a8b -> :sswitch_d
        0x4b3162e -> :sswitch_c
        0x5a72f63 -> :sswitch_b
        0x63a48b4 -> :sswitch_a
        0xcf0d448 -> :sswitch_9
        0x15caa0f0 -> :sswitch_8
        0x17f096af -> :sswitch_7
        0x36b25395 -> :sswitch_6
        0x36b3866c -> :sswitch_5
        0x3d3f8e06 -> :sswitch_4
        0x63a518c2 -> :sswitch_3
        0x6ab59576 -> :sswitch_2
        0x6e2146f6 -> :sswitch_1
        0x72aeea6e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
