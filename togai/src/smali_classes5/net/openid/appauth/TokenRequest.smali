.class public Lnet/openid/appauth/TokenRequest;
.super Ljava/lang/Object;
.source "TokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/TokenRequest$Builder;
    }
.end annotation


# static fields
.field private static final BUILT_IN_PARAMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final GRANT_TYPE_CLIENT_CREDENTIALS:Ljava/lang/String; = "client_credentials"

.field public static final GRANT_TYPE_PASSWORD:Ljava/lang/String; = "password"

.field static final KEY_ADDITIONAL_PARAMETERS:Ljava/lang/String; = "additionalParameters"

.field static final KEY_AUTHORIZATION_CODE:Ljava/lang/String; = "authorizationCode"

.field static final KEY_CLIENT_ID:Ljava/lang/String; = "clientId"

.field static final KEY_CODE_VERIFIER:Ljava/lang/String; = "codeVerifier"

.field static final KEY_CONFIGURATION:Ljava/lang/String; = "configuration"

.field static final KEY_GRANT_TYPE:Ljava/lang/String; = "grantType"

.field static final KEY_NONCE:Ljava/lang/String; = "nonce"

.field static final KEY_REDIRECT_URI:Ljava/lang/String; = "redirectUri"

.field static final KEY_REFRESH_TOKEN:Ljava/lang/String; = "refreshToken"

.field static final KEY_SCOPE:Ljava/lang/String; = "scope"

.field public static final PARAM_CLIENT_ID:Ljava/lang/String; = "client_id"

.field static final PARAM_CODE:Ljava/lang/String; = "code"

.field static final PARAM_CODE_VERIFIER:Ljava/lang/String; = "code_verifier"

.field static final PARAM_GRANT_TYPE:Ljava/lang/String; = "grant_type"

.field static final PARAM_REDIRECT_URI:Ljava/lang/String; = "redirect_uri"

.field static final PARAM_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field static final PARAM_SCOPE:Ljava/lang/String; = "scope"


# instance fields
.field public final additionalParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final authorizationCode:Ljava/lang/String;

.field public final clientId:Ljava/lang/String;

.field public final codeVerifier:Ljava/lang/String;

.field public final configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

.field public final grantType:Ljava/lang/String;

.field public final nonce:Ljava/lang/String;

.field public final redirectUri:Landroid/net/Uri;

.field public final refreshToken:Ljava/lang/String;

.field public final scope:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 90
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "client_id"

    const-string v2, "code"

    const-string v3, "code_verifier"

    const-string v4, "grant_type"

    const-string v5, "redirect_uri"

    const-string v6, "refresh_token"

    const-string v7, "scope"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 90
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/TokenRequest;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "configuration",
            "clientId",
            "nonce",
            "grantType",
            "redirectUri",
            "scope",
            "authorizationCode",
            "refreshToken",
            "codeVerifier",
            "additionalParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/openid/appauth/AuthorizationServiceConfiguration;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/openid/appauth/TokenRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iput-object p2, p0, Lnet/openid/appauth/TokenRequest;->clientId:Ljava/lang/String;

    iput-object p3, p0, Lnet/openid/appauth/TokenRequest;->nonce:Ljava/lang/String;

    iput-object p4, p0, Lnet/openid/appauth/TokenRequest;->grantType:Ljava/lang/String;

    iput-object p5, p0, Lnet/openid/appauth/TokenRequest;->redirectUri:Landroid/net/Uri;

    iput-object p6, p0, Lnet/openid/appauth/TokenRequest;->scope:Ljava/lang/String;

    iput-object p7, p0, Lnet/openid/appauth/TokenRequest;->authorizationCode:Ljava/lang/String;

    iput-object p8, p0, Lnet/openid/appauth/TokenRequest;->refreshToken:Ljava/lang/String;

    iput-object p9, p0, Lnet/openid/appauth/TokenRequest;->codeVerifier:Ljava/lang/String;

    iput-object p10, p0, Lnet/openid/appauth/TokenRequest;->additionalParameters:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lnet/openid/appauth/TokenRequest$1;)V
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p10}, Lnet/openid/appauth/TokenRequest;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    sget-object v0, Lnet/openid/appauth/TokenRequest;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-object v0
.end method

.method public static jsonDeserialize(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest;
    .locals 1
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

    const-string v0, "json string cannot be null"

    .line 602
    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/openid/appauth/TokenRequest;->jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/TokenRequest;

    move-result-object p0

    return-object p0
.end method

.method public static jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/TokenRequest;
    .locals 12
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

    const-string v0, "json object cannot be null"

    .line 579
    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    new-instance v0, Lnet/openid/appauth/TokenRequest;

    const-string v1, "configuration"

    .line 582
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-result-object v2

    const-string v1, "clientId"

    .line 583
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "nonce"

    .line 584
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "grantType"

    .line 585
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "redirectUri"

    .line 586
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getUriIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v1, "scope"

    .line 587
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "authorizationCode"

    .line 588
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "refreshToken"

    .line 589
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "codeVerifier"

    .line 590
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "additionalParameters"

    .line 591
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lnet/openid/appauth/TokenRequest;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method private putIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "map",
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 537
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public getRequestParameters()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 520
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "grant_type"

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest;->grantType:Ljava/lang/String;

    .line 521
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "redirect_uri"

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest;->redirectUri:Landroid/net/Uri;

    .line 522
    invoke-direct {p0, v0, v1, v2}, Lnet/openid/appauth/TokenRequest;->putIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "code"

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest;->authorizationCode:Ljava/lang/String;

    .line 523
    invoke-direct {p0, v0, v1, v2}, Lnet/openid/appauth/TokenRequest;->putIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "refresh_token"

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest;->refreshToken:Ljava/lang/String;

    .line 524
    invoke-direct {p0, v0, v1, v2}, Lnet/openid/appauth/TokenRequest;->putIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "code_verifier"

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest;->codeVerifier:Ljava/lang/String;

    .line 525
    invoke-direct {p0, v0, v1, v2}, Lnet/openid/appauth/TokenRequest;->putIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "scope"

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest;->scope:Ljava/lang/String;

    .line 526
    invoke-direct {p0, v0, v1, v2}, Lnet/openid/appauth/TokenRequest;->putIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lnet/openid/appauth/TokenRequest;->additionalParameters:Ljava/util/Map;

    .line 528
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 529
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getScopeSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/openid/appauth/TokenRequest;->scope:Ljava/lang/String;

    .line 511
    invoke-static {v0}, Lnet/openid/appauth/AsciiStringListUtil;->stringToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public jsonSerialize()Lorg/json/JSONObject;
    .locals 3

    .line 547
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lnet/openid/appauth/TokenRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    .line 548
    invoke-virtual {v1}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "configuration"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v1, "clientId"

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest;->clientId:Ljava/lang/String;

    .line 549
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "nonce"

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest;->nonce:Ljava/lang/String;

    .line 550
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "grantType"

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest;->grantType:Ljava/lang/String;

    .line 551
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "redirectUri"

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest;->redirectUri:Landroid/net/Uri;

    .line 552
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "scope"

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest;->scope:Ljava/lang/String;

    .line 553
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "authorizationCode"

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest;->authorizationCode:Ljava/lang/String;

    .line 554
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "refreshToken"

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest;->refreshToken:Ljava/lang/String;

    .line 555
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "codeVerifier"

    iget-object v2, p0, Lnet/openid/appauth/TokenRequest;->codeVerifier:Ljava/lang/String;

    .line 556
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/openid/appauth/TokenRequest;->additionalParameters:Ljava/util/Map;

    .line 558
    invoke-static {v1}, Lnet/openid/appauth/JsonUtil;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "additionalParameters"

    .line 557
    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public jsonSerializeString()Ljava/lang/String;
    .locals 1

    .line 569
    invoke-virtual {p0}, Lnet/openid/appauth/TokenRequest;->jsonSerialize()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
