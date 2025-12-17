.class Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity$1;
.super Landroid/webkit/WebViewClient;
.source "WebViewFallbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->createWebViewClient()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;


# direct methods
.method constructor <init>(Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity$1;->this$0:Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;

    .line 187
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private matchExtraOrigins(Landroid/net/Uri;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity$1;->this$0:Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;

    .line 261
    invoke-static {v0}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->access$500(Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 262
    invoke-direct {p0, v1, p1}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity$1;->uriOriginsMatch(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private shouldOverrideUrlLoading(Landroid/net/Uri;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity$1;->this$0:Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;

    .line 217
    invoke-static {v0}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->access$200(Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "data"

    .line 223
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 224
    invoke-direct {p0, p1, v0}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity$1;->uriOriginsMatch(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    invoke-direct {p0, p1}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity$1;->matchExtraOrigins(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    :try_start_0
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity$1;->this$0:Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;

    .line 235
    invoke-static {v1}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->access$300(Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity$1;->this$0:Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;

    .line 237
    invoke-virtual {v0, v1, p1}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 240
    :catch_0
    invoke-static {}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityNotFoundException while launching \'%s\'"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2
.end method

.method private uriOriginsMatch(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 2

    .line 270
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result p1

    invoke-virtual {p2}, Landroid/net/Uri;->getPort()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 3

    .line 191
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 195
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 196
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity$1;->this$0:Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;

    .line 201
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->access$002(Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity$1;->this$0:Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;

    .line 202
    invoke-static {v0}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->access$000(Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity$1;->this$0:Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;

    .line 203
    invoke-static {v0}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->access$000(Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->access$100(Landroid/webkit/WebSettings;)V

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity$1;->this$0:Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;

    .line 205
    invoke-static {v0}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->access$000(Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 210
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Recovering from crash"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 211
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity$1;->this$0:Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;

    .line 212
    invoke-static {p1}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->access$000(Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;)Landroid/webkit/WebView;

    move-result-object p1

    iget-object p2, p0, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity$1;->this$0:Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;

    invoke-static {p2}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;->access$200(Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    .line 257
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity$1;->shouldOverrideUrlLoading(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 251
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/androidbrowserhelper/trusted/WebViewFallbackActivity$1;->shouldOverrideUrlLoading(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
