.class public Lcom/reactnativecommunity/picker/ReactPicker;
.super Lcom/reactnativecommunity/picker/FabricEnabledPicker;
.source "ReactPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reactnativecommunity/picker/ReactPicker$OnSelectListener;,
        Lcom/reactnativecommunity/picker/ReactPicker$OnFocusListener;
    }
.end annotation


# instance fields
.field private mIsOpen:Z

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mMode:I

.field private mOldElementSize:I

.field private mOnFocusListener:Lcom/reactnativecommunity/picker/ReactPicker$OnFocusListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mOnSelectListener:Lcom/reactnativecommunity/picker/ReactPicker$OnSelectListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPrimaryColor:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mStagedSelection:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final measureAndLayout:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$Iy_Sl7C7tvgyUk4hb7eGE6dZaKU(Lcom/reactnativecommunity/picker/ReactPicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIsOpen(Lcom/reactnativecommunity/picker/ReactPicker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mIsOpen:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnSelectListener(Lcom/reactnativecommunity/picker/ReactPicker;)Lcom/reactnativecommunity/picker/ReactPicker$OnSelectListener;
    .locals 0

    iget-object p0, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mOnSelectListener:Lcom/reactnativecommunity/picker/ReactPicker$OnSelectListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 93
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/picker/FabricEnabledPicker;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mMode:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mOldElementSize:I

    iput-boolean v0, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mIsOpen:Z

    .line 65
    new-instance v0, Lcom/reactnativecommunity/picker/ReactPicker$1;

    invoke-direct {v0, p0}, Lcom/reactnativecommunity/picker/ReactPicker$1;-><init>(Lcom/reactnativecommunity/picker/ReactPicker;)V

    iput-object v0, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 144
    new-instance v0, Lcom/reactnativecommunity/picker/ReactPicker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/reactnativecommunity/picker/ReactPicker$$ExternalSyntheticLambda0;-><init>(Lcom/reactnativecommunity/picker/ReactPicker;)V

    iput-object v0, p0, Lcom/reactnativecommunity/picker/ReactPicker;->measureAndLayout:Ljava/lang/Runnable;

    .line 94
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/picker/ReactPicker;->handleRTL(Landroid/content/Context;)V

    .line 95
    invoke-direct {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->setSpinnerBackground()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/reactnativecommunity/picker/FabricEnabledPicker;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mMode:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mOldElementSize:I

    iput-boolean v0, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mIsOpen:Z

    .line 65
    new-instance v0, Lcom/reactnativecommunity/picker/ReactPicker$1;

    invoke-direct {v0, p0}, Lcom/reactnativecommunity/picker/ReactPicker$1;-><init>(Lcom/reactnativecommunity/picker/ReactPicker;)V

    iput-object v0, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 144
    new-instance v0, Lcom/reactnativecommunity/picker/ReactPicker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/reactnativecommunity/picker/ReactPicker$$ExternalSyntheticLambda0;-><init>(Lcom/reactnativecommunity/picker/ReactPicker;)V

    iput-object v0, p0, Lcom/reactnativecommunity/picker/ReactPicker;->measureAndLayout:Ljava/lang/Runnable;

    iput p2, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mMode:I

    .line 101
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/picker/ReactPicker;->handleRTL(Landroid/content/Context;)V

    .line 102
    invoke-direct {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->setSpinnerBackground()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/reactnativecommunity/picker/FabricEnabledPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mMode:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mOldElementSize:I

    iput-boolean p2, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mIsOpen:Z

    .line 65
    new-instance p2, Lcom/reactnativecommunity/picker/ReactPicker$1;

    invoke-direct {p2, p0}, Lcom/reactnativecommunity/picker/ReactPicker$1;-><init>(Lcom/reactnativecommunity/picker/ReactPicker;)V

    iput-object p2, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 144
    new-instance p2, Lcom/reactnativecommunity/picker/ReactPicker$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/reactnativecommunity/picker/ReactPicker$$ExternalSyntheticLambda0;-><init>(Lcom/reactnativecommunity/picker/ReactPicker;)V

    iput-object p2, p0, Lcom/reactnativecommunity/picker/ReactPicker;->measureAndLayout:Ljava/lang/Runnable;

    .line 107
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/picker/ReactPicker;->handleRTL(Landroid/content/Context;)V

    .line 108
    invoke-direct {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->setSpinnerBackground()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/reactnativecommunity/picker/FabricEnabledPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mMode:I

    const/high16 p3, -0x80000000

    iput p3, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mOldElementSize:I

    iput-boolean p2, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mIsOpen:Z

    .line 65
    new-instance p2, Lcom/reactnativecommunity/picker/ReactPicker$1;

    invoke-direct {p2, p0}, Lcom/reactnativecommunity/picker/ReactPicker$1;-><init>(Lcom/reactnativecommunity/picker/ReactPicker;)V

    iput-object p2, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 144
    new-instance p2, Lcom/reactnativecommunity/picker/ReactPicker$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/reactnativecommunity/picker/ReactPicker$$ExternalSyntheticLambda0;-><init>(Lcom/reactnativecommunity/picker/ReactPicker;)V

    iput-object p2, p0, Lcom/reactnativecommunity/picker/ReactPicker;->measureAndLayout:Ljava/lang/Runnable;

    .line 113
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/picker/ReactPicker;->handleRTL(Landroid/content/Context;)V

    .line 114
    invoke-direct {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->setSpinnerBackground()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/reactnativecommunity/picker/FabricEnabledPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mMode:I

    const/high16 p3, -0x80000000

    iput p3, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mOldElementSize:I

    iput-boolean p2, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mIsOpen:Z

    .line 65
    new-instance p2, Lcom/reactnativecommunity/picker/ReactPicker$1;

    invoke-direct {p2, p0}, Lcom/reactnativecommunity/picker/ReactPicker$1;-><init>(Lcom/reactnativecommunity/picker/ReactPicker;)V

    iput-object p2, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 144
    new-instance p2, Lcom/reactnativecommunity/picker/ReactPicker$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/reactnativecommunity/picker/ReactPicker$$ExternalSyntheticLambda0;-><init>(Lcom/reactnativecommunity/picker/ReactPicker;)V

    iput-object p2, p0, Lcom/reactnativecommunity/picker/ReactPicker;->measureAndLayout:Ljava/lang/Runnable;

    iput p4, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mMode:I

    .line 120
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/picker/ReactPicker;->handleRTL(Landroid/content/Context;)V

    .line 121
    invoke-direct {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->setSpinnerBackground()V

    return-void
.end method

.method private getReactContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 2

    .line 315
    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 316
    instance-of v1, v0, Lcom/facebook/react/bridge/ReactContext;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    .line 317
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 319
    :cond_0
    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    return-object v0
.end method

.method private handleRTL(Landroid/content/Context;)V
    .locals 1

    .line 134
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->isRTL(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 136
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/picker/ReactPicker;->setLayoutDirection(I)V

    const/4 p1, 0x4

    .line 137
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/picker/ReactPicker;->setTextDirection(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 139
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/picker/ReactPicker;->setLayoutDirection(I)V

    const/4 p1, 0x3

    .line 140
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/picker/ReactPicker;->setTextDirection(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 4

    .line 146
    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 147
    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->getHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 145
    invoke-virtual {p0, v0, v1}, Lcom/reactnativecommunity/picker/ReactPicker;->measure(II)V

    .line 148
    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/reactnativecommunity/picker/ReactPicker;->layout(IIII)V

    return-void
.end method

.method private setSelectionWithSuppressEvent(I)V
    .locals 1

    .line 276
    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->getSelectedItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0, v0}, Lcom/reactnativecommunity/picker/ReactPicker;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/4 v0, 0x0

    .line 278
    invoke-virtual {p0, p1, v0}, Lcom/reactnativecommunity/picker/ReactPicker;->setSelection(IZ)V

    iget-object p1, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 279
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/picker/ReactPicker;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_0
    return-void
.end method

.method private setSpinnerBackground()V
    .locals 1

    .line 125
    sget v0, Lcom/reactnativecommunity/picker/R$drawable;->spinner_dropdown_background:I

    invoke-virtual {p0, v0}, Lcom/reactnativecommunity/picker/ReactPicker;->setBackgroundResource(I)V

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, v0}, Lcom/reactnativecommunity/picker/ReactPicker;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public clearFocus()V
    .locals 1

    const/4 v0, 0x1

    .line 235
    invoke-super {p0, v0}, Lcom/reactnativecommunity/picker/FabricEnabledPicker;->setFocusableInTouchMode(Z)V

    .line 236
    invoke-super {p0, v0}, Lcom/reactnativecommunity/picker/FabricEnabledPicker;->setFocusable(Z)V

    .line 237
    invoke-super {p0}, Lcom/reactnativecommunity/picker/FabricEnabledPicker;->onDetachedFromWindow()V

    return-void
.end method

.method public getMode()I
    .locals 1
    .annotation runtime Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mMode:I

    return v0
.end method

.method public getOnFocusListener()Lcom/reactnativecommunity/picker/ReactPicker$OnFocusListener;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mOnFocusListener:Lcom/reactnativecommunity/picker/ReactPicker$OnFocusListener;

    return-object v0
.end method

.method public getOnSelectListener()Lcom/reactnativecommunity/picker/ReactPicker$OnSelectListener;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mOnSelectListener:Lcom/reactnativecommunity/picker/ReactPicker$OnSelectListener;

    return-object v0
.end method

.method public getPrimaryColor()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mPrimaryColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public measureItem(Landroid/view/View;II)V
    .locals 0

    .line 231
    invoke-virtual {p0, p1, p2, p3}, Lcom/reactnativecommunity/picker/ReactPicker;->measureChild(Landroid/view/View;II)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 186
    invoke-super/range {p0 .. p5}, Lcom/reactnativecommunity/picker/FabricEnabledPicker;->onLayout(ZIIII)V

    .line 192
    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 193
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/picker/ReactPicker;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 198
    invoke-super {p0, p1, p2}, Lcom/reactnativecommunity/picker/FabricEnabledPicker;->onMeasure(II)V

    .line 200
    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->getSelectedItemPosition()I

    move-result p1

    if-ltz p1, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p2

    invoke-interface {p2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result p2

    if-lt p1, p2, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 212
    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->getMeasuredWidth()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v0, 0x0

    .line 213
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 210
    invoke-virtual {p0, p1, p2, v0}, Lcom/reactnativecommunity/picker/ReactPicker;->measureChild(Landroid/view/View;II)V

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    goto :goto_1

    .line 206
    :cond_1
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0x42480000    # 50.0f

    .line 203
    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    :goto_1
    iget p2, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mOldElementSize:I

    if-eq p1, p2, :cond_3

    .line 220
    invoke-direct {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->getReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object p2

    const-class v0, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {p2, v0}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object p2

    check-cast p2, Lcom/facebook/react/uimanager/UIManagerModule;

    if-eqz p2, :cond_2

    .line 222
    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->getId()I

    move-result v0

    new-instance v1, Lcom/reactnativecommunity/picker/ReactPickerLocalData;

    invoke-direct {v1, p1}, Lcom/reactnativecommunity/picker/ReactPickerLocalData;-><init>(I)V

    invoke-virtual {p2, v0, v1}, Lcom/facebook/react/uimanager/UIManagerModule;->setViewLocalData(ILjava/lang/Object;)V

    :cond_2
    iput p1, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mOldElementSize:I

    .line 226
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/picker/ReactPicker;->setMeasuredHeight(I)V

    :cond_3
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mIsOpen:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mIsOpen:Z

    iget-object p1, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mOnFocusListener:Lcom/reactnativecommunity/picker/ReactPicker$OnFocusListener;

    if-eqz p1, :cond_0

    .line 179
    invoke-interface {p1}, Lcom/reactnativecommunity/picker/ReactPicker$OnFocusListener;->onPickerBlur()V

    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mIsOpen:Z

    iget-object v0, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mOnFocusListener:Lcom/reactnativecommunity/picker/ReactPicker$OnFocusListener;

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0}, Lcom/reactnativecommunity/picker/ReactPicker$OnFocusListener;->onPickerFocus()V

    .line 169
    :cond_0
    invoke-super {p0}, Lcom/reactnativecommunity/picker/FabricEnabledPicker;->performClick()Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .line 153
    invoke-super {p0}, Lcom/reactnativecommunity/picker/FabricEnabledPicker;->requestLayout()V

    iget-object v0, p0, Lcom/reactnativecommunity/picker/ReactPicker;->measureAndLayout:Ljava/lang/Runnable;

    .line 159
    invoke-virtual {p0, v0}, Lcom/reactnativecommunity/picker/ReactPicker;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .param p1    # I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 304
    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 305
    sget v1, Lcom/reactnativecommunity/picker/R$id;->dropdown_background:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 306
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public setDropdownIconColor(I)V
    .locals 2
    .param p1    # I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 292
    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 293
    sget v1, Lcom/reactnativecommunity/picker/R$id;->dropdown_icon:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 294
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/RippleDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setDropdownIconRippleColor(I)V
    .locals 2
    .param p1    # I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 298
    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/ReactPicker;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 299
    sget v1, Lcom/reactnativecommunity/picker/R$id;->dropdown_icon:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 300
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setOnFocusListener(Lcom/reactnativecommunity/picker/ReactPicker$OnFocusListener;)V
    .locals 0
    .param p1    # Lcom/reactnativecommunity/picker/ReactPicker$OnFocusListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mOnFocusListener:Lcom/reactnativecommunity/picker/ReactPicker$OnFocusListener;

    return-void
.end method

.method public setOnSelectListener(Lcom/reactnativecommunity/picker/ReactPicker$OnSelectListener;)V
    .locals 0
    .param p1    # Lcom/reactnativecommunity/picker/ReactPicker$OnSelectListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mOnSelectListener:Lcom/reactnativecommunity/picker/ReactPicker$OnSelectListener;

    return-void
.end method

.method public setPrimaryColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mPrimaryColor:Ljava/lang/Integer;

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/reactnativecommunity/picker/FabricEnabledPicker;->setSelection(I)V

    iget-boolean v0, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mIsOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mOnSelectListener:Lcom/reactnativecommunity/picker/ReactPicker$OnSelectListener;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p1}, Lcom/reactnativecommunity/picker/ReactPicker$OnSelectListener;->onItemSelected(I)V

    :cond_0
    return-void
.end method

.method public setSelection(IZ)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2}, Lcom/reactnativecommunity/picker/FabricEnabledPicker;->setSelection(IZ)V

    return-void
.end method

.method public setStagedSelection(I)V
    .locals 0

    .line 259
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mStagedSelection:Ljava/lang/Integer;

    return-void
.end method

.method public updateStagedSelection()V
    .locals 1

    iget-object v0, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mStagedSelection:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/reactnativecommunity/picker/ReactPicker;->setSelectionWithSuppressEvent(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/reactnativecommunity/picker/ReactPicker;->mStagedSelection:Ljava/lang/Integer;

    :cond_0
    return-void
.end method
