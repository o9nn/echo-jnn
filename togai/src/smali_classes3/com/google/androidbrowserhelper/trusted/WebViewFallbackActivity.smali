.class public Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;
.super Landroid/app/Activity;
.source "WebViewFallbackActivity.java"


# static fields
.field private static final KEY_EXTRA_ORIGINS:Ljava/lang/String; = "com.google.browser.examples.twawebviewfallback.WebViewFallbackActivity.KEY_EXTRA_ORIGINS"

.field private static final KEY_LAUNCH_URI:Ljava/lang/String; = "com.google.browser.examples.twawebviewfallback.WebViewFallbackActivity.LAUNCH_URL"

.field private static final KEY_NAVIGATION_BAR_COLOR:Ljava/lang/String; = "com.google.browser.examples.twawebviewfallback.WebViewFallbackActivity.KEY_NAVIGATION_BAR_COLOR"

.field private static final KEY_PREFIX:Ljava/lang/String; = "com.google.browser.examples.twawebviewfallback.WebViewFallbackActivity."

.field private static final KEY_STATUS_BAR_COLOR:Ljava/lang/String; = "com.google.browser.examples.twawebviewfallback.WebViewFallbackActivity.KEY_STATUS_BAR_COLOR"

.field private static final TAG:Ljava/lang/String; = "WebViewFallbackActivity"


# instance fields
.field private mExtraOrigins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchUrl:Landroid/net/Uri;

.field private mStatusBarColor:I

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->mExtraOrigins:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->mWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$100(Landroid/webkit/WebSettings;)V
    .locals 0

    .line 47
    invoke-static {p0}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->setupWebSettings(Landroid/webkit/WebSettings;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;)Landroid/net/Uri;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->mLaunchUrl:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->mStatusBarColor:I

    return p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->mExtraOrigins:Ljava/util/List;

    return-object p0
.end method

.method public static createLaunchIntent(Landroid/content/Context;Landroid/net/Uri;Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;)Landroid/content/Intent;
    .locals 2

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.browser.examples.twawebviewfallback.WebViewFallbackActivity.LAUNCH_URL"

    .line 66
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 68
    iget p1, p2, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->statusBarColorId:I

    .line 69
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    const-string v1, "com.google.browser.examples.twawebviewfallback.WebViewFallbackActivity.KEY_STATUS_BAR_COLOR"

    .line 68
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    iget p1, p2, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->navigationBarColorId:I

    .line 71
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    const-string p1, "com.google.browser.examples.twawebviewfallback.WebViewFallbackActivity.KEY_NAVIGATION_BAR_COLOR"

    .line 70
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    iget-object p0, p2, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->additionalTrustedOrigins:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 74
    new-instance p0, Ljava/util/ArrayList;

    iget-object p1, p2, Lcom/google/androidbrowserhelper/trusted/LauncherActivityMetadata;->additionalTrustedOrigins:Ljava/util/List;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "com.google.browser.examples.twawebviewfallback.WebViewFallbackActivity.KEY_EXTRA_ORIGINS"

    .line 76
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private createWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .line 187
    new-instance v0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity$1;

    invoke-direct {v0, p0}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity$1;-><init>(Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;)V

    return-object v0
.end method

.method private static setupWebSettings(Landroid/webkit/WebSettings;)V
    .locals 1

    const/4 v0, 0x1

    .line 280
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 281
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 282
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 183
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.browser.examples.twawebviewfallback.WebViewFallbackActivity.LAUNCH_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->mLaunchUrl:Landroid/net/Uri;

    .line 87
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 92
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.google.browser.examples.twawebviewfallback.WebViewFallbackActivity.KEY_NAVIGATION_BAR_COLOR"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 94
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.google.browser.examples.twawebviewfallback.WebViewFallbackActivity.KEY_STATUS_BAR_COLOR"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->mStatusBarColor:I

    .line 101
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v2, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->mStatusBarColor:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result v0

    iput v0, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->mStatusBarColor:I

    .line 111
    :goto_0
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.google.browser.examples.twawebviewfallback.WebViewFallbackActivity.KEY_EXTRA_ORIGINS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 115
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 116
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v3, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->TAG:Ljava/lang/String;

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Only \'https\' origins are accepted. Ignoring extra origin: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->mExtraOrigins:Ljava/util/List;

    .line 121
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 126
    :cond_3
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->mWebView:Landroid/webkit/WebView;

    .line 127
    invoke-direct {p0}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->createWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->mWebView:Landroid/webkit/WebView;

    .line 129
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->setupWebSettings(Landroid/webkit/WebSettings;)V

    .line 132
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->mWebView:Landroid/webkit/WebView;

    .line 135
    invoke-virtual {p0, v1, v0}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->mWebView:Landroid/webkit/WebView;

    .line 137
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void

    .line 143
    :cond_4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android-app://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Referer"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->mLaunchUrl:Landroid/net/Uri;

    .line 145
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 88
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "launchUrl scheme must be \'https\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->mWebView:Landroid/webkit/WebView;

    .line 150
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->mWebView:Landroid/webkit/WebView;

    .line 151
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    .line 154
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 175
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    :cond_0
    return-void
.end method
