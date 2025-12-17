.class Lnet/openid/appauth/AuthorizationService$TokenRequestTask;
.super Landroid/os/AsyncTask;
.source "AuthorizationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TokenRequestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;

.field private mClientAuthentication:Lnet/openid/appauth/ClientAuthentication;

.field private mClock:Lnet/openid/appauth/Clock;

.field private final mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

.field private mException:Lnet/openid/appauth/AuthorizationException;

.field private mRequest:Lnet/openid/appauth/TokenRequest;

.field private mSkipIssuerHttpsCheck:Z


# direct methods
.method constructor <init>(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/ClientAuthentication;Lnet/openid/appauth/connectivity/ConnectionBuilder;Lnet/openid/appauth/Clock;Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "request",
            "clientAuthentication",
            "connectionBuilder",
            "clock",
            "callback",
            "skipIssuerHttpsCheck"
        }
    .end annotation

    .line 596
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mRequest:Lnet/openid/appauth/TokenRequest;

    iput-object p2, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mClientAuthentication:Lnet/openid/appauth/ClientAuthentication;

    iput-object p3, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

    iput-object p4, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mClock:Lnet/openid/appauth/Clock;

    iput-object p5, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mCallback:Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;

    .line 602
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mSkipIssuerHttpsCheck:Z

    return-void
.end method

.method private addJsonToAcceptHeader(Ljava/net/URLConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conn"
        }
    .end annotation

    const-string v0, "Accept"

    .line 732
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "application/json"

    .line 733
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "voids"
        }
    .end annotation

    .line 579
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "voids"
        }
    .end annotation

    const-string p1, "Failed to complete exchange request"

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

    iget-object v3, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mRequest:Lnet/openid/appauth/TokenRequest;

    .line 609
    iget-object v3, v3, Lnet/openid/appauth/TokenRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iget-object v3, v3, Lnet/openid/appauth/AuthorizationServiceConfiguration;->tokenEndpoint:Landroid/net/Uri;

    invoke-interface {v2, v3}, Lnet/openid/appauth/connectivity/ConnectionBuilder;->openConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object v2

    const-string v3, "POST"

    .line 611
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    .line 612
    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-direct {p0, v2}, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->addJsonToAcceptHeader(Ljava/net/URLConnection;)V

    const/4 v3, 0x1

    .line 614
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v3, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mClientAuthentication:Lnet/openid/appauth/ClientAuthentication;

    iget-object v4, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mRequest:Lnet/openid/appauth/TokenRequest;

    .line 616
    iget-object v4, v4, Lnet/openid/appauth/TokenRequest;->clientId:Ljava/lang/String;

    .line 617
    invoke-interface {v3, v4}, Lnet/openid/appauth/ClientAuthentication;->getRequestHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 619
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 620
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mRequest:Lnet/openid/appauth/TokenRequest;

    .line 624
    invoke-virtual {v3}, Lnet/openid/appauth/TokenRequest;->getRequestParameters()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mClientAuthentication:Lnet/openid/appauth/ClientAuthentication;

    iget-object v5, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mRequest:Lnet/openid/appauth/TokenRequest;

    .line 625
    iget-object v5, v5, Lnet/openid/appauth/TokenRequest;->clientId:Ljava/lang/String;

    .line 626
    invoke-interface {v4, v5}, Lnet/openid/appauth/ClientAuthentication;->getRequestParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 628
    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 631
    :cond_1
    invoke-static {v3}, Lnet/openid/appauth/internal/UriUtil;->formUrlEncode(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Length"

    .line 632
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 635
    invoke-virtual {v4, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 638
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_2

    .line 639
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x12c

    if-ge v3, v4, :cond_2

    .line 640
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_1

    .line 642
    :cond_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 644
    :goto_1
    :try_start_1
    invoke-static {v2}, Lnet/openid/appauth/Utils;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 645
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    invoke-static {v2}, Lnet/openid/appauth/Utils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v4

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_5

    :catch_0
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_2

    :catch_1
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception v2

    move-object v3, v1

    :goto_2
    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    .line 651
    invoke-static {v2, p1, v0}, Lnet/openid/appauth/internal/Logger;->debugWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 652
    sget-object p1, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->JSON_DESERIALIZATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    invoke-static {p1, v2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mException:Lnet/openid/appauth/AuthorizationException;

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v3, v1

    :goto_3
    new-array v0, v0, [Ljava/lang/Object;

    .line 647
    invoke-static {v2, p1, v0}, Lnet/openid/appauth/internal/Logger;->debugWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 648
    sget-object p1, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->NETWORK_ERROR:Lnet/openid/appauth/AuthorizationException;

    invoke-static {p1, v2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mException:Lnet/openid/appauth/AuthorizationException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 655
    :goto_4
    invoke-static {v3}, Lnet/openid/appauth/Utils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v1

    :catchall_2
    move-exception p1

    move-object v1, v3

    :goto_5
    invoke-static {v1}, Lnet/openid/appauth/Utils;->closeQuietly(Ljava/io/InputStream;)V

    .line 656
    throw p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "json"
        }
    .end annotation

    .line 579
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mException:Lnet/openid/appauth/AuthorizationException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mCallback:Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;

    .line 663
    invoke-interface {p1, v1, v0}, Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;->onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V

    return-void

    :cond_0
    const-string v0, "error"

    .line 667
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 670
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->byString(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v2

    const-string v3, "error_description"

    .line 674
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "error_uri"

    .line 676
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 675
    invoke-static {p1}, Lnet/openid/appauth/internal/UriUtil;->parseUriIfAvailable(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 671
    invoke-static {v2, v0, v3, p1}, Lnet/openid/appauth/AuthorizationException;->fromOAuthTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 678
    sget-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->JSON_DESERIALIZATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    invoke-static {v0, p1}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mCallback:Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;

    .line 682
    invoke-interface {v0, v1, p1}, Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;->onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V

    return-void

    .line 688
    :cond_1
    :try_start_1
    new-instance v0, Lnet/openid/appauth/TokenResponse$Builder;

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mRequest:Lnet/openid/appauth/TokenRequest;

    invoke-direct {v0, v2}, Lnet/openid/appauth/TokenResponse$Builder;-><init>(Lnet/openid/appauth/TokenRequest;)V

    invoke-virtual {v0, p1}, Lnet/openid/appauth/TokenResponse$Builder;->fromResponseJson(Lorg/json/JSONObject;)Lnet/openid/appauth/TokenResponse$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lnet/openid/appauth/TokenResponse$Builder;->build()Lnet/openid/appauth/TokenResponse;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    .line 697
    iget-object v0, p1, Lnet/openid/appauth/TokenResponse;->idToken:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 700
    :try_start_2
    iget-object v0, p1, Lnet/openid/appauth/TokenResponse;->idToken:Ljava/lang/String;

    invoke-static {v0}, Lnet/openid/appauth/IdToken;->from(Ljava/lang/String;)Lnet/openid/appauth/IdToken;

    move-result-object v0
    :try_end_2
    .catch Lnet/openid/appauth/IdToken$IdTokenException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mRequest:Lnet/openid/appauth/TokenRequest;

    iget-object v3, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mClock:Lnet/openid/appauth/Clock;

    iget-boolean v4, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mSkipIssuerHttpsCheck:Z

    .line 710
    invoke-virtual {v0, v2, v3, v4}, Lnet/openid/appauth/IdToken;->validate(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/Clock;Z)V
    :try_end_3
    .catch Lnet/openid/appauth/AuthorizationException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mCallback:Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;

    .line 716
    invoke-interface {v0, v1, p1}, Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;->onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V

    return-void

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    :goto_1
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mCallback:Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;

    .line 702
    sget-object v2, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->ID_TOKEN_PARSING_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 703
    invoke-static {v2, p1}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1

    .line 702
    invoke-interface {v0, v1, p1}, Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;->onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V

    return-void

    :cond_2
    :goto_2
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mRequest:Lnet/openid/appauth/TokenRequest;

    .line 720
    iget-object v0, v0, Lnet/openid/appauth/TokenRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iget-object v0, v0, Lnet/openid/appauth/AuthorizationServiceConfiguration;->tokenEndpoint:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Token exchange with %s completed"

    invoke-static {v2, v0}, Lnet/openid/appauth/internal/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mCallback:Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;

    .line 722
    invoke-interface {v0, p1, v1}, Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;->onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V

    return-void

    :catch_4
    move-exception p1

    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;->mCallback:Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;

    .line 690
    sget-object v2, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->JSON_DESERIALIZATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 691
    invoke-static {v2, p1}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1

    .line 690
    invoke-interface {v0, v1, p1}, Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;->onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V

    return-void
.end method
