.class public final Lnet/openid/appauth/AuthorizationResponse$Builder;
.super Ljava/lang/Object;
.source "AuthorizationResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationResponse;
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

.field private mAuthorizationCode:Ljava/lang/String;

.field private mIdToken:Ljava/lang/String;

.field private mRequest:Lnet/openid/appauth/AuthorizationRequest;

.field private mScope:Ljava/lang/String;

.field private mState:Ljava/lang/String;

.field private mTokenType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/openid/appauth/AuthorizationRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "authorization request cannot be null"

    .line 211
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/openid/appauth/AuthorizationRequest;

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mRequest:Lnet/openid/appauth/AuthorizationRequest;

    .line 212
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mAdditionalParameters:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public build()Lnet/openid/appauth/AuthorizationResponse;
    .locals 12

    .line 381
    new-instance v11, Lnet/openid/appauth/AuthorizationResponse;

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mRequest:Lnet/openid/appauth/AuthorizationRequest;

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mState:Ljava/lang/String;

    iget-object v3, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mTokenType:Ljava/lang/String;

    iget-object v4, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mAuthorizationCode:Ljava/lang/String;

    iget-object v5, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mAccessToken:Ljava/lang/String;

    iget-object v6, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mAccessTokenExpirationTime:Ljava/lang/Long;

    iget-object v7, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mIdToken:Ljava/lang/String;

    iget-object v8, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mScope:Ljava/lang/String;

    iget-object v0, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mAdditionalParameters:Ljava/util/Map;

    .line 390
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lnet/openid/appauth/AuthorizationResponse;-><init>(Lnet/openid/appauth/AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lnet/openid/appauth/AuthorizationResponse$1;)V

    return-object v11
.end method

.method public fromUri(Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 220
    sget-object v0, Lnet/openid/appauth/SystemClock;->INSTANCE:Lnet/openid/appauth/SystemClock;

    invoke-virtual {p0, p1, v0}, Lnet/openid/appauth/AuthorizationResponse$Builder;->fromUri(Landroid/net/Uri;Lnet/openid/appauth/Clock;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method fromUri(Landroid/net/Uri;Lnet/openid/appauth/Clock;)Lnet/openid/appauth/AuthorizationResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uri",
            "clock"
        }
    .end annotation

    const-string v0, "state"

    .line 226
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setState(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    const-string v0, "token_type"

    .line 227
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setTokenType(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    const-string v0, "code"

    .line 228
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setAuthorizationCode(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    const-string v0, "access_token"

    .line 229
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setAccessToken(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    const-string v0, "expires_in"

    .line 230
    invoke-static {p1, v0}, Lnet/openid/appauth/internal/UriUtil;->getLongQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setAccessTokenExpiresIn(Ljava/lang/Long;Lnet/openid/appauth/Clock;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    const-string p2, "id_token"

    .line 231
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setIdToken(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    const-string p2, "scope"

    .line 232
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setScope(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    .line 233
    invoke-static {}, Lnet/openid/appauth/AuthorizationResponse;->access$000()Ljava/util/Set;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/openid/appauth/AdditionalParamsProcessor;->extractAdditionalParams(Landroid/net/Uri;Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    return-object p0
.end method

.method public setAccessToken(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accessToken"
        }
    .end annotation

    const-string v0, "accessToken must not be empty"

    .line 272
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mAccessToken:Ljava/lang/String;

    return-object p0
.end method

.method public setAccessTokenExpirationTime(Ljava/lang/Long;)Lnet/openid/appauth/AuthorizationResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expirationTime"
        }
    .end annotation

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mAccessTokenExpirationTime:Ljava/lang/Long;

    return-object p0
.end method

.method public setAccessTokenExpiresIn(Ljava/lang/Long;)Lnet/openid/appauth/AuthorizationResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expiresIn"
        }
    .end annotation

    .line 282
    sget-object v0, Lnet/openid/appauth/SystemClock;->INSTANCE:Lnet/openid/appauth/SystemClock;

    invoke-virtual {p0, p1, v0}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setAccessTokenExpiresIn(Ljava/lang/Long;Lnet/openid/appauth/Clock;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAccessTokenExpiresIn(Ljava/lang/Long;Lnet/openid/appauth/Clock;)Lnet/openid/appauth/AuthorizationResponse$Builder;
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

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mAccessTokenExpirationTime:Ljava/lang/Long;

    goto :goto_0

    .line 295
    :cond_0
    invoke-interface {p2}, Lnet/openid/appauth/Clock;->getCurrentTimeMillis()J

    move-result-wide v0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 296
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    .line 295
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mAccessTokenExpirationTime:Ljava/lang/Long;

    :goto_0
    return-object p0
.end method

.method public setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/AuthorizationResponse$Builder;
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
            "Lnet/openid/appauth/AuthorizationResponse$Builder;"
        }
    .end annotation

    .line 372
    invoke-static {}, Lnet/openid/appauth/AuthorizationResponse;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/openid/appauth/AdditionalParamsProcessor;->checkAdditionalParams(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mAdditionalParameters:Ljava/util/Map;

    return-object p0
.end method

.method public setAuthorizationCode(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "authorizationCode"
        }
    .end annotation

    const-string v0, "authorizationCode must not be empty"

    .line 262
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mAuthorizationCode:Ljava/lang/String;

    return-object p0
.end method

.method public setIdToken(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idToken"
        }
    .end annotation

    const-string v0, "idToken cannot be empty"

    .line 315
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mIdToken:Ljava/lang/String;

    return-object p0
.end method

.method public setScope(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scope"
        }
    .end annotation

    .line 329
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mScope:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, " +"

    .line 332
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setScopes([Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    :goto_0
    return-object p0
.end method

.method public setScopes(Ljava/lang/Iterable;)Lnet/openid/appauth/AuthorizationResponse$Builder;
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
            "Lnet/openid/appauth/AuthorizationResponse$Builder;"
        }
    .end annotation

    .line 363
    invoke-static {p1}, Lnet/openid/appauth/AsciiStringListUtil;->iterableToString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mScope:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;
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

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mScope:Ljava/lang/String;

    goto :goto_0

    .line 349
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationResponse$Builder;->setScopes(Ljava/lang/Iterable;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    :goto_0
    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const-string v0, "state must not be empty"

    .line 242
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mState:Ljava/lang/String;

    return-object p0
.end method

.method public setTokenType(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenType"
        }
    .end annotation

    const-string v0, "tokenType must not be empty"

    .line 252
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationResponse$Builder;->mTokenType:Ljava/lang/String;

    return-object p0
.end method
