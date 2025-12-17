.class public final Lcom/rnappauth/utils/TokenResponseFactory;
.super Ljava/lang/Object;
.source "TokenResponseFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final authorizationCodeResponseToMap(Lnet/openid/appauth/AuthorizationResponse;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 94
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "authorizationCode"

    .line 95
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->authorizationCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "accessToken"

    .line 96
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->accessToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->additionalParameters:Ljava/util/Map;

    invoke-static {v1}, Lcom/rnappauth/utils/MapUtil;->createAdditionalParametersMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "additionalParameters"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v1, "idToken"

    .line 98
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->idToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tokenType"

    .line 99
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->tokenType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->scope:Ljava/lang/String;

    invoke-static {v1}, Lcom/rnappauth/utils/TokenResponseFactory;->createScopeArray(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    const-string v2, "scopes"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 102
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 103
    iget-object p0, p0, Lnet/openid/appauth/AuthorizationResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    invoke-static {p0}, Lcom/rnappauth/utils/DateUtil;->formatTimestamp(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "accessTokenExpirationTime"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "codeVerifier"

    .line 107
    invoke-interface {v0, p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static final authorizationResponseToMap(Lnet/openid/appauth/AuthorizationResponse;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 75
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "authorizationCode"

    .line 76
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->authorizationCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "accessToken"

    .line 77
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->accessToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->additionalParameters:Ljava/util/Map;

    invoke-static {v1}, Lcom/rnappauth/utils/MapUtil;->createAdditionalParametersMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "additionalParameters"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v1, "idToken"

    .line 79
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->idToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tokenType"

    .line 80
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse;->tokenType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->scope:Ljava/lang/String;

    invoke-static {v1}, Lcom/rnappauth/utils/TokenResponseFactory;->createScopeArray(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    const-string v2, "scopes"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 83
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 84
    iget-object p0, p0, Lnet/openid/appauth/AuthorizationResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    invoke-static {p0}, Lcom/rnappauth/utils/DateUtil;->formatTimestamp(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "accessTokenExpirationTime"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private static final createScopeArray(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableArray;
    .locals 3

    .line 15
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " "

    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 19
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 21
    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final tokenResponseToMap(Lnet/openid/appauth/TokenResponse;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 33
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "accessToken"

    .line 35
    iget-object v2, p0, Lnet/openid/appauth/TokenResponse;->accessToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lnet/openid/appauth/TokenResponse;->additionalParameters:Ljava/util/Map;

    invoke-static {v1}, Lcom/rnappauth/utils/MapUtil;->createAdditionalParametersMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "additionalParameters"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v1, "idToken"

    .line 37
    iget-object v2, p0, Lnet/openid/appauth/TokenResponse;->idToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "refreshToken"

    .line 38
    iget-object v2, p0, Lnet/openid/appauth/TokenResponse;->refreshToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tokenType"

    .line 39
    iget-object v2, p0, Lnet/openid/appauth/TokenResponse;->tokenType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lnet/openid/appauth/TokenResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 42
    iget-object p0, p0, Lnet/openid/appauth/TokenResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    invoke-static {p0}, Lcom/rnappauth/utils/DateUtil;->formatTimestamp(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "accessTokenExpirationDate"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final tokenResponseToMap(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationResponse;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 52
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "accessToken"

    .line 54
    iget-object v2, p0, Lnet/openid/appauth/TokenResponse;->accessToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v1, p1, Lnet/openid/appauth/AuthorizationResponse;->additionalParameters:Ljava/util/Map;

    invoke-static {v1}, Lcom/rnappauth/utils/MapUtil;->createAdditionalParametersMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "authorizeAdditionalParameters"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 56
    iget-object v1, p0, Lnet/openid/appauth/TokenResponse;->additionalParameters:Ljava/util/Map;

    invoke-static {v1}, Lcom/rnappauth/utils/MapUtil;->createAdditionalParametersMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "tokenAdditionalParameters"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v1, "idToken"

    .line 57
    iget-object v2, p0, Lnet/openid/appauth/TokenResponse;->idToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "refreshToken"

    .line 58
    iget-object v2, p0, Lnet/openid/appauth/TokenResponse;->refreshToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tokenType"

    .line 59
    iget-object v2, p0, Lnet/openid/appauth/TokenResponse;->tokenType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object p1, p1, Lnet/openid/appauth/AuthorizationResponse;->scope:Ljava/lang/String;

    invoke-static {p1}, Lcom/rnappauth/utils/TokenResponseFactory;->createScopeArray(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    const-string v1, "scopes"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 62
    iget-object p1, p0, Lnet/openid/appauth/TokenResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 63
    iget-object p0, p0, Lnet/openid/appauth/TokenResponse;->accessTokenExpirationTime:Ljava/lang/Long;

    invoke-static {p0}, Lcom/rnappauth/utils/DateUtil;->formatTimestamp(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "accessTokenExpirationDate"

    invoke-interface {v0, p1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
