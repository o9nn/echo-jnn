.class Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;
.super Landroid/os/AsyncTask;
.source "AuthorizationServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigurationRetrievalAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lnet/openid/appauth/AuthorizationServiceConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;

.field private mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

.field private mException:Lnet/openid/appauth/AuthorizationException;

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Lnet/openid/appauth/connectivity/ConnectionBuilder;Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "connectionBuilder",
            "callback"
        }
    .end annotation

    .line 369
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mUri:Landroid/net/Uri;

    iput-object p2, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

    iput-object p3, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mCallback:Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mException:Lnet/openid/appauth/AuthorizationException;

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

    .line 358
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->doInBackground([Ljava/lang/Void;)Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lnet/openid/appauth/AuthorizationServiceConfiguration;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "voids"
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mConnectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mUri:Landroid/net/Uri;

    .line 380
    invoke-interface {v1, v2}, Lnet/openid/appauth/connectivity/ConnectionBuilder;->openConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object v1

    const-string v2, "GET"

    .line 381
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 382
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 383
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 385
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v1}, Lnet/openid/appauth/Utils;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 388
    new-instance v3, Lnet/openid/appauth/AuthorizationServiceDiscovery;

    invoke-direct {v3, v2}, Lnet/openid/appauth/AuthorizationServiceDiscovery;-><init>(Lorg/json/JSONObject;)V

    .line 390
    new-instance v2, Lnet/openid/appauth/AuthorizationServiceConfiguration;

    invoke-direct {v2, v3}, Lnet/openid/appauth/AuthorizationServiceConfiguration;-><init>(Lnet/openid/appauth/AuthorizationServiceDiscovery;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 407
    invoke-static {v1}, Lnet/openid/appauth/Utils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v1, v0

    :goto_0
    :try_start_2
    const-string v3, "Malformed discovery document"

    new-array p1, p1, [Ljava/lang/Object;

    .line 402
    invoke-static {v2, v3, p1}, Lnet/openid/appauth/internal/Logger;->errorWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    sget-object p1, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->INVALID_DISCOVERY_DOCUMENT:Lnet/openid/appauth/AuthorizationException;

    invoke-static {p1, v2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mException:Lnet/openid/appauth/AuthorizationException;

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v1, v0

    :goto_1
    const-string v3, "Error parsing discovery document"

    new-array p1, p1, [Ljava/lang/Object;

    .line 397
    invoke-static {v2, v3, p1}, Lnet/openid/appauth/internal/Logger;->errorWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    sget-object p1, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->JSON_DESERIALIZATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    invoke-static {p1, v2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mException:Lnet/openid/appauth/AuthorizationException;

    goto :goto_3

    :catch_5
    move-exception v2

    move-object v1, v0

    :goto_2
    const-string v3, "Network error when retrieving discovery document"

    new-array p1, p1, [Ljava/lang/Object;

    .line 392
    invoke-static {v2, v3, p1}, Lnet/openid/appauth/internal/Logger;->errorWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    sget-object p1, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->NETWORK_ERROR:Lnet/openid/appauth/AuthorizationException;

    invoke-static {p1, v2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mException:Lnet/openid/appauth/AuthorizationException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 407
    :goto_3
    invoke-static {v1}, Lnet/openid/appauth/Utils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_4
    invoke-static {v0}, Lnet/openid/appauth/Utils;->closeQuietly(Ljava/io/InputStream;)V

    .line 408
    throw p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 358
    check-cast p1, Lnet/openid/appauth/AuthorizationServiceConfiguration;

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->onPostExecute(Lnet/openid/appauth/AuthorizationServiceConfiguration;)V

    return-void
.end method

.method protected onPostExecute(Lnet/openid/appauth/AuthorizationServiceConfiguration;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    iget-object v0, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mException:Lnet/openid/appauth/AuthorizationException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mCallback:Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;

    .line 415
    invoke-interface {p1, v1, v0}, Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;->onFetchConfigurationCompleted(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AuthorizationException;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationServiceConfiguration$ConfigurationRetrievalAsyncTask;->mCallback:Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;

    .line 417
    invoke-interface {v0, p1, v1}, Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;->onFetchConfigurationCompleted(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AuthorizationException;)V

    :goto_0
    return-void
.end method
