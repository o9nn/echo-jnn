.class Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule$1;
.super Ljava/lang/Object;
.source "RNBackgroundFetchModule.java"

# interfaces
.implements Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;->configure(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;


# direct methods
.method constructor <init>(Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule$1;->this$0:Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetch(Ljava/lang/String;)V
    .locals 2

    .line 38
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    const-string v1, "taskId"

    .line 39
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "timeout"

    const/4 v1, 0x0

    .line 40
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule$1;->this$0:Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;

    .line 41
    invoke-static {p1}, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;->access$000(Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    const-class v1, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    invoke-virtual {p1, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    const-string v1, "fetch"

    invoke-interface {p1, v1, v0}, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTimeout(Ljava/lang/String;)V
    .locals 2

    .line 44
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    const-string v1, "taskId"

    .line 45
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "timeout"

    const/4 v1, 0x1

    .line 46
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule$1;->this$0:Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;

    .line 47
    invoke-static {p1}, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;->access$100(Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    const-class v1, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    invoke-virtual {p1, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    const-string v1, "fetch"

    invoke-interface {p1, v1, v0}, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
