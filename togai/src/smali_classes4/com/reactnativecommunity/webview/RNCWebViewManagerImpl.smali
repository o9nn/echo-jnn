.class public final Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;
.super Ljava/lang/Object;
.source "RNCWebViewManagerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u001d\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u00081\u0018\u0000 ~2\u00020\u0001:\u0001~B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200J\u000e\u00101\u001a\u0002022\u0006\u0010/\u001a\u000200J\u0016\u00101\u001a\u0002022\u0006\u0010/\u001a\u0002002\u0006\u00103\u001a\u00020.J\u0014\u00104\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0006\u0018\u000105J\n\u00106\u001a\u0004\u0018\u00010\u0004H\u0002J\n\u00107\u001a\u0004\u0018\u00010\u0004H\u0002J\u000e\u00108\u001a\u0002092\u0006\u0010:\u001a\u000202J\u001e\u0010;\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010<\u001a\u00020\u00042\u0006\u0010=\u001a\u00020>J\u0016\u0010?\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010@\u001a\u00020$J\u0016\u0010A\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010B\u001a\u00020$J\u0016\u0010C\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010D\u001a\u00020$J\u0016\u0010E\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010B\u001a\u00020$J\u0016\u0010F\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010G\u001a\u00020$J\u0018\u0010H\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0008\u0010I\u001a\u0004\u0018\u00010\u0004J\u0018\u0010J\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0008\u0010K\u001a\u0004\u0018\u00010\u0004J\u0018\u0010L\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0008\u0010M\u001a\u0004\u0018\u00010NJ\u0016\u0010O\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010G\u001a\u00020$J\u0018\u0010P\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0008\u0010Q\u001a\u0004\u0018\u00010\u0004J\u0016\u0010R\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010B\u001a\u00020$J\u0010\u0010S\u001a\u0002092\u0008\u0010B\u001a\u0004\u0018\u00010\u0004J\u0016\u0010T\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010G\u001a\u00020$J\u0016\u0010U\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010B\u001a\u00020$J\u0016\u0010V\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010B\u001a\u00020$J\u0016\u0010W\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010B\u001a\u00020$J\u0016\u0010X\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010G\u001a\u00020$J\u0018\u0010Y\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0008\u0010Z\u001a\u0004\u0018\u00010\u0004J\u0018\u0010[\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0008\u0010B\u001a\u0004\u0018\u00010\u0004J\u0016\u0010\\\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010B\u001a\u00020$J\u0016\u0010]\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010B\u001a\u00020$J\u0018\u0010^\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0008\u0010B\u001a\u0004\u0018\u00010\u0004J\u0016\u0010_\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010B\u001a\u00020$J\u0016\u0010`\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010G\u001a\u00020$J\u0010\u0010a\u001a\u0002092\u0008\u0010B\u001a\u0004\u0018\u00010\u0004J\u0016\u0010b\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010B\u001a\u00020$J\u0018\u0010c\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0008\u0010B\u001a\u0004\u0018\u00010>J\u0016\u0010d\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010B\u001a\u00020$J\u0018\u0010e\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0008\u0010B\u001a\u0004\u0018\u00010\u0004J\u0016\u0010f\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010B\u001a\u00020\u0006J\u0018\u0010g\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0008\u0010h\u001a\u0004\u0018\u00010\u0004J\u0016\u0010i\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010B\u001a\u00020$J\u0018\u0010j\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0008\u0010k\u001a\u0004\u0018\u00010\u0004J\u0016\u0010l\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010m\u001a\u00020$J\u0016\u0010n\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010B\u001a\u00020$J\u0016\u0010o\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010B\u001a\u00020$J\u0016\u0010p\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010B\u001a\u00020$J\u0016\u0010q\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010B\u001a\u00020$J\u0016\u0010r\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010B\u001a\u00020$J\u0016\u0010s\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010B\u001a\u00020$J\"\u0010t\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0008\u0010u\u001a\u0004\u0018\u00010N2\u0008\u0008\u0002\u0010v\u001a\u00020$J\u0016\u0010w\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010B\u001a\u00020\u0006J\u0016\u0010x\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010G\u001a\u00020$J\u0018\u0010y\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0008\u0010z\u001a\u0004\u0018\u00010\u0004J\u0010\u0010{\u001a\u0002092\u0006\u0010:\u001a\u000202H\u0002J\u0016\u0010|\u001a\u0002092\u0006\u0010:\u001a\u0002022\u0006\u0010G\u001a\u00020$J\u0010\u0010}\u001a\u0002092\u0006\u00103\u001a\u00020.H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u0014\u0010\u000b\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008R\u0014\u0010\r\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0008R\u0014\u0010\u000f\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0008R\u0014\u0010\u0011\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0008R\u0014\u0010\u0013\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0008R\u0014\u0010\u0015\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0008R\u0014\u0010\u0017\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0008R\u0014\u0010\u0019\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0008R\u0014\u0010\u001b\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0008R\u000e\u0010\u001d\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u007f"
    }
    d2 = {
        "Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;",
        "",
        "()V",
        "BLANK_URL",
        "",
        "COMMAND_CLEAR_CACHE",
        "",
        "getCOMMAND_CLEAR_CACHE",
        "()I",
        "COMMAND_CLEAR_FORM_DATA",
        "getCOMMAND_CLEAR_FORM_DATA",
        "COMMAND_CLEAR_HISTORY",
        "getCOMMAND_CLEAR_HISTORY",
        "COMMAND_FOCUS",
        "getCOMMAND_FOCUS",
        "COMMAND_GO_BACK",
        "getCOMMAND_GO_BACK",
        "COMMAND_GO_FORWARD",
        "getCOMMAND_GO_FORWARD",
        "COMMAND_INJECT_JAVASCRIPT",
        "getCOMMAND_INJECT_JAVASCRIPT",
        "COMMAND_LOAD_URL",
        "getCOMMAND_LOAD_URL",
        "COMMAND_POST_MESSAGE",
        "getCOMMAND_POST_MESSAGE",
        "COMMAND_RELOAD",
        "getCOMMAND_RELOAD",
        "COMMAND_STOP_LOADING",
        "getCOMMAND_STOP_LOADING",
        "DEFAULT_DOWNLOADING_MESSAGE",
        "DEFAULT_LACK_PERMISSION_TO_DOWNLOAD_MESSAGE",
        "HTML_ENCODING",
        "HTML_MIME_TYPE",
        "HTTP_METHOD_POST",
        "TAG",
        "mAllowsFullscreenVideo",
        "",
        "mAllowsProtectedMedia",
        "mDownloadingMessage",
        "mHasOnOpenWindowEvent",
        "mLackPermissionToDownloadMessage",
        "mUserAgent",
        "mUserAgentWithApplicationName",
        "mWebViewConfig",
        "Lcom/reactnativecommunity/webview/RNCWebViewConfig;",
        "createRNCWebViewInstance",
        "Lcom/reactnativecommunity/webview/RNCWebView;",
        "context",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "createViewInstance",
        "Lcom/reactnativecommunity/webview/RNCWebViewWrapper;",
        "webView",
        "getCommandsMap",
        "",
        "getDownloadingMessageOrDefault",
        "getLackPermissionToDownloadMessageOrDefault",
        "onDropViewInstance",
        "",
        "viewWrapper",
        "receiveCommand",
        "commandId",
        "args",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "setAllowFileAccess",
        "allowFileAccess",
        "setAllowFileAccessFromFileURLs",
        "value",
        "setAllowUniversalAccessFromFileURLs",
        "allow",
        "setAllowsFullscreenVideo",
        "setAllowsProtectedMedia",
        "enabled",
        "setAndroidLayerType",
        "layerTypeString",
        "setApplicationNameForUserAgent",
        "applicationName",
        "setBasicAuthCredential",
        "credential",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "setCacheEnabled",
        "setCacheMode",
        "cacheModeString",
        "setDomStorageEnabled",
        "setDownloadingMessage",
        "setForceDarkOn",
        "setGeolocationEnabled",
        "setHasOnOpenWindowEvent",
        "setHasOnScroll",
        "setIncognito",
        "setInjectedJavaScript",
        "injectedJavaScript",
        "setInjectedJavaScriptBeforeContentLoaded",
        "setInjectedJavaScriptBeforeContentLoadedForMainFrameOnly",
        "setInjectedJavaScriptForMainFrameOnly",
        "setInjectedJavaScriptObject",
        "setJavaScriptCanOpenWindowsAutomatically",
        "setJavaScriptEnabled",
        "setLackPermissionToDownloadMessage",
        "setMediaPlaybackRequiresUserAction",
        "setMenuCustomItems",
        "setMessagingEnabled",
        "setMessagingModuleName",
        "setMinimumFontSize",
        "setMixedContentMode",
        "mixedContentMode",
        "setNestedScrollEnabled",
        "setOverScrollMode",
        "overScrollModeString",
        "setSaveFormDataDisabled",
        "disabled",
        "setScalesPageToFit",
        "setSetBuiltInZoomControls",
        "setSetDisplayZoomControls",
        "setSetSupportMultipleWindows",
        "setShowsHorizontalScrollIndicator",
        "setShowsVerticalScrollIndicator",
        "setSource",
        "source",
        "newArch",
        "setTextZoom",
        "setThirdPartyCookiesEnabled",
        "setUserAgent",
        "userAgent",
        "setUserAgentString",
        "setWebviewDebuggingEnabled",
        "setupWebChromeClient",
        "Companion",
        "react-native-webview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$Companion;

.field public static final NAME:Ljava/lang/String; = "RNCWebView"


# instance fields
.field private final BLANK_URL:Ljava/lang/String;

.field private final COMMAND_CLEAR_CACHE:I

.field private final COMMAND_CLEAR_FORM_DATA:I

.field private final COMMAND_CLEAR_HISTORY:I

.field private final COMMAND_FOCUS:I

.field private final COMMAND_GO_BACK:I

.field private final COMMAND_GO_FORWARD:I

.field private final COMMAND_INJECT_JAVASCRIPT:I

.field private final COMMAND_LOAD_URL:I

.field private final COMMAND_POST_MESSAGE:I

.field private final COMMAND_RELOAD:I

.field private final COMMAND_STOP_LOADING:I

.field private final DEFAULT_DOWNLOADING_MESSAGE:Ljava/lang/String;

.field private final DEFAULT_LACK_PERMISSION_TO_DOWNLOAD_MESSAGE:Ljava/lang/String;

.field private final HTML_ENCODING:Ljava/lang/String;

.field private final HTML_MIME_TYPE:Ljava/lang/String;

.field private final HTTP_METHOD_POST:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAllowsFullscreenVideo:Z

.field private mAllowsProtectedMedia:Z

.field private mDownloadingMessage:Ljava/lang/String;

.field private mHasOnOpenWindowEvent:Z

.field private mLackPermissionToDownloadMessage:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;

.field private mUserAgentWithApplicationName:Ljava/lang/String;

.field private mWebViewConfig:Lcom/reactnativecommunity/webview/RNCWebViewConfig;


# direct methods
.method public static synthetic $r8$lambda$GFLePChzAlqvrfGWhSvP6Dbib3w(Lcom/reactnativecommunity/webview/RNCWebView;Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->createViewInstance$lambda$1(Lcom/reactnativecommunity/webview/RNCWebView;Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$ePmp6aDVuTRWgJlIeABwQNaPaAI(Landroid/webkit/WebView;)V
    .locals 0

    invoke-static {p0}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mWebViewConfig$lambda$0(Landroid/webkit/WebView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->Companion:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RNCWebViewManagerImpl"

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mWebViewConfig:Lcom/reactnativecommunity/webview/RNCWebViewConfig;

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->HTML_ENCODING:Ljava/lang/String;

    const-string v0, "text/html"

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->HTML_MIME_TYPE:Ljava/lang/String;

    const-string v0, "POST"

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->HTTP_METHOD_POST:Ljava/lang/String;

    const-string v0, "about:blank"

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->BLANK_URL:Ljava/lang/String;

    const-string v0, "Downloading"

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->DEFAULT_DOWNLOADING_MESSAGE:Ljava/lang/String;

    const-string v0, "Cannot download files as permission was denied. Please provide permission to write to storage, in order to download files."

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->DEFAULT_LACK_PERMISSION_TO_DOWNLOAD_MESSAGE:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_GO_BACK:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_GO_FORWARD:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_RELOAD:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_STOP_LOADING:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_POST_MESSAGE:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_INJECT_JAVASCRIPT:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_LOAD_URL:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_FOCUS:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_CLEAR_FORM_DATA:I

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_CLEAR_CACHE:I

    const/16 v0, 0x3ea

    iput v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_CLEAR_HISTORY:I

    return-void
.end method

.method private static final createViewInstance$lambda$1(Lcom/reactnativecommunity/webview/RNCWebView;Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const-string p6, "$webView"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "this$0"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->setIgnoreErrFailedForThisURL(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    const-class p6, Lcom/reactnativecommunity/webview/RNCWebViewModule;

    invoke-virtual {p0, p6}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object p0

    check-cast p0, Lcom/reactnativecommunity/webview/RNCWebViewModule;

    if-nez p0, :cond_0

    return-void

    .line 97
    :cond_0
    :try_start_0
    new-instance p6, Landroid/app/DownloadManager$Request;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p7

    invoke-direct {p6, p7}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    invoke-static {p2, p4, p5}, Lcom/reactnativecommunity/webview/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 105
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p4, Ljava/lang/CharSequence;

    invoke-static {}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImplKt;->getInvalidCharRegex()Lkotlin/text/Regex;

    move-result-object p5

    const-string p7, "_"

    invoke-virtual {p5, p4, p7}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 107
    new-instance p5, Ljava/lang/StringBuilder;

    const-string p7, "Downloading "

    invoke-direct {p5, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 112
    :try_start_1
    new-instance p7, Ljava/net/URL;

    invoke-direct {p7, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 114
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p7

    invoke-virtual {p7, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p7, "Cookie"

    .line 115
    invoke-virtual {p6, p7, p2}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 117
    iget-object p7, p1, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->TAG:Ljava/lang/String;

    const-string v0, "Error getting cookie for DownloadManager"

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p7, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string p2, "User-Agent"

    .line 121
    invoke-virtual {p6, p2, p3}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 122
    move-object p2, p4

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p6, p2}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 123
    check-cast p5, Ljava/lang/CharSequence;

    invoke-virtual {p6, p5}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 124
    invoke-virtual {p6}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    const/4 p2, 0x1

    .line 125
    invoke-virtual {p6, p2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 126
    sget-object p2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p6, p2, p4}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 127
    invoke-virtual {p0, p6}, Lcom/reactnativecommunity/webview/RNCWebViewModule;->setDownloadRequest(Landroid/app/DownloadManager$Request;)V

    .line 129
    invoke-direct {p1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->getDownloadingMessageOrDefault()Ljava/lang/String;

    move-result-object p2

    .line 130
    invoke-direct {p1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->getLackPermissionToDownloadMessageOrDefault()Ljava/lang/String;

    move-result-object p3

    .line 128
    invoke-virtual {p0, p2, p3}, Lcom/reactnativecommunity/webview/RNCWebViewModule;->grantFileDownloaderPermissions(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 134
    invoke-direct {p1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->getDownloadingMessageOrDefault()Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewModule;->downloadFile(Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_1
    move-exception p0

    .line 99
    iget-object p1, p1, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->TAG:Ljava/lang/String;

    const-string p2, "Unsupported URI, aborting download"

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private final getDownloadingMessageOrDefault()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mDownloadingMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->DEFAULT_DOWNLOADING_MESSAGE:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private final getLackPermissionToDownloadMessageOrDefault()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mLackPermissionToDownloadMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->DEFAULT_LACK_PERMISSION_TO_DOWNLOAD_MESSAGE:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private static final mWebViewConfig$lambda$0(Landroid/webkit/WebView;)V
    .locals 0

    return-void
.end method

.method public static synthetic setSource$default(Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableMap;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 376
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setSource(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableMap;Z)V

    return-void
.end method

.method private final setUserAgentString(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V
    .locals 1

    .line 245
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mUserAgent:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mUserAgentWithApplicationName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mUserAgentWithApplicationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final setupWebChromeClient(Lcom/reactnativecommunity/webview/RNCWebView;)V
    .locals 3

    .line 144
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mAllowsFullscreenVideo:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    .line 148
    new-instance v2, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$setupWebChromeClient$webChromeClient$1;

    invoke-direct {v2, p1, v0, v1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$setupWebChromeClient$webChromeClient$1;-><init>(Lcom/reactnativecommunity/webview/RNCWebView;Landroid/app/Activity;I)V

    check-cast v2, Lcom/reactnativecommunity/webview/RNCWebChromeClient;

    iget-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mAllowsProtectedMedia:Z

    .line 209
    invoke-virtual {v2, v0}, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->setAllowsProtectedMedia(Z)V

    iget-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mHasOnOpenWindowEvent:Z

    .line 210
    invoke-virtual {v2, v0}, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->setHasOnOpenWindowEvent(Z)V

    .line 211
    check-cast v2, Landroid/webkit/WebChromeClient;

    invoke-virtual {p1, v2}, Lcom/reactnativecommunity/webview/RNCWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    check-cast v0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->onHideCustomView()V

    .line 215
    :cond_1
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$setupWebChromeClient$1;

    invoke-direct {v0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$setupWebChromeClient$1;-><init>(Lcom/reactnativecommunity/webview/RNCWebView;)V

    check-cast v0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;

    .line 220
    move-object v1, v0

    check-cast v1, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$setupWebChromeClient$1;

    iget-boolean v2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mAllowsProtectedMedia:Z

    invoke-virtual {v1, v2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$setupWebChromeClient$1;->setAllowsProtectedMedia(Z)V

    iget-boolean v2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mHasOnOpenWindowEvent:Z

    .line 221
    invoke-virtual {v1, v2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$setupWebChromeClient$1;->setHasOnOpenWindowEvent(Z)V

    .line 222
    check-cast v0, Landroid/webkit/WebChromeClient;

    invoke-virtual {p1, v0}, Lcom/reactnativecommunity/webview/RNCWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final createRNCWebViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/reactnativecommunity/webview/RNCWebView;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebView;

    invoke-direct {v0, p1}, Lcom/reactnativecommunity/webview/RNCWebView;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;)V

    return-object v0
.end method

.method public final createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->createRNCWebViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 67
    invoke-virtual {p0, p1, v0}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/reactnativecommunity/webview/RNCWebView;)Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    move-result-object p1

    return-object p1
.end method

.method public final createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/reactnativecommunity/webview/RNCWebView;)Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setupWebChromeClient(Lcom/reactnativecommunity/webview/RNCWebView;)V

    .line 72
    move-object v0, p2

    check-cast v0, Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mWebViewConfig:Lcom/reactnativecommunity/webview/RNCWebViewConfig;

    .line 73
    move-object v1, p2

    check-cast v1, Landroid/webkit/WebView;

    invoke-interface {v0, v1}, Lcom/reactnativecommunity/webview/RNCWebViewConfig;->configWebView(Landroid/webkit/WebView;)V

    .line 74
    invoke-virtual {p2}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "getSettings(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 75
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v2, 0x0

    .line 76
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 77
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 79
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 80
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 81
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 82
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 83
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 86
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Lcom/reactnativecommunity/webview/RNCWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p0}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/reactnativecommunity/webview/RNCWebView;Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;)V

    invoke-virtual {p2, v0}, Lcom/reactnativecommunity/webview/RNCWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 138
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;-><init>(Landroid/content/Context;Lcom/reactnativecommunity/webview/RNCWebView;)V

    return-object v0
.end method

.method public final getCOMMAND_CLEAR_CACHE()I
    .locals 1

    iget v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_CLEAR_CACHE:I

    return v0
.end method

.method public final getCOMMAND_CLEAR_FORM_DATA()I
    .locals 1

    iget v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_CLEAR_FORM_DATA:I

    return v0
.end method

.method public final getCOMMAND_CLEAR_HISTORY()I
    .locals 1

    iget v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_CLEAR_HISTORY:I

    return v0
.end method

.method public final getCOMMAND_FOCUS()I
    .locals 1

    iget v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_FOCUS:I

    return v0
.end method

.method public final getCOMMAND_GO_BACK()I
    .locals 1

    iget v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_GO_BACK:I

    return v0
.end method

.method public final getCOMMAND_GO_FORWARD()I
    .locals 1

    iget v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_GO_FORWARD:I

    return v0
.end method

.method public final getCOMMAND_INJECT_JAVASCRIPT()I
    .locals 1

    iget v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_INJECT_JAVASCRIPT:I

    return v0
.end method

.method public final getCOMMAND_LOAD_URL()I
    .locals 1

    iget v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_LOAD_URL:I

    return v0
.end method

.method public final getCOMMAND_POST_MESSAGE()I
    .locals 1

    iget v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_POST_MESSAGE:I

    return v0
.end method

.method public final getCOMMAND_RELOAD()I
    .locals 1

    iget v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_RELOAD:I

    return v0
.end method

.method public final getCOMMAND_STOP_LOADING()I
    .locals 1

    iget v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_STOP_LOADING:I

    return v0
.end method

.method public final getCommandsMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 293
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->builder()Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    iget v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_GO_BACK:I

    .line 294
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "goBack"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    iget v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_GO_FORWARD:I

    .line 295
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "goForward"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    iget v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_RELOAD:I

    .line 296
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "reload"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    iget v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_STOP_LOADING:I

    .line 297
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "stopLoading"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    iget v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_POST_MESSAGE:I

    .line 298
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "postMessage"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    iget v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_INJECT_JAVASCRIPT:I

    .line 299
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "injectJavaScript"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    iget v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_LOAD_URL:I

    .line 300
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "loadUrl"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    iget v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_FOCUS:I

    .line 301
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "requestFocus"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    iget v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_CLEAR_FORM_DATA:I

    .line 302
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "clearFormData"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    iget v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_CLEAR_CACHE:I

    .line 303
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "clearCache"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    iget v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_CLEAR_HISTORY:I

    .line 304
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "clearHistory"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/facebook/react/common/MapBuilder$Builder;->build()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final onDropViewInstance(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V
    .locals 2

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 273
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ThemedReactContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 274
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->cleanupCallbacksAndDestroy()V

    const/4 v0, 0x0

    .line 275
    iput-object v0, p1, Lcom/reactnativecommunity/webview/RNCWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    return-void
.end method

.method public final receiveCommand(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3

    const-string v0, "(function () {var event;var data = "

    const-string v1, "viewWrapper"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "commandId"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "args"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 310
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "injectJavaScript"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 334
    :cond_0
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->evaluateJavascriptWithFallback(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "postMessage"

    .line 310
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    .line 316
    :cond_1
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "data"

    .line 317
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ";try {event = new MessageEvent(\'message\', data);} catch (e) {event = document.createEvent(\'MessageEvent\');event.initMessageEvent(\'message\', true, true, data.data, data.origin, data.lastEventId, data.source);}document.dispatchEvent(event);})();"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 318
    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->evaluateJavascriptWithFallback(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 332
    new-instance p2, Ljava/lang/RuntimeException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :sswitch_2
    const-string p3, "requestFocus"

    .line 310
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    .line 342
    :cond_2
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->requestFocus()Z

    goto/16 :goto_0

    :sswitch_3
    const-string p3, "clearHistory"

    .line 310
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    .line 348
    :cond_3
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->clearHistory()V

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "loadUrl"

    .line 310
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    .line 339
    :cond_4
    iget-object p2, p1, Lcom/reactnativecommunity/webview/RNCWebView;->progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

    invoke-virtual {p2, v2}, Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;->setWaitingForCommandLoadUrl(Z)V

    .line 340
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    const-string p3, "clearFormData"

    .line 310
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    .line 343
    :cond_5
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->clearFormData()V

    goto :goto_0

    :sswitch_6
    const-string p3, "goForward"

    .line 310
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    .line 312
    :cond_6
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->goForward()V

    goto :goto_0

    :sswitch_7
    const-string v0, "clearCache"

    .line 310
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    .line 345
    :cond_7
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result p2

    .line 346
    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->clearCache(Z)V

    goto :goto_0

    :sswitch_8
    const-string p3, "reload"

    .line 310
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    .line 313
    :cond_8
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->reload()V

    goto :goto_0

    :sswitch_9
    const-string p3, "stopLoading"

    .line 310
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_0

    .line 314
    :cond_9
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->stopLoading()V

    goto :goto_0

    :sswitch_a
    const-string p3, "goBack"

    .line 310
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_0

    .line 311
    :cond_a
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->goBack()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a012e11 -> :sswitch_a
        -0x38833526 -> :sswitch_9
        -0x37b57e67 -> :sswitch_8
        -0x2d410ecb -> :sswitch_7
        -0x12f8b743 -> :sswitch_6
        -0xfcc1405 -> :sswitch_5
        0x141096a9 -> :sswitch_4
        0x35d48587 -> :sswitch_3
        0x4c4bb389 -> :sswitch_2
        0x58d00b47 -> :sswitch_1
        0x7d7149fe -> :sswitch_0
    .end sparse-switch
.end method

.method public final setAllowFileAccess(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 543
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    return-void
.end method

.method public final setAllowFileAccessFromFileURLs(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 548
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    return-void
.end method

.method public final setAllowUniversalAccessFromFileURLs(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    return-void
.end method

.method public final setAllowsFullscreenVideo(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    iput-boolean p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mAllowsFullscreenVideo:Z

    .line 554
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setupWebChromeClient(Lcom/reactnativecommunity/webview/RNCWebView;)V

    return-void
.end method

.method public final setAllowsProtectedMedia(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 632
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    iput-boolean p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mAllowsProtectedMedia:Z

    .line 638
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 639
    instance-of v0, p1, Lcom/reactnativecommunity/webview/RNCWebChromeClient;

    if-eqz v0, :cond_0

    .line 640
    check-cast p1, Lcom/reactnativecommunity/webview/RNCWebChromeClient;

    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->setAllowsProtectedMedia(Z)V

    :cond_0
    return-void
.end method

.method public final setAndroidLayerType(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    const-string v0, "hardware"

    .line 560
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const-string v0, "software"

    .line 561
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x0

    .line 564
    invoke-virtual {p1, p2, v0}, Lcom/reactnativecommunity/webview/RNCWebView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public final setApplicationNameForUserAgent(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 2

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 234
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mUserAgentWithApplicationName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mUserAgentWithApplicationName:Ljava/lang/String;

    .line 241
    :goto_0
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setUserAgentString(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V

    return-void
.end method

.method public final setBasicAuthCredential(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v0, "username"

    .line 262
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "password"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 265
    new-instance v1, Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;

    invoke-direct {v1, v0, p2}, Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 268
    :goto_0
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/reactnativecommunity/webview/RNCWebView;->setBasicAuthCredential(Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;)V

    return-void
.end method

.method public final setCacheEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 457
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    return-void
.end method

.method public final setCacheMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 2

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 569
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "LOAD_CACHE_ONLY"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "LOAD_CACHE_ELSE_NETWORK"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "LOAD_DEFAULT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_0

    :sswitch_3
    const-string v1, "LOAD_NO_CACHE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :cond_3
    :goto_0
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7abc5963 -> :sswitch_3
        -0x486d8038 -> :sswitch_2
        -0x34165142 -> :sswitch_1
        0x5c4e1362 -> :sswitch_0
    .end sparse-switch
.end method

.method public final setDomStorageEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 580
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    return-void
.end method

.method public final setDownloadingMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mDownloadingMessage:Ljava/lang/String;

    return-void
.end method

.method public final setForceDarkOn(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 3

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_2

    const-string v0, "FORCE_DARK"

    .line 591
    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 594
    :goto_0
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/webkit/WebSettingsCompat;->setForceDark(Landroid/webkit/WebSettings;I)V

    :cond_1
    if-eqz p2, :cond_2

    const-string p2, "FORCE_DARK_STRATEGY"

    .line 602
    invoke-static {p2}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 604
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    .line 603
    invoke-static {p1, v1}, Landroidx/webkit/WebSettingsCompat;->setForceDarkStrategy(Landroid/webkit/WebSettings;I)V

    :cond_2
    return-void
.end method

.method public final setGeolocationEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 613
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    return-void
.end method

.method public final setHasOnOpenWindowEvent(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    iput-boolean p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mHasOnOpenWindowEvent:Z

    .line 623
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setupWebChromeClient(Lcom/reactnativecommunity/webview/RNCWebView;)V

    return-void
.end method

.method public final setHasOnScroll(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 533
    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->setHasScrollEvent(Z)V

    return-void
.end method

.method public final setIncognito(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    if-nez p2, :cond_0

    return-void

    .line 468
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 471
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 472
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->clearHistory()V

    const/4 p2, 0x1

    .line 473
    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->clearCache(Z)V

    .line 476
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->clearFormData()V

    .line 477
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 478
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    return-void
.end method

.method public final setInjectedJavaScript(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 483
    iput-object p2, p1, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJS:Ljava/lang/String;

    return-void
.end method

.method public final setInjectedJavaScriptBeforeContentLoaded(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 488
    iput-object p2, p1, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJSBeforeContentLoaded:Ljava/lang/String;

    return-void
.end method

.method public final setInjectedJavaScriptBeforeContentLoadedForMainFrameOnly(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 498
    iput-boolean p2, p1, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJavaScriptBeforeContentLoadedForMainFrameOnly:Z

    return-void
.end method

.method public final setInjectedJavaScriptForMainFrameOnly(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 493
    iput-boolean p2, p1, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJavaScriptForMainFrameOnly:Z

    return-void
.end method

.method public final setInjectedJavaScriptObject(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 503
    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->setInjectedJavaScriptObject(Ljava/lang/String;)V

    return-void
.end method

.method public final setJavaScriptCanOpenWindowsAutomatically(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 508
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    return-void
.end method

.method public final setJavaScriptEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 538
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method public final setLackPermissionToDownloadMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mLackPermissionToDownloadMessage:Ljava/lang/String;

    return-void
.end method

.method public final setMediaPlaybackRequiresUserAction(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 528
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    return-void
.end method

.method public final setMenuCustomItems(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 646
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 648
    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->setMenuCustomItems(Ljava/util/List;)V

    goto :goto_0

    .line 649
    :cond_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.collections.Map<kotlin.String, kotlin.String>>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->setMenuCustomItems(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public final setMessagingEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 523
    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->setMessagingEnabled(Z)V

    return-void
.end method

.method public final setMessagingModuleName(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 452
    iput-object p2, p1, Lcom/reactnativecommunity/webview/RNCWebView;->messagingModuleName:Ljava/lang/String;

    return-void
.end method

.method public final setMinimumFontSize(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;I)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 628
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    return-void
.end method

.method public final setMixedContentMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    if-eqz p2, :cond_2

    const-string v0, "never"

    .line 354
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "always"

    .line 356
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    goto :goto_1

    :cond_1
    const-string v0, "compatibility"

    .line 358
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 359
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    goto :goto_1

    .line 355
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final setNestedScrollEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 655
    iput-boolean p2, p1, Lcom/reactnativecommunity/webview/RNCWebView;->nestedScrollEnabled:Z

    return-void
.end method

.method public final setOverScrollMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 3

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 660
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x54506df1

    if-eq v1, v2, :cond_4

    const v2, 0x63dca8c

    if-eq v1, v2, :cond_2

    const v2, 0x38b73479

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "content"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "never"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const-string v1, "always"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    :cond_5
    :goto_0
    invoke-virtual {p1, v0}, Lcom/reactnativecommunity/webview/RNCWebView;->setOverScrollMode(I)V

    return-void
.end method

.method public final setSaveFormDataDisabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 669
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 670
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    return-void
.end method

.method public final setScalesPageToFit(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 674
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 675
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 676
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    return-void
.end method

.method public final setSetBuiltInZoomControls(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 680
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 681
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    return-void
.end method

.method public final setSetDisplayZoomControls(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 686
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    return-void
.end method

.method public final setSetSupportMultipleWindows(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 692
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    return-void
.end method

.method public final setShowsHorizontalScrollIndicator(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 518
    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->setHorizontalScrollBarEnabled(Z)V

    return-void
.end method

.method public final setShowsVerticalScrollIndicator(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 513
    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method public final setSource(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableMap;Z)V
    .locals 8

    const-string v0, "getBytes(...)"

    const-string v1, "viewWrapper"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v2

    if-eqz p2, :cond_c

    const-string p1, "html"

    .line 379
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const-string v3, ""

    if-eqz v1, :cond_1

    .line 380
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p1, "baseUrl"

    .line 381
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    .line 384
    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->HTML_MIME_TYPE:Ljava/lang/String;

    iget-object v6, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->HTML_ENCODING:Ljava/lang/String;

    const/4 v7, 0x0

    .line 382
    invoke-virtual/range {v2 .. v7}, Lcom/reactnativecommunity/webview/RNCWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "uri"

    .line 391
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 392
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 393
    invoke-virtual {v2}, Lcom/reactnativecommunity/webview/RNCWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 394
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const-string v1, "method"

    .line 397
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 398
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->HTTP_METHOD_POST:Ljava/lang/String;

    const/4 v5, 0x1

    .line 399
    invoke-static {v1, v4, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p3, "body"

    .line 401
    invoke-interface {p2, p3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 402
    invoke-interface {p2, p3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 404
    :try_start_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p3, "UTF-8"

    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    const-string v1, "forName(...)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 406
    :catch_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object p3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_4

    const/4 p2, 0x0

    new-array p3, p2, [B

    .line 412
    :cond_4
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, p3}, Lcom/reactnativecommunity/webview/RNCWebView;->postUrl(Ljava/lang/String;[B)V

    return-void

    .line 416
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "headers"

    .line 417
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "toLowerCase(...)"

    const-string v5, "ENGLISH"

    const-string v6, "user-agent"

    if-eqz p3, :cond_9

    .line 419
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    .line 420
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    const-string v1, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, kotlin.String>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, kotlin.String> }"

    .line 421
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/util/HashMap;

    const-string v1, "name"

    .line 422
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_6

    move-object v1, v3

    :cond_6
    const-string v7, "value"

    .line 423
    invoke-virtual {p3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_7

    move-object p3, v3

    .line 424
    :cond_7
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 425
    invoke-virtual {v2}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_1

    .line 427
    :cond_8
    move-object v7, v0

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 431
    :cond_9
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p2

    .line 432
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object p3

    const-string v1, "keySetIterator(...)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    :goto_2
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 434
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 436
    invoke-virtual {v2}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_2

    .line 438
    :cond_a
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 443
    :cond_b
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v2, p1, v0}, Lcom/reactnativecommunity/webview/RNCWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_c
    iget-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->BLANK_URL:Ljava/lang/String;

    .line 447
    invoke-virtual {v2, p1}, Lcom/reactnativecommunity/webview/RNCWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final setTextZoom(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;I)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 697
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    return-void
.end method

.method public final setThirdPartyCookiesEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 701
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object p1

    .line 702
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    return-void
.end method

.method public final setUserAgent(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mUserAgent:Ljava/lang/String;

    .line 228
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setUserAgentString(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V

    return-void
.end method

.method public final setWebviewDebuggingEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 706
    invoke-static {p2}, Lcom/reactnativecommunity/webview/RNCWebView;->setWebContentsDebuggingEnabled(Z)V

    return-void
.end method
