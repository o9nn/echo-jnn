.class public Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;
.super Ljava/lang/Object;
.source "LauncherActivityMetadata.java"


# static fields
.field private static final DEFAULT_COLOR_ID:I = 0x106000b

.field private static final DEFAULT_DIVIDER_COLOR_ID:I = 0x106000d

.field private static final METADATA_ADDITIONAL_TRUSTED_ORIGINS:Ljava/lang/String; = "android.support.customtabs.trusted.ADDITIONAL_TRUSTED_ORIGINS"

.field private static final METADATA_DEFAULT_URL:Ljava/lang/String; = "android.support.customtabs.trusted.DEFAULT_URL"

.field private static final METADATA_DISPLAY_MODE:Ljava/lang/String; = "android.support.customtabs.trusted.DISPLAY_MODE"

.field private static final METADATA_FALLBACK_STRATEGY:Ljava/lang/String; = "android.support.customtabs.trusted.FALLBACK_STRATEGY"

.field private static final METADATA_FILE_PROVIDER_AUTHORITY:Ljava/lang/String; = "android.support.customtabs.trusted.FILE_PROVIDER_AUTHORITY"

.field private static final METADATA_NAVIGATION_BAR_COLOR_DARK_ID:Ljava/lang/String; = "android.support.customtabs.trusted.NAVIGATION_BAR_COLOR_DARK"

.field private static final METADATA_NAVIGATION_BAR_COLOR_ID:Ljava/lang/String; = "android.support.customtabs.trusted.NAVIGATION_BAR_COLOR"

.field private static final METADATA_NAVIGATION_BAR_DIVIDER_COLOR_DARK_ID:Ljava/lang/String; = "androix.browser.trusted.NAVIGATION_BAR_DIVIDER_COLOR_DARK"

.field private static final METADATA_NAVIGATION_BAR_DIVIDER_COLOR_ID:Ljava/lang/String; = "androix.browser.trusted.NAVIGATION_BAR_DIVIDER_COLOR"

.field private static final METADATA_SCREEN_ORIENTATION:Ljava/lang/String; = "android.support.customtabs.trusted.SCREEN_ORIENTATION"

.field private static final METADATA_SHARE_TARGET:Ljava/lang/String; = "android.support.customtabs.trusted.METADATA_SHARE_TARGET"

.field private static final METADATA_SPLASH_IMAGE_DRAWABLE_ID:Ljava/lang/String; = "android.support.customtabs.trusted.SPLASH_IMAGE_DRAWABLE"

.field private static final METADATA_SPLASH_SCREEN_BACKGROUND_COLOR:Ljava/lang/String; = "android.support.customtabs.trusted.SPLASH_SCREEN_BACKGROUND_COLOR"

.field private static final METADATA_SPLASH_SCREEN_FADE_OUT_DURATION:Ljava/lang/String; = "android.support.customtabs.trusted.SPLASH_SCREEN_FADE_OUT_DURATION"

.field private static final METADATA_STATUS_BAR_COLOR_DARK_ID:Ljava/lang/String; = "android.support.customtabs.trusted.STATUS_BAR_COLOR_DARK"

.field private static final METADATA_STATUS_BAR_COLOR_ID:Ljava/lang/String; = "android.support.customtabs.trusted.STATUS_BAR_COLOR"

.field private static final TAG:Ljava/lang/String; = "LauncherActivityMetadata"


# instance fields
.field public final additionalTrustedOrigins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final defaultUrl:Ljava/lang/String;

.field public final displayMode:Landroidx/browser/trusted/TrustedWebActivityDisplayMode;

.field public final fallbackStrategyType:Ljava/lang/String;

.field public final fileProviderAuthority:Ljava/lang/String;

.field public final navigationBarColorDarkId:I

.field public final navigationBarColorId:I

.field public final navigationBarDividerColorDarkId:I

.field public final navigationBarDividerColorId:I

.field public final screenOrientation:I

.field public final shareTarget:Ljava/lang/String;

.field public final splashImageDrawableId:I

.field public final splashScreenBackgroundColorId:I

.field public final splashScreenFadeOutDurationMillis:I

.field public final statusBarColorDarkId:I

.field public final statusBarColorId:I


# direct methods
.method private constructor <init>(Landroid/os/Bundle;Landroid/content/res/Resources;)V
    .locals 4

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android.support.customtabs.trusted.DEFAULT_URL"

    .line 169
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->defaultUrl:Ljava/lang/String;

    const-string v0, "android.support.customtabs.trusted.STATUS_BAR_COLOR"

    const v1, 0x106000b

    .line 170
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->statusBarColorId:I

    const-string v2, "android.support.customtabs.trusted.STATUS_BAR_COLOR_DARK"

    .line 171
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->statusBarColorDarkId:I

    const-string v0, "android.support.customtabs.trusted.NAVIGATION_BAR_COLOR"

    .line 172
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->navigationBarColorId:I

    const-string v2, "android.support.customtabs.trusted.NAVIGATION_BAR_COLOR_DARK"

    .line 174
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->navigationBarColorDarkId:I

    const-string v2, "androix.browser.trusted.NAVIGATION_BAR_DIVIDER_COLOR"

    const v3, 0x106000d

    .line 176
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->navigationBarDividerColorId:I

    const-string v2, "androix.browser.trusted.NAVIGATION_BAR_DIVIDER_COLOR_DARK"

    .line 178
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->navigationBarDividerColorDarkId:I

    const-string v0, "android.support.customtabs.trusted.SPLASH_IMAGE_DRAWABLE"

    const/4 v2, 0x0

    .line 179
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->splashImageDrawableId:I

    const-string v0, "android.support.customtabs.trusted.SPLASH_SCREEN_BACKGROUND_COLOR"

    .line 180
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->splashScreenBackgroundColorId:I

    const-string v0, "android.support.customtabs.trusted.FILE_PROVIDER_AUTHORITY"

    .line 182
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->fileProviderAuthority:Ljava/lang/String;

    const-string v0, "android.support.customtabs.trusted.SPLASH_SCREEN_FADE_OUT_DURATION"

    .line 184
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->splashScreenFadeOutDurationMillis:I

    const-string v0, "android.support.customtabs.trusted.ADDITIONAL_TRUSTED_ORIGINS"

    .line 185
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 189
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->additionalTrustedOrigins:Ljava/util/List;

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->additionalTrustedOrigins:Ljava/util/List;

    :goto_0
    const-string v0, "android.support.customtabs.trusted.FALLBACK_STRATEGY"

    .line 193
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->fallbackStrategyType:Ljava/lang/String;

    .line 194
    invoke-static {p1}, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->getDisplayMode(Landroid/os/Bundle;)Landroidx/browser/trusted/TrustedWebActivityDisplayMode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->displayMode:Landroidx/browser/trusted/TrustedWebActivityDisplayMode;

    const-string v0, "android.support.customtabs.trusted.SCREEN_ORIENTATION"

    .line 195
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->getOrientation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->screenOrientation:I

    const-string v0, "android.support.customtabs.trusted.METADATA_SHARE_TARGET"

    .line 196
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 197
    :cond_1
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->shareTarget:Ljava/lang/String;

    return-void
.end method

.method private static getDisplayMode(Landroid/os/Bundle;)Landroidx/browser/trusted/TrustedWebActivityDisplayMode;
    .locals 2

    const-string v0, "android.support.customtabs.trusted.DISPLAY_MODE"

    .line 228
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "immersive"

    .line 229
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 230
    new-instance p0, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$ImmersiveMode;

    invoke-direct {p0, v1, v1}, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$ImmersiveMode;-><init>(ZI)V

    return-object p0

    :cond_0
    const-string v0, "sticky-immersive"

    .line 233
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 234
    new-instance p0, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$ImmersiveMode;

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$ImmersiveMode;-><init>(ZI)V

    return-object p0

    .line 237
    :cond_1
    new-instance p0, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$DefaultMode;

    invoke-direct {p0}, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$DefaultMode;-><init>()V

    return-object p0
.end method

.method private getOrientation(Ljava/lang/String;)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 205
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "portrait-secondary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    move v9, v2

    goto :goto_0

    :sswitch_1
    const-string v1, "landscape-primary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v9, v3

    goto :goto_0

    :sswitch_2
    const-string v1, "natural"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v9, v4

    goto :goto_0

    :sswitch_3
    const-string v1, "landscape"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v9, v5

    goto :goto_0

    :sswitch_4
    const-string v1, "portrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v9, v6

    goto :goto_0

    :sswitch_5
    const-string v1, "any"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v9, v7

    goto :goto_0

    :sswitch_6
    const-string v1, "landscape-secondary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    move v9, v8

    goto :goto_0

    :sswitch_7
    const-string v1, "portrait-primary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    move v9, v0

    :goto_0
    packed-switch v9, :pswitch_data_0

    return v0

    :pswitch_0
    return v7

    :pswitch_1
    return v6

    :pswitch_2
    const/16 p1, 0x8

    return p1

    :pswitch_3
    return v3

    :pswitch_4
    return v2

    :pswitch_5
    return v4

    :pswitch_6
    return v5

    :pswitch_7
    return v8

    :sswitch_data_0
    .sparse-switch
        -0x49321e30 -> :sswitch_7
        -0x8c4a71e -> :sswitch_6
        0x179ec -> :sswitch_5
        0x2b77bb9b -> :sswitch_4
        0x5545f2bb -> :sswitch_3
        0x670d1829 -> :sswitch_2
        0x6f02f8f0 -> :sswitch_1
        0x77ef89c2 -> :sswitch_0
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

.method public static parse(Landroid/content/Context;)Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;
    .locals 4

    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 247
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 p0, 0x80

    .line 247
    invoke-virtual {v1, v2, p0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 254
    :goto_0
    new-instance v1, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    if-nez p0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-direct {v1, p0, v0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;-><init>(Landroid/os/Bundle;Landroid/content/res/Resources;)V

    return-object v1
.end method
