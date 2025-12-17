.class public Lcom/reactnativecommunity/webview/RNCWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "RNCWebChromeClient.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# static fields
.field protected static final COMMON_PERMISSION_REQUEST:I = 0x3

.field protected static final FULLSCREEN_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

.field protected static final FULLSCREEN_SYSTEM_UI_VISIBILITY:I = 0x1f06


# instance fields
.field protected geolocationPermissionCallback:Landroid/webkit/GeolocationPermissions$Callback;

.field protected geolocationPermissionOrigin:Ljava/lang/String;

.field protected grantedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mAllowsProtectedMedia:Z

.field protected mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field protected mHasOnOpenWindowEvent:Z

.field protected mVideoView:Landroid/view/View;

.field protected mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

.field protected pendingPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected permissionRequest:Landroid/webkit/PermissionRequest;

.field protected permissionsRequestShown:Z

.field protected progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

.field private webviewPermissionsListener:Lcom/facebook/react/modules/core/PermissionListener;


# direct methods
.method public static synthetic $r8$lambda$NLNBMB66AZwdm3fo5KdSAy9n0fs(Lcom/reactnativecommunity/webview/RNCWebChromeClient;I[Ljava/lang/String;[I)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->lambda$new$0(I[Ljava/lang/String;[I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->FULLSCREEN_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/reactnativecommunity/webview/RNCWebView;)V
    .locals 2

    .line 84
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->permissionsRequestShown:Z

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->pendingPermissions:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mAllowsProtectedMedia:Z

    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mHasOnOpenWindowEvent:Z

    .line 252
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebChromeClient$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/reactnativecommunity/webview/RNCWebChromeClient$$ExternalSyntheticLambda0;-><init>(Lcom/reactnativecommunity/webview/RNCWebChromeClient;)V

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->webviewPermissionsListener:Lcom/facebook/react/modules/core/PermissionListener;

    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

    return-void
.end method

.method private getPermissionAwareActivity()Lcom/facebook/react/modules/core/PermissionAwareActivity;
    .locals 2

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

    .line 216
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 219
    instance-of v1, v0, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    if-eqz v1, :cond_0

    .line 222
    check-cast v0, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    return-object v0

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to use permissions API but the host Activity doesn\'t implement PermissionAwareActivity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to use permissions API while not attached to an Activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synthetic lambda$new$0(I[Ljava/lang/String;[I)Z
    .locals 8

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->permissionsRequestShown:Z

    move v0, p1

    move v1, v0

    .line 262
    :goto_0
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v2, :cond_9

    .line 264
    aget-object v2, p2, v0

    .line 265
    aget v5, p3, v0

    if-nez v5, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    move v5, p1

    :goto_1
    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    .line 267
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->geolocationPermissionCallback:Landroid/webkit/GeolocationPermissions$Callback;

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->geolocationPermissionOrigin:Ljava/lang/String;

    if-eqz v7, :cond_2

    if-eqz v5, :cond_1

    .line 272
    invoke-interface {v6, v7, v4, p1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 274
    :cond_1
    invoke-interface {v6, v7, p1, p1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    :goto_2
    iput-object v3, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->geolocationPermissionCallback:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object v3, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->geolocationPermissionOrigin:Ljava/lang/String;

    :cond_2
    const-string v3, "android.permission.RECORD_AUDIO"

    .line 281
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v5, :cond_3

    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    if-eqz v1, :cond_3

    const-string v3, "android.webkit.resource.AUDIO_CAPTURE"

    .line 283
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move v1, v4

    :cond_4
    const-string v3, "android.permission.CAMERA"

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v5, :cond_5

    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    if-eqz v1, :cond_5

    const-string v3, "android.webkit.resource.VIDEO_CAPTURE"

    .line 290
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    move v1, v4

    :cond_6
    const-string v3, "android.webkit.resource.PROTECTED_MEDIA_ID"

    .line 295
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v5, :cond_7

    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 297
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    move v1, v4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    if-eqz v1, :cond_a

    iget-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->permissionRequest:Landroid/webkit/PermissionRequest;

    if-eqz p2, :cond_a

    iget-object p3, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    if-eqz p3, :cond_a

    new-array v0, p1, [Ljava/lang/String;

    .line 306
    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    iput-object v3, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->permissionRequest:Landroid/webkit/PermissionRequest;

    iput-object v3, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    :cond_a
    iget-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->pendingPermissions:Ljava/util/List;

    .line 311
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->pendingPermissions:Ljava/util/List;

    .line 312
    invoke-direct {p0, p2}, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->requestPermissions(Ljava/util/List;)V

    return p1

    :cond_b
    return v4
.end method

.method private declared-synchronized requestPermissions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->permissionsRequestShown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->pendingPermissions:Ljava/util/List;

    .line 234
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    .line 238
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->getPermissionAwareActivity()Lcom/facebook/react/modules/core/PermissionAwareActivity;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->permissionsRequestShown:Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 242
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->webviewPermissionsListener:Lcom/facebook/react/modules/core/PermissionListener;

    const/4 v2, 0x3

    .line 241
    invoke-interface {v0, p1, v2, v1}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->requestPermissions([Ljava/lang/String;ILcom/facebook/react/modules/core/PermissionListener;)V

    iget-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->pendingPermissions:Ljava/util/List;

    .line 248
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected getRootView()Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

    .line 353
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 0

    .line 91
    new-instance p2, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iget-boolean p3, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mHasOnOpenWindowEvent:Z

    if-eqz p3, :cond_0

    .line 94
    new-instance p3, Lcom/reactnativecommunity/webview/RNCWebChromeClient$1;

    invoke-direct {p3, p0, p1}, Lcom/reactnativecommunity/webview/RNCWebChromeClient$1;-><init>(Lcom/reactnativecommunity/webview/RNCWebChromeClient;Landroid/webkit/WebView;)V

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 110
    :cond_0
    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    .line 111
    invoke-virtual {p1, p2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 112
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x1

    return p1
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

    .line 199
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->geolocationPermissionCallback:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->geolocationPermissionOrigin:Ljava/lang/String;

    .line 208
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->requestPermissions(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 211
    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    :goto_0
    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    return-void
.end method

.method public onHostPause()V
    .locals 0

    return-void
.end method

.method public onHostResume()V
    .locals 2

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const/16 v1, 0x1f06

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mVideoView:Landroid/view/View;

    .line 342
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 9

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v2, :cond_6

    aget-object v6, v1, v4

    const-string v7, "android.webkit.resource.AUDIO_CAPTURE"

    .line 154
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v5, "android.permission.RECORD_AUDIO"

    goto :goto_1

    :cond_0
    const-string v7, "android.webkit.resource.VIDEO_CAPTURE"

    .line 156
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v5, "android.permission.CAMERA"

    goto :goto_1

    :cond_1
    const-string v7, "android.webkit.resource.PROTECTED_MEDIA_ID"

    .line 158
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mAllowsProtectedMedia:Z

    if-eqz v8, :cond_2

    iget-object v7, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    .line 160
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v5, v7

    :cond_3
    :goto_1
    if-eqz v5, :cond_5

    iget-object v7, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

    .line 173
    invoke-virtual {v7}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v7

    invoke-static {v7, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_4

    iget-object v5, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    .line 174
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 176
    :cond_4
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 182
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    new-array v1, v3, [Ljava/lang/String;

    .line 183
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    iput-object v5, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    return-void

    :cond_7
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->permissionRequest:Landroid/webkit/PermissionRequest;

    .line 192
    invoke-direct {p0, v0}, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->requestPermissions(Ljava/util/List;)V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 6

    .line 128
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 129
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

    .line 130
    invoke-virtual {v1}, Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;->isWaitingForCommandLoadUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-static {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getReactTagFromWebView(Landroid/webkit/WebView;)I

    move-result v1

    .line 134
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    const-string v3, "target"

    int-to-double v4, v1

    .line 135
    invoke-interface {v2, v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string v3, "title"

    .line 136
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "url"

    .line 137
    invoke-interface {v2, v3, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "canGoBack"

    .line 138
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v3

    invoke-interface {v2, v0, v3}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "canGoForward"

    .line 139
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    invoke-interface {v2, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    int-to-float p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    const-string v0, "progress"

    .line 140
    invoke-interface {v2, v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    iget-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

    .line 142
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    new-instance p2, Lcom/reactnativecommunity/webview/events/TopLoadingProgressEvent;

    invoke-direct {p2, v1, v2}, Lcom/reactnativecommunity/webview/events/TopLoadingProgressEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    invoke-interface {p1, p2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 333
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object p1

    .line 334
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

    .line 336
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    const-class v2, Lcom/reactnativecommunity/webview/RNCWebViewModule;

    invoke-virtual {v0, v2}, Lcom/facebook/react/uimanager/ThemedReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/reactnativecommunity/webview/RNCWebViewModule;

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->isCaptureEnabled()Z

    move-result p3

    invoke-virtual {v0, p2, p1, v1, p3}, Lcom/reactnativecommunity/webview/RNCWebViewModule;->startPhotoPickerIntent(Landroid/webkit/ValueCallback;[Ljava/lang/String;ZZ)Z

    move-result p1

    return p1
.end method

.method protected openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

    .line 324
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    const-class v1, Lcom/reactnativecommunity/webview/RNCWebViewModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/reactnativecommunity/webview/RNCWebViewModule;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/reactnativecommunity/webview/RNCWebViewModule;->startPhotoPickerIntent(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method

.method protected openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

    .line 320
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    const-class v1, Lcom/reactnativecommunity/webview/RNCWebViewModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/reactnativecommunity/webview/RNCWebViewModule;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewModule;->startPhotoPickerIntent(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method

.method protected openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object p3, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

    .line 328
    invoke-virtual {p3}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object p3

    const-class v0, Lcom/reactnativecommunity/webview/RNCWebViewModule;

    invoke-virtual {p3, v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object p3

    check-cast p3, Lcom/reactnativecommunity/webview/RNCWebViewModule;

    invoke-virtual {p3, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewModule;->startPhotoPickerIntent(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method

.method public setAllowsProtectedMedia(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mAllowsProtectedMedia:Z

    return-void
.end method

.method public setHasOnOpenWindowEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mHasOnOpenWindowEvent:Z

    return-void
.end method

.method public setProgressChangedFilter(Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

    return-void
.end method
