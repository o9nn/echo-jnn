.class public Lcom/brentvatne/exoplayer/DataSourceUtil;
.super Ljava/lang/Object;
.source "DataSourceUtil.java"


# static fields
.field private static defaultDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private static defaultHttpDataSourceFactory:Landroidx/media3/datasource/HttpDataSource$Factory;

.field private static userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAssetDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;Landroid/net/Uri;)Landroidx/media3/datasource/DataSource$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .line 85
    new-instance v0, Landroidx/media3/datasource/DataSpec;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;)V

    .line 86
    new-instance p1, Landroidx/media3/datasource/AssetDataSource;

    invoke-direct {p1, p0}, Landroidx/media3/datasource/AssetDataSource;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {p1, v0}, Landroidx/media3/datasource/AssetDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    .line 88
    new-instance p0, Lcom/brentvatne/exoplayer/DataSourceUtil$1;

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/DataSourceUtil$1;-><init>(Landroidx/media3/datasource/AssetDataSource;)V

    return-object p0
.end method

.method private static buildDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;Ljava/util/Map;)Landroidx/media3/datasource/DataSource$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactContext;",
            "Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/datasource/DataSource$Factory;"
        }
    .end annotation

    .line 61
    new-instance v0, Landroidx/media3/datasource/DefaultDataSource$Factory;

    invoke-static {p0, p1, p2}, Lcom/brentvatne/exoplayer/DataSourceUtil;->buildHttpDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;Ljava/util/Map;)Landroidx/media3/datasource/HttpDataSource$Factory;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;Landroidx/media3/datasource/DataSource$Factory;)V

    return-object v0
.end method

.method private static buildHttpDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;Ljava/util/Map;)Landroidx/media3/datasource/HttpDataSource$Factory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactContext;",
            "Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/datasource/HttpDataSource$Factory;"
        }
    .end annotation

    .line 65
    invoke-static {}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/network/CookieJarContainer;

    .line 67
    new-instance v2, Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    invoke-direct {v2, p0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 68
    new-instance v3, Lokhttp3/JavaNetCookieJar;

    invoke-direct {v3, v2}, Lokhttp3/JavaNetCookieJar;-><init>(Ljava/net/CookieHandler;)V

    invoke-interface {v1, v3}, Lcom/facebook/react/modules/network/CookieJarContainer;->setCookieJar(Lokhttp3/CookieJar;)V

    .line 69
    new-instance v1, Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;

    invoke-direct {v1, v0}, Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;-><init>(Lokhttp3/Call$Factory;)V

    .line 70
    invoke-virtual {v1, p1}, Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;->setTransferListener(Landroidx/media3/datasource/TransferListener;)Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p1, p2}, Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;

    const-string v0, "User-Agent"

    .line 74
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 75
    invoke-static {p0}, Lcom/brentvatne/exoplayer/DataSourceUtil;->getUserAgent(Lcom/facebook/react/bridge/ReactContext;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {p0}, Lcom/brentvatne/exoplayer/DataSourceUtil;->getUserAgent(Lcom/facebook/react/bridge/ReactContext;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static getDefaultDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;Ljava/util/Map;)Landroidx/media3/datasource/DataSource$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactContext;",
            "Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/datasource/DataSource$Factory;"
        }
    .end annotation

    sget-object v0, Lcom/brentvatne/exoplayer/DataSourceUtil;->defaultDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 47
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/brentvatne/exoplayer/DataSourceUtil;->buildDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;Ljava/util/Map;)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object p0

    sput-object p0, Lcom/brentvatne/exoplayer/DataSourceUtil;->defaultDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    :cond_1
    sget-object p0, Lcom/brentvatne/exoplayer/DataSourceUtil;->defaultDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    return-object p0
.end method

.method public static getDefaultHttpDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;Ljava/util/Map;)Landroidx/media3/datasource/HttpDataSource$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactContext;",
            "Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/datasource/HttpDataSource$Factory;"
        }
    .end annotation

    sget-object v0, Lcom/brentvatne/exoplayer/DataSourceUtil;->defaultHttpDataSourceFactory:Landroidx/media3/datasource/HttpDataSource$Factory;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 54
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/brentvatne/exoplayer/DataSourceUtil;->buildHttpDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;Ljava/util/Map;)Landroidx/media3/datasource/HttpDataSource$Factory;

    move-result-object p0

    sput-object p0, Lcom/brentvatne/exoplayer/DataSourceUtil;->defaultHttpDataSourceFactory:Landroidx/media3/datasource/HttpDataSource$Factory;

    :cond_1
    sget-object p0, Lcom/brentvatne/exoplayer/DataSourceUtil;->defaultHttpDataSourceFactory:Landroidx/media3/datasource/HttpDataSource$Factory;

    return-object p0
.end method

.method public static getUserAgent(Lcom/facebook/react/bridge/ReactContext;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/brentvatne/exoplayer/DataSourceUtil;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/brentvatne/exoplayer/DataSourceUtil;->userAgent:Ljava/lang/String;

    :cond_0
    sget-object p0, Lcom/brentvatne/exoplayer/DataSourceUtil;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/brentvatne/exoplayer/DataSourceUtil;->userAgent:Ljava/lang/String;

    return-void
.end method
