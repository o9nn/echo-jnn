.class public final Lnet/openid/appauth/RegistrationResponse$Builder;
.super Ljava/lang/Object;
.source "RegistrationResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/RegistrationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAdditionalParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClientId:Ljava/lang/String;

.field private mClientIdIssuedAt:Ljava/lang/Long;

.field private mClientSecret:Ljava/lang/String;

.field private mClientSecretExpiresAt:Ljava/lang/Long;

.field private mRegistrationAccessToken:Ljava/lang/String;

.field private mRegistrationClientUri:Landroid/net/Uri;

.field private mRequest:Lnet/openid/appauth/RegistrationRequest;

.field private mTokenEndpointAuthMethod:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/openid/appauth/RegistrationRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnet/openid/appauth/RegistrationResponse$Builder;->mAdditionalParameters:Ljava/util/Map;

    .line 181
    invoke-virtual {p0, p1}, Lnet/openid/appauth/RegistrationResponse$Builder;->setRequest(Lnet/openid/appauth/RegistrationRequest;)Lnet/openid/appauth/RegistrationResponse$Builder;

    return-void
.end method


# virtual methods
.method public build()Lnet/openid/appauth/RegistrationResponse;
    .locals 12

    .line 282
    new-instance v11, Lnet/openid/appauth/RegistrationResponse;

    iget-object v1, p0, Lnet/openid/appauth/RegistrationResponse$Builder;->mRequest:Lnet/openid/appauth/RegistrationRequest;

    iget-object v2, p0, Lnet/openid/appauth/RegistrationResponse$Builder;->mClientId:Ljava/lang/String;

    iget-object v3, p0, Lnet/openid/appauth/RegistrationResponse$Builder;->mClientIdIssuedAt:Ljava/lang/Long;

    iget-object v4, p0, Lnet/openid/appauth/RegistrationResponse$Builder;->mClientSecret:Ljava/lang/String;

    iget-object v5, p0, Lnet/openid/appauth/RegistrationResponse$Builder;->mClientSecretExpiresAt:Ljava/lang/Long;

    iget-object v6, p0, Lnet/openid/appauth/RegistrationResponse$Builder;->mRegistrationAccessToken:Ljava/lang/String;

    iget-object v7, p0, Lnet/openid/appauth/RegistrationResponse$Builder;->mRegistrationClientUri:Landroid/net/Uri;

    iget-object v8, p0, Lnet/openid/appauth/RegistrationResponse$Builder;->mTokenEndpointAuthMethod:Ljava/lang/String;

    iget-object v9, p0, Lnet/openid/appauth/RegistrationResponse$Builder;->mAdditionalParameters:Ljava/util/Map;

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lnet/openid/appauth/RegistrationResponse;-><init>(Lnet/openid/appauth/RegistrationRequest;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;Lnet/openid/appauth/RegistrationResponse$1;)V

    return-object v11
.end method

.method public fromResponseJson(Lorg/json/JSONObject;)Lnet/openid/appauth/RegistrationResponse$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lnet/openid/appauth/RegistrationResponse$MissingArgumentException;
        }
    .end annotation

    const-string v0, "client_id"

    .line 318
    invoke-static {p1, v0}, Lnet/openid/appauth/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/RegistrationResponse$Builder;->setClientId(Ljava/lang/String;)Lnet/openid/appauth/RegistrationResponse$Builder;

    const-string v0, "client_id_issued_at"

    .line 319
    invoke-static {p1, v0}, Lnet/openid/appauth/JsonUtil;->getLongIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/RegistrationResponse$Builder;->setClientIdIssuedAt(Ljava/lang/Long;)Lnet/openid/appauth/RegistrationResponse$Builder;

    const-string v0, "client_secret"

    .line 321
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "client_secret_expires_at"

    .line 322
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/RegistrationResponse$Builder;->setClientSecret(Ljava/lang/String;)Lnet/openid/appauth/RegistrationResponse$Builder;

    .line 330
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/RegistrationResponse$Builder;->setClientSecretExpiresAt(Ljava/lang/Long;)Lnet/openid/appauth/RegistrationResponse$Builder;

    goto :goto_0

    .line 327
    :cond_0
    new-instance p1, Lnet/openid/appauth/RegistrationResponse$MissingArgumentException;

    invoke-direct {p1, v1}, Lnet/openid/appauth/RegistrationResponse$MissingArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const-string v0, "registration_access_token"

    .line 333
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "registration_client_uri"

    .line 334
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eq v1, v3, :cond_3

    .line 340
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object v0, v2

    .line 342
    :cond_2
    new-instance p1, Lnet/openid/appauth/RegistrationResponse$MissingArgumentException;

    invoke-direct {p1, v0}, Lnet/openid/appauth/RegistrationResponse$MissingArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 345
    :cond_3
    invoke-static {p1, v0}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/RegistrationResponse$Builder;->setRegistrationAccessToken(Ljava/lang/String;)Lnet/openid/appauth/RegistrationResponse$Builder;

    .line 347
    invoke-static {p1, v2}, Lnet/openid/appauth/JsonUtil;->getUriIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/RegistrationResponse$Builder;->setRegistrationClientUri(Landroid/net/Uri;)Lnet/openid/appauth/RegistrationResponse$Builder;

    const-string v0, "token_endpoint_auth_method"

    .line 348
    invoke-static {p1, v0}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/RegistrationResponse$Builder;->setTokenEndpointAuthMethod(Ljava/lang/String;)Lnet/openid/appauth/RegistrationResponse$Builder;

    .line 351
    invoke-static {}, Lnet/openid/appauth/RegistrationResponse;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/openid/appauth/AdditionalParamsProcessor;->extractAdditionalParams(Lorg/json/JSONObject;Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/RegistrationResponse$Builder;->setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/RegistrationResponse$Builder;

    return-object p0
.end method

.method public fromResponseJsonString(Ljava/lang/String;)Lnet/openid/appauth/RegistrationResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonStr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lnet/openid/appauth/RegistrationResponse$MissingArgumentException;
        }
    .end annotation

    const-string v0, "json cannot be null or empty"

    .line 304
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 305
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/openid/appauth/RegistrationResponse$Builder;->fromResponseJson(Lorg/json/JSONObject;)Lnet/openid/appauth/RegistrationResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/RegistrationResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "additionalParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/openid/appauth/RegistrationResponse$Builder;"
        }
    .end annotation

    .line 274
    invoke-static {}, Lnet/openid/appauth/RegistrationResponse;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/openid/appauth/AdditionalParamsProcessor;->checkAdditionalParams(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/RegistrationResponse$Builder;->mAdditionalParameters:Ljava/util/Map;

    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lnet/openid/appauth/RegistrationResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clientId"
        }
    .end annotation

    const-string v0, "client ID cannot be null or empty"

    .line 202
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput-object p1, p0, Lnet/openid/appauth/RegistrationResponse$Builder;->mClientId:Ljava/lang/String;

    return-object p0
.end method

.method public setClientIdIssuedAt(Ljava/lang/Long;)Lnet/openid/appauth/RegistrationResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clientIdIssuedAt"
        }
    .end annotation

    iput-object p1, p0, Lnet/openid/appauth/RegistrationResponse$Builder;->mClientIdIssuedAt:Ljava/lang/Long;

    return-object p0
.end method

.method public setClientSecret(Ljava/lang/String;)Lnet/openid/appauth/RegistrationResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clientSecret"
        }
    .end annotation

    iput-object p1, p0, Lnet/openid/appauth/RegistrationResponse$Builder;->mClientSecret:Ljava/lang/String;

    return-object p0
.end method

.method public setClientSecretExpiresAt(Ljava/lang/Long;)Lnet/openid/appauth/RegistrationResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clientSecretExpiresAt"
        }
    .end annotation

    iput-object p1, p0, Lnet/openid/appauth/RegistrationResponse$Builder;->mClientSecretExpiresAt:Ljava/lang/Long;

    return-object p0
.end method

.method public setRegistrationAccessToken(Ljava/lang/String;)Lnet/openid/appauth/RegistrationResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registrationAccessToken"
        }
    .end annotation

    iput-object p1, p0, Lnet/openid/appauth/RegistrationResponse$Builder;->mRegistrationAccessToken:Ljava/lang/String;

    return-object p0
.end method

.method public setRegistrationClientUri(Landroid/net/Uri;)Lnet/openid/appauth/RegistrationResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registrationClientUri"
        }
    .end annotation

    iput-object p1, p0, Lnet/openid/appauth/RegistrationResponse$Builder;->mRegistrationClientUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setRequest(Lnet/openid/appauth/RegistrationRequest;)Lnet/openid/appauth/RegistrationResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    const-string v0, "request cannot be null"

    .line 189
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/openid/appauth/RegistrationRequest;

    iput-object p1, p0, Lnet/openid/appauth/RegistrationResponse$Builder;->mRequest:Lnet/openid/appauth/RegistrationRequest;

    return-object p0
.end method

.method public setTokenEndpointAuthMethod(Ljava/lang/String;)Lnet/openid/appauth/RegistrationResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenEndpointAuthMethod"
        }
    .end annotation

    iput-object p1, p0, Lnet/openid/appauth/RegistrationResponse$Builder;->mTokenEndpointAuthMethod:Ljava/lang/String;

    return-object p0
.end method
