.class public final Lcom/auth0/android/request/DefaultClient;
.super Ljava/lang/Object;
.source "DefaultClient.kt"

# interfaces
.implements Lcom/auth0/android/request/NetworkingClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/request/DefaultClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultClient.kt\ncom/auth0/android/request/DefaultClient\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,119:1\n494#2,7:120\n125#3:127\n152#3,3:128\n*S KotlinDebug\n*F\n+ 1 DefaultClient.kt\ncom/auth0/android/request/DefaultClient\n*L\n70#1:120,7\n71#1:127\n71#1:128,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB;\u0008\u0016\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0014\u0008\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nBG\u0008\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u000fJ\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u001d2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\u00020\u00138AX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/auth0/android/request/DefaultClient;",
        "Lcom/auth0/android/request/NetworkingClient;",
        "connectTimeout",
        "",
        "readTimeout",
        "defaultHeaders",
        "",
        "",
        "enableLogging",
        "",
        "(IILjava/util/Map;Z)V",
        "sslSocketFactory",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "trustManager",
        "Ljavax/net/ssl/X509TrustManager;",
        "(IILjava/util/Map;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)V",
        "gson",
        "Lcom/google/gson/Gson;",
        "okHttpClient",
        "Lokhttp3/OkHttpClient;",
        "getOkHttpClient$auth0_release",
        "()Lokhttp3/OkHttpClient;",
        "load",
        "Lcom/auth0/android/request/ServerResponse;",
        "url",
        "options",
        "Lcom/auth0/android/request/RequestOptions;",
        "prepareCall",
        "Lokhttp3/Call;",
        "Lokhttp3/HttpUrl;",
        "Companion",
        "auth0_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final APPLICATION_JSON_UTF8:Lokhttp3/MediaType;

.field public static final Companion:Lcom/auth0/android/request/DefaultClient$Companion;

.field public static final DEFAULT_TIMEOUT_SECONDS:I = 0xa


# instance fields
.field private final defaultHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final gson:Lcom/google/gson/Gson;

.field private final okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/auth0/android/request/DefaultClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/auth0/android/request/DefaultClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/auth0/android/request/DefaultClient;->Companion:Lcom/auth0/android/request/DefaultClient$Companion;

    .line 116
    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v1, "application/json; charset=utf-8"

    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/auth0/android/request/DefaultClient;->APPLICATION_JSON_UTF8:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>(IILjava/util/Map;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "defaultHeaders"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 44
    invoke-direct/range {v1 .. v7}, Lcom/auth0/android/request/DefaultClient;-><init>(IILjava/util/Map;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/16 v0, 0xa

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 42
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    .line 39
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/auth0/android/request/DefaultClient;-><init>(IILjava/util/Map;Z)V

    return-void
.end method

.method public constructor <init>(IILjava/util/Map;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/X509TrustManager;",
            ")V"
        }
    .end annotation

    const-string v0, "defaultHeaders"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/auth0/android/request/DefaultClient;->defaultHeaders:Ljava/util/Map;

    .line 47
    sget-object p3, Lcom/auth0/android/request/internal/GsonProvider;->INSTANCE:Lcom/auth0/android/request/internal/GsonProvider;

    invoke-virtual {p3}, Lcom/auth0/android/request/internal/GsonProvider;->getGson$auth0_release()Lcom/google/gson/Gson;

    move-result-object p3

    iput-object p3, p0, Lcom/auth0/android/request/DefaultClient;->gson:Lcom/google/gson/Gson;

    .line 90
    new-instance p3, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p3}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    if-eqz p4, :cond_0

    .line 95
    new-instance p4, Lokhttp3/logging/HttpLoggingInterceptor;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p4, v1, v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {p4, v0}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object p4

    check-cast p4, Lokhttp3/Interceptor;

    .line 97
    invoke-virtual {p3, p4}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_0
    int-to-long v0, p1

    .line 101
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0, v1, p1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    int-to-long p1, p2

    .line 102
    sget-object p4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, p1, p2, p4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    if-eqz p5, :cond_1

    if-eqz p6, :cond_1

    .line 106
    invoke-virtual {p3, p5, p6}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 109
    :cond_1
    invoke-virtual {p3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/auth0/android/request/DefaultClient;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static final synthetic access$getAPPLICATION_JSON_UTF8$cp()Lokhttp3/MediaType;
    .locals 1

    sget-object v0, Lcom/auth0/android/request/DefaultClient;->APPLICATION_JSON_UTF8:Lokhttp3/MediaType;

    return-object v0
.end method

.method private final prepareCall(Lokhttp3/HttpUrl;Lcom/auth0/android/request/RequestOptions;)Lokhttp3/Call;
    .locals 6

    .line 64
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 65
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    .line 67
    invoke-virtual {p2}, Lcom/auth0/android/request/RequestOptions;->getMethod()Lcom/auth0/android/request/HttpMethod;

    move-result-object v1

    .line 68
    instance-of v1, v1, Lcom/auth0/android/request/HttpMethod$GET;

    if-eqz v1, :cond_3

    .line 70
    invoke-virtual {p2}, Lcom/auth0/android/request/RequestOptions;->getParameters()Ljava/util/Map;

    move-result-object v1

    .line 120
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 121
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 122
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 70
    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 123
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 126
    :cond_1
    check-cast v2, Ljava/util/Map;

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 128
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 71
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v3

    .line 129
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 130
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 72
    invoke-virtual {p2}, Lcom/auth0/android/request/RequestOptions;->getMethod()Lcom/auth0/android/request/HttpMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/auth0/android/request/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_2

    .line 76
    :cond_3
    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    iget-object v2, p0, Lcom/auth0/android/request/DefaultClient;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p2}, Lcom/auth0/android/request/RequestOptions;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gson.toJson(options.parameters)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/auth0/android/request/DefaultClient;->APPLICATION_JSON_UTF8:Lokhttp3/MediaType;

    invoke-virtual {v1, v2, v3}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 77
    invoke-virtual {p2}, Lcom/auth0/android/request/RequestOptions;->getMethod()Lcom/auth0/android/request/HttpMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/auth0/android/request/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 80
    :goto_2
    sget-object v1, Lokhttp3/Headers;->Companion:Lokhttp3/Headers$Companion;

    iget-object v2, p0, Lcom/auth0/android/request/DefaultClient;->defaultHeaders:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/auth0/android/request/RequestOptions;->getHeaders()Ljava/util/Map;

    move-result-object p2

    invoke-static {v2, p2}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v1, p2}, Lokhttp3/Headers$Companion;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p2

    .line 82
    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 83
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    iget-object p2, p0, Lcom/auth0/android/request/DefaultClient;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 85
    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getOkHttpClient$auth0_release()Lokhttp3/OkHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/request/DefaultClient;->okHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public load(Ljava/lang/String;Lcom/auth0/android/request/RequestOptions;)Lcom/auth0/android/request/ServerResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v0, p1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/auth0/android/request/DefaultClient;->prepareCall(Lokhttp3/HttpUrl;Lcom/auth0/android/request/RequestOptions;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 56
    new-instance p2, Lcom/auth0/android/request/ServerResponse;

    .line 57
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    .line 58
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object p1

    .line 56
    invoke-direct {p2, v0, v1, p1}, Lcom/auth0/android/request/ServerResponse;-><init>(ILjava/io/InputStream;Ljava/util/Map;)V

    return-object p2
.end method
