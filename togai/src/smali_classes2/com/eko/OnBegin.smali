.class public Lcom/eko/OnBegin;
.super Ljava/lang/Thread;
.source "OnBegin.java"


# instance fields
.field private config:Lcom/eko/RNBGDTaskConfig;

.field private ee:Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;


# direct methods
.method public constructor <init>(Lcom/eko/RNBGDTaskConfig;Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/eko/OnBegin;->config:Lcom/eko/RNBGDTaskConfig;

    iput-object p2, p0, Lcom/eko/OnBegin;->ee:Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 27
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/eko/OnBegin;->config:Lcom/eko/RNBGDTaskConfig;

    iget-object v2, v2, Lcom/eko/RNBGDTaskConfig;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    .line 32
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 33
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 34
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    invoke-interface {v0, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 39
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "Content-Length"

    .line 40
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "id"

    iget-object v5, p0, Lcom/eko/OnBegin;->config:Lcom/eko/RNBGDTaskConfig;

    .line 42
    iget-object v5, v5, Lcom/eko/RNBGDTaskConfig;->id:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "headers"

    .line 43
    invoke-interface {v1, v4, v0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v0, "expectedBytes"

    long-to-double v2, v2

    .line 44
    invoke-interface {v1, v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    iget-object v0, p0, Lcom/eko/OnBegin;->ee:Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v2, "downloadBegin"

    .line 46
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
