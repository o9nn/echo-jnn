.class Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "ReactPickerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reactnativecommunity/picker/ReactPickerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReactPickerAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private mItems:Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mNumberOfLines:I

.field private mPrimaryTextColor:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p2    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 279
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->mNumberOfLines:I

    iput-object p2, p0, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->mItems:Lcom/facebook/react/bridge/ReadableArray;

    const-string p2, "layout_inflater"

    .line 283
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 282
    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 10

    .line 319
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->getItem(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    const-string v0, "style"

    .line 323
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p2, :cond_2

    if-eqz p4, :cond_1

    .line 329
    sget p2, Lcom/reactnativecommunity/picker/R$layout;->simple_spinner_dropdown_item:I

    goto :goto_1

    .line 330
    :cond_1
    sget p2, Lcom/reactnativecommunity/picker/R$layout;->simple_spinner_item:I

    :goto_1
    iget-object v2, p0, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 331
    invoke-virtual {v2, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_2
    const-string p3, "enabled"

    .line 334
    invoke-interface {p1, p3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 335
    invoke-interface {p1, p3}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    goto :goto_2

    :cond_3
    move p3, v3

    .line 338
    :goto_2
    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    xor-int/2addr p3, v3

    .line 340
    invoke-virtual {p2, p3}, Landroid/view/View;->setClickable(Z)V

    .line 342
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    const-string v2, "label"

    .line 343
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->mNumberOfLines:I

    .line 344
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    const-string v2, "color"

    const-string v4, "fontFamily"

    if-eqz v0, :cond_7

    const-string v5, "backgroundColor"

    .line 347
    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 348
    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    .line 350
    :cond_4
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 353
    :goto_3
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 354
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    const-string v5, "fontSize"

    .line 357
    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpl-double v6, v6, v8

    if-lez v6, :cond_6

    .line 358
    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 361
    :cond_6
    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 362
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fonts/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".ttf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 363
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 365
    :try_start_0
    invoke-virtual {v6, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 366
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 367
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 369
    :catch_0
    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 370
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_7
    :goto_4
    if-nez p4, :cond_8

    iget-object p4, p0, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->mPrimaryTextColor:Ljava/lang/Integer;

    if-eqz p4, :cond_8

    .line 376
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 377
    :cond_8
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_9

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_9

    .line 378
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    :goto_5
    const-string p4, "contentDescription"

    .line 381
    invoke-interface {p1, p4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1, p4}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 382
    invoke-interface {p1, p4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 385
    :cond_a
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_b

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_b

    .line 386
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 387
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 390
    :cond_b
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->isRTL(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 392
    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutDirection(I)V

    const/4 p1, 0x4

    .line 393
    invoke-virtual {p2, p1}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_6

    .line 395
    :cond_c
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutDirection(I)V

    const/4 p1, 0x3

    .line 396
    invoke-virtual {p2, p1}, Landroid/view/View;->setTextDirection(I)V

    :goto_6
    return-object p2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->mItems:Lcom/facebook/react/bridge/ReadableArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 294
    :cond_0
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    .line 315
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lcom/facebook/react/bridge/ReadableMap;
    .locals 1

    iget-object v0, p0, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->mItems:Lcom/facebook/react/bridge/ReadableArray;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 300
    :cond_0
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 272
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->getItem(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 310
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setItems(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p1    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->mItems:Lcom/facebook/react/bridge/ReadableArray;

    .line 288
    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setNumberOfLines(I)V
    .locals 0

    iput p1, p0, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->mNumberOfLines:I

    .line 409
    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setPrimaryTextColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->mPrimaryTextColor:Ljava/lang/Integer;

    .line 404
    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/ReactPickerManager$ReactPickerAdapter;->notifyDataSetChanged()V

    return-void
.end method
