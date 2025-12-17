.class public Lcom/reactnativecommunity/webview/RNCWebViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "RNCWebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/reactnativecommunity/webview/RNCWebViewWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    .line 31
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    invoke-direct {v0}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    return-void
.end method


# virtual methods
.method protected bridge synthetic addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V

    return-void
.end method

.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V
    .locals 0

    .line 279
    invoke-virtual {p2}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    new-instance p2, Lcom/reactnativecommunity/webview/RNCWebViewClient;

    invoke-direct {p2}, Lcom/reactnativecommunity/webview/RNCWebViewClient;-><init>()V

    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    move-result-object p1

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .locals 1

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 41
    invoke-virtual {v0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    move-result-object p1

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/reactnativecommunity/webview/RNCWebView;)Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .locals 1

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 45
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/reactnativecommunity/webview/RNCWebView;)Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    move-result-object p1

    return-object p1
.end method

.method public getCommandsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 308
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->getCommandsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 284
    invoke-super {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;->getExportedCustomDirectEventTypeConstants()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 286
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    :cond_0
    const-string v1, "onLoadingStart"

    const-string v2, "registrationName"

    .line 289
    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topLoadingStart"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onLoadingFinish"

    .line 290
    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topLoadingFinish"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onLoadingError"

    .line 291
    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topLoadingError"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onMessage"

    .line 292
    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topMessage"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onLoadingProgress"

    .line 295
    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topLoadingProgress"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onShouldStartLoadWithRequest"

    .line 296
    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topShouldStartLoadWithRequest"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v1, Lcom/facebook/react/views/scroll/ScrollEventType;->SCROLL:Lcom/facebook/react/views/scroll/ScrollEventType;

    invoke-static {v1}, Lcom/facebook/react/views/scroll/ScrollEventType;->getJSEventName(Lcom/facebook/react/views/scroll/ScrollEventType;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "onScroll"

    invoke-static {v2, v3}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onHttpError"

    .line 298
    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topHttpError"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onRenderProcessGone"

    .line 299
    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topRenderProcessGone"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onCustomMenuSelection"

    .line 300
    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topCustomMenuSelection"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onOpenWindow"

    .line 301
    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "topOpenWindow"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNCWebView"

    return-object v0
.end method

.method public bridge synthetic onDropViewInstance(Landroid/view/View;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->onDropViewInstance(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V

    return-void
.end method

.method public onDropViewInstance(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V
    .locals 1

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 319
    invoke-virtual {v0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->onDropViewInstance(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V

    .line 320
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/ViewGroupManager;->onDropViewInstance(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->receiveCommand(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 313
    invoke-virtual {v0, p1, p2, p3}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->receiveCommand(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 314
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/ViewGroupManager;->receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setAllowFileAccess(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "allowFileAccess"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 50
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setAllowFileAccess(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setAllowFileAccessFromFileURLs(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "allowFileAccessFromFileURLs"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 55
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setAllowFileAccessFromFileURLs(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setAllowUniversalAccessFromFileURLs(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "allowUniversalAccessFromFileURLs"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 61
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setAllowUniversalAccessFromFileURLs(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setAllowsFullscreenVideo(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "allowsFullscreenVideo"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 66
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setAllowsFullscreenVideo(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setAllowsProtectedMedia(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "allowsProtectedMedia"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 71
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setAllowsProtectedMedia(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setAndroidLayerType(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "androidLayerType"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 76
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setAndroidLayerType(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setApplicationNameForUserAgent(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "applicationNameForUserAgent"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 81
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setApplicationNameForUserAgent(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setBasicAuthCredential(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "basicAuthCredential"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 86
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setBasicAuthCredential(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public setCacheEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "cacheEnabled"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 91
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setCacheEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setCacheMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "cacheMode"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 96
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setCacheMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setDomStorageEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "domStorageEnabled"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 101
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setDomStorageEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setDownloadingMessage(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "downloadingMessage"
    .end annotation

    iget-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 106
    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setDownloadingMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setForceDarkOn(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "forceDarkOn"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 111
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setForceDarkOn(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setGeolocationEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "geolocationEnabled"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 116
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setGeolocationEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setHasOnOpenWindowEvent(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "hasOnOpenWindowEvent"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 173
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setHasOnOpenWindowEvent(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setHasOnScroll(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "hasOnScroll"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 121
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setHasOnScroll(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setIncognito(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "incognito"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 126
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setIncognito(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setInjectedJavaScript(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "injectedJavaScript"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 131
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setInjectedJavaScript(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setInjectedJavaScriptBeforeContentLoaded(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "injectedJavaScriptBeforeContentLoaded"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 136
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setInjectedJavaScriptBeforeContentLoaded(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setInjectedJavaScriptBeforeContentLoadedForMainFrameOnly(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "injectedJavaScriptBeforeContentLoadedForMainFrameOnly"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 147
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setInjectedJavaScriptBeforeContentLoadedForMainFrameOnly(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setInjectedJavaScriptForMainFrameOnly(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "injectedJavaScriptForMainFrameOnly"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 141
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setInjectedJavaScriptForMainFrameOnly(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setInjectedJavaScriptObject(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "injectedJavaScriptObject"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 153
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setInjectedJavaScriptObject(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "javaScriptCanOpenWindowsAutomatically"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 158
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setJavaScriptCanOpenWindowsAutomatically(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setJavaScriptEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "javaScriptEnabled"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 163
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setJavaScriptEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setLackPermissionToDownloadMessage(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "lackPermissionToDownloadMessage"
    .end annotation

    iget-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 168
    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setLackPermissionToDownloadMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setMediaPlaybackRequiresUserAction(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "mediaPlaybackRequiresUserAction"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 178
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setMediaPlaybackRequiresUserAction(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setMenuCustomItems(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "menuItems"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 188
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setMenuCustomItems(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setMessagingEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "messagingEnabled"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 183
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setMessagingEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setMessagingModuleName(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "messagingModuleName"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 193
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setMessagingModuleName(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setMinimumFontSize(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "minimumFontSize"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 198
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setMinimumFontSize(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;I)V

    return-void
.end method

.method public setMixedContentMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "mixedContentMode"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 203
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setMixedContentMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setNestedScrollEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "nestedScrollEnabled"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 208
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setNestedScrollEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setOverScrollMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "overScrollMode"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 213
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setOverScrollMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setSaveFormDataDisabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "saveFormDataDisabled"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 218
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setSaveFormDataDisabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setScalesPageToFit(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "scalesPageToFit"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 223
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setScalesPageToFit(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setSetBuiltInZoomControls(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "setBuiltInZoomControls"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 228
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setSetBuiltInZoomControls(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setSetDisplayZoomControls(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "setDisplayZoomControls"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 233
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setSetDisplayZoomControls(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setSetSupportMultipleWindows(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "setSupportMultipleWindows"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 238
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setSetSupportMultipleWindows(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setShowsHorizontalScrollIndicator(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "showsHorizontalScrollIndicator"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 243
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setShowsHorizontalScrollIndicator(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setShowsVerticalScrollIndicator(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "showsVerticalScrollIndicator"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 248
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setShowsVerticalScrollIndicator(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setSource(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "source"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    const/4 v1, 0x0

    .line 253
    invoke-virtual {v0, p1, p2, v1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setSource(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableMap;Z)V

    return-void
.end method

.method public setTextZoom(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "textZoom"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 258
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setTextZoom(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;I)V

    return-void
.end method

.method public setThirdPartyCookiesEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "thirdPartyCookiesEnabled"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 263
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setThirdPartyCookiesEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method

.method public setUserAgent(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "userAgent"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 273
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setUserAgent(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public setWebviewDebuggingEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "webviewDebuggingEnabled"
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager;->mRNCWebViewManagerImpl:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;

    .line 268
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setWebviewDebuggingEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V

    return-void
.end method
