.class public Lnet/openid/appauth/RegistrationRequest;
.super Ljava/lang/Object;
.source "RegistrationRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/RegistrationRequest$Builder;
    }
.end annotation


# static fields
.field public static final APPLICATION_TYPE_NATIVE:Ljava/lang/String; = "native"

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

.field static final KEY_CONFIGURATION:Ljava/lang/String; = "configuration"

.field static final PARAM_APPLICATION_TYPE:Ljava/lang/String; = "application_type"

.field static final PARAM_GRANT_TYPES:Ljava/lang/String; = "grant_types"

.field static final PARAM_JWKS:Ljava/lang/String; = "jwks"

.field static final PARAM_JWKS_URI:Ljava/lang/String; = "jwks_uri"

.field static final PARAM_REDIRECT_URIS:Ljava/lang/String; = "redirect_uris"

.field static final PARAM_RESPONSE_TYPES:Ljava/lang/String; = "response_types"

.field static final PARAM_SUBJECT_TYPE:Ljava/lang/String; = "subject_type"

.field static final PARAM_TOKEN_ENDPOINT_AUTHENTICATION_METHOD:Ljava/lang/String; = "token_endpoint_auth_method"

.field public static final SUBJECT_TYPE_PAIRWISE:Ljava/lang/String; = "pairwise"

.field public static final SUBJECT_TYPE_PUBLIC:Ljava/lang/String; = "public"


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

.field public final applicationType:Ljava/lang/String;

.field public final configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

.field public final grantTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final jwks:Lorg/json/JSONObject;

.field public final jwksUri:Landroid/net/Uri;

.field public final redirectUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public final responseTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final subjectType:Ljava/lang/String;

.field public final tokenEndpointAuthenticationMethod:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "redirect_uris"

    const-string v1, "response_types"

    const-string v2, "grant_types"

    const-string v3, "application_type"

    const-string v4, "subject_type"

    const-string v5, "jwks_uri"

    const-string v6, "jwks"

    const-string v7, "token_endpoint_auth_method"

    .line 52
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/openid/appauth/AdditionalParamsProcessor;->builtInParams([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/RegistrationRequest;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)V
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
            "configuration",
            "redirectUris",
            "responseTypes",
            "grantTypes",
            "subjectType",
            "jwksUri",
            "jwks",
            "tokenEndpointAuthenticationMethod",
            "additionalParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/openid/appauth/AuthorizationServiceConfiguration;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/openid/appauth/RegistrationRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iput-object p2, p0, Lnet/openid/appauth/RegistrationRequest;->redirectUris:Ljava/util/List;

    iput-object p3, p0, Lnet/openid/appauth/RegistrationRequest;->responseTypes:Ljava/util/List;

    iput-object p4, p0, Lnet/openid/appauth/RegistrationRequest;->grantTypes:Ljava/util/List;

    iput-object p5, p0, Lnet/openid/appauth/RegistrationRequest;->subjectType:Ljava/lang/String;

    iput-object p6, p0, Lnet/openid/appauth/RegistrationRequest;->jwksUri:Landroid/net/Uri;

    iput-object p7, p0, Lnet/openid/appauth/RegistrationRequest;->jwks:Lorg/json/JSONObject;

    iput-object p8, p0, Lnet/openid/appauth/RegistrationRequest;->tokenEndpointAuthenticationMethod:Ljava/lang/String;

    iput-object p9, p0, Lnet/openid/appauth/RegistrationRequest;->additionalParameters:Ljava/util/Map;

    const-string p1, "native"

    iput-object p1, p0, Lnet/openid/appauth/RegistrationRequest;->applicationType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;Lnet/openid/appauth/RegistrationRequest$1;)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p9}, Lnet/openid/appauth/RegistrationRequest;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    sget-object v0, Lnet/openid/appauth/RegistrationRequest;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-object v0
.end method

.method public static jsonDeserialize(Ljava/lang/String;)Lnet/openid/appauth/RegistrationRequest;
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

    const-string v0, "jsonStr must not be empty or null"

    .line 478
    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 479
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/openid/appauth/RegistrationRequest;->jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/RegistrationRequest;

    move-result-object p0

    return-object p0
.end method

.method public static jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/RegistrationRequest;
    .locals 11
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

    const-string v0, "json must not be null"

    .line 456
    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    new-instance v0, Lnet/openid/appauth/RegistrationRequest;

    const-string v1, "configuration"

    .line 459
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-result-object v2

    const-string v1, "redirect_uris"

    .line 460
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getUriList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v1, "response_types"

    .line 461
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringListIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const-string v1, "grant_types"

    .line 462
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringListIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    const-string v1, "subject_type"

    .line 463
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "jwks_uri"

    .line 464
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getUriIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v1, "jwks"

    .line 465
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getJsonObjectIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v1, "token_endpoint_auth_method"

    .line 466
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "additionalParameters"

    .line 467
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lnet/openid/appauth/RegistrationRequest;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method private jsonSerializeParams()Lorg/json/JSONObject;
    .locals 3

    .line 429
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lnet/openid/appauth/RegistrationRequest;->redirectUris:Ljava/util/List;

    .line 430
    invoke-static {v1}, Lnet/openid/appauth/JsonUtil;->toJsonArray(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "redirect_uris"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    const-string v1, "application_type"

    iget-object v2, p0, Lnet/openid/appauth/RegistrationRequest;->applicationType:Ljava/lang/String;

    .line 431
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/openid/appauth/RegistrationRequest;->responseTypes:Ljava/util/List;

    if-eqz v1, :cond_0

    const-string v2, "response_types"

    .line 434
    invoke-static {v1}, Lnet/openid/appauth/JsonUtil;->toJsonArray(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_0
    iget-object v1, p0, Lnet/openid/appauth/RegistrationRequest;->grantTypes:Ljava/util/List;

    if-eqz v1, :cond_1

    const-string v2, "grant_types"

    .line 437
    invoke-static {v1}, Lnet/openid/appauth/JsonUtil;->toJsonArray(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_1
    const-string v1, "subject_type"

    iget-object v2, p0, Lnet/openid/appauth/RegistrationRequest;->subjectType:Ljava/lang/String;

    .line 439
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "jwks_uri"

    iget-object v2, p0, Lnet/openid/appauth/RegistrationRequest;->jwksUri:Landroid/net/Uri;

    .line 441
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "jwks"

    iget-object v2, p0, Lnet/openid/appauth/RegistrationRequest;->jwks:Lorg/json/JSONObject;

    .line 442
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v1, "token_endpoint_auth_method"

    iget-object v2, p0, Lnet/openid/appauth/RegistrationRequest;->tokenEndpointAuthenticationMethod:Ljava/lang/String;

    .line 444
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public jsonSerialize()Lorg/json/JSONObject;
    .locals 3

    .line 411
    invoke-direct {p0}, Lnet/openid/appauth/RegistrationRequest;->jsonSerializeParams()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lnet/openid/appauth/RegistrationRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    .line 412
    invoke-virtual {v1}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "configuration"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lnet/openid/appauth/RegistrationRequest;->additionalParameters:Ljava/util/Map;

    .line 414
    invoke-static {v1}, Lnet/openid/appauth/JsonUtil;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "additionalParameters"

    .line 413
    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public jsonSerializeString()Ljava/lang/String;
    .locals 1

    .line 425
    invoke-virtual {p0}, Lnet/openid/appauth/RegistrationRequest;->jsonSerialize()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 4

    .line 398
    invoke-direct {p0}, Lnet/openid/appauth/RegistrationRequest;->jsonSerializeParams()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lnet/openid/appauth/RegistrationRequest;->additionalParameters:Ljava/util/Map;

    .line 399
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

    .line 400
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
