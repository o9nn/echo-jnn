.class public Lnet/openid/appauth/RegistrationResponse;
.super Ljava/lang/Object;
.source "RegistrationResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/RegistrationResponse$Builder;,
        Lnet/openid/appauth/RegistrationResponse$MissingArgumentException;
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

.field static final KEY_ADDITIONAL_PARAMETERS:Ljava/lang/String; = "additionalParameters"

.field static final KEY_REQUEST:Ljava/lang/String; = "request"

.field static final PARAM_CLIENT_ID:Ljava/lang/String; = "client_id"

.field static final PARAM_CLIENT_ID_ISSUED_AT:Ljava/lang/String; = "client_id_issued_at"

.field static final PARAM_CLIENT_SECRET:Ljava/lang/String; = "client_secret"

.field static final PARAM_CLIENT_SECRET_EXPIRES_AT:Ljava/lang/String; = "client_secret_expires_at"

.field static final PARAM_REGISTRATION_ACCESS_TOKEN:Ljava/lang/String; = "registration_access_token"

.field static final PARAM_REGISTRATION_CLIENT_URI:Ljava/lang/String; = "registration_client_uri"

.field static final PARAM_TOKEN_ENDPOINT_AUTH_METHOD:Ljava/lang/String; = "token_endpoint_auth_method"


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

.field public final clientId:Ljava/lang/String;

.field public final clientIdIssuedAt:Ljava/lang/Long;

.field public final clientSecret:Ljava/lang/String;

.field public final clientSecretExpiresAt:Ljava/lang/Long;

.field public final registrationAccessToken:Ljava/lang/String;

.field public final registrationClientUri:Landroid/net/Uri;

.field public final request:Lnet/openid/appauth/RegistrationRequest;

.field public final tokenEndpointAuthMethod:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 49
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "client_id"

    const-string v2, "client_secret"

    const-string v3, "client_secret_expires_at"

    const-string v4, "registration_access_token"

    const-string v5, "registration_client_uri"

    const-string v6, "client_id_issued_at"

    const-string v7, "token_endpoint_auth_method"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lnet/openid/appauth/RegistrationResponse;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lnet/openid/appauth/RegistrationRequest;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
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
            0x0
        }
        names = {
            "request",
            "clientId",
            "clientIdIssuedAt",
            "clientSecret",
            "clientSecretExpiresAt",
            "registrationAccessToken",
            "registrationClientUri",
            "tokenEndpointAuthMethod",
            "additionalParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/openid/appauth/RegistrationRequest;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/openid/appauth/RegistrationResponse;->request:Lnet/openid/appauth/RegistrationRequest;

    iput-object p2, p0, Lnet/openid/appauth/RegistrationResponse;->clientId:Ljava/lang/String;

    iput-object p3, p0, Lnet/openid/appauth/RegistrationResponse;->clientIdIssuedAt:Ljava/lang/Long;

    iput-object p4, p0, Lnet/openid/appauth/RegistrationResponse;->clientSecret:Ljava/lang/String;

    iput-object p5, p0, Lnet/openid/appauth/RegistrationResponse;->clientSecretExpiresAt:Ljava/lang/Long;

    iput-object p6, p0, Lnet/openid/appauth/RegistrationResponse;->registrationAccessToken:Ljava/lang/String;

    iput-object p7, p0, Lnet/openid/appauth/RegistrationResponse;->registrationClientUri:Landroid/net/Uri;

    iput-object p8, p0, Lnet/openid/appauth/RegistrationResponse;->tokenEndpointAuthMethod:Ljava/lang/String;

    iput-object p9, p0, Lnet/openid/appauth/RegistrationResponse;->additionalParameters:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lnet/openid/appauth/RegistrationRequest;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;Lnet/openid/appauth/RegistrationResponse$1;)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p9}, Lnet/openid/appauth/RegistrationResponse;-><init>(Lnet/openid/appauth/RegistrationRequest;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    sget-object v0, Lnet/openid/appauth/RegistrationResponse;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-object v0
.end method

.method public static fromJson(Lnet/openid/appauth/RegistrationRequest;Ljava/lang/String;)Lnet/openid/appauth/RegistrationResponse;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "jsonStr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lnet/openid/appauth/RegistrationResponse$MissingArgumentException;
        }
    .end annotation

    const-string v0, "jsonStr cannot be null or empty"

    .line 388
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 389
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lnet/openid/appauth/RegistrationResponse;->fromJson(Lnet/openid/appauth/RegistrationRequest;Lorg/json/JSONObject;)Lnet/openid/appauth/RegistrationResponse;

    move-result-object p0

    return-object p0
.end method

.method public static fromJson(Lnet/openid/appauth/RegistrationRequest;Lorg/json/JSONObject;)Lnet/openid/appauth/RegistrationResponse;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "json"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lnet/openid/appauth/RegistrationResponse$MissingArgumentException;
        }
    .end annotation

    const-string v0, "registration request cannot be null"

    .line 404
    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    new-instance v0, Lnet/openid/appauth/RegistrationResponse$Builder;

    invoke-direct {v0, p0}, Lnet/openid/appauth/RegistrationResponse$Builder;-><init>(Lnet/openid/appauth/RegistrationRequest;)V

    .line 406
    invoke-virtual {v0, p1}, Lnet/openid/appauth/RegistrationResponse$Builder;->fromResponseJson(Lorg/json/JSONObject;)Lnet/openid/appauth/RegistrationResponse$Builder;

    move-result-object p0

    .line 407
    invoke-virtual {p0}, Lnet/openid/appauth/RegistrationResponse$Builder;->build()Lnet/openid/appauth/RegistrationResponse;

    move-result-object p0

    return-object p0
.end method

.method public static jsonDeserialize(Ljava/lang/String;)Lnet/openid/appauth/RegistrationResponse;
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

    const-string v0, "jsonStr cannot be null or empty"

    .line 475
    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 476
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/openid/appauth/RegistrationResponse;->jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/RegistrationResponse;

    move-result-object p0

    return-object p0
.end method

.method public static jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/RegistrationResponse;
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

    const-string v0, "json cannot be null"

    .line 448
    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "request"

    .line 449
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    new-instance v1, Lnet/openid/appauth/RegistrationResponse;

    .line 454
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lnet/openid/appauth/RegistrationRequest;->jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/RegistrationRequest;

    move-result-object v3

    const-string v0, "client_id"

    .line 455
    invoke-static {p0, v0}, Lnet/openid/appauth/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "client_id_issued_at"

    .line 456
    invoke-static {p0, v0}, Lnet/openid/appauth/JsonUtil;->getLongIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    const-string v0, "client_secret"

    .line 457
    invoke-static {p0, v0}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "client_secret_expires_at"

    .line 458
    invoke-static {p0, v0}, Lnet/openid/appauth/JsonUtil;->getLongIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    const-string v0, "registration_access_token"

    .line 459
    invoke-static {p0, v0}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "registration_client_uri"

    .line 460
    invoke-static {p0, v0}, Lnet/openid/appauth/JsonUtil;->getUriIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-string v0, "token_endpoint_auth_method"

    .line 461
    invoke-static {p0, v0}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "additionalParameters"

    .line 462
    invoke-static {p0, v0}, Lnet/openid/appauth/JsonUtil;->getStringMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Lnet/openid/appauth/RegistrationResponse;-><init>(Lnet/openid/appauth/RegistrationRequest;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1

    .line 450
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "registration request not found in JSON"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public hasClientSecretExpired()Z
    .locals 1

    .line 483
    sget-object v0, Lnet/openid/appauth/SystemClock;->INSTANCE:Lnet/openid/appauth/SystemClock;

    invoke-virtual {p0, v0}, Lnet/openid/appauth/RegistrationResponse;->hasClientSecretExpired(Lnet/openid/appauth/Clock;)Z

    move-result v0

    return v0
.end method

.method hasClientSecretExpired(Lnet/openid/appauth/Clock;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clock"
        }
    .end annotation

    .line 488
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/openid/appauth/Clock;

    invoke-interface {p1}, Lnet/openid/appauth/Clock;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v0, p0, Lnet/openid/appauth/RegistrationResponse;->clientSecretExpiresAt:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lnet/openid/appauth/RegistrationResponse;->clientSecretExpiresAt:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public jsonSerialize()Lorg/json/JSONObject;
    .locals 3

    .line 416
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lnet/openid/appauth/RegistrationResponse;->request:Lnet/openid/appauth/RegistrationRequest;

    .line 417
    invoke-virtual {v1}, Lnet/openid/appauth/RegistrationRequest;->jsonSerialize()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "request"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v1, "client_id"

    iget-object v2, p0, Lnet/openid/appauth/RegistrationResponse;->clientId:Ljava/lang/String;

    .line 418
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "client_id_issued_at"

    iget-object v2, p0, Lnet/openid/appauth/RegistrationResponse;->clientIdIssuedAt:Ljava/lang/Long;

    .line 419
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "client_secret"

    iget-object v2, p0, Lnet/openid/appauth/RegistrationResponse;->clientSecret:Ljava/lang/String;

    .line 420
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "client_secret_expires_at"

    iget-object v2, p0, Lnet/openid/appauth/RegistrationResponse;->clientSecretExpiresAt:Ljava/lang/Long;

    .line 421
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "registration_access_token"

    iget-object v2, p0, Lnet/openid/appauth/RegistrationResponse;->registrationAccessToken:Ljava/lang/String;

    .line 422
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "registration_client_uri"

    iget-object v2, p0, Lnet/openid/appauth/RegistrationResponse;->registrationClientUri:Landroid/net/Uri;

    .line 423
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "token_endpoint_auth_method"

    iget-object v2, p0, Lnet/openid/appauth/RegistrationResponse;->tokenEndpointAuthMethod:Ljava/lang/String;

    .line 424
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/openid/appauth/RegistrationResponse;->additionalParameters:Ljava/util/Map;

    .line 426
    invoke-static {v1}, Lnet/openid/appauth/JsonUtil;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "additionalParameters"

    .line 425
    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public jsonSerializeString()Ljava/lang/String;
    .locals 1

    .line 437
    invoke-virtual {p0}, Lnet/openid/appauth/RegistrationResponse;->jsonSerialize()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
