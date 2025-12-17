.class public final Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager$1;
.super Lcom/airbnb/lottie/FontAssetDelegate;
.source "LottieAnimationViewPropertyManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/airbnb/android/react/lottie/LottieAnimationViewPropertyManager$1",
        "Lcom/airbnb/lottie/FontAssetDelegate;",
        "fetchFont",
        "Landroid/graphics/Typeface;",
        "fontFamily",
        "",
        "fontStyle",
        "fontName",
        "lottie-react-native_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $view:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager$1;->$view:Lcom/airbnb/lottie/LottieAnimationView;

    .line 73
    invoke-direct {p0}, Lcom/airbnb/lottie/FontAssetDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchFont(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3

    const-string v0, "fontFamily"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/facebook/react/views/text/ReactFontManager;->getInstance()Lcom/facebook/react/views/text/ReactFontManager;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager$1;->$view:Lcom/airbnb/lottie/LottieAnimationView;

    .line 76
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/facebook/react/views/text/ReactFontManager;->getTypeface(Ljava/lang/String;IILandroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object p1

    const-string v0, "getTypeface(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public fetchFont(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    const-string v0, "fontFamily"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fontStyle"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fontName"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "Light"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xc8

    goto :goto_1

    :sswitch_1
    const-string p1, "Black"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x384

    goto :goto_1

    :sswitch_2
    const-string p1, "Thin"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x64

    goto :goto_1

    :sswitch_3
    const-string p1, "Bold"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x2bc

    goto :goto_1

    :sswitch_4
    const-string p1, "Regular"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :sswitch_5
    const-string p1, "Normal"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x190

    goto :goto_1

    :sswitch_6
    const-string p1, "Medium"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 p1, 0x1f4

    goto :goto_1

    :cond_5
    :goto_0
    move p1, v0

    .line 89
    :goto_1
    invoke-static {}, Lcom/facebook/react/views/text/ReactFontManager;->getInstance()Lcom/facebook/react/views/text/ReactFontManager;

    move-result-object p2

    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager$1;->$view:Lcom/airbnb/lottie/LottieAnimationView;

    .line 90
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p2, p3, v0, p1, v1}, Lcom/facebook/react/views/text/ReactFontManager;->getTypeface(Ljava/lang/String;IILandroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object p1

    const-string p2, "getTypeface(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76dc846b -> :sswitch_6
        -0x749456f9 -> :sswitch_5
        -0x5c054884 -> :sswitch_4
        0x1faea5 -> :sswitch_3
        0x27c2b9 -> :sswitch_2
        0x3d49fdf -> :sswitch_1
        0x46044f6 -> :sswitch_0
    .end sparse-switch
.end method
