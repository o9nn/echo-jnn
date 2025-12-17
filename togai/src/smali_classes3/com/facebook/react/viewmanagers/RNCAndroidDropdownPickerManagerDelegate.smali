.class public Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "RNCAndroidDropdownPickerManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "U::",
        "Lcom/facebook/react/uimanager/BaseViewManagerInterface<",
        "TT;>;:",
        "Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface<",
        "TT;>;>",
        "Lcom/facebook/react/uimanager/BaseViewManagerDelegate<",
        "TT;TU;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V
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
.method public receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "setNativeSelected"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "focus"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "blur"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 68
    :pswitch_0
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface;

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result p3

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface;->setNativeSelected(Landroid/view/View;I)V

    goto :goto_1

    .line 62
    :pswitch_1
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface;

    invoke-interface {p2, p1}, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface;->focus(Landroid/view/View;)V

    goto :goto_1

    .line 65
    :pswitch_2
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface;

    invoke-interface {p2, p1}, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface;->blur(Landroid/view/View;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2e3067 -> :sswitch_2
        0x5d154d8 -> :sswitch_1
        0x1586d4d4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

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

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "backgroundColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "selected"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, "items"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_3
    const-string v0, "color"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_4
    const-string v0, "prompt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "numberOfLines"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_6
    const-string v0, "enabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_7
    const-string v0, "dropdownIconRippleColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_8
    const-string v0, "dropdownIconColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 42
    :pswitch_0
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface;

    if-nez p3, :cond_9

    goto :goto_1

    :cond_9
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_1
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface;->setBackgroundColor(Landroid/view/View;I)V

    goto/16 :goto_8

    .line 39
    :pswitch_1
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface;

    if-nez p3, :cond_a

    goto :goto_2

    :cond_a
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_2
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface;->setSelected(Landroid/view/View;I)V

    goto/16 :goto_8

    .line 27
    :pswitch_2
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface;

    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface;->setItems(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_8

    .line 30
    :pswitch_3
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface;->setColor(Landroid/view/View;Ljava/lang/Integer;)V

    goto :goto_8

    .line 33
    :pswitch_4
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface;

    if-nez p3, :cond_b

    const/4 p3, 0x0

    goto :goto_3

    :cond_b
    check-cast p3, Ljava/lang/String;

    :goto_3
    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface;->setPrompt(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_8

    .line 51
    :pswitch_5
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface;

    if-nez p3, :cond_c

    goto :goto_4

    :cond_c
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_4
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface;->setNumberOfLines(Landroid/view/View;I)V

    goto :goto_8

    .line 36
    :pswitch_6
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface;

    if-nez p3, :cond_d

    goto :goto_5

    :cond_d
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_5
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface;->setEnabled(Landroid/view/View;Z)V

    goto :goto_8

    .line 48
    :pswitch_7
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface;

    if-nez p3, :cond_e

    goto :goto_6

    :cond_e
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_6
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface;->setDropdownIconRippleColor(Landroid/view/View;I)V

    goto :goto_8

    .line 45
    :pswitch_8
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface;

    if-nez p3, :cond_f

    goto :goto_7

    :cond_f
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_7
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNCAndroidDropdownPickerManagerInterface;->setDropdownIconColor(Landroid/view/View;I)V

    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x716d3aa7 -> :sswitch_8
        -0x6bd15377 -> :sswitch_7
        -0x5ff074bf -> :sswitch_6
        -0x4f447821 -> :sswitch_5
        -0x3a66a69c -> :sswitch_4
        0x5a72f63 -> :sswitch_3
        0x5fde7c0 -> :sswitch_2
        0x4705f29b -> :sswitch_1
        0x4cb7f6d5 -> :sswitch_0
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
