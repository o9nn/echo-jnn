.class public final Lcom/rnappauth/utils/RegistrationResponseFactory;
.super Ljava/lang/Object;
.source "RegistrationResponseFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final registrationResponseToMap(Lnet/openid/appauth/RegistrationResponse;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 13
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "clientId"

    .line 15
    iget-object v2, p0, Lnet/openid/appauth/RegistrationResponse;->clientId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lnet/openid/appauth/RegistrationResponse;->additionalParameters:Ljava/util/Map;

    invoke-static {v1}, Lcom/rnappauth/utils/MapUtil;->createAdditionalParametersMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "additionalParameters"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 18
    iget-object v1, p0, Lnet/openid/appauth/RegistrationResponse;->clientIdIssuedAt:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 19
    iget-object v1, p0, Lnet/openid/appauth/RegistrationResponse;->clientIdIssuedAt:Ljava/lang/Long;

    invoke-static {v1}, Lcom/rnappauth/utils/DateUtil;->formatTimestamp(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clientIdIssuedAt"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_0
    iget-object v1, p0, Lnet/openid/appauth/RegistrationResponse;->clientSecret:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "clientSecret"

    .line 23
    iget-object v2, p0, Lnet/openid/appauth/RegistrationResponse;->clientSecret:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_1
    iget-object v1, p0, Lnet/openid/appauth/RegistrationResponse;->clientSecretExpiresAt:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 27
    iget-object v1, p0, Lnet/openid/appauth/RegistrationResponse;->clientSecretExpiresAt:Ljava/lang/Long;

    invoke-static {v1}, Lcom/rnappauth/utils/DateUtil;->formatTimestamp(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clientSecretExpiresAt"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_2
    iget-object v1, p0, Lnet/openid/appauth/RegistrationResponse;->registrationAccessToken:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "registrationAccessToken"

    .line 31
    iget-object v2, p0, Lnet/openid/appauth/RegistrationResponse;->registrationAccessToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_3
    iget-object v1, p0, Lnet/openid/appauth/RegistrationResponse;->registrationClientUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 35
    iget-object v1, p0, Lnet/openid/appauth/RegistrationResponse;->registrationClientUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "registrationClientUri"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_4
    iget-object v1, p0, Lnet/openid/appauth/RegistrationResponse;->tokenEndpointAuthMethod:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, "tokenEndpointAuthMethod"

    .line 39
    iget-object p0, p0, Lnet/openid/appauth/RegistrationResponse;->tokenEndpointAuthMethod:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method
