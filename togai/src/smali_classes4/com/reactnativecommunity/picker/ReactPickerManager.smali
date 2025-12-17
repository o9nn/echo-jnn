.class public abstract Lcom/reactnativecommunity/picker/ReactPickerManager;
.super Lcom/facebook/react/uimanager/BaseViewManager;
.source "ReactPickerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;,
        Lcom/reactnativecommunity/picker/ReactPickerManager$PickerEventEmitter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/BaseViewManager<",
        "Lcom/reactnativecommunity/picker/ReactPicker;",
        "Lcom/reactnativecommunity/picker/ReactPickerShadowNode;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BLUR_PICKER:I = 0x2

.field private static final EMPTY_ARRAY:Lcom/facebook/react/bridge/ReadableArray;

.field private static final FOCUS_PICKER:I = 0x1

.field private static final SET_NATIVE_SELECTED:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    sput-object v0, Lcom/reactnativecommunity/picker/ReactPickerManager;->EMPTY_ARRAY:Lcom/facebook/react/bridge/ReadableArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/facebook/react/uimanager/BaseViewManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 51
    check-cast p2, Lcom/reactnativecommunity/picker/ReactPicker;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/picker/ReactPickerManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/reactnativecommunity/picker/ReactPicker;)V

    return-void
.end method

.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/reactnativecommunity/picker/ReactPicker;)V
    .locals 1

    .line 208
    invoke-virtual {p2}, Lcom/reactnativecommunity/picker/ReactPicker;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 213
    :cond_0
    new-instance v0, Lcom/reactnativecommunity/picker/ReactPickerManager$PickerEventEmitter;

    invoke-direct {v0, p2, p1}, Lcom/reactnativecommunity/picker/ReactPickerManager$PickerEventEmitter;-><init>(Lcom/reactnativecommunity/picker/ReactPicker;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 216
    invoke-virtual {p2, v0}, Lcom/reactnativecommunity/picker/ReactPicker;->setOnSelectListener(Lcom/reactnativecommunity/picker/ReactPicker$OnSelectListener;)V

    .line 217
    invoke-virtual {p2, v0}, Lcom/reactnativecommunity/picker/ReactPicker;->setOnFocusListener(Lcom/reactnativecommunity/picker/ReactPicker$OnFocusListener;)V

    return-void
.end method

.method public blur(Lcom/reactnativecommunity/picker/ReactPicker;)V
    .locals 0

    .line 245
    invoke-virtual {p1}, Lcom/reactnativecommunity/picker/ReactPicker;->clearFocus()V

    return-void
.end method

.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/ReactPickerManager;->createShadowNodeInstance()Lcom/reactnativecommunity/picker/ReactPickerShadowNode;

    move-result-object v0

    return-object v0
.end method

.method public createShadowNodeInstance()Lcom/reactnativecommunity/picker/ReactPickerShadowNode;
    .locals 1

    .line 254
    new-instance v0, Lcom/reactnativecommunity/picker/ReactPickerShadowNode;

    invoke-direct {v0}, Lcom/reactnativecommunity/picker/ReactPickerShadowNode;-><init>()V

    return-object v0
.end method

.method public focus(Lcom/reactnativecommunity/picker/ReactPicker;)V
    .locals 0

    .line 241
    invoke-virtual {p1}, Lcom/reactnativecommunity/picker/ReactPicker;->performClick()Z

    return-void
.end method

.method public getCommandsMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-string v0, "focus"

    const/4 v1, 0x1

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "blur"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "setNativeSelected"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExportedCustomBubblingEventTypeConstants()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 61
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->builder()Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    const-string v1, "onSelectCapture"

    const-string v2, "bubbled"

    const-string v3, "onSelect"

    const-string v4, "captured"

    .line 66
    invoke-static {v2, v3, v4, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "phasedRegistrationNames"

    .line 64
    invoke-static {v3, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v5, "topSelect"

    .line 62
    invoke-virtual {v0, v5, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    const-string v1, "onFocus"

    const-string v5, "onFocusCapture"

    .line 71
    invoke-static {v2, v1, v4, v5}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 69
    invoke-static {v3, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v5, "topFocus"

    .line 67
    invoke-virtual {v0, v5, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    const-string v1, "onBlur"

    const-string v5, "onBlurCapture"

    .line 76
    invoke-static {v2, v1, v4, v5}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 74
    invoke-static {v3, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "topBlur"

    .line 72
    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/facebook/react/common/MapBuilder$Builder;->build()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getShadowNodeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/reactnativecommunity/picker/ReactPickerShadowNode;",
            ">;"
        }
    .end annotation

    .line 259
    const-class v0, Lcom/reactnativecommunity/picker/ReactPickerShadowNode;

    return-object v0
.end method

.method public measure(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;[F)J
    .locals 0

    .line 97
    new-instance p2, Lcom/reactnativecommunity/picker/ReactPicker;

    invoke-direct {p2, p1}, Lcom/reactnativecommunity/picker/ReactPicker;-><init>(Landroid/content/Context;)V

    const-string p4, "items"

    .line 98
    invoke-interface {p3, p4}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p4

    .line 99
    new-instance p5, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;

    invoke-direct {p5, p1, p4}, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;-><init>(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableArray;)V

    const-string p1, "numberOfLines"

    .line 101
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 103
    invoke-virtual {p5, p1}, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->setNumberOfLines(I)V

    :cond_0
    const-string p1, "selected"

    .line 106
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_3

    .line 108
    invoke-virtual {p5}, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->getCount()I

    move-result p4

    if-lt p1, p4, :cond_1

    goto :goto_1

    :cond_1
    const-string p4, "mode"

    .line 115
    invoke-interface {p3, p4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "dropdown"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_2

    .line 116
    invoke-virtual {p5, p1, p4, p2}, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p5, p1, p4, p2}, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 120
    :goto_0
    invoke-virtual {p2}, Lcom/reactnativecommunity/picker/ReactPicker;->getMeasuredWidth()I

    move-result p3

    const/high16 p4, 0x40000000    # 2.0f

    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    const/4 p4, 0x0

    .line 121
    invoke-static {p4, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    .line 118
    invoke-virtual {p2, p1, p3, p4}, Lcom/reactnativecommunity/picker/ReactPicker;->measureItem(Landroid/view/View;II)V

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    goto :goto_2

    .line 112
    :cond_3
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 p3, 0x42480000    # 50.0f

    .line 109
    invoke-static {p2, p3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    :goto_2
    int-to-float p1, p1

    .line 128
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p1

    const/4 p2, 0x0

    .line 126
    invoke-static {p2, p1}, Lcom/facebook/yoga/YogaMeasureOutput;->make(FF)J

    move-result-wide p1

    return-wide p1
.end method

.method protected bridge synthetic onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 51
    check-cast p1, Lcom/reactnativecommunity/picker/ReactPicker;

    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/picker/ReactPickerManager;->onAfterUpdateTransaction(Lcom/reactnativecommunity/picker/ReactPicker;)V

    return-void
.end method

.method protected onAfterUpdateTransaction(Lcom/reactnativecommunity/picker/ReactPicker;)V
    .locals 0

    .line 199
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 200
    invoke-virtual {p1}, Lcom/reactnativecommunity/picker/ReactPicker;->updateStagedSelection()V

    return-void
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 51
    check-cast p1, Lcom/reactnativecommunity/picker/ReactPicker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/reactnativecommunity/picker/ReactPickerManager;->receiveCommand(Lcom/reactnativecommunity/picker/ReactPicker;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Lcom/reactnativecommunity/picker/ReactPicker;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3

    .line 222
    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
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

    .line 231
    :pswitch_0
    invoke-static {p3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/picker/ReactPickerManager;->setNativeSelected(Lcom/reactnativecommunity/picker/ReactPicker;I)V

    goto :goto_1

    .line 225
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/picker/ReactPickerManager;->focus(Lcom/reactnativecommunity/picker/ReactPicker;)V

    goto :goto_1

    .line 228
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/picker/ReactPickerManager;->blur(Lcom/reactnativecommunity/picker/ReactPicker;)V

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

.method public bridge synthetic setBackgroundColor(Landroid/view/View;I)V
    .locals 0
    .param p2    # I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "backgroundColor"
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

    .line 51
    check-cast p1, Lcom/reactnativecommunity/picker/ReactPicker;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/picker/ReactPickerManager;->setBackgroundColor(Lcom/reactnativecommunity/picker/ReactPicker;I)V

    return-void
.end method

.method public setBackgroundColor(Lcom/reactnativecommunity/picker/ReactPicker;I)V
    .locals 0
    .param p2    # I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "backgroundColor"
    .end annotation

    .line 171
    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/picker/ReactPicker;->setBackgroundColor(I)V

    return-void
.end method

.method public setColor(Lcom/reactnativecommunity/picker/ReactPicker;Ljava/lang/Integer;)V
    .locals 0
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "color"
    .end annotation

    .line 146
    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/picker/ReactPicker;->setPrimaryColor(Ljava/lang/Integer;)V

    .line 147
    invoke-virtual {p1}, Lcom/reactnativecommunity/picker/ReactPicker;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->setPrimaryTextColor(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public setDropdownIconColor(Lcom/reactnativecommunity/picker/ReactPicker;I)V
    .locals 0
    .param p2    # I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "dropdownIconColor"
    .end annotation

    .line 176
    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/picker/ReactPicker;->setDropdownIconColor(I)V

    return-void
.end method

.method public setDropdownIconRippleColor(Lcom/reactnativecommunity/picker/ReactPicker;I)V
    .locals 0
    .param p2    # I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "dropdownIconRippleColor"
    .end annotation

    .line 181
    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/picker/ReactPicker;->setDropdownIconRippleColor(I)V

    return-void
.end method

.method public setEnabled(Lcom/reactnativecommunity/picker/ReactPicker;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "enabled"
    .end annotation

    .line 160
    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/picker/ReactPicker;->setEnabled(Z)V

    return-void
.end method

.method public setItems(Lcom/reactnativecommunity/picker/ReactPicker;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 2
    .param p2    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "items"
    .end annotation

    .line 133
    invoke-virtual {p1}, Lcom/reactnativecommunity/picker/ReactPicker;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;

    invoke-virtual {p1}, Lcom/reactnativecommunity/picker/ReactPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;-><init>(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 137
    invoke-virtual {p1}, Lcom/reactnativecommunity/picker/ReactPicker;->getPrimaryColor()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->setPrimaryTextColor(Ljava/lang/Integer;)V

    .line 138
    invoke-virtual {p1, v0}, Lcom/reactnativecommunity/picker/ReactPicker;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v0, p2}, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->setItems(Lcom/facebook/react/bridge/ReadableArray;)V

    :goto_0
    return-void
.end method

.method public setNativeSelected(Lcom/reactnativecommunity/picker/ReactPicker;I)V
    .locals 0

    .line 249
    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/picker/ReactPicker;->setStagedSelection(I)V

    return-void
.end method

.method public setNumberOfLines(Lcom/reactnativecommunity/picker/ReactPicker;I)V
    .locals 3
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x1
        name = "numberOfLines"
    .end annotation

    .line 186
    invoke-virtual {p1}, Lcom/reactnativecommunity/picker/ReactPicker;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;

    invoke-virtual {p1}, Lcom/reactnativecommunity/picker/ReactPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/reactnativecommunity/picker/ReactPickerManager;->EMPTY_ARRAY:Lcom/facebook/react/bridge/ReadableArray;

    invoke-direct {v0, v1, v2}, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;-><init>(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 189
    invoke-virtual {p1}, Lcom/reactnativecommunity/picker/ReactPicker;->getPrimaryColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->setPrimaryTextColor(Ljava/lang/Integer;)V

    .line 190
    invoke-virtual {v0, p2}, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->setNumberOfLines(I)V

    .line 191
    invoke-virtual {p1, v0}, Lcom/reactnativecommunity/picker/ReactPicker;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v0, p2}, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->setNumberOfLines(I)V

    :goto_0
    return-void
.end method

.method public setPrompt(Lcom/reactnativecommunity/picker/ReactPicker;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "prompt"
    .end annotation

    .line 155
    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/picker/ReactPicker;->setPrompt(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSelected(Lcom/reactnativecommunity/picker/ReactPicker;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "selected"
    .end annotation

    .line 165
    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/picker/ReactPicker;->setStagedSelection(I)V

    return-void
.end method

.method public bridge synthetic updateExtraData(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
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

    .line 51
    check-cast p1, Lcom/reactnativecommunity/picker/ReactPicker;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/picker/ReactPickerManager;->updateExtraData(Lcom/reactnativecommunity/picker/ReactPicker;Ljava/lang/Object;)V

    return-void
.end method

.method public updateExtraData(Lcom/reactnativecommunity/picker/ReactPicker;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic updateState(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 51
    check-cast p1, Lcom/reactnativecommunity/picker/ReactPicker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/reactnativecommunity/picker/ReactPickerManager;->updateState(Lcom/reactnativecommunity/picker/ReactPicker;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateState(Lcom/reactnativecommunity/picker/ReactPicker;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;
    .locals 0

    .line 264
    invoke-virtual {p1, p3}, Lcom/reactnativecommunity/picker/ReactPicker;->setStateWrapper(Lcom/facebook/react/uimanager/StateWrapper;)V

    const/4 p1, 0x0

    return-object p1
.end method
