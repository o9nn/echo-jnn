.class public final Lnet/openid/appauth/TokenResponse$Builder;
.super Ljava/lang/Object;
.source "TokenResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/TokenResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mAccessTokenExpirationTime:Ljava/lang/Long;

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

.field private mIdToken:Ljava/lang/String;

.field private mRefreshToken:Ljava/lang/String;

.field private mRequest:Lnet/openid/appauth/TokenRequest;

.field private mScope:Ljava/lang/String;

.field private mTokenType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/openid/appauth/TokenRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-virtual {p0, p1}, Lnet/openid/appauth/TokenResponse$Builder;->setRequest(Lnet/openid/appauth/TokenRequest;)Lnet/openid/appauth/TokenResponse$Builder;

    .line 195
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/TokenResponse$Builder;->mAdditionalParameters:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public build()Lnet/openid/appauth/TokenResponse;
    .locals 10

    .line 381
    new-instance v9, Lnet/openid/appauth/TokenResponse;

    iget-object v1, p0, Lnet/openid/appauth/TokenResponse$Builder;->mRequest:Lnet/openid/appauth/TokenRequest;

    iget-object v2, p0, Lnet/openid/appauth/TokenResponse$Builder;->mTokenType:Ljava/lang/String;

    iget-object v3, p0, Lnet/openid/appauth/TokenResponse$Builder;->mAccessToken:Ljava/lang/String;

    iget-object v4, p0, Lnet/openid/appauth/TokenResponse$Builder;->mAccessTokenExpirationTime:Ljava/lang/Long;

    iget-object v5, p0, Lnet/openid/appauth/TokenResponse$Builder;->mIdToken:Ljava/lang/String;

    iget-object v6, p0, Lnet/openid/appauth/TokenResponse$Builder;->mRefreshToken:Ljava/lang/String;

    iget-object v7, p0, Lnet/openid/appauth/TokenResponse$Builder;->mScope:Ljava/lang/String;

    iget-object v8, p0, Lnet/openid/appauth/TokenResponse$Builder;->mAdditionalParameters:Ljava/util/Map;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lnet/openid/appauth/TokenResponse;-><init>(Lnet/openid/appauth/TokenRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v9
.end method

.method public fromResponseJson(Lorg/json/JSONObject;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 2
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
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "token_type"

    .line 216
    invoke-static {p1, v0}, Lnet/openid/appauth/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/TokenResponse$Builder;->setTokenType(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;

    const-string v0, "access_token"

    .line 217
    invoke-static {p1, v0}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/TokenResponse$Builder;->setAccessToken(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;

    const-string v0, "expires_at"

    .line 218
    invoke-static {p1, v0}, Lnet/openid/appauth/JsonUtil;->getLongIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/TokenResponse$Builder;->setAccessTokenExpirationTime(Ljava/lang/Long;)Lnet/openid/appauth/TokenResponse$Builder;

    const-string v0, "expires_in"

    .line 219
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/TokenResponse$Builder;->setAccessTokenExpiresIn(Ljava/lang/Long;)Lnet/openid/appauth/TokenResponse$Builder;

    :cond_0
    const-string v0, "refresh_token"

    .line 222
    invoke-static {p1, v0}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/TokenResponse$Builder;->setRefreshToken(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;

    const-string v0, "id_token"

    .line 223
    invoke-static {p1, v0}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/TokenResponse$Builder;->setIdToken(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;

    const-string v0, "scope"

    .line 224
    invoke-static {p1, v0}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/TokenResponse$Builder;->setScope(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;

    .line 225
    invoke-static {}, Lnet/openid/appauth/TokenResponse;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/openid/appauth/AdditionalParamsProcessor;->extractAdditionalParams(Lorg/json/JSONObject;Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/TokenResponse$Builder;->setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/TokenResponse$Builder;

    return-object p0
.end method

.method public fromResponseJsonString(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;
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
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "json cannot be null or empty"

    .line 205
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/openid/appauth/TokenResponse$Builder;->fromResponseJson(Lorg/json/JSONObject;)Lnet/openid/appauth/TokenResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAccessToken(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accessToken"
        }
    .end annotation

    const-string v0, "access token cannot be empty if specified"

    .line 254
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/TokenResponse$Builder;->mAccessToken:Ljava/lang/String;

    return-object p0
.end method

.method public setAccessTokenExpirationTime(Ljava/lang/Long;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expiresAt"
        }
    .end annotation

    iput-object p1, p0, Lnet/openid/appauth/TokenResponse$Builder;->mAccessTokenExpirationTime:Ljava/lang/Long;

    return-object p0
.end method

.method public setAccessTokenExpiresIn(Ljava/lang/Long;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expiresIn"
        }
    .end annotation

    .line 265
    sget-object v0, Lnet/openid/appauth/SystemClock;->INSTANCE:Lnet/openid/appauth/SystemClock;

    invoke-virtual {p0, p1, v0}, Lnet/openid/appauth/TokenResponse$Builder;->setAccessTokenExpiresIn(Ljava/lang/Long;Lnet/openid/appauth/Clock;)Lnet/openid/appauth/TokenResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method setAccessTokenExpiresIn(Ljava/lang/Long;Lnet/openid/appauth/Clock;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "expiresIn",
            "clock"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/openid/appauth/TokenResponse$Builder;->mAccessTokenExpirationTime:Ljava/lang/Long;

    goto :goto_0

    .line 278
    :cond_0
    invoke-interface {p2}, Lnet/openid/appauth/Clock;->getCurrentTimeMillis()J

    move-result-wide v0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 279
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    .line 278
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/TokenResponse$Builder;->mAccessTokenExpirationTime:Ljava/lang/Long;

    :goto_0
    return-object p0
.end method

.method public setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/TokenResponse$Builder;
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
            "Lnet/openid/appauth/TokenResponse$Builder;"
        }
    .end annotation

    .line 373
    invoke-static {}, Lnet/openid/appauth/TokenResponse;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/openid/appauth/AdditionalParamsProcessor;->checkAdditionalParams(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/TokenResponse$Builder;->mAdditionalParameters:Ljava/util/Map;

    return-object p0
.end method

.method public setIdToken(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idToken"
        }
    .end annotation

    const-string v0, "id token must not be empty if defined"

    .line 297
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/TokenResponse$Builder;->mIdToken:Ljava/lang/String;

    return-object p0
.end method

.method public setRefreshToken(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refreshToken"
        }
    .end annotation

    const-string v0, "refresh token must not be empty if defined"

    .line 305
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/TokenResponse$Builder;->mRefreshToken:Ljava/lang/String;

    return-object p0
.end method

.method public setRequest(Lnet/openid/appauth/TokenRequest;)Lnet/openid/appauth/TokenResponse$Builder;
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

    .line 235
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/openid/appauth/TokenRequest;

    iput-object p1, p0, Lnet/openid/appauth/TokenResponse$Builder;->mRequest:Lnet/openid/appauth/TokenRequest;

    return-object p0
.end method

.method public setScope(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scope"
        }
    .end annotation

    .line 319
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/openid/appauth/TokenResponse$Builder;->mScope:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, " +"

    .line 322
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/TokenResponse$Builder;->setScopes([Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;

    :goto_0
    return-object p0
.end method

.method public setScopes(Ljava/lang/Iterable;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scopes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/openid/appauth/TokenResponse$Builder;"
        }
    .end annotation

    .line 364
    invoke-static {p1}, Lnet/openid/appauth/AsciiStringListUtil;->iterableToString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/TokenResponse$Builder;->mScope:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scopes"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 345
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/TokenResponse$Builder;->setScopes(Ljava/lang/Iterable;)Lnet/openid/appauth/TokenResponse$Builder;

    return-object p0
.end method

.method public setTokenType(Ljava/lang/String;)Lnet/openid/appauth/TokenResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenType"
        }
    .end annotation

    const-string v0, "token type must not be empty if defined"

    .line 245
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/TokenResponse$Builder;->mTokenType:Ljava/lang/String;

    return-object p0
.end method
