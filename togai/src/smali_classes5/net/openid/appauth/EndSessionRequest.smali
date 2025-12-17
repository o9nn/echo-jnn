.class public Lnet/openid/appauth/EndSessionRequest;
.super Ljava/lang/Object;
.source "EndSessionRequest.java"

# interfaces
.implements Lnet/openid/appauth/AuthorizationManagementRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/EndSessionRequest$Builder;
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

.field private static final KEY_ADDITIONAL_PARAMETERS:Ljava/lang/String; = "additionalParameters"

.field private static final KEY_CONFIGURATION:Ljava/lang/String; = "configuration"

.field private static final KEY_ID_TOKEN_HINT:Ljava/lang/String; = "id_token_hint"

.field private static final KEY_POST_LOGOUT_REDIRECT_URI:Ljava/lang/String; = "post_logout_redirect_uri"

.field private static final KEY_STATE:Ljava/lang/String; = "state"

.field private static final KEY_UI_LOCALES:Ljava/lang/String; = "ui_locales"

.field static final PARAM_ID_TOKEN_HINT:Ljava/lang/String; = "id_token_hint"

.field static final PARAM_POST_LOGOUT_REDIRECT_URI:Ljava/lang/String; = "post_logout_redirect_uri"

.field static final PARAM_STATE:Ljava/lang/String; = "state"

.field static final PARAM_UI_LOCALES:Ljava/lang/String; = "ui_locales"


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

.field public final configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

.field public final idTokenHint:Ljava/lang/String;

.field public final postLogoutRedirectUri:Landroid/net/Uri;

.field public final state:Ljava/lang/String;

.field public final uiLocales:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "state"

    const-string v1, "ui_locales"

    const-string v2, "id_token_hint"

    const-string v3, "post_logout_redirect_uri"

    .line 57
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/openid/appauth/AdditionalParamsProcessor;->builtInParams([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/EndSessionRequest;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "configuration",
            "idTokenHint",
            "postLogoutRedirectUri",
            "state",
            "uiLocales",
            "additionalParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/openid/appauth/AuthorizationServiceConfiguration;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/openid/appauth/EndSessionRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iput-object p2, p0, Lnet/openid/appauth/EndSessionRequest;->idTokenHint:Ljava/lang/String;

    iput-object p3, p0, Lnet/openid/appauth/EndSessionRequest;->postLogoutRedirectUri:Landroid/net/Uri;

    iput-object p4, p0, Lnet/openid/appauth/EndSessionRequest;->state:Ljava/lang/String;

    iput-object p5, p0, Lnet/openid/appauth/EndSessionRequest;->uiLocales:Ljava/lang/String;

    iput-object p6, p0, Lnet/openid/appauth/EndSessionRequest;->additionalParameters:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lnet/openid/appauth/EndSessionRequest$1;)V
    .locals 0

    .line 43
    invoke-direct/range {p0 .. p6}, Lnet/openid/appauth/EndSessionRequest;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    sget-object v0, Lnet/openid/appauth/EndSessionRequest;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-object v0
.end method

.method public static jsonDeserialize(Ljava/lang/String;)Lnet/openid/appauth/EndSessionRequest;
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

    const-string v0, "json string cannot be null"

    .line 346
    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/openid/appauth/EndSessionRequest;->jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/EndSessionRequest;

    move-result-object p0

    return-object p0
.end method

.method public static jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/EndSessionRequest;
    .locals 8
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

    .line 327
    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    new-instance v0, Lnet/openid/appauth/EndSessionRequest;

    const-string v1, "configuration"

    .line 329
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-result-object v2

    const-string v1, "id_token_hint"

    .line 330
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "post_logout_redirect_uri"

    .line 331
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getUriIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v1, "state"

    .line 332
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "ui_locales"

    .line 333
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "additionalParameters"

    .line 334
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lnet/openid/appauth/EndSessionRequest;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/openid/appauth/EndSessionRequest;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getUiLocales()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/openid/appauth/EndSessionRequest;->uiLocales:Ljava/lang/String;

    .line 270
    invoke-static {v0}, Lnet/openid/appauth/AsciiStringListUtil;->stringToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public jsonSerialize()Lorg/json/JSONObject;
    .locals 3

    .line 299
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lnet/openid/appauth/EndSessionRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    .line 300
    invoke-virtual {v1}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "configuration"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v1, "id_token_hint"

    iget-object v2, p0, Lnet/openid/appauth/EndSessionRequest;->idTokenHint:Ljava/lang/String;

    .line 301
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "post_logout_redirect_uri"

    iget-object v2, p0, Lnet/openid/appauth/EndSessionRequest;->postLogoutRedirectUri:Landroid/net/Uri;

    .line 302
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "state"

    iget-object v2, p0, Lnet/openid/appauth/EndSessionRequest;->state:Ljava/lang/String;

    .line 303
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ui_locales"

    iget-object v2, p0, Lnet/openid/appauth/EndSessionRequest;->uiLocales:Ljava/lang/String;

    .line 304
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/openid/appauth/EndSessionRequest;->additionalParameters:Ljava/util/Map;

    .line 306
    invoke-static {v1}, Lnet/openid/appauth/JsonUtil;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "additionalParameters"

    .line 305
    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public jsonSerializeString()Ljava/lang/String;
    .locals 1

    .line 317
    invoke-virtual {p0}, Lnet/openid/appauth/EndSessionRequest;->jsonSerialize()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Landroid/net/Uri;
    .locals 4

    iget-object v0, p0, Lnet/openid/appauth/EndSessionRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    .line 275
    iget-object v0, v0, Lnet/openid/appauth/AuthorizationServiceConfiguration;->endSessionEndpoint:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "id_token_hint"

    iget-object v2, p0, Lnet/openid/appauth/EndSessionRequest;->idTokenHint:Ljava/lang/String;

    .line 277
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/internal/UriUtil;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "state"

    iget-object v2, p0, Lnet/openid/appauth/EndSessionRequest;->state:Ljava/lang/String;

    .line 278
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/internal/UriUtil;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "ui_locales"

    iget-object v2, p0, Lnet/openid/appauth/EndSessionRequest;->uiLocales:Ljava/lang/String;

    .line 279
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/internal/UriUtil;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lnet/openid/appauth/EndSessionRequest;->postLogoutRedirectUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    const-string v2, "post_logout_redirect_uri"

    .line 283
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    iget-object v1, p0, Lnet/openid/appauth/EndSessionRequest;->additionalParameters:Ljava/util/Map;

    .line 286
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 287
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
