.class public final Lnet/openid/appauth/TokenRequest$Builder;
.super Ljava/lang/Object;
.source "TokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/TokenRequest;
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

.field private mAuthorizationCode:Ljava/lang/String;

.field private mClientId:Ljava/lang/String;

.field private mCodeVerifier:Ljava/lang/String;

.field private mConfiguration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

.field private mGrantType:Ljava/lang/String;

.field private mNonce:Ljava/lang/String;

.field private mRedirectUri:Landroid/net/Uri;

.field private mRefreshToken:Ljava/lang/String;

.field private mScope:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "configuration",
            "clientId"
        }
    .end annotation

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    invoke-virtual {p0, p1}, Lnet/openid/appauth/TokenRequest$Builder;->setConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;)Lnet/openid/appauth/TokenRequest$Builder;

    .line 259
    invoke-virtual {p0, p2}, Lnet/openid/appauth/TokenRequest$Builder;->setClientId(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;

    .line 260
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mAdditionalParameters:Ljava/util/Map;

    return-void
.end method

.method private inferGrantType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/openid/appauth/TokenRequest$Builder;->mGrantType:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/openid/appauth/TokenRequest$Builder;->mAuthorizationCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "authorization_code"

    return-object v0

    :cond_1
    iget-object v0, p0, Lnet/openid/appauth/TokenRequest$Builder;->mRefreshToken:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "refresh_token"

    return-object v0

    .line 476
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "grant type not specified and cannot be inferred"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lnet/openid/appauth/TokenRequest;
    .locals 13

    .line 435
    invoke-direct {p0}, Lnet/openid/appauth/TokenRequest$Builder;->inferGrantType()Ljava/lang/String;

    move-result-object v4

    const-string v0, "authorization_code"

    .line 437
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mAuthorizationCode:Ljava/lang/String;

    const-string v2, "authorization code must be specified for grant_type = authorization_code"

    .line 438
    invoke-static {v1, v2}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "refresh_token"

    .line 443
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mRefreshToken:Ljava/lang/String;

    const-string v2, "refresh token must be specified for grant_type = refresh_token"

    .line 444
    invoke-static {v1, v2}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/openid/appauth/TokenRequest$Builder;->mRedirectUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 451
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no redirect URI specified on token request for code exchange"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_3
    :goto_0
    new-instance v12, Lnet/openid/appauth/TokenRequest;

    iget-object v1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mConfiguration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest$Builder;->mClientId:Ljava/lang/String;

    iget-object v3, p0, Lnet/openid/appauth/TokenRequest$Builder;->mNonce:Ljava/lang/String;

    iget-object v5, p0, Lnet/openid/appauth/TokenRequest$Builder;->mRedirectUri:Landroid/net/Uri;

    iget-object v6, p0, Lnet/openid/appauth/TokenRequest$Builder;->mScope:Ljava/lang/String;

    iget-object v7, p0, Lnet/openid/appauth/TokenRequest$Builder;->mAuthorizationCode:Ljava/lang/String;

    iget-object v8, p0, Lnet/openid/appauth/TokenRequest$Builder;->mRefreshToken:Ljava/lang/String;

    iget-object v9, p0, Lnet/openid/appauth/TokenRequest$Builder;->mCodeVerifier:Ljava/lang/String;

    iget-object v0, p0, Lnet/openid/appauth/TokenRequest$Builder;->mAdditionalParameters:Ljava/util/Map;

    .line 465
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lnet/openid/appauth/TokenRequest;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lnet/openid/appauth/TokenRequest$1;)V

    return-object v12
.end method

.method public setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/TokenRequest$Builder;
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
            "Lnet/openid/appauth/TokenRequest$Builder;"
        }
    .end annotation

    .line 426
    invoke-static {}, Lnet/openid/appauth/TokenRequest;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/openid/appauth/AdditionalParamsProcessor;->checkAdditionalParams(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mAdditionalParameters:Ljava/util/Map;

    return-object p0
.end method

.method public setAuthorizationCode(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "authorizationCode"
        }
    .end annotation

    const-string v0, "authorization code must not be empty"

    .line 385
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mAuthorizationCode:Ljava/lang/String;

    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clientId"
        }
    .end annotation

    const-string v0, "clientId cannot be null or empty"

    .line 278
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mClientId:Ljava/lang/String;

    return-object p0
.end method

.method public setCodeVerifier(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codeVerifier"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 414
    invoke-static {p1}, Lnet/openid/appauth/CodeVerifierUtil;->checkCodeVerifier(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mCodeVerifier:Ljava/lang/String;

    return-object p0
.end method

.method public setConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 269
    invoke-static {p1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mConfiguration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    return-object p0
.end method

.method public setGrantType(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "grantType"
        }
    .end annotation

    const-string v0, "grantType cannot be null or empty"

    .line 300
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mGrantType:Ljava/lang/String;

    return-object p0
.end method

.method public setNonce(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nonce"
        }
    .end annotation

    .line 287
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mNonce:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mNonce:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public setRedirectUri(Landroid/net/Uri;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "redirectUri"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 311
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "redirectUri must have a scheme"

    invoke-static {v0, v1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mRedirectUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setRefreshToken(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refreshToken"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "refresh token cannot be empty if defined"

    .line 401
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mRefreshToken:Ljava/lang/String;

    return-object p0
.end method

.method public setScope(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scope"
        }
    .end annotation

    .line 326
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mScope:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, " +"

    .line 329
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/TokenRequest$Builder;->setScopes([Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;

    :goto_0
    return-object p0
.end method

.method public setScopes(Ljava/lang/Iterable;)Lnet/openid/appauth/TokenRequest$Builder;
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
            "Lnet/openid/appauth/TokenRequest$Builder;"
        }
    .end annotation

    .line 371
    invoke-static {p1}, Lnet/openid/appauth/AsciiStringListUtil;->iterableToString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/TokenRequest$Builder;->mScope:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;
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

    .line 352
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/TokenRequest$Builder;->setScopes(Ljava/lang/Iterable;)Lnet/openid/appauth/TokenRequest$Builder;

    return-object p0
.end method
