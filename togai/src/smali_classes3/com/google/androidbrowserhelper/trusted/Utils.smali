.class public Lcom/google/androidbrowserhelper/trusted/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSystemUiVisibilityFlag(Landroid/app/Activity;I)V
    .locals 1

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/2addr p1, v0

    .line 62
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static convertDrawableToBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4

    .line 89
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_0
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 96
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 95
    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 97
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 98
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 99
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method private static luminanceOfColorComponent(F)F
    .locals 4

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    const v0, 0x3d20e411    # 0.03928f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const v0, 0x414eb852    # 12.92f

    div-float/2addr p0, v0

    goto :goto_0

    :cond_0
    const v0, 0x3d6147ae    # 0.055f

    add-float/2addr p0, v0

    const v0, 0x3f870a3d    # 1.055f

    div-float/2addr p0, v0

    float-to-double v0, p0

    const-wide v2, 0x4003333340000000L    # 2.4000000953674316

    .line 81
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    :goto_0
    return p0
.end method

.method public static setNavigationBarColor(Landroid/app/Activity;I)V
    .locals 1

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 53
    invoke-static {p1}, Lcom/google/androidbrowserhelper/trusted/Utils;->shouldUseDarkIconsOnBackground(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    .line 54
    invoke-static {p0, p1}, Lcom/google/androidbrowserhelper/trusted/Utils;->addSystemUiVisibilityFlag(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)V
    .locals 1

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 42
    invoke-static {p1}, Lcom/google/androidbrowserhelper/trusted/Utils;->shouldUseDarkIconsOnBackground(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x2000

    .line 43
    invoke-static {p0, p1}, Lcom/google/androidbrowserhelper/trusted/Utils;->addSystemUiVisibilityFlag(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method

.method private static shouldUseDarkIconsOnBackground(I)Z
    .locals 3

    .line 72
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/google/androidbrowserhelper/trusted/Utils;->luminanceOfColorComponent(F)F

    move-result v0

    const v1, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v0, v1

    .line 73
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/google/androidbrowserhelper/trusted/Utils;->luminanceOfColorComponent(F)F

    move-result v1

    const v2, 0x3f371759    # 0.7152f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 74
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Lcom/google/androidbrowserhelper/trusted/Utils;->luminanceOfColorComponent(F)F

    move-result p0

    const v1, 0x3d93dd98    # 0.0722f

    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    const p0, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, p0

    const p0, 0x3f866666    # 1.05f

    div-float/2addr p0, v0

    .line 75
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
