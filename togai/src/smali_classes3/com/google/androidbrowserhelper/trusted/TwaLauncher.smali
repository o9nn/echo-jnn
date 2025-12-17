.class public Lcom/google/androidbrowserhelper/trusted/TwaLauncher;
.super Ljava/lang/Object;
.source "TwaLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;,
        Lcom/google/androidbrowserhelper/trusted/TwaLauncher$FallbackStrategy;
    }
.end annotation


# static fields
.field public static final CCT_FALLBACK_STRATEGY:Lcom/google/androidbrowserhelper/trusted/TwaLauncher$FallbackStrategy;

.field private static final DEFAULT_SESSION_ID:I = 0x17877

.field private static final TAG:Ljava/lang/String; = "TwaLauncher"

.field public static final WEBVIEW_FALLBACK_STRATEGY:Lcom/google/androidbrowserhelper/trusted/TwaLauncher$FallbackStrategy;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mLaunchMode:I

.field private final mProviderPackage:Ljava/lang/String;

.field private mServiceConnection:Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;

.field private mSession:Landroidx/browser/customtabs/CustomTabsSession;

.field private final mSessionId:I

.field private mTokenStore:Landroidx/browser/trusted/TokenStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->CCT_FALLBACK_STRATEGY:Lcom/google/androidbrowserhelper/trusted/TwaLauncher$FallbackStrategy;

    .line 69
    new-instance v0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->WEBVIEW_FALLBACK_STRATEGY:Lcom/google/androidbrowserhelper/trusted/TwaLauncher$FallbackStrategy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, v0}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 119
    new-instance v0, Lcom/google/androidbrowserhelper/trusted/SharedPreferencesTokenStore;

    invoke-direct {v0, p1}, Lcom/google/androidbrowserhelper/trusted/SharedPreferencesTokenStore;-><init>(Landroid/content/Context;)V

    const v1, 0x17877

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroidx/browser/trusted/TokenStore;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroidx/browser/trusted/TokenStore;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mSessionId:I

    iput-object p4, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mTokenStore:Landroidx/browser/trusted/TokenStore;

    if-nez p2, :cond_0

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p1}, Lcom/google/androidbrowserhelper/trusted/TwaProviderPicker;->pickProvider(Landroid/content/pm/PackageManager;)Lcom/google/androidbrowserhelper/trusted/TwaProviderPicker$Action;

    move-result-object p1

    .line 135
    iget-object p2, p1, Lcom/google/androidbrowserhelper/trusted/TwaProviderPicker$Action;->provider:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mProviderPackage:Ljava/lang/String;

    .line 136
    iget p1, p1, Lcom/google/androidbrowserhelper/trusted/TwaProviderPicker$Action;->launchMode:I

    iput p1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mLaunchMode:I

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mProviderPackage:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mLaunchMode:I

    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/google/androidbrowserhelper/trusted/TwaLauncher;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/androidbrowserhelper/trusted/TwaLauncher;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mProviderPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/androidbrowserhelper/trusted/TwaLauncher;)Landroidx/browser/customtabs/CustomTabsSession;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mSession:Landroidx/browser/customtabs/CustomTabsSession;

    return-object p0
.end method

.method static synthetic access$302(Lcom/google/androidbrowserhelper/trusted/TwaLauncher;Landroidx/browser/customtabs/CustomTabsSession;)Landroidx/browser/customtabs/CustomTabsSession;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mSession:Landroidx/browser/customtabs/CustomTabsSession;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/androidbrowserhelper/trusted/TwaLauncher;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mSessionId:I

    return p0
.end method

.method static synthetic lambda$static$0(Landroid/content/Context;Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .line 55
    invoke-virtual {p1}, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->buildCustomTabsIntent()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 57
    iget-object v1, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-static {p2}, Lcom/google/androidbrowserhelper/trusted/ChromeOsSupport;->isRunningOnArc(Landroid/content/pm/PackageManager;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 61
    iget-object p2, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.LAUNCH_AS_TRUSTED_WEB_ACTIVITY"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    :cond_1
    invoke-virtual {p1}, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    if-eqz p3, :cond_2

    .line 65
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method static synthetic lambda$static$1(Landroid/content/Context;Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 72
    invoke-virtual {p1}, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0}, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->parse(Landroid/content/Context;)Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;

    move-result-object p2

    .line 71
    invoke-static {p0, p1, p2}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->createLaunchIntent(Landroid/content/Context;Landroid/net/Uri;Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;)Landroid/content/Intent;

    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz p3, :cond_0

    .line 75
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private launchTwa(Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Landroidx/browser/customtabs/CustomTabsCallback;Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashScreenStrategy;Ljava/lang/Runnable;Lcom/google/androidbrowserhelper/trusted/TwaLauncher$FallbackStrategy;)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mProviderPackage:Ljava/lang/String;

    .line 220
    invoke-interface {p3, v0, p1}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashScreenStrategy;->onTwaLaunchInitiated(Ljava/lang/String;Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;)V

    .line 223
    :cond_0
    new-instance v0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$$ExternalSyntheticLambda1;-><init>(Lcom/google/androidbrowserhelper/trusted/TwaLauncher;Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashScreenStrategy;Ljava/lang/Runnable;)V

    iget-object p3, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mSession:Landroidx/browser/customtabs/CustomTabsSession;

    if-eqz p3, :cond_1

    .line 227
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 231
    :cond_1
    new-instance p3, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p5, p1, p4}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$$ExternalSyntheticLambda2;-><init>(Lcom/google/androidbrowserhelper/trusted/TwaLauncher;Lcom/google/androidbrowserhelper/trusted/TwaLauncher$FallbackStrategy;Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mServiceConnection:Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;

    if-nez p1, :cond_2

    .line 239
    new-instance p1, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;

    invoke-direct {p1, p0, p2}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;-><init>(Lcom/google/androidbrowserhelper/trusted/TwaLauncher;Landroidx/browser/customtabs/CustomTabsCallback;)V

    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mServiceConnection:Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;

    :cond_2
    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mServiceConnection:Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;

    .line 242
    invoke-static {p1, v0, p3}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;->access$000(Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mProviderPackage:Ljava/lang/String;

    iget-object p3, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mServiceConnection:Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;

    .line 244
    invoke-static {p1, p2, p3}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsServicePreservePriority(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    return-void
.end method

.method private launchWhenSessionEstablished(Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashScreenStrategy;Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mSession:Landroidx/browser/customtabs/CustomTabsSession;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 256
    new-instance v1, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p3}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$$ExternalSyntheticLambda0;-><init>(Lcom/google/androidbrowserhelper/trusted/TwaLauncher;Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Ljava/lang/Runnable;)V

    invoke-interface {p2, p1, v0, v1}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashScreenStrategy;->configureTwaBuilder(Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Landroidx/browser/customtabs/CustomTabsSession;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 259
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->launchWhenSplashScreenReady(Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    .line 252
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "mSession is null in launchWhenSessionEstablished"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private launchWhenSplashScreenReady(Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Ljava/lang/Runnable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mDestroyed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mSession:Landroidx/browser/customtabs/CustomTabsSession;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "TwaLauncher"

    const-string v1, "Launching Trusted Web Activity."

    .line 270
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mSession:Landroidx/browser/customtabs/CustomTabsSession;

    .line 271
    invoke-virtual {p1, v0}, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;->build(Landroidx/browser/customtabs/CustomTabsSession;)Landroidx/browser/trusted/TrustedWebActivityIntent;

    move-result-object p1

    .line 272
    invoke-virtual {p1}, Landroidx/browser/trusted/TrustedWebActivityIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/androidbrowserhelper/trusted/FocusActivity;->addToIntent(Landroid/content/Intent;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mContext:Landroid/content/Context;

    .line 273
    invoke-virtual {p1, v0}, Landroidx/browser/trusted/TrustedWebActivityIntent;->launchTrustedWebActivity(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    .line 276
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mServiceConnection:Lcom/google/androidbrowserhelper/trusted/TwaLauncher$TwaCustomTabsServiceConnection;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mContext:Landroid/content/Context;

    .line 288
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mDestroyed:Z

    return-void
.end method

.method public getProviderPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mProviderPackage:Ljava/lang/String;

    return-object v0
.end method

.method synthetic lambda$launchTwa$2$com-google-androidbrowserhelper-trusted-TwaLauncher(Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashScreenStrategy;Ljava/lang/Runnable;)V
    .locals 0

    .line 224
    invoke-direct {p0, p1, p2, p3}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->launchWhenSessionEstablished(Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashScreenStrategy;Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$launchTwa$3$com-google-androidbrowserhelper-trusted-TwaLauncher(Lcom/google/androidbrowserhelper/trusted/TwaLauncher$FallbackStrategy;Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Ljava/lang/Runnable;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mProviderPackage:Ljava/lang/String;

    .line 235
    invoke-interface {p1, v0, p2, v1, p3}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$FallbackStrategy;->launch(Landroid/content/Context;Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$launchWhenSessionEstablished$4$com-google-androidbrowserhelper-trusted-TwaLauncher(Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Ljava/lang/Runnable;)V
    .locals 0

    .line 257
    invoke-direct {p0, p1, p2}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->launchWhenSplashScreenReady(Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Ljava/lang/Runnable;)V

    return-void
.end method

.method public launch(Landroid/net/Uri;)V
    .locals 6

    .line 152
    new-instance v1, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;

    invoke-direct {v1, p1}, Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;-><init>(Landroid/net/Uri;)V

    new-instance v2, Lcom/google/androidbrowserhelper/trusted/QualityEnforcer;

    invoke-direct {v2}, Lcom/google/androidbrowserhelper/trusted/QualityEnforcer;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->launch(Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Landroidx/browser/customtabs/CustomTabsCallback;Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashScreenStrategy;Ljava/lang/Runnable;Lcom/google/androidbrowserhelper/trusted/TwaLauncher$FallbackStrategy;)V

    return-void
.end method

.method public launch(Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Landroidx/browser/customtabs/CustomTabsCallback;Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashScreenStrategy;Ljava/lang/Runnable;)V
    .locals 6

    sget-object v5, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->CCT_FALLBACK_STRATEGY:Lcom/google/androidbrowserhelper/trusted/TwaLauncher$FallbackStrategy;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 210
    invoke-virtual/range {v0 .. v5}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->launch(Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Landroidx/browser/customtabs/CustomTabsCallback;Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashScreenStrategy;Ljava/lang/Runnable;Lcom/google/androidbrowserhelper/trusted/TwaLauncher$FallbackStrategy;)V

    return-void
.end method

.method public launch(Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Landroidx/browser/customtabs/CustomTabsCallback;Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashScreenStrategy;Ljava/lang/Runnable;Lcom/google/androidbrowserhelper/trusted/TwaLauncher$FallbackStrategy;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mDestroyed:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mLaunchMode:I

    if-nez v0, :cond_0

    .line 179
    invoke-direct/range {p0 .. p5}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->launchTwa(Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Landroidx/browser/customtabs/CustomTabsCallback;Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashScreenStrategy;Ljava/lang/Runnable;Lcom/google/androidbrowserhelper/trusted/TwaLauncher$FallbackStrategy;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mProviderPackage:Ljava/lang/String;

    .line 182
    invoke-interface {p5, p2, p1, p3, p4}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher$FallbackStrategy;->launch(Landroid/content/Context;Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Ljava/lang/String;Ljava/lang/Runnable;)V

    :goto_0
    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mContext:Landroid/content/Context;

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p1}, Lcom/google/androidbrowserhelper/trusted/ChromeOsSupport;->isRunningOnArc(Landroid/content/pm/PackageManager;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mTokenStore:Landroidx/browser/trusted/TokenStore;

    iget-object p2, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mProviderPackage:Ljava/lang/String;

    iget-object p3, p0, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->mContext:Landroid/content/Context;

    .line 190
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-static {p2, p3}, Landroidx/browser/trusted/Token;->create(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroidx/browser/trusted/Token;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/browser/trusted/TokenStore;->store(Landroidx/browser/trusted/Token;)V

    :cond_1
    return-void

    .line 175
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "TwaLauncher already destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
