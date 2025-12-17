.class public Lcom/google/androidbrowserhelper/trusted/LauncherActivity;
.super Landroid/app/Activity;
.source "LauncherActivity.java"


# static fields
.field private static final BROWSER_WAS_LAUNCHED_KEY:Ljava/lang/String; = "android.support.customtabs.trusted.BROWSER_WAS_LAUNCHED_KEY"

.field private static final FALLBACK_TYPE_WEBVIEW:Ljava/lang/String; = "webview"

.field private static final TAG:Ljava/lang/String; = "TWALauncherActivity"

.field private static sChromeVersionChecked:Z

.field private static sLauncherActivitiesAlive:I


# instance fields
.field private mBrowserWasLaunched:Z

.field private mCustomTabsCallback:Landroidx/browser/customtabs/CustomTabsCallback;

.field private mMetadata:Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

.field private mSplashScreenStrategy:Lcom/google/androidbrowserhelper/trusted/splashscreens/PwaWrapperSplashScreenStrategy;

.field private mTwaLauncher:Lcom/google/androidbrowserhelper/trusted/TwaLauncher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 118
    new-instance v0, Lcom/google/androidbrowserhelper/trusted/QualityEnforcer;

    invoke-direct {v0}, Lcom/google/androidbrowserhelper/trusted/QualityEnforcer;-><init>()V

    iput-object v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mCustomTabsCallback:Landroidx/browser/customtabs/CustomTabsCallback;

    return-void
.end method

.method private addShareDataIfPresent(Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;)V
    .locals 3

    .line 263
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/androidbrowserhelper/trusted/SharingUtils;->retrieveShareDataFromIntent(Landroid/content/Intent;)Landroidx/browser/trusted/sharing/ShareData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mMetadata:Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    .line 267
    iget-object v1, v1, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->shareTarget:Ljava/lang/String;

    const-string v2, "TWALauncherActivity"

    if-nez v1, :cond_1

    const-string p1, "Failed to share: share target not defined in the AndroidManifest"

    .line 268
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mMetadata:Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    .line 272
    iget-object v1, v1, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->shareTarget:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/androidbrowserhelper/trusted/SharingUtils;->parseShareTargetJson(Ljava/lang/String;)Landroidx/browser/trusted/sharing/ShareTarget;

    move-result-object v1

    .line 273
    invoke-virtual {p1, v1, v0}, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->setShareParams(Landroidx/browser/trusted/sharing/ShareTarget;Landroidx/browser/trusted/sharing/ShareData;)Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to parse share target json: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getColorCompat(I)I
    .locals 0

    .line 300
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method private restartInNewTask()Z
    .locals 6

    .line 390
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 391
    :goto_0
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x80000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    if-eqz v0, :cond_2

    if-nez v4, :cond_2

    return v3

    .line 416
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 418
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    or-int/2addr v1, v3

    const v3, -0x80001

    and-int/2addr v1, v3

    .line 421
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 423
    invoke-virtual {p0, v0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    return v2
.end method

.method private splashScreenNeeded()Z
    .locals 1

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mMetadata:Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    .line 253
    iget v0, v0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->splashImageDrawableId:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->isTaskRoot()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected createTwaLauncher()Lcom/google/androidbrowserhelper/trusted/TwaLauncher;
    .locals 1

    .line 248
    new-instance v0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;

    invoke-direct {v0, p0}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getDisplayMode()Landroidx/browser/trusted/TrustedWebActivityDisplayMode;
    .locals 1

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mMetadata:Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    .line 386
    iget-object v0, v0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->displayMode:Landroidx/browser/trusted/TrustedWebActivityDisplayMode;

    return-object v0
.end method

.method protected getFallbackStrategy()Lcom/google/androidbrowserhelper/trusted/TwaLauncher$FallbackStrategy;
    .locals 2

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mMetadata:Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    .line 371
    iget-object v0, v0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->fallbackStrategyType:Ljava/lang/String;

    const-string v1, "webview"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    sget-object v0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->WEBVIEW_FALLBACK_STRATEGY:Lcom/google/androidbrowserhelper/trusted/TwaLauncher$FallbackStrategy;

    return-object v0

    .line 374
    :cond_0
    sget-object v0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->CCT_FALLBACK_STRATEGY:Lcom/google/androidbrowserhelper/trusted/TwaLauncher$FallbackStrategy;

    return-object v0
.end method

.method protected getLaunchingUrl()Landroid/net/Uri;
    .locals 5

    .line 348
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, ")."

    const-string v2, "TWALauncherActivity"

    if-eqz v0, :cond_0

    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Using URL from Intent ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mMetadata:Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    .line 354
    iget-object v0, v0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->defaultUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Using URL from Manifest ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mMetadata:Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    iget-object v3, v3, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->defaultUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mMetadata:Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    .line 356
    iget-object v0, v0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->defaultUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "https://www.example.com/"

    .line 359
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected getSplashImageScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 285
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method protected getSplashImageTransformationMatrix()Landroid/graphics/Matrix;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$launchTwa$0$com-google-androidbrowserhelper-trusted-LauncherActivity()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mBrowserWasLaunched:Z

    return-void
.end method

.method protected launchTwa()V
    .locals 8

    .line 193
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TWALauncherActivity"

    const-string v1, "Aborting launchTwa() as Activity is finishing"

    .line 194
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 198
    :cond_0
    new-instance v0, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mMetadata:Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    iget v1, v1, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->statusBarColorDarkId:I

    .line 199
    invoke-direct {p0, v1}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->getColorCompat(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mMetadata:Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    iget v1, v1, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->navigationBarColorDarkId:I

    .line 200
    invoke-direct {p0, v1}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->getColorCompat(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->setNavigationBarColor(I)Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mMetadata:Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    iget v1, v1, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->navigationBarDividerColorDarkId:I

    .line 202
    invoke-direct {p0, v1}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->getColorCompat(I)I

    move-result v1

    .line 201
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->setNavigationBarDividerColor(I)Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->build()Landroidx/browser/customtabs/CustomTabColorSchemeParams;

    move-result-object v0

    .line 205
    new-instance v1, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;

    .line 206
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->getLaunchingUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;-><init>(Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mMetadata:Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    iget v2, v2, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->statusBarColorId:I

    .line 207
    invoke-direct {p0, v2}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->getColorCompat(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->setToolbarColor(I)Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mMetadata:Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    iget v2, v2, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->navigationBarColorId:I

    .line 208
    invoke-direct {p0, v2}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->getColorCompat(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->setNavigationBarColor(I)Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mMetadata:Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    iget v2, v2, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->navigationBarDividerColorId:I

    .line 210
    invoke-direct {p0, v2}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->getColorCompat(I)I

    move-result v2

    .line 209
    invoke-virtual {v1, v2}, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->setNavigationBarDividerColor(I)Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;

    move-result-object v1

    const/4 v2, 0x0

    .line 211
    invoke-virtual {v1, v2}, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->setColorScheme(I)Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;

    move-result-object v1

    const/4 v2, 0x2

    .line 212
    invoke-virtual {v1, v2, v0}, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->setColorSchemeParams(ILandroidx/browser/customtabs/CustomTabColorSchemeParams;)Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;

    move-result-object v0

    .line 214
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->getDisplayMode()Landroidx/browser/trusted/TrustedWebActivityDisplayMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->setDisplayMode(Landroidx/browser/trusted/TrustedWebActivityDisplayMode;)Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mMetadata:Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    iget v1, v1, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->screenOrientation:I

    .line 215
    invoke-virtual {v0, v1}, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->setScreenOrientation(I)Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mMetadata:Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    .line 217
    iget-object v0, v0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->additionalTrustedOrigins:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mMetadata:Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    .line 218
    iget-object v0, v0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->additionalTrustedOrigins:Ljava/util/List;

    invoke-virtual {v3, v0}, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->setAdditionalTrustedOrigins(Ljava/util/List;)Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;

    .line 221
    :cond_1
    invoke-direct {p0, v3}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->addShareDataIfPresent(Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;)V

    .line 223
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->createTwaLauncher()Lcom/google/androidbrowserhelper/trusted/TwaLauncher;

    move-result-object v2

    iput-object v2, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mTwaLauncher:Lcom/google/androidbrowserhelper/trusted/TwaLauncher;

    iget-object v4, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mCustomTabsCallback:Landroidx/browser/customtabs/CustomTabsCallback;

    iget-object v5, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mSplashScreenStrategy:Lcom/google/androidbrowserhelper/trusted/splashscreens/PwaWrapperSplashScreenStrategy;

    .line 224
    new-instance v6, Lcom/google/androidbrowserhelper/trusted/LauncherActivity$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity$$ExternalSyntheticLambda0;-><init>(Lcom/google/androidbrowserhelper/trusted/LauncherActivity;)V

    .line 228
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->getFallbackStrategy()Lcom/google/androidbrowserhelper/trusted/TwaLauncher$FallbackStrategy;

    move-result-object v7

    .line 224
    invoke-virtual/range {v2 .. v7}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->launch(Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Landroidx/browser/customtabs/CustomTabsCallback;Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashScreenStrategy;Ljava/lang/Runnable;Lcom/google/androidbrowserhelper/trusted/TwaLauncher$FallbackStrategy;)V

    sget-boolean v0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->sChromeVersionChecked:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mTwaLauncher:Lcom/google/androidbrowserhelper/trusted/TwaLauncher;

    .line 231
    invoke-virtual {v0}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->getProviderPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/androidbrowserhelper/trusted/ChromeUpdatePrompt;->promptIfNeeded(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->sChromeVersionChecked:Z

    .line 235
    :cond_2
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/google/androidbrowserhelper/trusted/ChromeOsSupport;->isRunningOnArc(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    new-instance v0, Lcom/google/androidbrowserhelper/trusted/TwaSharedPreferencesManager;

    invoke-direct {v0, p0}, Lcom/google/androidbrowserhelper/trusted/TwaSharedPreferencesManager;-><init>(Landroid/content/Context;)V

    const-string v1, "org.chromium.arc.payment_app"

    .line 237
    invoke-virtual {v0, v1}, Lcom/google/androidbrowserhelper/trusted/TwaSharedPreferencesManager;->writeLastLaunchedProviderPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_3
    new-instance v0, Lcom/google/androidbrowserhelper/trusted/TwaSharedPreferencesManager;

    invoke-direct {v0, p0}, Lcom/google/androidbrowserhelper/trusted/TwaSharedPreferencesManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mTwaLauncher:Lcom/google/androidbrowserhelper/trusted/TwaLauncher;

    .line 240
    invoke-virtual {v1}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->getProviderPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/androidbrowserhelper/trusted/TwaSharedPreferencesManager;->writeLastLaunchedProviderPackageName(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mTwaLauncher:Lcom/google/androidbrowserhelper/trusted/TwaLauncher;

    .line 244
    invoke-virtual {v0}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->getProviderPackage()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {p0, v0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->addSiteSettingsShortcut(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->sLauncherActivitiesAlive:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->sLauncherActivitiesAlive:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 129
    :goto_0
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 130
    :goto_1
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/google/androidbrowserhelper/trusted/SharingUtils;->isShareIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->finish()V

    return-void

    .line 146
    :cond_2
    invoke-direct {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->restartInNewTask()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->finish()V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    const-string v0, "android.support.customtabs.trusted.BROWSER_WAS_LAUNCHED_KEY"

    .line 151
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 154
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->finish()V

    return-void

    .line 158
    :cond_4
    invoke-static {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->parse(Landroid/content/Context;)Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mMetadata:Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    .line 160
    invoke-direct {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->splashScreenNeeded()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 161
    new-instance p1, Lcom/google/androidbrowserhelper/trusted/splashscreens/PwaWrapperSplashScreenStrategy;

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mMetadata:Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    iget v2, v0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->splashImageDrawableId:I

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mMetadata:Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    iget v0, v0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->splashScreenBackgroundColorId:I

    .line 163
    invoke-direct {p0, v0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->getColorCompat(I)I

    move-result v3

    .line 164
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->getSplashImageScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    .line 165
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->getSplashImageTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mMetadata:Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    iget v6, v0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->splashScreenFadeOutDurationMillis:I

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mMetadata:Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    iget-object v7, v0, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->fileProviderAuthority:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/androidbrowserhelper/trusted/splashscreens/PwaWrapperSplashScreenStrategy;-><init>(Landroid/app/Activity;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Matrix;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mSplashScreenStrategy:Lcom/google/androidbrowserhelper/trusted/splashscreens/PwaWrapperSplashScreenStrategy;

    .line 170
    :cond_5
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->shouldLaunchImmediately()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 171
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->launchTwa()V

    :cond_6
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 313
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget v0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->sLauncherActivitiesAlive:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->sLauncherActivitiesAlive:I

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mTwaLauncher:Lcom/google/androidbrowserhelper/trusted/TwaLauncher;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mSplashScreenStrategy:Lcom/google/androidbrowserhelper/trusted/splashscreens/PwaWrapperSplashScreenStrategy;

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {v0}, Lcom/google/androidbrowserhelper/trusted/splashscreens/PwaWrapperSplashScreenStrategy;->destroy()V

    :cond_1
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .line 333
    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mSplashScreenStrategy:Lcom/google/androidbrowserhelper/trusted/splashscreens/PwaWrapperSplashScreenStrategy;

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0}, Lcom/google/androidbrowserhelper/trusted/splashscreens/PwaWrapperSplashScreenStrategy;->onActivityEnterAnimationComplete()V

    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .line 305
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-boolean v0, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mBrowserWasLaunched:Z

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 327
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "android.support.customtabs.trusted.BROWSER_WAS_LAUNCHED_KEY"

    iget-boolean v1, p0, Lcom/google/androidbrowserhelper/trusted/LauncherActivity;->mBrowserWasLaunched:Z

    .line 328
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected shouldLaunchImmediately()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
